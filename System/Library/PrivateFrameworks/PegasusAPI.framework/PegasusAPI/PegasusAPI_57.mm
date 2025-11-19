uint64_t sub_1B9249330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F30, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92493B0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5A70, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9249420()
{
  sub_1B8CD2D08(&qword_1EBAB5A70, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B92494A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9080);
  __swift_project_value_buffer(v0, qword_1EBAC9080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INSTRUCTION_INTENT_UNSPECIFIED";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INSTRUCTION_INTENT_CONFIRMATION";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INSTRUCTION_INTENT_DISAMBIGUATION";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INSTRUCTION_INTENT_PROMPT_FOR_VALUE";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9249708()
{
  result = MEMORY[0x1BFADC850](0x726F7272452ELL, 0xE600000000000000);
  qword_1EBAC9098 = 0xD00000000000002DLL;
  unk_1EBAC90A0 = 0x80000001B9711AF0;
  return result;
}

uint64_t sub_1B9249790()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC90A8);
  __swift_project_value_buffer(v0, qword_1EBAC90A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encrypted_message";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92499C4()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      v2();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_243_3();
  OUTLINED_FUNCTION_65_6();
  if (v1 || ((v2 = OUTLINED_FUNCTION_7_6(), (v3 & 1) == 0) ? (result = sub_1B8DC2578(v2)) : (result = sub_1B9035C80(v2)), !v0))
  {
    v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
    OUTLINED_FUNCTION_479_0(v5);
    OUTLINED_FUNCTION_214_4();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v55[0] = *v0;
    v55[1] = v1;
    v56 = v2;
    if (v6 != 255)
    {
      v53[0] = v5;
      v53[1] = v4;
      v7 = v6 & 1;
      v54 = v6 & 1;
      v8 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_259();
      sub_1B90387E4(v11, v12, v6);
      v13 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v13, v14, v15);
      v16 = static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.OneOf_Error.== infix(_:_:)(v55, v53);
      v17 = OUTLINED_FUNCTION_259();
      sub_1B9038824(v17, v18, v7);
      v19 = OUTLINED_FUNCTION_461();
      sub_1B9038824(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_42_0();
      sub_1B903880C(v22, v23, v24);
      if (v16)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v29 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v32, v33, 255);
    v34 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_461();
    sub_1B9038824(v37, v38, v39);
LABEL_8:
    v40 = OUTLINED_FUNCTION_42_0();
    sub_1B903880C(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_259();
    sub_1B903880C(v43, v44, v6);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_461();
  sub_1B90387E4(v25, v26, 255);
  if (v6 != 255)
  {
    v27 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v27, v28, v6);
    goto LABEL_8;
  }

  v46 = OUTLINED_FUNCTION_259();
  sub_1B90387E4(v46, v47, 255);
  v48 = OUTLINED_FUNCTION_461();
  sub_1B903880C(v48, v49, 255);
LABEL_11:
  v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_871(v50);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v51, v52);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9249CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F28, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9249D48(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5A80, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9249DB8()
{
  sub_1B8CD2D08(&qword_1EBAB5A80, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);

  return sub_1B964C5D0();
}

uint64_t sub_1B9249E38()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B9713D80);
  qword_1EBAC90C0 = 0xD00000000000002DLL;
  *algn_1EBAC90C8 = 0x80000001B9711AF0;
  return result;
}

uint64_t sub_1B9249ECC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5B10);
  __swift_project_value_buffer(v0, qword_1EBAB5B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 2;
  *v4 = "server_driven_experience";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 3;
  *v8 = "client_driven_experience";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "result_entities";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "resolution_request";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "server_understanding";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "server_suggestion";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "response_cache_control";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "instruction_intent";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "user_prompt_signals";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "app_intent";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 1000;
  *v26 = "sage_experience";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B924A334()
{
  v1 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  __swift_storeEnumTagSinglePayload(v0 + v16, 1, 1, v17);
  return v0;
}

uint64_t sub_1B924A4A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50[13] = v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50[12] = v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50[11] = v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50[10] = v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v50[9] = v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v50[5] = v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v50[3] = v50 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  v29 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  __swift_storeEnumTagSinglePayload(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding;
  v50[1] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion;
  v50[2] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  __swift_storeEnumTagSinglePayload(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl;
  v50[4] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  __swift_storeEnumTagSinglePayload(v1 + v35, 1, 1, v36);
  v37 = v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals;
  v50[6] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals;
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  __swift_storeEnumTagSinglePayload(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent;
  v50[7] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent;
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  __swift_storeEnumTagSinglePayload(v1 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience;
  v50[8] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience;
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  __swift_storeEnumTagSinglePayload(v1 + v42, 1, 1, v43);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v44 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  swift_beginAccess();
  v45 = *(a1 + v44);
  swift_beginAccess();
  v46 = *(v1 + v28);
  *(v1 + v28) = v45;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v47 = (a1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent);
  swift_beginAccess();
  v48 = *v47;
  LOBYTE(v47) = *(v47 + 8);
  swift_beginAccess();
  *v37 = v48;
  *(v37 + 8) = v47;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B924AD20()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience, &unk_1EBAC9478, &qword_1B96AA738);
  v1 = *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation, &qword_1EBAC9480, &qword_1B96AA740);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding, &qword_1EBAC9488, &qword_1B96AA748);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion, &qword_1EBAC9490, &qword_1B96AA750);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl, &qword_1EBAC9498, &qword_1B96AA758);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals, &qword_1EBAC94A0, &qword_1B96AA760);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent, &qword_1EBAC94A8, &qword_1B96AA768);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience, &qword_1EBAC94B0, &qword_1B96AA770);
  return v0;
}

uint64_t sub_1B924AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 2:
        sub_1B924B098(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B924B608(a1, a2, a3, a4);
        break;
      case 4:
        sub_1B924BB78();
        break;
      case 5:
        sub_1B924BC54(a1, a2, a3, a4);
        break;
      case 6:
        continue;
      case 7:
        sub_1B924C174();
        break;
      case 8:
        sub_1B924C250();
        break;
      case 9:
        sub_1B924C32C();
        break;
      case 10:
        sub_1B9268194(a2, a1, a3, a4, &OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent, sub_1B92842CC);
        break;
      case 11:
        sub_1B924C408();
        break;
      case 12:
        sub_1B924C4E4();
        break;
      default:
        if (result == 1000)
        {
          sub_1B924C5C0();
        }

        break;
    }
  }
}

uint64_t sub_1B924B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0D0, &qword_1B96B23F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    v32[0] = a1;
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v25, &qword_1EBACA0D0, &qword_1B96B23F0);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACA0D0, &qword_1B96B23F0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACA0D0, &qword_1B96B23F0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACA0D0, &qword_1B96B23F0);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACA0D0, &qword_1B96B23F0);
  v31 = v33;
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B924B608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0D8, &qword_1B96B23F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    v32[0] = a1;
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBACA0D8, &qword_1B96B23F8);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACA0D8, &qword_1B96B23F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACA0D8, &qword_1B96B23F8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACA0D8, &qword_1B96B23F8);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACA0D8, &qword_1B96B23F8);
  v31 = v33;
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B924BB78()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B924BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v35 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0E0, &qword_1B96B2400);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v36 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v31 - v22;
  __swift_storeEnumTagSinglePayload(v31 - v22, 1, 1, v5);
  v24 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation;
  swift_beginAccess();
  v34 = a1;
  v31[1] = v24;
  sub_1B8D92024();
  v32 = v15;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBAC9480, &qword_1B96AA740);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    sub_1B8D9207C(v23, &qword_1EBACA0E0, &qword_1B96B2400);
    sub_1B9239DA8();
    sub_1B9239DA8();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
  }

  sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);
  v26 = v37;
  sub_1B964C580();
  if (v26)
  {
    v27 = v23;
    return sub_1B8D9207C(v27, &qword_1EBACA0E0, &qword_1B96B2400);
  }

  v28 = v36;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v28, 1, v5) == 1)
  {
    sub_1B8D9207C(v23, &qword_1EBACA0E0, &qword_1B96B2400);
    v27 = v28;
    return sub_1B8D9207C(v27, &qword_1EBACA0E0, &qword_1B96B2400);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v23, &qword_1EBACA0E0, &qword_1B96B2400);
  v30 = v33;
  sub_1B9239DA8();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B924C174()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C250()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  sub_1B8CD2D08(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C32C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C408()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  sub_1B8CD2D08(&qword_1EBAB43B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C4E4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  sub_1B8CD2D08(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C5C0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  sub_1B8CD2D08(&qword_1EBAB4640, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v81 = a3;
  v78 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = v60 - v7;
  v62 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60[1] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = v60 - v12;
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v60[2] = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v75 = v60 - v17;
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  v18 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v74 = v60 - v22;
  v69 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  v23 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v71 = v60 - v27;
  v72 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  v28 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v68 = v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v60 - v32;
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  v34 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = v60 - v38;
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = v60 - v44;
  swift_beginAccess();
  sub_1B8D92024();
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    v47 = v77;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v48 = v77;
      sub_1B924D870(a1, v78, v81, v76);
    }

    else
    {
      v48 = v77;
      sub_1B924D63C(a1, v78, v81, v76);
    }

    v47 = v48;
    if (v48)
    {
      return sub_1B9239E50();
    }

    sub_1B9239E50();
  }

  v49 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  swift_beginAccess();
  if (*(*(a1 + v49) + 16))
  {
    type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
    sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);

    sub_1B964C730();
    if (v47)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v51) == 1)
  {
    sub_1B8D9207C(v39, &qword_1EBAC9480, &qword_1B96AA740);
    goto LABEL_18;
  }

  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);
  sub_1B964C740();
  if (v47)
  {
    return sub_1B9239E50();
  }

  sub_1B9239E50();
LABEL_18:
  swift_beginAccess();
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v73);
  v53 = v75;
  v54 = v74;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v33, &qword_1EBAC9488, &qword_1B96AA748);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v47)
    {
      return result;
    }
  }

  swift_beginAccess();
  v55 = v71;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v72) == 1)
  {
    sub_1B8D9207C(v55, &qword_1EBAC9490, &qword_1B96AA750);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v47)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v54, 1, v69) == 1)
  {
    sub_1B8D9207C(v54, &qword_1EBAC9498, &qword_1B96AA758);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v47)
    {
      return result;
    }
  }

  v56 = a1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  swift_beginAccess();
  if (!*v56 || (v57 = *(v56 + 8), v79 = *v56, v80 = v57, sub_1B92842CC(), result = sub_1B964C680(), !v47))
  {
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v53, 1, v66) == 1)
    {
      sub_1B8D9207C(v53, &qword_1EBAC94A0, &qword_1B96AA760);
    }

    else
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB43B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals);
      sub_1B964C740();
      result = sub_1B9239E50();
      if (v47)
      {
        return result;
      }
    }

    swift_beginAccess();
    v58 = v64;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v58, 1, v65) == 1)
    {
      sub_1B8D9207C(v58, &qword_1EBAC94A8, &qword_1B96AA768);
LABEL_35:
      swift_beginAccess();
      v59 = v61;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v59, 1, v62) == 1)
      {
        return sub_1B8D9207C(v59, &qword_1EBAC94B0, &qword_1B96AA770);
      }

      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB4640, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (!v47)
    {
      goto LABEL_35;
    }
  }

  return result;
}

uint64_t sub_1B924D63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B924D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void sub_1B924DAD0()
{
  OUTLINED_FUNCTION_284();
  v266 = v2;
  v4 = v3;
  v232 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  v5 = OUTLINED_FUNCTION_59_1(v232);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v228 = v8;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA090, L"z\n\v");
  OUTLINED_FUNCTION_59_1(v231);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v236 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v229 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_266_0();
  v234 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v240 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(v20);
  v21 = OUTLINED_FUNCTION_59_1(v240);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  v230 = v24;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA098, L"~\n\v");
  OUTLINED_FUNCTION_59_1(v239);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_185();
  v241 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44_0();
  v233 = v33;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_266_0();
  v246 = v35;
  v36 = OUTLINED_FUNCTION_201();
  v244 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(v36);
  v37 = OUTLINED_FUNCTION_59_1(v244);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21();
  v238 = v40;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0A0, &qword_1B96B23C0);
  OUTLINED_FUNCTION_59_1(v243);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_185();
  v245 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  v46 = OUTLINED_FUNCTION_183(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44_0();
  v242 = v49;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_266_0();
  v247 = v51;
  v52 = OUTLINED_FUNCTION_201();
  v251 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(v52);
  v53 = OUTLINED_FUNCTION_59_1(v251);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21();
  v248 = v56;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0A8, &qword_1B96B23C8);
  OUTLINED_FUNCTION_59_1(v250);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_185();
  v252 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  v62 = OUTLINED_FUNCTION_183(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44_0();
  v249 = v65;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_266_0();
  v253 = v67;
  v68 = OUTLINED_FUNCTION_201();
  v255 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v68);
  v69 = OUTLINED_FUNCTION_59_1(v255);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_21();
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0B0, &qword_1B96B23D0);
  OUTLINED_FUNCTION_59_1(v254);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_185();
  v256 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  v77 = OUTLINED_FUNCTION_183(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_266_0();
  v257 = v81;
  v82 = OUTLINED_FUNCTION_201();
  v259 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(v82);
  v83 = OUTLINED_FUNCTION_59_1(v259);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_21();
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0B8, &qword_1B96B23D8);
  OUTLINED_FUNCTION_59_1(v258);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_185();
  v260 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  v91 = OUTLINED_FUNCTION_183(v90);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_266_0();
  v261 = v95;
  v96 = OUTLINED_FUNCTION_201();
  v263 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(v96);
  v97 = OUTLINED_FUNCTION_59_1(v263);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_21();
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0C0, &qword_1B96B23E0);
  OUTLINED_FUNCTION_59_1(v262);
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_185();
  v264 = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  v105 = OUTLINED_FUNCTION_183(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_266_0();
  v265 = v109;
  v110 = OUTLINED_FUNCTION_201();
  v111 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(v110);
  v112 = OUTLINED_FUNCTION_59_1(v111);
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_21();
  v115 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0C8, &qword_1B96B23E8) - 8);
  v116 = *(*v115 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_458();
  v118 = OUTLINED_FUNCTION_439_0();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(v118, v119);
  v121 = OUTLINED_FUNCTION_183(v120);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_447_0();
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v125 = v115[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v126)
  {

    sub_1B8D9207C(v0, &unk_1EBAC9478, &qword_1B96AA738);
    OUTLINED_FUNCTION_37_0(v1 + v125);
    if (v126)
    {
      sub_1B8D9207C(v1, &unk_1EBAC9478, &qword_1B96AA738);
      goto LABEL_13;
    }

LABEL_9:
    v127 = &qword_1EBACA0C8;
    v128 = &qword_1B96B23E8;
LABEL_10:
    v129 = v1;
LABEL_11:
    sub_1B8D9207C(v129, v127, v128);
LABEL_90:

    goto LABEL_91;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v125);
  if (v126)
  {

    sub_1B8D9207C(v0, &unk_1EBAC9478, &qword_1B96AA738);
    OUTLINED_FUNCTION_12_28();
    sub_1B9239E50();
    goto LABEL_9;
  }

  sub_1B9239DA8();

  OUTLINED_FUNCTION_196();
  static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience.== infix(_:_:)();
  v131 = v130;
  sub_1B9239E50();
  v132 = OUTLINED_FUNCTION_690();
  sub_1B8D9207C(v132, v133, &qword_1B96AA738);
  OUTLINED_FUNCTION_303();
  sub_1B9239E50();
  v134 = OUTLINED_FUNCTION_205();
  sub_1B8D9207C(v134, v135, &qword_1B96AA738);
  if ((v131 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_13:
  v136 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  OUTLINED_FUNCTION_521();
  v137 = *(v4 + v136);
  v138 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  OUTLINED_FUNCTION_521();
  v139 = *(v266 + v138);

  OUTLINED_FUNCTION_543();
  sub_1B8D7FB90();
  v141 = v140;

  if ((v141 & 1) == 0)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v142 = *(v262 + 48);
  v143 = v264;
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_473_0();
  v144 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v144, v145);
  if (v126)
  {
    sub_1B8D9207C(v265, &qword_1EBAC9480, &qword_1B96AA740);
    OUTLINED_FUNCTION_37_0(v264 + v142);
    if (v126)
    {
      sub_1B8D9207C(v264, &qword_1EBAC9480, &qword_1B96AA740);
      goto LABEL_25;
    }

LABEL_22:
    v127 = &qword_1EBACA0C0;
    v128 = &qword_1B96B23E0;
LABEL_23:
    v129 = v143;
    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v264 + v142);
  if (v146)
  {
    sub_1B8D9207C(v265, &qword_1EBAC9480, &qword_1B96AA740);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
    goto LABEL_22;
  }

  sub_1B9239DA8();
  OUTLINED_FUNCTION_275();
  v147 = static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation.== infix(_:_:)();
  sub_1B9239E50();
  OUTLINED_FUNCTION_180_2(v265);
  OUTLINED_FUNCTION_245();
  sub_1B9239E50();
  v148 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v148, v149, &qword_1B96AA740);
  if ((v147 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_25:
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v150 = *(v258 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v260, 1, v259);
  if (v126)
  {
    sub_1B8D9207C(v261, &qword_1EBAC9488, &qword_1B96AA748);
    OUTLINED_FUNCTION_57(v260 + v150);
    if (v126)
    {
      sub_1B8D9207C(v260, &qword_1EBAC9488, &qword_1B96AA748);
      goto LABEL_35;
    }

LABEL_33:
    v127 = &qword_1EBACA0B8;
    v128 = &qword_1B96B23D8;
    v129 = v260;
    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v260 + v150);
  if (v151)
  {
    sub_1B8D9207C(v261, &qword_1EBAC9488, &qword_1B96AA748);
    OUTLINED_FUNCTION_171_2();
    sub_1B9239E50();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_118_6();
  sub_1B9239DA8();
  v152 = OUTLINED_FUNCTION_186();
  v154 = static Apple_Parsec_Siri_V2alpha_ServerUnderstanding.== infix(_:_:)(v152, v153);
  sub_1B9239E50();
  sub_1B8D9207C(v261, &qword_1EBAC9488, &qword_1B96AA748);
  OUTLINED_FUNCTION_246();
  sub_1B9239E50();
  v155 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v155, v156, &qword_1B96AA748);
  if ((v154 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_35:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v157 = *(v254 + 48);
  v1 = v256;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v158 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v158, v159, v255);
  if (v126)
  {
    sub_1B8D9207C(v257, &qword_1EBAC9490, &qword_1B96AA750);
    OUTLINED_FUNCTION_57(v256 + v157);
    if (v126)
    {
      sub_1B8D9207C(v256, &qword_1EBAC9490, &qword_1B96AA750);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v256 + v157);
  if (v160)
  {
    sub_1B8D9207C(v257, &qword_1EBAC9490, &qword_1B96AA750);
    OUTLINED_FUNCTION_171_2();
    sub_1B9239E50();
LABEL_43:
    v127 = &qword_1EBACA0B0;
    v128 = &qword_1B96B23D0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_117_4();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_186();
  static Apple_Parsec_Siri_V2alpha_ServerSuggestion.== infix(_:_:)();
  v162 = v161;
  sub_1B9239E50();
  OUTLINED_FUNCTION_106_6();
  sub_1B8D9207C(v163, v164, v165);
  OUTLINED_FUNCTION_246();
  sub_1B9239E50();
  OUTLINED_FUNCTION_106_6();
  sub_1B8D9207C(v166, v167, v168);
  if ((v162 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_45:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v169 = *(v250 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  v170 = v252;
  OUTLINED_FUNCTION_473_0();
  v171 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v171, v172);
  if (v126)
  {
    sub_1B8D9207C(v253, &qword_1EBAC9498, &qword_1B96AA758);
    OUTLINED_FUNCTION_37_0(v252 + v169);
    if (v126)
    {
      sub_1B8D9207C(v252, &qword_1EBAC9498, &qword_1B96AA758);
      goto LABEL_50;
    }

LABEL_64:
    v127 = &qword_1EBACA0A8;
    v128 = &qword_1B96B23C8;
LABEL_65:
    v129 = v170;
    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v252 + v169);
  if (v187)
  {
    sub_1B8D9207C(v253, &qword_1EBAC9498, &qword_1B96AA758);
    OUTLINED_FUNCTION_464();
    sub_1B9239E50();
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_116_4();
  sub_1B9239DA8();
  if (*v249 != *v248 || *(v249 + 1) != *(v248 + 1))
  {
    sub_1B9239E50();
    v194 = &qword_1B96AA758;
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v195, v196, v197);
LABEL_71:
    sub_1B9239E50();
    v129 = OUTLINED_FUNCTION_246();
    v128 = v194;
    goto LABEL_11;
  }

  v188 = *(v251 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v189, v190);
  v191 = OUTLINED_FUNCTION_731();
  sub_1B9239E50();
  sub_1B8D9207C(v253, &qword_1EBAC9498, &qword_1B96AA758);
  OUTLINED_FUNCTION_196();
  sub_1B9239E50();
  v192 = OUTLINED_FUNCTION_186();
  sub_1B8D9207C(v192, v193, &qword_1B96AA758);
  if ((v191 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_50:
  v173 = v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  OUTLINED_FUNCTION_521();
  v174 = *v173;
  v175 = *(v173 + 8);
  v176 = v266 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  OUTLINED_FUNCTION_521();
  v177 = *(v176 + 8);
  if (!sub_1B8D92198(v174, v175, *v176))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v178 = *(v243 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  v170 = v245;
  OUTLINED_FUNCTION_473_0();
  v179 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v179, v180);
  if (v126)
  {
    sub_1B8D9207C(v247, &qword_1EBAC94A0, &qword_1B96AA760);
    OUTLINED_FUNCTION_37_0(v245 + v178);
    v181 = v246;
    if (v126)
    {
      sub_1B8D9207C(v245, &qword_1EBAC94A0, &qword_1B96AA760);
      goto LABEL_56;
    }

    goto LABEL_75;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v245 + v178);
  v181 = v246;
  if (v198)
  {
    sub_1B8D9207C(v247, &qword_1EBAC94A0, &qword_1B96AA760);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_75:
    v127 = &qword_1EBACA0A0;
    v128 = &qword_1B96B23C0;
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_115_9();
  sub_1B9239DA8();
  v199 = sub_1B8D691E8(*v242, *v238);
  if ((v199 & 1) == 0)
  {
    sub_1B9239E50();
    v194 = &qword_1B96AA760;
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v207, v208, v209);
    goto LABEL_71;
  }

  v200 = *(v244 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v201, v202);
  v203 = OUTLINED_FUNCTION_731();
  sub_1B9239E50();
  OUTLINED_FUNCTION_180_2(v247);
  OUTLINED_FUNCTION_245();
  sub_1B9239E50();
  v204 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v204, v205, &qword_1B96AA760);
  if ((v203 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_56:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v182 = *(v239 + 48);
  v143 = v241;
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_473_0();
  v183 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v183, v184, v240);
  if (v126)
  {
    sub_1B8D9207C(v181, &qword_1EBAC94A8, &qword_1B96AA768);
    OUTLINED_FUNCTION_57(v241 + v182);
    if (v126)
    {
      sub_1B8D9207C(v241, &qword_1EBAC94A8, &qword_1B96AA768);
      v186 = v234;
      v185 = v236;
      goto LABEL_85;
    }

    goto LABEL_82;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v241 + v182);
  if (v206)
  {
    sub_1B8D9207C(v181, &qword_1EBAC94A8, &qword_1B96AA768);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_82:
    v127 = &qword_1EBACA098;
    v128 = L"~\n\v";
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_114_8();
  sub_1B9239DA8();
  v210 = OUTLINED_FUNCTION_275();
  static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.== infix(_:_:)(v210, v211, v212, v213, v214, v215, v216, v217, v228, v229, v230, v231, v232, v233, v234, v236, v238, v239, v240, v241);
  v219 = v218;
  sub_1B9239E50();
  OUTLINED_FUNCTION_180_2(v181);
  OUTLINED_FUNCTION_245();
  sub_1B9239E50();
  v220 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v220, v221, &qword_1B96AA768);
  v186 = v235;
  v185 = v237;
  if ((v219 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_85:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v222 = *(v231 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_473_0();
  v223 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v223, v224);
  if (!v126)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v185 + v222);
    if (!v225)
    {
      OUTLINED_FUNCTION_113_9();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_275();
      static Apple_Parsec_Siri_V2alpha_SageExperience.== infix(_:_:)();

      sub_1B9239E50();
      OUTLINED_FUNCTION_180_2(v186);
      OUTLINED_FUNCTION_245();
      sub_1B9239E50();
      v226 = OUTLINED_FUNCTION_541_0();
      sub_1B8D9207C(v226, v227, &qword_1B96AA770);
      goto LABEL_91;
    }

    sub_1B8D9207C(v186, &qword_1EBAC94B0, &qword_1B96AA770);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_95:
    sub_1B8D9207C(v185, &qword_1EBACA090, L"z\n\v");
    goto LABEL_91;
  }

  sub_1B8D9207C(v186, &qword_1EBAC94B0, &qword_1B96AA770);
  OUTLINED_FUNCTION_37_0(v185 + v222);
  if (!v126)
  {
    goto LABEL_95;
  }

  sub_1B8D9207C(v185, &qword_1EBAC94B0, &qword_1B96AA770);
LABEL_91:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B924F230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F20, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B924F2B0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B924F320()
{
  sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);

  return sub_1B964C5D0();
}

uint64_t sub_1B924F3A0()
{
  result = MEMORY[0x1BFADC850](0xD000000000000011, 0x80000001B9713C50);
  qword_1EBAC90D0 = 0xD00000000000002DLL;
  *algn_1EBAC90D8 = 0x80000001B9711AF0;
  return result;
}

uint64_t sub_1B924F434()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5AD0);
  __swift_project_value_buffer(v0, qword_1EBAB5AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "pegasus_perf_metrics";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "latency_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 14;
  *v14 = "pegasus_client_event_log";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 23;
  *v16 = "pegasus_client_event_logs";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 24;
  *v18 = "pegasus_self_opaque_payloads";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 28;
  *v20 = "is_fallback_triggered";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 29;
  *v22 = "math_operation_contains_random";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 53;
  *v24 = "albus_multiturn_rewrite";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 54;
  *v26 = "domain_use_case_metadata";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B924F870()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusPerfMetrics;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo;
  v4 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads) = v7;
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered) = 0;
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom) = 0;
  v8 = (v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata) = v7;
  return v0;
}

uint64_t sub_1B924F960(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42[2] = v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusPerfMetrics;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo;
  v42[0] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo;
  v14 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog;
  v42[1] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs) = MEMORY[0x1E69E7CC0];
  v43 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads) = v18;
  v44 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered) = 0;
  v46 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom) = 0;
  v19 = (v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v47 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata) = v18;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v20;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();

  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v22 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
  swift_beginAccess();
  v23 = *(a1 + v22);
  swift_beginAccess();
  v24 = *(v1 + v17);
  *(v1 + v17) = v23;

  v25 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v43;
  swift_beginAccess();
  v28 = *(v1 + v27);
  *(v1 + v27) = v26;

  v29 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);
  v30 = v44;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + v31);
  v32 = v46;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = (a1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  swift_beginAccess();
  v36 = v19[1];
  *v19 = v35;
  v19[1] = v34;

  v37 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
  swift_beginAccess();
  v38 = *(a1 + v37);

  v39 = v47;
  swift_beginAccess();
  v40 = *(v1 + v39);
  *(v1 + v39) = v38;

  return v1;
}

uint64_t sub_1B924FED8()
{
  v1 = *(v0 + 24);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusPerfMetrics, &qword_1EBAC94D8, &qword_1B96AA798);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo, &qword_1EBAC94E0, &qword_1B96AA7A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog, &qword_1EBAC94E8, &qword_1B96AA7A8);
  v2 = *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs);

  v3 = *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads);

  v4 = *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0] + 8);

  v5 = *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata);

  return v0;
}

uint64_t sub_1B925000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v12 & 1) != 0)
    {
      return result;
    }

    if (!v10 & v9)
    {
      switch(result)
      {
        case 54:
          sub_1B9250618();
          break;
        case 4:
          sub_1B9250224();
          break;
        case 9:
          sub_1B9250300();
          break;
        case 14:
          sub_1B92503DC();
          break;
        case 53:
          sub_1B9268110(a2, a1, a3, a4, OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite, MEMORY[0x1E69AACE0]);
          break;
        case 1:
          sub_1B9267EF0();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 23:
          sub_1B92504B8();
          break;
        case 24:
          sub_1B9250594(a2, a1, a3, a4, &OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads, MEMORY[0x1E69AAC50]);
          break;
        case 25:
        case 26:
        case 27:
          continue;
        case 28:
        case 29:
          sub_1B92682B0();
          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_1B9250224()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9250300()
{
  swift_beginAccess();
  type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  sub_1B8CD2D08(&qword_1EBAB52C8, type metadata accessor for Latencyinfopb_KfedLatencyInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92503DC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92504B8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9250594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_318_1();
  a6();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9250618()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0);
  sub_1B8CD2D08(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9250724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = v43 - v10;
  v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  v11 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v43[1] = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = v43 - v15;
  v47 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  v16 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v43[2] = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v43 - v20;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  swift_beginAccess();
  v24 = a1;
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v44 = a4;
  }

  else
  {
    v44 = a4;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC94D8, &qword_1B96AA798);
    v29 = v5;
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);
    sub_1B964C740();
    v29 = v5;
    result = sub_1B9239E50();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  v30 = v46;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v47);
  v32 = v48;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v30, &qword_1EBAC94E0, &qword_1B96AA7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB52C8, type metadata accessor for Latencyinfopb_KfedLatencyInfo);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v29)
    {
      return result;
    }
  }

  swift_beginAccess();
  v33 = v45;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
  {
    sub_1B8D9207C(v33, &qword_1EBAC94E8, &qword_1B96AA7A8);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v29)
    {
      return result;
    }
  }

  v34 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
  swift_beginAccess();
  if (!*(*(v24 + v34) + 16) || (sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog), , sub_1B964C730(), result = , !v29))
  {
    v35 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
    swift_beginAccess();
    if (!*(*(v24 + v35) + 16) || (, sub_1B964C690(), result = , !v29))
    {
      v36 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
      swift_beginAccess();
      if (*(v24 + v36) != 1 || (result = sub_1B964C670(), !v29))
      {
        v37 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
        swift_beginAccess();
        if (*(v24 + v37) != 1 || (result = sub_1B964C670(), !v29))
        {
          v38 = (v24 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
          swift_beginAccess();
          v40 = *v38;
          v39 = v38[1];
          v41 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v41 = v40 & 0xFFFFFFFFFFFFLL;
          }

          if (!v41 || (, sub_1B964C700(), result = , !v29))
          {
            v42 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
            result = swift_beginAccess();
            if (*(*(v24 + v42) + 16))
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0);
              sub_1B8CD2D08(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

              sub_1B964C730();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B9250FF8(uint64_t a1, uint64_t a2)
{
  v95 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  v4 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA078, L"n\n\v");
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v90 - v13;
  v101 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  v14 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v93 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA080, L"r\n\v");
  v16 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v97 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v90 - v22;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA088, L"v\n\v");
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v90 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v104 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v90 - v34;
  swift_beginAccess();
  v36 = *(a1 + 16);
  v37 = *(a1 + 24);
  v106 = a1;
  swift_beginAccess();
  v38 = v36 == *(a2 + 16) && v37 == *(a2 + 24);
  if (v38 || (v39 = 0, (sub_1B964C9F0() & 1) != 0))
  {
    v91 = v6;
    v105 = a2;
    v40 = v106;
    swift_beginAccess();
    v41 = v105;
    sub_1B8D92024();
    swift_beginAccess();
    v42 = *(v26 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v29, 1, v23) == 1)
    {

      sub_1B8D9207C(v35, &qword_1EBAC94D8, &qword_1B96AA798);
      if (__swift_getEnumTagSinglePayload(&v29[v42], 1, v23) == 1)
      {
        sub_1B8D9207C(v29, &qword_1EBAC94D8, &qword_1B96AA798);
LABEL_9:
        swift_beginAccess();
        v43 = v100;
        sub_1B8D92024();
        swift_beginAccess();
        v44 = *(v99 + 48);
        v29 = v102;
        sub_1B8D92024();
        sub_1B8D92024();
        v45 = v101;
        if (__swift_getEnumTagSinglePayload(v29, 1, v101) == 1)
        {
          sub_1B8D9207C(v43, &qword_1EBAC94E0, &qword_1B96AA7A0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v29[v44], 1, v45);
          v47 = v103;
          if (EnumTagSinglePayload == 1)
          {
            sub_1B8D9207C(v29, &qword_1EBAC94E0, &qword_1B96AA7A0);
LABEL_28:
            swift_beginAccess();
            sub_1B8D92024();
            swift_beginAccess();
            v58 = *(v94 + 48);
            v59 = v96;
            sub_1B8D92024();
            sub_1B8D92024();
            v60 = v95;
            if (__swift_getEnumTagSinglePayload(v59, 1, v95) == 1)
            {
              sub_1B8D9207C(v47, &qword_1EBAC94E8, &qword_1B96AA7A8);
              if (__swift_getEnumTagSinglePayload(v59 + v58, 1, v60) == 1)
              {
                sub_1B8D9207C(v59, &qword_1EBAC94E8, &qword_1B96AA7A8);
                goto LABEL_31;
              }

              goto LABEL_43;
            }

            v86 = v92;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v59 + v58, 1, v60) == 1)
            {
              sub_1B8D9207C(v47, &qword_1EBAC94E8, &qword_1B96AA7A8);
              sub_1B9239E50();
LABEL_43:
              v49 = &qword_1EBACA078;
              v50 = L"n\n\v";
              v54 = v59;
              goto LABEL_24;
            }

            v87 = v91;
            sub_1B9239DA8();
            if (MEMORY[0x1BFADC060](*v86, v86[1], *v87, v87[1]) & 1) != 0 && (MEMORY[0x1BFADC060](v86[2], v86[3], v87[2], v87[3]))
            {
              v88 = *(v60 + 24);
              sub_1B964C2B0();
              sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
              v89 = sub_1B964C850();
              sub_1B9239E50();
              sub_1B8D9207C(v47, &qword_1EBAC94E8, &qword_1B96AA7A8);
              sub_1B9239E50();
              sub_1B8D9207C(v59, &qword_1EBAC94E8, &qword_1B96AA7A8);
              if (v89)
              {
LABEL_31:
                v61 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
                swift_beginAccess();
                v62 = *(v40 + v61);
                v63 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
                swift_beginAccess();
                v64 = *(v41 + v63);

                sub_1B8D8EA50();
                v66 = v65;

                if (v66)
                {
                  v67 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
                  swift_beginAccess();
                  v68 = *(v40 + v67);
                  v69 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
                  swift_beginAccess();
                  v70 = *(v41 + v69);

                  v71 = sub_1B8D8F484(v68, v70);

                  if (v71)
                  {
                    v72 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
                    swift_beginAccess();
                    LODWORD(v72) = *(v40 + v72);
                    v73 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
                    swift_beginAccess();
                    if (v72 == *(v41 + v73))
                    {
                      v74 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
                      swift_beginAccess();
                      LODWORD(v74) = *(v40 + v74);
                      v75 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
                      swift_beginAccess();
                      if (v74 == *(v41 + v75))
                      {
                        v76 = (v40 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
                        swift_beginAccess();
                        v77 = *v76;
                        v78 = v76[1];
                        v79 = (v41 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
                        swift_beginAccess();
                        v80 = v77 == *v79 && v78 == v79[1];
                        if (v80 || (sub_1B964C9F0() & 1) != 0)
                        {
                          v81 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
                          swift_beginAccess();
                          v82 = *(v40 + v81);
                          v83 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
                          swift_beginAccess();
                          v84 = *(v41 + v83);

                          sub_1B8D8FAA8();
                          v39 = v85;

                          return v39 & 1;
                        }
                      }
                    }
                  }
                }
              }

LABEL_25:

              v39 = 0;
              return v39 & 1;
            }

            sub_1B9239E50();
            sub_1B8D9207C(v47, &qword_1EBAC94E8, &qword_1B96AA7A8);
            sub_1B9239E50();
            v54 = v59;
            v49 = &qword_1EBAC94E8;
            v50 = &qword_1B96AA7A8;
LABEL_24:
            sub_1B8D9207C(v54, v49, v50);
            goto LABEL_25;
          }
        }

        else
        {
          sub_1B8D92024();
          v55 = __swift_getEnumTagSinglePayload(&v29[v44], 1, v45);
          v56 = v103;
          if (v55 != 1)
          {
            sub_1B9239DA8();
            LODWORD(v106) = static Latencyinfopb_KfedLatencyInfo.== infix(_:_:)();
            sub_1B9239E50();
            sub_1B8D9207C(v43, &qword_1EBAC94E0, &qword_1B96AA7A0);
            v47 = v56;
            sub_1B9239E50();
            sub_1B8D9207C(v29, &qword_1EBAC94E0, &qword_1B96AA7A0);
            if ((v106 & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_28;
          }

          sub_1B8D9207C(v43, &qword_1EBAC94E0, &qword_1B96AA7A0);
          sub_1B9239E50();
        }

        v49 = &qword_1EBACA080;
        v50 = L"r\n\v";
LABEL_23:
        v54 = v29;
        goto LABEL_24;
      }
    }

    else
    {
      v48 = v104;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(&v29[v42], 1, v23) != 1)
      {
        v51 = v98;
        sub_1B9239DA8();
        if (*v48 != *v51 || v48[1] != v51[1])
        {

          sub_1B9239E50();
          sub_1B8D9207C(v35, &qword_1EBAC94D8, &qword_1B96AA798);
          sub_1B9239E50();
          v54 = v29;
          v49 = &qword_1EBAC94D8;
          v50 = &qword_1B96AA798;
          goto LABEL_24;
        }

        v52 = *(v23 + 24);
        sub_1B964C2B0();
        sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
        v40 = v106;

        v53 = sub_1B964C850();
        sub_1B9239E50();
        sub_1B8D9207C(v35, &qword_1EBAC94D8, &qword_1B96AA798);
        sub_1B9239E50();
        v41 = v105;
        sub_1B8D9207C(v29, &qword_1EBAC94D8, &qword_1B96AA798);
        if ((v53 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      sub_1B8D9207C(v35, &qword_1EBAC94D8, &qword_1B96AA798);
      sub_1B9239E50();
    }

    v49 = &qword_1EBACA088;
    v50 = L"v\n\v";
    goto LABEL_23;
  }

  return v39 & 1;
}

uint64_t sub_1B9251EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F18, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9251F78(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9251FE8()
{
  sub_1B8CD2D08(&qword_1EBAB5AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B9252074()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5C88);
  __swift_project_value_buffer(v0, qword_1EBAB5C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pegasus_domain_flow_step_log";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pegasus_domain_user_sensitive_tier1_log";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_11_5();
      result = sub_1B964C6A0();
      if (!v1)
      {
LABEL_8:
        v7 = v0[2];
        v8 = v0[3];
        switch(v8 >> 62)
        {
          case 1uLL:
            v9 = v7;
            v10 = v7 >> 32;
            goto LABEL_13;
          case 2uLL:
            v9 = *(v7 + 16);
            v10 = *(v7 + 24);
LABEL_13:
            if (v9 != v10)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          case 3uLL:
            goto LABEL_15;
          default:
            if ((v8 & 0xFF000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_14:
            OUTLINED_FUNCTION_11_5();
            result = sub_1B964C6A0();
            if (!v1)
            {
LABEL_15:
              v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0) + 24);
              result = OUTLINED_FUNCTION_8_1();
            }

            break;
        }
      }

      return result;
  }
}

uint64_t static Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_78_6(a1, a2);
  if ((MEMORY[0x1BFADC060](v4) & 1) == 0 || (MEMORY[0x1BFADC060](*(v3 + 16), *(v3 + 24), *(v2 + 16), *(v2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  OUTLINED_FUNCTION_188_1(v5);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B92524CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F10, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925254C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92525BC()
{
  sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);

  return sub_1B964C5D0();
}

uint64_t sub_1B9252648()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC90E0);
  __swift_project_value_buffer(v0, qword_1EBAC90E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start_timestamp";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end_timestamp";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.decodeMessage<A>(decoder:)()
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
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  OUTLINED_FUNCTION_188_1(v4);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9252A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F08, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9252AC4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9252B34()
{
  sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);

  return sub_1B964C5D0();
}

uint64_t sub_1B9252BCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC90F8);
  __swift_project_value_buffer(v0, qword_1EBAC90F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "multi_user_response_context";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "audio_response_context";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9252DB8()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  result = __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  qword_1EBAC9110 = v3;
  return result;
}

uint64_t sub_1B9252FBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v0;
}

uint64_t sub_1B92531C0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext, &qword_1EBAC94F0, &qword_1B96AA7B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext, &qword_1EBAC94F8, &qword_1B96AA7B8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B92532AC()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1B9253414();
    }

    else if (result == 2)
    {
      sub_1B9253338();
    }
  }

  return result;
}

uint64_t sub_1B9253338()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  sub_1B8CD2D08(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9253414()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9253520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v20 = a2;
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  v9 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBAC94F0, &qword_1B96AA7B0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
  {
    return sub_1B8D9207C(v8, &qword_1EBAC94F8, &qword_1B96AA7B8);
  }

  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);
  sub_1B964C740();
  return sub_1B9239E50();
}

void sub_1B92538F4()
{
  OUTLINED_FUNCTION_284();
  v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  v3 = OUTLINED_FUNCTION_59_1(v48);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA068, L"f\n\v");
  OUTLINED_FUNCTION_59_1(v46);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v49 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  v11 = OUTLINED_FUNCTION_183(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_266_0();
  v47 = v15;
  v16 = OUTLINED_FUNCTION_201();
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(v16);
  v18 = OUTLINED_FUNCTION_135_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  v45 = v21;
  v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA070, L"j\n\v") - 8);
  v23 = *(*v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_458();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  v26 = OUTLINED_FUNCTION_183(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_447_0();
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v30 = v22[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_117(v2);
  if (!v31)
  {
    OUTLINED_FUNCTION_205();
    sub_1B8D92024();
    OUTLINED_FUNCTION_117(v2 + v30);
    if (!v31)
    {
      OUTLINED_FUNCTION_108_7();
      sub_1B9239DA8();

      v32 = static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.== infix(_:_:)(v1, v45);
      sub_1B9239E50();
      v33 = OUTLINED_FUNCTION_467();
      sub_1B8D9207C(v33, v34, &qword_1B96AA7B0);
      OUTLINED_FUNCTION_541_0();
      sub_1B9239E50();
      sub_1B8D9207C(v2, &qword_1EBAC94F0, &qword_1B96AA7B0);
      if (v32)
      {
        goto LABEL_12;
      }

LABEL_10:

      goto LABEL_21;
    }

    sub_1B8D9207C(v0, &qword_1EBAC94F0, &qword_1B96AA7B0);
    OUTLINED_FUNCTION_464();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBACA070, L"j\n\v");
    goto LABEL_10;
  }

  sub_1B8D9207C(v0, &qword_1EBAC94F0, &qword_1B96AA7B0);
  OUTLINED_FUNCTION_117(v2 + v30);
  if (!v31)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAC94F0, &qword_1B96AA7B0);
LABEL_12:
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v35 = *(v46 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  sub_1B8D92024();
  v36 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v36, v37, v48);
  if (!v31)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v49 + v35);
    if (!v38)
    {
      OUTLINED_FUNCTION_107_4();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_275();
      static Apple_Parsec_Siri_V2alpha_AudioResponseContext.== infix(_:_:)();

      sub_1B9239E50();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v39, v40, v41);
      sub_1B9239E50();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v42, v43, v44);
      goto LABEL_21;
    }

    sub_1B8D9207C(v47, &qword_1EBAC94F8, &qword_1B96AA7B8);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_20:
    sub_1B8D9207C(v49, &qword_1EBACA068, L"f\n\v");
    goto LABEL_21;
  }

  sub_1B8D9207C(v47, &qword_1EBAC94F8, &qword_1B96AA7B8);
  OUTLINED_FUNCTION_48(v49 + v35);
  if (!v31)
  {
    goto LABEL_20;
  }

  sub_1B8D9207C(v49, &qword_1EBAC94F8, &qword_1B96AA7B8);
LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9253F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9253FDC(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC95E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B925404C()
{
  sub_1B8CD2D08(&qword_1EBAC95E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B92540E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9118);
  __swift_project_value_buffer(v0, qword_1EBAC9118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "queue_state_info";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t sub_1B92542A0()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_445_0();
      v0();
    }
  }

  return result;
}

uint64_t sub_1B9254300()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0) + 20);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  sub_1B8CD2D08(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_AudioResponseContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9500, &unk_1B96AA7C0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_458();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  OUTLINED_FUNCTION_517_1(v13);
  OUTLINED_FUNCTION_90(v1);
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAC9500, &unk_1B96AA7C0);
LABEL_5:
    OUTLINED_FUNCTION_541_0();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_23_15();
  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_609_1();
  OUTLINED_FUNCTION_206_3();
  sub_1B9239E50();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_AudioResponseContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v1);
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
  OUTLINED_FUNCTION_79();
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9680, &unk_1B96AA8E0) - 8);
  v13 = *(*v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_22_3();
  v16 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(v15) + 20);
  v17 = v12[14];
  OUTLINED_FUNCTION_106_6();
  sub_1B8D92024();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_70_9();
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9500, &unk_1B96AA7C0);
LABEL_12:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v21, v22);
      OUTLINED_FUNCTION_288();
      v19 = OUTLINED_FUNCTION_656_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v18)
  {
    OUTLINED_FUNCTION_206_3();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC9680, &unk_1B96AA8E0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23_15();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_246();
  v20 = static Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.== infix(_:_:)();
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC9500, &unk_1B96AA7C0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92547F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9254874(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92548E4()
{
  sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9254970()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9130);
  __swift_project_value_buffer(v0, qword_1EBAC9130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "requests";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void sub_1B9254B5C()
{
  OUTLINED_FUNCTION_605_1();
  while (1)
  {
    OUTLINED_FUNCTION_233();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1B9271380();
    }
  }

  OUTLINED_FUNCTION_606_1();
}

void Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(0), sub_1B8CD2D08(&qword_1EBAC9690, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9254D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9254DB4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9254E24()
{
  sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B9254EBC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9148);
  __swift_project_value_buffer(v0, qword_1EBAC9148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "slice_label";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference_type";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reference";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "value_label";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B92551D0();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9255238();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B92552A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (sub_1B8D92198(*v0, *(v2 + 8), 0) || (sub_1B918D16C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 16) || (v4 = *(v2 + 24), OUTLINED_FUNCTION_94_4(), sub_1B927AD6C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 48) || (v8 = *(v2 + 56), OUTLINED_FUNCTION_94_4(), sub_1B918D1C0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  v4 = *(v1 + 8);
  if (!sub_1B8D92198(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  v5 = *(v2 + 16);
  v6 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v9 = v9 && v7 == v8;
  if (v9 || (sub_1B964C9F0() & 1) != 0)
  {
    v10 = *(v1 + 56);
    if (sub_1B8D92198(*(v2 + 48), *(v2 + 56), *(v1 + 48)))
    {
      v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(0);
      OUTLINED_FUNCTION_764(v11);
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v12, v13);
      return OUTLINED_FUNCTION_634() & 1;
    }
  }

  return 0;
}

uint64_t sub_1B92555DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925565C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9690, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92556CC()
{
  sub_1B8CD2D08(&qword_1EBAC9690, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B925574C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9160);
  __swift_project_value_buffer(v0, qword_1EBAC9160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ID";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MENTION";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9255980()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9178);
  __swift_project_value_buffer(v0, qword_1EBAC9178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uso_graph";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uso_override";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "user_dialog_act";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "user_dialog_act_override";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_ServerUnderstanding.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_616();
  if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    v9 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v9, v10) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v1))
    {
      v11 = v2[4];
      v12 = v2[5];
      v13 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v13, v14) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v1))
      {
        v15 = v2[6];
        v16 = v2[7];
        v17 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v17, v18) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v1))
        {
          v19 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0) + 32);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Siri_V2alpha_ServerUnderstanding.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_78_6(a1, a2);
  if ((MEMORY[0x1BFADC060](v4) & 1) == 0 || (MEMORY[0x1BFADC060](v3[2], v3[3], v2[2], v2[3]) & 1) == 0 || (MEMORY[0x1BFADC060](v3[4], v3[5], v2[4], v2[5]) & 1) == 0 || (MEMORY[0x1BFADC060](v3[6], v3[7], v2[6], v2[7]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  OUTLINED_FUNCTION_764(v5);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9255E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EE0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9255EC8(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9255F38()
{
  sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);

  return sub_1B964C5D0();
}

uint64_t sub_1B9255FD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9190);
  __swift_project_value_buffer(v0, qword_1EBAC9190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "can_cache_domain_response";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ttl";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseCacheControl.decodeMessage<A>(decoder:)()
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
      sub_1B964C4A0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseCacheControl.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ResponseCacheControl.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  OUTLINED_FUNCTION_188_1(v4);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B92563E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9ED8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9256464(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92564D4()
{
  sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);

  return sub_1B964C5D0();
}

uint64_t sub_1B9256560()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F00);
  __swift_project_value_buffer(v0, qword_1EBAB3F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "components";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primary_experience";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "alternate_experiences";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "is_immersive_experience";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "preserve_result_space_if_possible";
  *(v17 + 1) = 33;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_413_0();
        OUTLINED_FUNCTION_9();
        sub_1B9271380();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9256948();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B926DAE4();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9256948()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0) + 36);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  sub_1B8CD2D08(&qword_1EBAC96C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94C0, &qword_1B96AA780);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_192_4();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_835();
  if (!v11 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0), OUTLINED_FUNCTION_600_0(), OUTLINED_FUNCTION_411_0(), sub_1B8CD2D08(v12, v13), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v0))
  {
    v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
    v14 = *(v21 + 36);
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2, 1, v7);
    if (v15)
    {
      sub_1B8D9207C(v2, &qword_1EBAC94C0, &qword_1B96AA780);
    }

    else
    {
      OUTLINED_FUNCTION_24_21();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_409_0();
      sub_1B8CD2D08(v16, v17);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_218_2();
      sub_1B9239E50();
      if (v0)
      {
        goto LABEL_14;
      }
    }

    if (!*(*(v1 + 8) + 16) || (OUTLINED_FUNCTION_409_0(), sub_1B8CD2D08(v18, v19), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
      {
        if (*(v1 + 17) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
        {
          v20 = *(v21 + 32);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9256D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9ED0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9256D9C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9256E0C()
{
  sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B9256EA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91A8);
  __swift_project_value_buffer(v0, qword_1EBAC91A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "components";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result_entity";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_SingleExperience.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B925713C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_413_0();
      OUTLINED_FUNCTION_9();
      sub_1B9271380();
    }
  }
}

uint64_t sub_1B925713C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_SingleExperience.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_588_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC0, &unk_1B964D7B0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  OUTLINED_FUNCTION_835();
  if (!v12 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0), OUTLINED_FUNCTION_411_0(), sub_1B8CD2D08(v13, v14), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_352_0(), sub_1B964C730(), !v1))
  {
    v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
    v16 = *(v15 + 24);
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2, 1, v8);
    if (v17)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8FC0, &unk_1B964D7B0);
LABEL_7:
      v18 = v0 + *(v15 + 20);
      OUTLINED_FUNCTION_213_3();
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_22_19();
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);
    OUTLINED_FUNCTION_352_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_200_5();
    sub_1B9239E50();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_SingleExperience.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC0, &unk_1B964D7B0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC8, &unk_1B968A590);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1;
  v17 = *v0;
  sub_1B8D842B4();
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  v19 = *(v34 + 24);
  v20 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (v21)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8FC0, &unk_1B964D7B0);
LABEL_17:
      v31 = *(v34 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v32, v33);
      v24 = OUTLINED_FUNCTION_199_0();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (v21)
  {
    OUTLINED_FUNCTION_200_5();
    sub_1B9239E50();
LABEL_10:
    v22 = &qword_1EBAB8FC8;
    v23 = &unk_1B968A590;
LABEL_11:
    sub_1B8D9207C(v2, v22, v23);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_19();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_494_0();
  if (!v25)
  {

    OUTLINED_FUNCTION_616();
    sub_1B910EBB4();
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      sub_1B9239E50();
      sub_1B9239E50();
      v22 = &qword_1EBAB8FC0;
      v23 = &unk_1B964D7B0;
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v28, v29);
  OUTLINED_FUNCTION_257();
  v30 = sub_1B964C850();
  sub_1B9239E50();
  OUTLINED_FUNCTION_531_0();
  sub_1B9239E50();
  sub_1B8D9207C(v2, &qword_1EBAB8FC0, &unk_1B964D7B0);
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_12:
  v24 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v24);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9257790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9257810(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC96C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9257880()
{
  sub_1B8CD2D08(&qword_1EBAC96C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B925790C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3FD0);
  __swift_project_value_buffer(v0, qword_1EBAB3FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "components";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(0), sub_1B8CD2D08(&qword_1EBAB45A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9257C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9257CC4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9257D34()
{
  sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B9257DCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB45B0);
  __swift_project_value_buffer(v0, qword_1EBAB45B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "domain_component";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t sub_1B9257F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FF8, &unk_1B96AA7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA060, L"f\n\a");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8FF8, &unk_1B96AA7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    sub_1B8D9207C(v22, &qword_1EBACA060, L"f\n\a");
    sub_1B9239DA8();
    sub_1B9239DA8();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBACA060, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA060, L"f\n\a");
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBACA060, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBACA060, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FF8, &unk_1B96AA7D0);
  sub_1B9239DA8();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

void Apple_Parsec_Siri_V2alpha_ClientComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FF8, &unk_1B96AA7D0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_458();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  OUTLINED_FUNCTION_565_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(0);
  v13 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v13, v14, v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8FF8, &unk_1B96AA7D0);
LABEL_5:
    v17 = v18 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(0) + 20);
    OUTLINED_FUNCTION_213_3();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_77_9();
  OUTLINED_FUNCTION_233();
  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);
  OUTLINED_FUNCTION_352_0();
  OUTLINED_FUNCTION_609_1();
  sub_1B9239E50();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_ClientComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(v1);
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
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9000, &unk_1B964D7F0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3(v16);
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_70_9();
    if (v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8FF8, &unk_1B96AA7D0);
LABEL_12:
      v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(0);
      OUTLINED_FUNCTION_871(v20);
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v21, v22);
      v18 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v17)
  {
    OUTLINED_FUNCTION_171_2();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9000, &unk_1B964D7F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  v19 = static Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component.== infix(_:_:)();
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAB8FF8, &unk_1B96AA7D0);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9258874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92588F4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB45A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9258964()
{
  sub_1B8CD2D08(&qword_1EBAB45A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B92589F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4028);
  __swift_project_value_buffer(v0, qword_1EBAB4028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B964E4A0;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "audio_client_component";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "video_client_component";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v19 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "geo_client_component";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v19 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "apps_client_component";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v19 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "device_expert_client_component";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v7();
  v15 = (v19 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "identifier";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.decodeMessage<A>(decoder:)()
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
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B9258DA0(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B9259298(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B9259790(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B9259C88(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B925A180(v7, v8, v9, v10);
        break;
      default:
        if (result == 100)
        {
          OUTLINED_FUNCTION_9();
          sub_1B925A678();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B9258DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA038, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBACA038, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA038, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA038, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA038, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA038, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9259298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA040, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACA040, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA040, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA040, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA040, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA040, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9259790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA048, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBACA048, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA048, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA048, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA048, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA048, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9259C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA050, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBACA050, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA050, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA050, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA050, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA050, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925A180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA058, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBACA058, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA058, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA058, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA058, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA058, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Apple_Parsec_Siri_V2alpha_DomainClientComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_614();
  v3 = OUTLINED_FUNCTION_190_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_90(v0);
  if (v9)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_616();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = OUTLINED_FUNCTION_100_5();
      sub_1B925AA3C(v26, v27, v28, v29);
      break;
    case 2u:
      v18 = OUTLINED_FUNCTION_100_5();
      sub_1B925AC50(v18, v19, v20, v21);
      break;
    case 3u:
      v22 = OUTLINED_FUNCTION_100_5();
      sub_1B925AE64(v22, v23, v24, v25);
      break;
    case 4u:
      v14 = OUTLINED_FUNCTION_100_5();
      sub_1B925B078(v14, v15, v16, v17);
      break;
    default:
      v10 = OUTLINED_FUNCTION_100_5();
      sub_1B925A82C(v10, v11, v12, v13);
      break;
  }

  OUTLINED_FUNCTION_76_5();
  sub_1B9239E50();
  if (!v1)
  {
LABEL_9:
    v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
    v31 = (v2 + *(v30 + 20));
    v32 = *v31;
    v33 = v31[1];
    OUTLINED_FUNCTION_1();
    if (!v34 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v35 = *(v30 + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B925A82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925AA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925AC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925AE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925B330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925B3B0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B925B420()
{
  sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B925B4AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4248);
  __swift_project_value_buffer(v0, qword_1EBAB4248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rendered_dialog";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cat_dialog";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "layout_experience";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "domain_object_component";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "direct_execution_component";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "delayed_action_component";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "say_it_component";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "button_view_component";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "disambiguation_list_component";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B925B940(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_17_3();
        sub_1B925BE38(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B925C330(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B925C828(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B925CD20(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_17_3();
        sub_1B925D218(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_17_3();
        sub_1B925D710(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B925DC08(v19, v20, v21, v22);
        break;
      case 9:
        v35 = OUTLINED_FUNCTION_17_3();
        sub_1B925E100(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B925B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9548, &qword_1B96AA828);
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC9548, &qword_1B96AA828);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9548, &qword_1B96AA828);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9548, &qword_1B96AA828);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9548, &qword_1B96AA828);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9548, &qword_1B96AA828);
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925BE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FF8, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FF8, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C18, type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FF8, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FF8, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FF8, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FF8, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925C330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA000, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBACA000, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA000, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA000, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA000, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA000, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925C828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA008, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBACA008, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C38, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA008, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA008, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA008, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA008, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA010, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBACA010, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA010, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA010, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA010, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA010, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA018, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v22, &qword_1EBACA018, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA018, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA018, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA018, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA018, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA020, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v22, &qword_1EBACA020, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9BF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA020, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA020, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA020, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA020, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925DC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA028, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v22, &qword_1EBACA028, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA028, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA028, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA028, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA028, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B925E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA030, L"f\n\a");
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
    sub_1B8D9207C(v12, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v22, &qword_1EBACA030, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA030, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA030, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA030, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACA030, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v2 = OUTLINED_FUNCTION_190_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_257_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_90(v1);
  if (!v8)
  {
    OUTLINED_FUNCTION_686();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v29 = OUTLINED_FUNCTION_7_6();
        sub_1B925E97C(v29, v30, v31, v32);
        goto LABEL_11;
      case 2u:
        v17 = OUTLINED_FUNCTION_7_6();
        sub_1B925EB90(v17, v18, v19, v20);
        goto LABEL_11;
      case 3u:
        v21 = OUTLINED_FUNCTION_7_6();
        sub_1B925EDA4(v21, v22, v23, v24);
        goto LABEL_11;
      case 4u:
        v13 = OUTLINED_FUNCTION_7_6();
        sub_1B925EFB8(v13, v14, v15, v16);
        goto LABEL_11;
      case 5u:
        v33 = OUTLINED_FUNCTION_7_6();
        sub_1B925F1CC(v33, v34, v35, v36);
        goto LABEL_11;
      case 6u:
        v37 = OUTLINED_FUNCTION_7_6();
        sub_1B925F3E0(v37, v38, v39, v40);
        goto LABEL_11;
      case 7u:
        v25 = OUTLINED_FUNCTION_7_6();
        sub_1B925F5F4(v25, v26, v27, v28);
        goto LABEL_11;
      case 8u:
        v42 = OUTLINED_FUNCTION_7_6();
        sub_1B925F808(v42, v43, v44, v45);
        if (v0)
        {
          OUTLINED_FUNCTION_19_19();
          sub_1B9239E50();
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_19_19();
        sub_1B9239E50();
        break;
      default:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_1B925E76C(v9, v10, v11, v12);
LABEL_11:
        OUTLINED_FUNCTION_19_19();
        sub_1B9239E50();
        if (!v0)
        {
          break;
        }

        goto LABEL_13;
    }
  }

  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0);
  OUTLINED_FUNCTION_479_0(v41);
  OUTLINED_FUNCTION_214_4();
  sub_1B964C290();
LABEL_13:
  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B925E76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C18, type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925EDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C38, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9BF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_ExperienceComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(v1);
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
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FD8, &qword_1B964D7C8);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3(v16);
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_70_9();
    if (v17)
    {
      sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_12:
      v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0);
      OUTLINED_FUNCTION_871(v21);
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v22, v23);
      v18 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v17)
  {
    OUTLINED_FUNCTION_19_19();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8FD8, &qword_1B964D7C8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.== infix(_:_:)();
  v20 = v19;
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B925FCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925FD40(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB4238, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B925FDB0()
{
  sub_1B8CD2D08(&qword_1EBAB4238, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B925FE3C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91C0);
  __swift_project_value_buffer(v0, qword_1EBAC91C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "siri_command_builder";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_DirectExecutionComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v2, v3), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9260164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92601E4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9260254()
{
  sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B92602E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91D8);
  __swift_project_value_buffer(v0, qword_1EBAC91D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siri_command_builder";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rendered_dialog";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "layout_experiences";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "delay_milliseconds";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "preserve_result_space_if_possible";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_DelayedActionComponent.decodeMessage<A>(decoder:)()
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
        sub_1B9271380();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B92606D4();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B926DAE4();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92606D4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0) + 36);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_DelayedActionComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9548, &qword_1B96AA828);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_192_4();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_835();
  if (!v11 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_600_0(), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v12, v13), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v0))
  {
    v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
    v14 = *(v17 + 36);
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2, 1, v7);
    if (v15)
    {
      sub_1B8D9207C(v2, &qword_1EBAC9548, &qword_1B96AA828);
    }

    else
    {
      OUTLINED_FUNCTION_1_63();
      OUTLINED_FUNCTION_190_0();
      sub_1B9239DA8();
      sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_21_17();
      sub_1B9239E50();
      if (v0)
      {
        goto LABEL_14;
      }
    }

    if (!*(*(v1 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0), sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), sub_1B964C730(), !v0))
    {
      if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
      {
        if (*(v1 + 20) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
        {
          v16 = *(v17 + 32);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9260ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E98, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9260B5C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9260BCC()
{
  sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9260C58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F80);
  __swift_project_value_buffer(v0, qword_1EBAB3F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sash";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "compact_snippet";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "per_result_layout_details";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "siri_command_builder";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ui_item_type";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "is_transient";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.decodeMessage<A>(decoder:)()
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
        sub_1B92610A4();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9261158();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9271380();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B926DAE4();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B926120C();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92610A4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0) + 36);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(0);
  sub_1B8CD2D08(&qword_1ED9CC368, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash);
  return sub_1B964C580();
}

uint64_t sub_1B9261158()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0) + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9518, &qword_1B96AA7F8);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(v9);
  v10 = OUTLINED_FUNCTION_59_1(v32);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9528, &qword_1B96AA808);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_173();
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(0);
  v18 = OUTLINED_FUNCTION_59_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = OUTLINED_FUNCTION_324_1();
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(v21);
  v23 = v22[9];
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v3, 1, v17);
  if (v24)
  {
    v25 = v1;
    sub_1B8D9207C(v3, &qword_1EBAC9528, &qword_1B96AA808);
  }

  else
  {
    OUTLINED_FUNCTION_18_20();
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1ED9CC368, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash);
    OUTLINED_FUNCTION_257_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_190_3();
    sub_1B9239E50();
    v25 = v1;
    if (v1)
    {
      goto LABEL_18;
    }
  }

  v26 = v22[10];
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v32);
  if (v24)
  {
    sub_1B8D9207C(v2, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_403_0();
    sub_1B8CD2D08(v27, v28);
    OUTLINED_FUNCTION_332_1();
    sub_1B964C740();
    v25 = v1;
    OUTLINED_FUNCTION_17_21();
    sub_1B9239E50();
    if (v1)
    {
      goto LABEL_18;
    }
  }

  if (!*(*v4 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails(0), sub_1B8CD2D08(&qword_1ED9C9858, type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_332_1(), sub_1B964C730(), (v25 = v1) == 0))
  {
    if (!*(*(v4 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v29, v30), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_332_1(), sub_1B964C730(), (v25 = v1) == 0))
    {
      if (!*(v4 + 16) || (v33 = *(v4 + 16), v34 = *(v4 + 24), sub_1B927ADC0(), OUTLINED_FUNCTION_332_1(), sub_1B964C680(), (v25 = v1) == 0))
      {
        if (*(v4 + 25) != 1 || (OUTLINED_FUNCTION_445_0(), sub_1B964C670(), !v25))
        {
          v31 = v4 + v22[8];
          OUTLINED_FUNCTION_318_1();
          sub_1B964C290();
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9261734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E90, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92617B4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9261824()
{
  sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B92618B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91F0);
  __swift_project_value_buffer(v0, qword_1EBAC91F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
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
  *v10 = "commands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ButtonViewComponent.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_9();
      sub_1B9261B00();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9261B00()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0);
  sub_1B8CD2D08(&qword_1ED9CF318, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder);
  return sub_1B964C570();
}

void Apple_Parsec_Siri_V2alpha_ButtonViewComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9261CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9261D7C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9261DEC()
{
  sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9261E84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9208);
  __swift_project_value_buffer(v0, qword_1EBAC9208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "items";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_DisambiguationListComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0), sub_1B8CD2D08(&qword_1EBAC9720, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B92621BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926223C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92622AC()
{
  sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9262338()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9220);
  __swift_project_value_buffer(v0, qword_1EBAC9220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selection_text";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "object";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "commands";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DisambiguationListItem.decodeMessage<A>(decoder:)()
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
        sub_1B9262644();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B92626F8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9262644()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0) + 32);
  sub_1B964C1C0();
  sub_1B8CD2D08(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

uint64_t sub_1B92626F8()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0);
  sub_1B8CD2D08(&qword_1ED9CF318, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder);
  return sub_1B964C570();
}

void Apple_Parsec_Siri_V2alpha_DisambiguationListItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_151();
  v7 = sub_1B964C1C0();
  v8 = OUTLINED_FUNCTION_30_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v13 = *v1;
  v14 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_156_0(), !v0))
  {
    v16 = v1[2];
    v17 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_156_0(), !v0))
    {
      v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0);
      v19 = *(v34 + 32);
      sub_1B8D92024();
      OUTLINED_FUNCTION_90(v2);
      if (v20)
      {
        sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_525_0();
        v22(v21);
        OUTLINED_FUNCTION_13_26();
        sub_1B8CD2D08(v23, v24);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_17_15();
        sub_1B964C740();
        if (v0)
        {
          v25 = *(v10 + 8);
          v26 = OUTLINED_FUNCTION_233();
          v27(v26);
          goto LABEL_14;
        }

        v28 = *(v10 + 8);
        v29 = OUTLINED_FUNCTION_233();
        v30(v29);
      }

      if (!*(v1[4] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v31, v32), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v0))
      {
        v33 = v1 + *(v34 + 28);
        sub_1B964C290();
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_DisambiguationListItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_112();
  v3 = sub_1B964C1C0();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_79();
  v17 = *v1 == *v0 && v1[1] == v0[1];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v37 = v6;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0);
  v19 = *(v36 + 32);
  v20 = *(v13 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v17)
  {
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (v17)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_21;
    }

LABEL_19:
    sub_1B8D9207C(v2, &qword_1EBAB8F28, &unk_1B9683B20);
LABEL_23:
    v35 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (v21)
  {
    v22 = *(v37 + 8);
    v23 = OUTLINED_FUNCTION_200();
    v24(v23);
    goto LABEL_19;
  }

  v25 = OUTLINED_FUNCTION_497_0();
  v26(v25);
  OUTLINED_FUNCTION_13_26();
  sub_1B8CD2D08(v27, v28);
  OUTLINED_FUNCTION_541_0();
  v29 = sub_1B964C850();
  v30 = OUTLINED_FUNCTION_128();
  MEMORY[0](v30);
  v31 = OUTLINED_FUNCTION_200();
  MEMORY[0](v31);
  sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v29 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  if ((sub_1B8D5A714(v1[4], v0[4]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v32 = *(v36 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v33, v34);
  v35 = OUTLINED_FUNCTION_199_0();
LABEL_24:
  OUTLINED_FUNCTION_264(v35);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9262D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E78, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9262E1C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9720, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9262E8C()
{
  sub_1B8CD2D08(&qword_1EBAC9720, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9262F18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F60);
  __swift_project_value_buffer(v0, qword_1EBAB3F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "casino_snippet";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "watch_snippet";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "map_item_snippet";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "legacy_snippet";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "person_snippet";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "clock_snippet";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B92632BC(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B92637B4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B9263CAC(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B92641A4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B926469C(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_17_3();
        sub_1B9264B94(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92632BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9518, &qword_1B96AA7F8);
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
    sub_1B8D9207C(v12, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC9518, &qword_1B96AA7F8);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9518, &qword_1B96AA7F8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9518, &qword_1B96AA7F8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B92637B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FD0, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FD0, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC5DF8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FD0, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FD0, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FD0, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FD0, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9263CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FD8, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FD8, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC8908, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FD8, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FD8, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FD8, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FD8, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B92641A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FE0, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FE0, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FE0, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FE0, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FE0, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FE0, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B926469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FE8, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FE8, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C70, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FE8, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FE8, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FE8, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FE8, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9264B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FF0, L"f\n\a");
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
    sub_1B8D9207C(v12, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FF0, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FF0, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FF0, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FF0, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FF0, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v2 = OUTLINED_FUNCTION_190_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_257_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  OUTLINED_FUNCTION_90(v1);
  if (v8)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_686();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = OUTLINED_FUNCTION_7_6();
      sub_1B92653C8(v25, v26, v27, v28);
      break;
    case 2u:
      v17 = OUTLINED_FUNCTION_7_6();
      sub_1B92655DC(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = OUTLINED_FUNCTION_7_6();
      sub_1B92657F0(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = OUTLINED_FUNCTION_7_6();
      sub_1B9265A04(v13, v14, v15, v16);
      break;
    case 5u:
      v29 = OUTLINED_FUNCTION_7_6();
      sub_1B9265C18(v29, v30, v31, v32);
      break;
    default:
      v9 = OUTLINED_FUNCTION_7_6();
      sub_1B92651B8(v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_75_8();
  sub_1B9239E50();
  if (!v0)
  {
LABEL_10:
    v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails(0);
    OUTLINED_FUNCTION_479_0(v33);
    OUTLINED_FUNCTION_214_4();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B92651B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92653C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC5DF8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92655DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC8908, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92657F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9265A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C70, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9265C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(v1);
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
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB8, &qword_1B96AA8F0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3(v16);
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_70_9();
    if (v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8FB0, &unk_1B964D7A0);
LABEL_12:
      v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails(0);
      OUTLINED_FUNCTION_871(v21);
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v22, v23);
      v18 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v17)
  {
    OUTLINED_FUNCTION_75_8();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8FB8, &qword_1B96AA8F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.== infix(_:_:)();
  v20 = v19;
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAB8FB0, &unk_1B964D7A0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92660D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E70, type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9266150(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1ED9C9858, type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92661C0()
{
  sub_1B8CD2D08(&qword_1ED9C9858, type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails);

  return sub_1B964C5D0();
}

uint64_t sub_1B9266258()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CA320);
  __swift_project_value_buffer(v0, qword_1ED9CA320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cardData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_view_id";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_CasinoSnippet.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B92664B0();
    }
  }

  return result;
}

uint64_t sub_1B92664B0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0) + 24);
  sub_1B964C1C0();
  sub_1B8CD2D08(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_CasinoSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211_2();
  v8 = sub_1B964C1C0();
  v9 = OUTLINED_FUNCTION_30_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v16 = v15 - v14;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v17 = *(v25 + 24);
  OUTLINED_FUNCTION_319_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0, 1, v8);
  if (v18)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    (*(v11 + 32))(v16, v0, v8);
    OUTLINED_FUNCTION_13_26();
    sub_1B8CD2D08(v19, v20);
    sub_1B964C740();
    if (v1)
    {
      (*(v11 + 8))(v16, v8);
      goto LABEL_10;
    }

    (*(v11 + 8))(v16, v8);
  }

  v21 = *v0;
  v22 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v23 || (sub_1B964C700(), !v1))
  {
    v24 = v0 + *(v25 + 20);
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9266844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E68, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92668C4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9266934()
{
  sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B92669CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9238);
  __swift_project_value_buffer(v0, qword_1EBAC9238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog_identifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "has_listen_after_speaking";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "is_repeatable";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItComponent.decodeMessage<A>(decoder:)()
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
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
      {
        if (*(v1 + 33) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
        {
          v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B9266E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E60, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9266EC4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9BF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9266F34()
{
  sub_1B8CD2D08(&qword_1EBAC9BF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9266FCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3E58);
  __swift_project_value_buffer(v0, qword_1EBAB3E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B9656D00;
  v4 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v4 = "print";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v35 + v3 + v2 + v1[14];
  *(v35 + v3 + v2) = 2;
  *v8 = "speak";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v35 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 13;
  *v10 = "redacted_print";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v35 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 14;
  *v13 = "redacted_speak";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v7();
  v14 = (v35 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "cat_id";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v7();
  v16 = (v35 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "spoken_only";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v7();
  v18 = (v35 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "force_print_dialog";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v7();
  v20 = (v35 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 5;
  *v21 = "listen_after_speaking";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v7();
  v22 = (v35 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 6;
  *v23 = "dialog_state";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v7();
  v24 = (v35 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 7;
  *v25 = "cat_category";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v7();
  v26 = (v35 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 8;
  *v27 = "intent";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v7();
  v28 = (v35 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 10;
  *v29 = "is_approved_for_grading";
  *(v29 + 1) = 23;
  v29[16] = 2;
  v7();
  v30 = (v35 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 11;
  *v31 = "should_coordinate_with_speech";
  *(v31 + 1) = 29;
  v31[16] = 2;
  v7();
  v32 = (v35 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 12;
  *v33 = "dialog_state_meta";
  *(v33 + 1) = 17;
  v33[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B92674D4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 98) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__dialogState;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isApprovedForGrading) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__shouldCoordinateWithSpeech) = 0;
  v5 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__dialogStateMeta;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1B92675A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9568, &qword_1B96AA850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9560, &qword_1B96AA848);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v44 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v44 = (v1 + 80);
  *(v1 + 96) = 0;
  v45 = (v1 + 96);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 98) = 0;
  v46 = (v1 + 98);
  v9 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__dialogState;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory);
  v47 = (v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent;
  v49 = v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent;
  *v12 = 0;
  *(v12 + 8) = 1;
  v50 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isApprovedForGrading;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isApprovedForGrading) = 0;
  v51 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__shouldCoordinateWithSpeech;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__shouldCoordinateWithSpeech) = 0;
  v13 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__dialogStateMeta;
  v52 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__dialogStateMeta;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v15;
  *(v1 + 24) = v16;
  swift_beginAccess();
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v18;

  swift_beginAccess();
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  swift_beginAccess();
  v21 = *(v1 + 56);
  *(v1 + 48) = v19;
  *(v1 + 56) = v20;

  swift_beginAccess();
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  swift_beginAccess();
  v24 = *(v1 + 72);
  *(v1 + 64) = v22;
  *(v1 + 72) = v23;

  swift_beginAccess();
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = v44;
  swift_beginAccess();
  v28 = *(v1 + 88);
  *v27 = v25;
  *(v1 + 88) = v26;

  swift_beginAccess();
  LOBYTE(v25) = *(a1 + 96);
  v29 = v45;
  swift_beginAccess();
  *v29 = v25;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + 97);
  swift_beginAccess();
  *(v1 + 97) = v25;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + 98);
  v30 = v46;
  swift_beginAccess();
  *v30 = v25;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  v34 = v47;
  swift_beginAccess();
  v35 = v34[1];
  *v34 = v32;
  v34[1] = v33;

  v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  v38 = v49;
  swift_beginAccess();
  *v38 = v37;
  *(v38 + 8) = v36;
  v39 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isApprovedForGrading;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v50;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__shouldCoordinateWithSpeech;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v51;
  swift_beginAccess();
  *(v1 + v42) = v41;
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B9267B80()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__dialogState, &qword_1EBAC9560, &qword_1B96AA848);
  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__dialogStateMeta, &qword_1EBAC9568, &qword_1B96AA850);
  return v0;
}

uint64_t sub_1B9267C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9267EF0();
        break;
      case 2:
        sub_1B9267F50();
        break;
      case 3:
        sub_1B8E16B50();
        break;
      case 4:
        sub_1B8ED5CB4();
        break;
      case 5:
        sub_1B9267FB0();
        break;
      case 6:
        sub_1B9268034();
        break;
      case 7:
        sub_1B9268110(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory, MEMORY[0x1E69AACE0]);
        break;
      case 8:
        sub_1B9268194(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent, sub_1B9284374);
        break;
      case 9:
        sub_1B926822C();
        break;
      case 10:
      case 11:
        sub_1B92682B0();
        break;
      case 12:
        sub_1B9268314();
        break;
      case 13:
        sub_1B8DC4778();
        break;
      case 14:
        sub_1B8E16ACC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9267EF0()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9267F50()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9267FB0()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B9268034()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState(0);
  sub_1B8CD2D08(&qword_1ED9CA6B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9268110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_318_1();
  a6();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9268194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_131();
  v9 = swift_beginAccess();
  a6(v9);
  sub_1B964C420();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B926822C()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B92682B0()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9268314()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta(0);
  sub_1B8CD2D08(qword_1ED9CA228, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9268420(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9568, &qword_1B96AA850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v41 - v6;
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta(0);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9560, &qword_1B96AA848);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a1 + 24);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 40);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(a1 + 40);

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_11;
    }
  }

LABEL_11:
  swift_beginAccess();
  v22 = *(a1 + 88);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = *(a1 + 88);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 96) != 1 || (result = sub_1B964C670(), !v1))
  {
    swift_beginAccess();
    if (*(a1 + 98) != 1 || (result = sub_1B964C670(), !v1))
    {
      swift_beginAccess();
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_1B8D9207C(v12, &qword_1EBAC9560, &qword_1B96AA848);
      }

      else
      {
        sub_1B9239DA8();
        sub_1B8CD2D08(&qword_1ED9CA6B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState);
        sub_1B964C740();
        if (v1)
        {
          return sub_1B9239E50();
        }

        sub_1B9239E50();
      }

      v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory);
      swift_beginAccess();
      v27 = *v26;
      v28 = v26[1];
      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      v30 = v46;
      if (!v29 || (, sub_1B964C700(), result = , !v2))
      {
        v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent);
        swift_beginAccess();
        if (!*v31 || (v32 = *(v31 + 8), v44 = *v31, v45 = v32, sub_1B9284374(), result = sub_1B964C680(), !v2))
        {
          swift_beginAccess();
          if (*(a1 + 97) != 1 || (result = sub_1B964C670(), !v2))
          {
            v33 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isApprovedForGrading;
            swift_beginAccess();
            if (*(a1 + v33) != 1 || (result = sub_1B964C670(), !v2))
            {
              v34 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__shouldCoordinateWithSpeech;
              swift_beginAccess();
              if (*(a1 + v34) != 1 || (result = sub_1B964C670(), !v2))
              {
                swift_beginAccess();
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v30, 1, v42) == 1)
                {
                  sub_1B8D9207C(v30, &qword_1EBAC9568, &qword_1B96AA850);
                }

                else
                {
                  sub_1B9239DA8();
                  sub_1B8CD2D08(qword_1ED9CA228, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta);
                  sub_1B964C740();
                  result = sub_1B9239E50();
                  if (v2)
                  {
                    return result;
                  }
                }

                swift_beginAccess();
                v35 = *(a1 + 56);
                v36 = HIBYTE(v35) & 0xF;
                if ((v35 & 0x2000000000000000) == 0)
                {
                  v36 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
                }

                if (!v36 || (v37 = *(a1 + 56), , sub_1B964C700(), result = , !v2))
                {
                  result = swift_beginAccess();
                  v38 = *(a1 + 72);
                  v39 = HIBYTE(v38) & 0xF;
                  if ((v38 & 0x2000000000000000) == 0)
                  {
                    v39 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
                  }

                  if (v39)
                  {
                    v40 = *(a1 + 72);

                    sub_1B964C700();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B9268C00(uint64_t a1, uint64_t a2)
{
  v79 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta(0);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA170, &qword_1B96B2488);
  v6 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9568, &qword_1B96AA850);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v75 - v12;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA178, &unk_1B96B2490);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9560, &qword_1B96AA848);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = (&v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v75 - v25;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  swift_beginAccess();
  v29 = v28 == *(a2 + 16) && v27 == *(a2 + 24);
  if (!v29 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  swift_beginAccess();
  v32 = v30 == *(a2 + 32) && v31 == *(a2 + 40);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 48);
  v34 = *(a1 + 56);
  swift_beginAccess();
  v35 = v33 == *(a2 + 48) && v34 == *(a2 + 56);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 64);
  v37 = *(a1 + 72);
  swift_beginAccess();
  v38 = v36 == *(a2 + 64) && v37 == *(a2 + 72);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 80);
  v40 = *(a1 + 88);
  swift_beginAccess();
  v41 = v39 == *(a2 + 80) && v40 == *(a2 + 88);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 96);
  swift_beginAccess();
  if (v42 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 97);
  swift_beginAccess();
  if (v43 != *(a2 + 97))
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 98);
  swift_beginAccess();
  if (v44 != *(a2 + 98))
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v45 = *(v17 + 48);
  v46 = v81;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46, 1, v13) == 1)
  {

    sub_1B8D9207C(v26, &qword_1EBAC9560, &qword_1B96AA848);
    if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v13) == 1)
    {
      sub_1B8D9207C(v46, &qword_1EBAC9560, &qword_1B96AA848);
      goto LABEL_50;
    }

    goto LABEL_34;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v13) == 1)
  {

    sub_1B8D9207C(v26, &qword_1EBAC9560, &qword_1B96AA848);
    sub_1B9239E50();
LABEL_34:
    v47 = &qword_1EBACA178;
    v48 = &unk_1B96B2490;
    v49 = v46;
LABEL_35:
    sub_1B8D9207C(v49, v47, v48);
LABEL_36:

    return 0;
  }

  sub_1B9239DA8();
  v51 = *v24 == *v16 && v24[1] == v16[1];
  if (!v51 && (sub_1B964C9F0() & 1) == 0 || (v24[2] == v16[2] ? (v52 = v24[3] == v16[3]) : (v52 = 0), !v52 && (sub_1B964C9F0() & 1) == 0))
  {

    sub_1B9239E50();
    sub_1B8D9207C(v26, &qword_1EBAC9560, &qword_1B96AA848);
    sub_1B9239E50();
    v49 = v46;
    v47 = &qword_1EBAC9560;
    v48 = &qword_1B96AA848;
    goto LABEL_35;
  }

  v53 = *(v13 + 24);
  sub_1B964C2B0();
  sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);

  v54 = sub_1B964C850();
  sub_1B9239E50();
  sub_1B8D9207C(v26, &qword_1EBAC9560, &qword_1B96AA848);
  sub_1B9239E50();
  sub_1B8D9207C(v46, &qword_1EBAC9560, &qword_1B96AA848);
  if ((v54 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_50:
  v55 = (a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  v58 = (a2 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__catCategory);
  swift_beginAccess();
  v59 = v56 == *v58 && v57 == v58[1];
  if (!v59 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v60 = a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = a2 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__intent;
  swift_beginAccess();
  v64 = *(v63 + 8);
  if (!sub_1B8D92198(v61, v62, *v63))
  {
    goto LABEL_36;
  }

  v65 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isApprovedForGrading;
  swift_beginAccess();
  LODWORD(v65) = *(a1 + v65);
  v66 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isApprovedForGrading;
  swift_beginAccess();
  if (v65 != *(a2 + v66))
  {
    goto LABEL_36;
  }

  v67 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__shouldCoordinateWithSpeech;
  swift_beginAccess();
  LODWORD(v67) = *(a1 + v67);
  v68 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentP33_E86396049AA3E19DB448939A42AE999613_StorageClass__shouldCoordinateWithSpeech;
  swift_beginAccess();
  if (v67 != *(a2 + v68))
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v69 = v78;
  sub_1B8D92024();
  swift_beginAccess();
  v70 = *(v77 + 48);
  v71 = v80;
  sub_1B8D92024();
  sub_1B8D92024();
  v72 = v79;
  if (__swift_getEnumTagSinglePayload(v71, 1, v79) == 1)
  {

    sub_1B8D9207C(v69, &qword_1EBAC9568, &qword_1B96AA850);
    if (__swift_getEnumTagSinglePayload(v71 + v70, 1, v72) == 1)
    {
      sub_1B8D9207C(v71, &qword_1EBAC9568, &qword_1B96AA850);
      return 1;
    }

    goto LABEL_64;
  }

  v73 = v76;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v71 + v70, 1, v72) == 1)
  {

    sub_1B8D9207C(v69, &qword_1EBAC9568, &qword_1B96AA850);
    sub_1B9239E50();
LABEL_64:
    sub_1B8D9207C(v71, &qword_1EBACA170, &qword_1B96B2488);
    return 0;
  }

  sub_1B9239DA8();
  v74 = static Apple_Parsec_Siri_V2alpha_DialogStateMeta.== infix(_:_:)(v73);

  sub_1B9239E50();
  sub_1B8D9207C(v69, &qword_1EBAC9568, &qword_1B96AA850);
  sub_1B9239E50();
  sub_1B8D9207C(v71, &qword_1EBAC9568, &qword_1B96AA850);
  return (v74 & 1) != 0;
}