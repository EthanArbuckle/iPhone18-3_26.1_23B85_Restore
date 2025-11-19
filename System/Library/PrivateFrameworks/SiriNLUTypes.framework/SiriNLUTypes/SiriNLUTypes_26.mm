uint64_t static Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v106 = type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_21(v106);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v101 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v11 = OUTLINED_FUNCTION_80(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_0();
  v99 = v14;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_96();
  v102 = v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v17 = OUTLINED_FUNCTION_21(v104);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_0();
  v100 = v20;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_96();
  v103 = v22;
  v23 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v29 = v28 - v27;
  v30 = OUTLINED_FUNCTION_12();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_80(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v98 - v36;
  v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0) - 8);
  v39 = *(*v38 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  v105 = OUTLINED_FUNCTION_4_23();
  v41 = *(v105 + 28);
  v42 = v38[14];
  v107 = a1;
  OUTLINED_FUNCTION_94_0(a1 + v41, v2);
  OUTLINED_FUNCTION_94_0(a2 + v41, v2 + v42);
  v43 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v43, v44, v23);
  if (v45)
  {
    OUTLINED_FUNCTION_76(v2 + v42, 1, v23);
    if (v45)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  sub_1C8786744(v2, v37, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_76(v2 + v42, 1, v23);
  if (v45)
  {
    sub_1C8805EE4();
LABEL_9:
    v46 = &qword_1EC2B6040;
    v47 = &unk_1C8BE6CF0;
LABEL_10:
    v48 = v2;
LABEL_11:
    sub_1C8778ED8(v48, v46, v47);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0_4();
  sub_1C8A115B8(v2 + v42, v29, v49);
  v50 = *(v23 + 20);
  if (*&v37[v50] != *(v29 + v50))
  {
    v51 = *&v37[v50];

    OUTLINED_FUNCTION_218();
    sub_1C88AD618();
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      sub_1C8805EE4();
      sub_1C8805EE4();
      v46 = &qword_1EC2B6038;
      v47 = &unk_1C8BE8850;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_16_11();
  sub_1C8A13CEC(v54, v55);
  v56 = sub_1C8BD517C();
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v56 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  v57 = v107;
  v58 = *v107;
  v59 = *a2;
  sub_1C87D2CAC();
  if ((v60 & 1) == 0)
  {
    goto LABEL_37;
  }

  v61 = v57[1];
  v62 = a2[1];
  sub_1C87D84F0();
  if ((v63 & 1) == 0)
  {
    goto LABEL_37;
  }

  v64 = v104;
  v65 = v105;
  v66 = *(v105 + 32);
  v67 = *(v104 + 48);
  v68 = v103;
  OUTLINED_FUNCTION_27(v57 + v66, v103);
  OUTLINED_FUNCTION_27(a2 + v66, v68 + v67);
  v69 = v106;
  OUTLINED_FUNCTION_76(v68, 1, v106);
  if (v45)
  {
    OUTLINED_FUNCTION_76(v68 + v67, 1, v69);
    if (v45)
    {
      sub_1C8778ED8(v68, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_28;
    }

LABEL_26:
    v46 = &qword_1EC2B5EE8;
    v47 = &unk_1C8BE6F90;
    v48 = v68;
    goto LABEL_11;
  }

  v70 = v102;
  sub_1C8786744(v68, v102, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_76(v68 + v67, 1, v69);
  if (v71)
  {
    OUTLINED_FUNCTION_11_19();
    sub_1C8805EE4();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_12_18();
  v72 = v68 + v67;
  v73 = v101;
  sub_1C8A115B8(v72, v101, v74);
  v75 = static Siri_Nlu_External_UUID.== infix(_:_:)(v70, v73);
  sub_1C8805EE4();
  OUTLINED_FUNCTION_121();
  sub_1C8805EE4();
  sub_1C8778ED8(v68, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v76 = v65[9];
  v77 = (v57 + v76);
  v78 = *(v57 + v76 + 8);
  v79 = (a2 + v76);
  v80 = v79[1];
  if (v78)
  {
    if (!v80)
    {
      goto LABEL_37;
    }

    v81 = *v77 == *v79 && v78 == v80;
    if (!v81 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v80)
  {
    goto LABEL_37;
  }

  v84 = v65[10];
  v85 = *(v64 + 48);
  v86 = v100;
  OUTLINED_FUNCTION_27(v57 + v84, v100);
  v87 = a2 + v84;
  v2 = v86;
  OUTLINED_FUNCTION_27(v87, v86 + v85);
  OUTLINED_FUNCTION_76(v86, 1, v69);
  if (v45)
  {
    OUTLINED_FUNCTION_76(v86 + v85, 1, v69);
    if (v45)
    {
      sub_1C8778ED8(v86, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_49:
      v95 = v65[6];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_16_11();
      sub_1C8A13CEC(v96, v97);
      v82 = sub_1C8BD517C();
      return v82 & 1;
    }

    goto LABEL_47;
  }

  v88 = v86;
  v89 = v99;
  sub_1C8786744(v88, v99, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_76(v2 + v85, 1, v69);
  if (v90)
  {
    OUTLINED_FUNCTION_11_19();
    sub_1C8805EE4();
LABEL_47:
    v46 = &qword_1EC2B5EE8;
    v47 = &unk_1C8BE6F90;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_18();
  v91 = v2 + v85;
  v92 = v101;
  sub_1C8A115B8(v91, v101, v93);
  v94 = static Siri_Nlu_External_UUID.== infix(_:_:)(v89, v92);
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v94)
  {
    goto LABEL_49;
  }

LABEL_37:
  v82 = 0;
  return v82 & 1;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest();
  sub_1C8A13CEC(&qword_1EC2BE1B0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A13808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A13CEC(&qword_1EC2BE1E0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A13888(uint64_t a1)
{
  v2 = sub_1C8A13CEC(&qword_1EC2BE1C0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A138F8()
{
  sub_1C8A13CEC(&qword_1EC2BE1C0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A13AC0()
{
  sub_1C8A13C88(319, &qword_1EDACA2F8, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C8A13C88(319, &qword_1EC2B5F40, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, MEMORY[0x1E69E62F8]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = sub_1C8BD49FC();
      if (v5 <= 0x3F)
      {
        sub_1C8A13C88(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_1C8A13C88(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            sub_1C87E8A54();
            if (v11 > 0x3F)
            {
              return v10;
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
  }

  return v1;
}

void sub_1C8A13C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8A13CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_7_23();
  sub_1C87E8DEC(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v9[5]);
  OUTLINED_FUNCTION_313(a1 + v9[6]);
  *(a1 + v9[7]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse()
{
  result = qword_1EC2B4310;
  if (!qword_1EC2B4310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A13EC0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v5);
  return Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.setter(v5);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse() + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse() + 24);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C87E9130;
}

BOOL Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_7_23();
  sub_1C87E8DEC(v0 + *(v6 + 24), v1);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v8;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse() + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.mentions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse() + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse();
  v3 = a1 + *(v2 + 20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C8A14458()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4330);
  __swift_project_value_buffer(v0, qword_1EC2B4330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mentions";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4328 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4330);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A147F8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A14744();
    }
  }

  return result;
}

uint64_t sub_1C8A14744()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse() + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8A151CC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A147F8()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8A151CC(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse();
  sub_1C87E8DEC(v2 + *(v15 + 24), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v8, v14);
    sub_1C8A151CC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v14);
    if (v1)
    {
      return result;
    }
  }

  if (!*(*v2 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8A151CC(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    v17 = v2 + *(v15 + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse();
  v22 = *(v21 + 24);
  v23 = v16[14];
  sub_1C87E8DEC(a1 + v22, v20);
  sub_1C87E8DEC(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_73(v20);
  if (v24)
  {
    OUTLINED_FUNCTION_73(&v20[v23]);
    if (v24)
    {
      sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v20, &qword_1EC2B5EE8, &unk_1C8BE6F90);
LABEL_13:
    v30 = 0;
    return v30 & 1;
  }

  sub_1C87E8DEC(v20, v15);
  OUTLINED_FUNCTION_73(&v20[v23]);
  if (v24)
  {
    sub_1C87E9274(v15);
    goto LABEL_9;
  }

  sub_1C87E8E5C(&v20[v23], v9);
  v25 = static Siri_Nlu_External_UUID.== infix(_:_:)(v15, v9);
  sub_1C87E9274(v9);
  sub_1C87E9274(v15);
  sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v26 = *a1;
  v27 = *a2;
  sub_1C87D27C0();
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(v21 + 20);
  sub_1C8BD49FC();
  sub_1C8A151CC(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v30 = sub_1C8BD517C();
  return v30 & 1;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse();
  sub_1C8A151CC(&qword_1EC2BE1E8, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A14E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A151CC(&qword_1EC2BE200, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A14E98(uint64_t a1)
{
  v2 = sub_1C8A151CC(&qword_1EC2BE1F0, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A14F08()
{
  sub_1C8A151CC(&qword_1EC2BE1F0, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A150D0()
{
  sub_1C882C61C(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C882C61C(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8A151CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_23()
{

  return type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse();
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.hypotheses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse()
{
  result = qword_1EC2BE240;
  if (!qword_1EC2BE240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse() + 20);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8A15470()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE208);
  __swift_project_value_buffer(v0, qword_1EC2BE208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "hypotheses";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Ssu_SSUResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5C48 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE208);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8A156EC();
    }
  }

  return result;
}

uint64_t sub_1C8A156EC()
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A15CC0(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C8A15CC0(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse), result = sub_1C8BD4E0C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse() + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Ssu_SSUResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C87D2A98();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse() + 20);
  sub_1C8BD49FC();
  sub_1C8A15CC0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse();
  sub_1C8A15CC0(&qword_1EC2BE220, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A15A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A15CC0(&qword_1EC2BE250, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A15A88(uint64_t a1)
{
  v2 = sub_1C8A15CC0(&qword_1EC2BE230, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A15AF8()
{
  sub_1C8A15CC0(&qword_1EC2BE230, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A15CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.ruleIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v2) + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v0) + 20);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0) + 20);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8A15F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8A15F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.rules.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(0);
  OUTLINED_FUNCTION_21_9(v11);
  OUTLINED_FUNCTION_7();
  if (v12)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v13 = v10 + *(v7 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7();
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2BE2A0, &qword_1C8C0E560);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_271();
    sub_1C8A15F8C(v14, v15);
  }

  return sub_1C8A18768;
}

uint64_t sub_1C8A1613C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8A161A0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(0) + 20);
  OUTLINED_FUNCTION_24_12();

  return __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
}

uint64_t sub_1C8A162B4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  v11 = a1(v10);
  sub_1C8A15F1C(v2 + *(v11 + 20), v3);
  v12 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v12) != 1)
  {
    return sub_1C8A15F8C(v3, a2);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v13 = a2 + *(v12 + 20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = __swift_getEnumTagSinglePayload(v3, 1, v12);
  if (result != 1)
  {
    return sub_1C8778ED8(v3, &qword_1EC2BE2A0, &qword_1C8C0E560);
  }

  return result;
}

uint64_t sub_1C8A163D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v7 = OUTLINED_FUNCTION_80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_271();
  sub_1C8A1613C(v13, v14);
  return a5(v12);
}

uint64_t sub_1C8A1646C()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  sub_1C8778ED8(v1 + v4, &qword_1EC2BE2A0, &qword_1C8C0E560);
  sub_1C8A15F8C(v0, v1 + v4);
  OUTLINED_FUNCTION_24_12();

  return __swift_storeEnumTagSinglePayload(v1 + v4, 0, 1, v5);
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.rules.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(0);
  OUTLINED_FUNCTION_21_9(v11);
  OUTLINED_FUNCTION_7();
  if (v12)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v13 = v10 + *(v7 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7();
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2BE2A0, &qword_1C8C0E560);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_271();
    sub_1C8A15F8C(v14, v15);
  }

  return sub_1C8A16618;
}

void sub_1C8A1661C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1C8A1613C((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2BE2A0, &qword_1C8C0E560);
    sub_1C8A15F8C(v4, v8 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C8A161A0(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2BE2A0, &qword_1C8C0E560);
    sub_1C8A15F8C(v5, v8 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL sub_1C8A16714(uint64_t (*a1)(void))
{
  v3 = OUTLINED_FUNCTION_271();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = a1(0);
  sub_1C8A15F1C(v1 + *(v11 + 20), v10);
  v12 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v13 = __swift_getEnumTagSinglePayload(v10, 1, v12) != 1;
  sub_1C8778ED8(v10, &qword_1EC2BE2A0, &qword_1C8C0E560);
  return v13;
}

uint64_t sub_1C8A167F8(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_24_12();

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.getter()
{
  OUTLINED_FUNCTION_17_14();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C8A168AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.setter();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(v3) + 24));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_17_14();
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

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.clearModelType()()
{
  OUTLINED_FUNCTION_17_14();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(0);
  v3 = *(v2 + 20);
  OUTLINED_FUNCTION_24_12();
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v6 = (a1 + *(v2 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_1C8BD4DAC(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0) + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C87D2814(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_23();
  sub_1C8776A58(v3, v4);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A16D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A58(&qword_1EC2BE358, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A16DAC(uint64_t a1)
{
  v2 = sub_1C8776A58(&qword_1EC2BE2B0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A16E1C()
{
  sub_1C8776A58(&qword_1EC2BE2B0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A16EC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
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
  v15 = *a5;
  v16 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_21(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8A17938(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v14 = v13 - v12;
  v15 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(0);
  sub_1C8A15F1C(v1 + *(v15 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2BE2A0, &qword_1C8C0E560);
  }

  else
  {
    sub_1C8A15F8C(v7, v14);
    OUTLINED_FUNCTION_2_25();
    sub_1C8776A58(v16, v17);
    sub_1C8BD4E2C();
    result = sub_1C8A161A0(v14);
    if (v0)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_15();
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v3);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v35 - v15);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2B8, &qword_1C8C0E568) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_74();
  v21 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(v20) + 20);
  v22 = v17[14];
  sub_1C8A15F1C(v1 + v21, v2);
  sub_1C8A15F1C(v0 + v21, v2 + v22);
  OUTLINED_FUNCTION_19(v2);
  if (v26)
  {
    OUTLINED_FUNCTION_19(v2 + v22);
    if (v26)
    {
      sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1C8A15F1C(v2, v16);
  OUTLINED_FUNCTION_19(v2 + v22);
  if (v26)
  {
    sub_1C8A161A0(v16);
LABEL_10:
    v27 = &qword_1EC2BE2B8;
    v28 = &qword_1C8C0E568;
LABEL_11:
    sub_1C8778ED8(v2, v27, v28);
LABEL_12:
    v25 = 0;
    return v25 & 1;
  }

  sub_1C8A15F8C(v2 + v22, v10);
  v30 = sub_1C87D2814(*v16, *v10);
  if ((v30 & 1) == 0)
  {
    sub_1C8A161A0(v10);
    sub_1C8A161A0(v16);
    v27 = &qword_1EC2BE2A0;
    v28 = &qword_1C8C0E560;
    goto LABEL_11;
  }

  v31 = *(v4 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_23();
  sub_1C8776A58(v32, v33);
  v34 = sub_1C8BD517C();
  sub_1C8A161A0(v10);
  sub_1C8A161A0(v16);
  sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
  if ((v34 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_23();
  sub_1C8776A58(v23, v24);
  v25 = OUTLINED_FUNCTION_191_0();
  return v25 & 1;
}

uint64_t sub_1C8A1754C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A58(&qword_1EC2BE350, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A175CC(uint64_t a1)
{
  v2 = sub_1C8776A58(&qword_1EC2BE2E8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1763C()
{
  sub_1C8776A58(&qword_1EC2BE2E8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A176C8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE288);
  __swift_project_value_buffer(v0, qword_1EC2BE288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rules";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_type";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A179E0();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8A17938(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1C8A17938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  OUTLINED_FUNCTION_2_25();
  sub_1C8776A58(v6, v7);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v14 = v13 - v12;
  v15 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(0);
  sub_1C8A15F1C(v1 + *(v15 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2BE2A0, &qword_1C8C0E560);
  }

  else
  {
    sub_1C8A15F8C(v7, v14);
    OUTLINED_FUNCTION_2_25();
    sub_1C8776A58(v16, v17);
    sub_1C8BD4E2C();
    result = sub_1C8A161A0(v14);
    if (v0)
    {
      return result;
    }
  }

  v19 = (v1 + *(v15 + 24));
  if (!v19[1])
  {
    return OUTLINED_FUNCTION_15();
  }

  v20 = *v19;
  result = sub_1C8BD4DDC();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v3);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v42 - v15);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2B8, &qword_1C8C0E568) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_74();
  v21 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(v20);
  v22 = *(v21 + 20);
  v23 = v17[14];
  sub_1C8A15F1C(v1 + v22, v2);
  sub_1C8A15F1C(v0 + v22, v2 + v23);
  OUTLINED_FUNCTION_19(v2);
  if (!v30)
  {
    sub_1C8A15F1C(v2, v16);
    OUTLINED_FUNCTION_19(v2 + v23);
    if (!v30)
    {
      sub_1C8A15F8C(v2 + v23, v10);
      v35 = sub_1C87D2814(*v16, *v10);
      if (v35)
      {
        v36 = *(v4 + 20);
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_23();
        sub_1C8776A58(v37, v38);
        v39 = sub_1C8BD517C();
        sub_1C8A161A0(v10);
        sub_1C8A161A0(v16);
        sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
        if ((v39 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_6;
      }

      sub_1C8A161A0(v10);
      sub_1C8A161A0(v16);
      v31 = &qword_1EC2BE2A0;
      v32 = &qword_1C8C0E560;
LABEL_18:
      sub_1C8778ED8(v2, v31, v32);
      goto LABEL_19;
    }

    sub_1C8A161A0(v16);
LABEL_17:
    v31 = &qword_1EC2BE2B8;
    v32 = &qword_1C8C0E568;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_19(v2 + v23);
  if (!v30)
  {
    goto LABEL_17;
  }

  sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
LABEL_6:
  v24 = *(v21 + 24);
  v25 = (v1 + v24);
  v26 = *(v1 + v24 + 8);
  v27 = (v0 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_19;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_26:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_23();
    sub_1C8776A58(v40, v41);
    v33 = OUTLINED_FUNCTION_191_0();
    return v33 & 1;
  }

  if (!v28)
  {
    goto LABEL_26;
  }

LABEL_19:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1C8A17F10(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8776A58(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A17FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A58(&qword_1EC2BE348, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1806C(uint64_t a1)
{
  v2 = sub_1C8776A58(&qword_1EC2BE300, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A180DC()
{
  sub_1C8776A58(&qword_1EC2BE300, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules);

  return sub_1C8BD4CFC();
}

void sub_1C8A184E4()
{
  sub_1C8803308(319, &qword_1EDACD398, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A185AC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A18630();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A18630()
{
  if (!qword_1EC2BE330)
  {
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(255);
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2BE330);
    }
  }
}

void sub_1C8A186B0()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A18630();
    if (v1 <= 0x3F)
    {
      sub_1C8803308(319, &qword_1EDACD3E8, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.startIndex.getter()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_4(v0);
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8A187E4(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4(*(v1 + 28));
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  OUTLINED_FUNCTION_4(*(v0 + 32));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.startMilliSeconds.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  OUTLINED_FUNCTION_4(*(v0 + 36));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.endMilliSeconds.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  OUTLINED_FUNCTION_4(*(v0 + 40));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8A188A4(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4(*(v1 + 24));
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UtteranceAlignment.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  v3 = a1 + v2[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_22_14(v2[6]);
  OUTLINED_FUNCTION_11_4(v2[7]);
}

void Siri_Nlu_External_UtteranceAlignment.nodeIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 28));
}

void Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

void Siri_Nlu_External_UtteranceSpan.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_22_14(v0);
  OUTLINED_FUNCTION_11_4(*(v1 + 24));
  OUTLINED_FUNCTION_11_4(*(v2 + 28));
  OUTLINED_FUNCTION_11_4(*(v3 + 32));
  OUTLINED_FUNCTION_11_4(*(v4 + 36));
  OUTLINED_FUNCTION_11_4(*(v5 + 40));
}

void Siri_Nlu_External_UtteranceSpan.endIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

void Siri_Nlu_External_UtteranceSpan.startUnicodeScalarIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 28));
}

void Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 32));
}

void Siri_Nlu_External_UtteranceSpan.startMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 36));
}

void Siri_Nlu_External_UtteranceSpan.endMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 40));
}

uint64_t (*Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UtteranceAlignment.spans.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*Siri_Nlu_External_UtteranceAlignment.nodeIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 28));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UtteranceAlignment.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_External_UtteranceAlignment.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0) + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.startIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C87FE8F0;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.endIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.startUnicodeScalarIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 28));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 32));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.startMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 36));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.endMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 40));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UtteranceSpan.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_External_UtteranceSpan.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1C8A191A8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACAC58);
  __swift_project_value_buffer(v0, qword_1EDACAC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spans";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "node_index";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_UtteranceAlignment.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A19DD4();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A19484();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A19D94();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A19484()
{
  type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_External_UtteranceAlignment.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  v5 = (v0 + v4[6]);
  if ((v5[1] & 1) != 0 || (v6 = *v5, result = OUTLINED_FUNCTION_23_14(), (v2 = v1) == 0))
  {
    v8 = *v0;
    if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_UtteranceSpan(0), sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan), v1 = v2, result = sub_1C8BD4E0C(), !v2))
    {
      v9 = (v3 + v4[7]);
      if ((v9[1] & 1) != 0 || (v10 = *v9, result = OUTLINED_FUNCTION_23_14(), !v1))
      {
        v11 = v3 + v4[5];
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_UtteranceAlignment.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v4);
  OUTLINED_FUNCTION_11(v5[6]);
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v8)
    {
      return 0;
    }
  }

  v9 = *v2;
  v10 = *a2;
  sub_1C87DD1B0();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11(v5[7]);
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[5];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_11_21();
  sub_1C8A1A440(v17, v18);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A197D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A1A440(&qword_1EC2BE388, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A19850(uint64_t a1)
{
  v2 = sub_1C8A1A440(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A198C0()
{
  sub_1C8A1A440(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1995C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACBCC0);
  __swift_project_value_buffer(v0, qword_1EDACBCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "start_index";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end_index";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_unicode_scalar_index";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end_unicode_scalar_index";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "start_milli_seconds";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "end_milli_seconds";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_UtteranceSpan.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A19D30();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A19D94();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A19DD4();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A19E14();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8A19E78();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C8A19EDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A19D94()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = *(v1(v0) + 24);
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_1C8A19DD4()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = *(v1(v0) + 28);
  return OUTLINED_FUNCTION_20_10();
}

uint64_t Siri_Nlu_External_UtteranceSpan.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_17();
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_467(v2[5]);
  if ((v4 & 1) != 0 || (v5 = *v3, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v0))
  {
    OUTLINED_FUNCTION_467(v2[6]);
    if ((v8 & 1) != 0 || (v9 = *v7, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v0))
    {
      OUTLINED_FUNCTION_467(v2[7]);
      if ((v11 & 1) != 0 || (v12 = *v10, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v0))
      {
        OUTLINED_FUNCTION_467(v2[8]);
        if ((v14 & 1) != 0 || (v15 = *v13, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v0))
        {
          OUTLINED_FUNCTION_467(v2[9]);
          if ((v17 & 1) != 0 || (v18 = *v16, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D8C(), !v0))
          {
            OUTLINED_FUNCTION_467(v2[10]);
            if (v20)
            {
              return sub_1C8BD49DC();
            }

            v21 = *v19;
            OUTLINED_FUNCTION_48_0();
            result = sub_1C8BD4D8C();
            if (!v0)
            {
              return sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_UtteranceSpan.== infix(_:_:)()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_11(v0);
  if (v3)
  {
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v4)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v1 + 24));
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v8)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v5 + 28));
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v12)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v9 + 32));
  if (v15)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v16)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v13 + 36));
  if ((v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v20 & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

LABEL_21:
  OUTLINED_FUNCTION_11(*(v17 + 40));
  if (v22)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v24)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_11_21();
  sub_1C8A1A440(v25, v26);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A1A1EC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A1A440(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A1A2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A1A440(&qword_1EC2BE380, type metadata accessor for Siri_Nlu_External_UtteranceSpan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1A350(uint64_t a1)
{
  v2 = sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1A3C0()
{
  sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1A440(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C8A1A6C8()
{
  sub_1C8A1A774();
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD380);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A1A774()
{
  if (!qword_1EDACD3B0)
  {
    type metadata accessor for Siri_Nlu_External_UtteranceSpan(255);
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD3B0);
    }
  }
}

void sub_1C8A1A7F4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD380);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD388);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.shape.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.numericalizedFeature.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.feature.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0) + 28);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v2) + 28);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v0) + 28);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  v3 = a1 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0) + 28);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.tensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE438, &qword_1C8C0EDD0);
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.tensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    OUTLINED_FUNCTION_84_4(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1ADF8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_299_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_74();
  v12 = a1(v11);
  OUTLINED_FUNCTION_56_6(v12);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  v13 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  OUTLINED_FUNCTION_65(v2);
  if (!v14)
  {
    return sub_1C8A1B32C();
  }

  v15 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v15;
  a2[2] = v15;
  v16 = a2 + *(v13 + 28);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_65(v2);
  if (!v14)
  {
    return sub_1C8778ED8(v2, &qword_1EC2BE438, &qword_1C8C0EDD0);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.tensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE438, &qword_1C8C0EDD0);
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.tensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    OUTLINED_FUNCTION_84_4(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

BOOL sub_1C8A1B0D8()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = v1(0);
  OUTLINED_FUNCTION_56_6(v9);
  sub_1C8778810();
  v10 = v0(0);
  v11 = __swift_getEnumTagSinglePayload(v2, 1, v10) != 1;
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v12, v13, v14);
  return v11;
}

uint64_t sub_1C8A1B1CC()
{
  OUTLINED_FUNCTION_50();
  v5 = v4(0);
  sub_1C8778ED8(v1 + *(v5 + 20), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C8A1B294()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(v1(0) + 20);
  v0(0);
  v3 = OUTLINED_FUNCTION_73_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C8A1B32C()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v8 + 20);
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1B508()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C8A1B55C()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A1B68C(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = a1(v9);
  OUTLINED_FUNCTION_56_6(v10);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (!v12)
  {
    return sub_1C8A1B32C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v13 = *(v11 + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  result = OUTLINED_FUNCTION_65(v1);
  if (!v12)
  {
    return sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v8 + 20);
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1BA24(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = a1(v9);
  OUTLINED_FUNCTION_56_6(v10);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (!v12)
  {
    return sub_1C8A1B32C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v13 = *(v11 + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  result = OUTLINED_FUNCTION_65(v1);
  if (!v12)
  {
    return sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v8 + 20);
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1BD98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.modelType.setter(v1, v2);
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.modelType.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v2);
  v4 = OUTLINED_FUNCTION_76_4(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v0[3] = v4;
  *v0 = v6;
  v0[1] = v7;

  return sub_1C87E9980;
}

uint64_t sub_1C8A1BF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C8A1B508();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v8 + 20);
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C8A1C17C()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 10);
  v6 = (*v0)[3];
  v7 = (*v0)[4];
  v8 = (*v0)[1];
  v9 = (*v0)[2];
  v10 = **v0;
  if (v11)
  {
    v12 = (*v0)[4];
    sub_1C8A1B508();
    sub_1C8778ED8(v10 + v5, v4, v3);
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_26_1();
    sub_1C8A1B55C();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v1, v2);
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_26_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v13);
}

uint64_t sub_1C8A1C2F0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A1C348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.modelType.setter(v1, v2);
}

uint64_t sub_1C8A1C3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.modelType.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v2);
  v4 = OUTLINED_FUNCTION_76_4(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v0[3] = v4;
  *v0 = v6;
  v0[1] = v7;

  return sub_1C87EB660;
}

uint64_t sub_1C8A1C4A8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1C8A1C534()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = v1(0);
  v5 = *(v4 + 20);
  v0(0);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v11 = (v3 + *(v4 + 24));
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1C8A1C5B8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE390);
  __swift_project_value_buffer(v0, qword_1EC2BE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericalized_feature";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "feature";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BDC();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BEC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DBC(), !v1))
  {
    if (!*(v0[1] + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DBC(), !v1))
    {
      if (!*(v0[2] + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DAC(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0) + 28);
        OUTLINED_FUNCTION_119();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  if ((sub_1C87D8544(*v2, *v3) & 1) == 0 || (sub_1C87D8544(*(v1 + 8), *(v0 + 8)) & 1) == 0 || (sub_1C87D2814(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0) + 28);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_24();
  sub_1C8776AA0(v5, v6);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A1CA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE608, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1CB18(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1CB88()
{
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1CC88()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A1CE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE600, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1CE9C(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1CF0C()
{
  sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1D00C()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);
  return sub_1C8BD4C7C();
}

void sub_1C8A1D0EC()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  OUTLINED_FUNCTION_48_9(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_299_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_66();
  v14 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v13);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v18 = OUTLINED_FUNCTION_165_0();
  v19 = v3(v18);
  OUTLINED_FUNCTION_56_6(v19);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  OUTLINED_FUNCTION_62_10();
  if (v20)
  {
    sub_1C8778ED8(v1, &qword_1EC2BE438, &qword_1C8C0EDD0);
LABEL_5:
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  sub_1C8A1B32C();
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);
  OUTLINED_FUNCTION_33_9();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_67_7();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void sub_1C8A1D29C()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v33 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE438, &qword_1C8C0EDD0);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_211();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE460, &qword_1C8C0EDE8);
  OUTLINED_FUNCTION_223_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_74();
  v20 = *(v4(v19) + 20);
  v21 = *(v2 + 56);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v0);
  if (v25)
  {
    OUTLINED_FUNCTION_19(v0 + v21);
    if (v25)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v21);
  if (v25)
  {
    sub_1C8A1B55C();
LABEL_10:
    v26 = &qword_1EC2BE460;
    v27 = &qword_1C8C0EDE8;
LABEL_17:
    sub_1C8778ED8(v0, v26, v27);
LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  sub_1C8A1B32C();
  v28 = sub_1C87D8544(*v1, *v33);
  if ((v28 & 1) == 0 || (sub_1C87D8544(v1[1], v33[1]) & 1) == 0 || (sub_1C87D2814(v1[2], v33[2]) & 1) == 0)
  {
    sub_1C8A1B55C();
    sub_1C8A1B55C();
    v26 = &qword_1EC2BE438;
    v27 = &qword_1C8C0EDD0;
    goto LABEL_17;
  }

  v29 = *(v5 + 28);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_24();
  sub_1C8776AA0(v30, v31);
  v32 = sub_1C8BD517C();
  sub_1C8A1B55C();
  sub_1C8A1B55C();
  sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_24();
  sub_1C8776AA0(v22, v23);
  v24 = sub_1C8BD517C();
LABEL_19:
  OUTLINED_FUNCTION_157(v24);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1D668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5F8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1D6E8(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1D758()
{
  sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1D858()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_48_9(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_66();
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v14 = OUTLINED_FUNCTION_165_0();
  v15 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v14);
  OUTLINED_FUNCTION_82(v15);
  OUTLINED_FUNCTION_62_10();
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_7_24();
  sub_1C8A1B32C();
  OUTLINED_FUNCTION_22_15();
  sub_1C8776AA0(v17, v18);
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_67_7();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v1);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE480, &qword_1C8C0EDF0) - 8);
  v11 = *(*v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_74();
  v14 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v13) + 20);
  v15 = v10[14];
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    OUTLINED_FUNCTION_73(v0 + v15);
    if (v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_24();
      sub_1C8776AA0(v20, v21);
      v17 = OUTLINED_FUNCTION_159();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0 + v15);
  if (v16)
  {
    OUTLINED_FUNCTION_25_11();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BE480, &qword_1C8C0EDF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_24();
  sub_1C8A1B32C();
  static Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.== infix(_:_:)();
  v19 = v18;
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_258();
  sub_1C8A1B55C();
  sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v17);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1DCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5F0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1DD74(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE4F0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1DDE4()
{
  sub_1C8776AA0(&qword_1EC2BE4F0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1DE94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C8BE6F30;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_21(v14);
  (*(v15 + 104))(v12, v13);
  return sub_1C8BD510C();
}

uint64_t sub_1C8A1E048(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A1E0BC()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_48_9(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_66();
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v14 = OUTLINED_FUNCTION_165_0();
  v15 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v14);
  OUTLINED_FUNCTION_82(v15);
  OUTLINED_FUNCTION_62_10();
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_24();
  sub_1C8A1B32C();
  OUTLINED_FUNCTION_28_12();
  sub_1C8776AA0(v17, v18);
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_67_7();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v1);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE498, &qword_1C8C0EDF8) - 8);
  v11 = *(*v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_74();
  v14 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v13) + 20);
  v15 = v10[14];
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    OUTLINED_FUNCTION_73(v0 + v15);
    if (v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_24();
      sub_1C8776AA0(v20, v21);
      v17 = OUTLINED_FUNCTION_159();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0 + v15);
  if (v16)
  {
    OUTLINED_FUNCTION_23_15();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BE498, &qword_1C8C0EDF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_24();
  sub_1C8A1B32C();
  static Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.== infix(_:_:)();
  v19 = v18;
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_258();
  sub_1C8A1B55C();
  sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v17);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1E558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5E8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1E5D8(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE508, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1E648()
{
  sub_1C8776AA0(&qword_1EC2BE508, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1E750()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_78_3(v2, v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_210();
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v10);
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v15 = OUTLINED_FUNCTION_66();
  v16 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v15) + 20);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v1, 1, v11) == 1)
  {
    sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_22_15();
    sub_1C8776AA0(v17, v18);
    OUTLINED_FUNCTION_38_11();
    sub_1C8A1B55C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_79_3();
  if (!v20 || (OUTLINED_FUNCTION_69_4(v19), !v0))
  {
    OUTLINED_FUNCTION_71_2();
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_49_7();
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE480, &qword_1C8C0EDF0);
  OUTLINED_FUNCTION_223_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_74();
  v16 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v15);
  OUTLINED_FUNCTION_44_11(v16);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_5_6();
  if (!v17)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v0 + v1);
    if (!v17)
    {
      OUTLINED_FUNCTION_7_24();
      sub_1C8A1B32C();
      static Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.== infix(_:_:)();
      v20 = v19;
      OUTLINED_FUNCTION_89_3();
      sub_1C8A1B55C();
      sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_25_11();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BE480, &qword_1C8C0EDF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v0 + v1);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
LABEL_13:
  OUTLINED_FUNCTION_43_8();
  if (v21)
  {
    if (v22)
    {
      v25 = *v23 == *v24 && v21 == v22;
      if (v25 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v22)
  {
LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_24();
    sub_1C8776AA0(v26, v27);
    v18 = OUTLINED_FUNCTION_159();
    goto LABEL_11;
  }

LABEL_10:
  v18 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1EC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5E0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1ECDC(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE520, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1ED4C()
{
  sub_1C8776AA0(&qword_1EC2BE520, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1EDF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C8BE74A0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "response";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = "model_type";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v13();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A1F018(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_578();
      sub_1C8A1F158();
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_578();
      a4(v8);
    }
  }

  return result;
}

uint64_t sub_1C8A1F0A4()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A1F158()
{
  v0 = OUTLINED_FUNCTION_49_7();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4C1C();
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_78_3(v2, v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_210();
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v10);
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v15 = OUTLINED_FUNCTION_66();
  v16 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v15) + 20);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v1, 1, v11) == 1)
  {
    sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
  }

  else
  {
    OUTLINED_FUNCTION_4_24();
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_28_12();
    sub_1C8776AA0(v17, v18);
    OUTLINED_FUNCTION_38_11();
    sub_1C8A1B55C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_79_3();
  if (!v20 || (OUTLINED_FUNCTION_69_4(v19), !v0))
  {
    OUTLINED_FUNCTION_71_2();
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_49_7();
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE498, &qword_1C8C0EDF8);
  OUTLINED_FUNCTION_223_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_74();
  v16 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v15);
  OUTLINED_FUNCTION_44_11(v16);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_5_6();
  if (!v17)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v0 + v1);
    if (!v17)
    {
      OUTLINED_FUNCTION_4_24();
      sub_1C8A1B32C();
      static Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.== infix(_:_:)();
      v20 = v19;
      OUTLINED_FUNCTION_89_3();
      sub_1C8A1B55C();
      sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23_15();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BE498, &qword_1C8C0EDF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v0 + v1);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
LABEL_13:
  OUTLINED_FUNCTION_43_8();
  if (v21)
  {
    if (v22)
    {
      v25 = *v23 == *v24 && v21 == v22;
      if (v25 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v22)
  {
LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_24();
    sub_1C8776AA0(v26, v27);
    v18 = OUTLINED_FUNCTION_159();
    goto LABEL_11;
  }

LABEL_10:
  v18 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1F5B8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  sub_1C8BD530C();
  v1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C8776AA0(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A1F688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5D8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1F708(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE538, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1F778()
{
  sub_1C8776AA0(&qword_1EC2BE538, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A20000()
{
  sub_1C8A20434(319, &qword_1EC2BE558, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8A20434(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A2017C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = v2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v8 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a3)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v10 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_1C8A20360()
{
  OUTLINED_FUNCTION_257_0();
  if (v2 <= 0x3F)
  {
    sub_1C8A2017C(319, v1, v0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A20434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = OUTLINED_FUNCTION_97();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_18_0(v13);
  if (*(v14 + 84) == a2)
  {
    v10 = OUTLINED_FUNCTION_32_1();
    goto LABEL_5;
  }

  v16 = *(v3 + *(a3 + 24) + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_258();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    result = OUTLINED_FUNCTION_18_0(v15);
    if (*(v17 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v12 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_1C8A206CC()
{
  OUTLINED_FUNCTION_257_0();
  if (v2 <= 0x3F)
  {
    sub_1C8A2017C(319, v1, v0);
    if (v3 <= 0x3F)
    {
      sub_1C8A20434(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_66_7()
{
  v2 = *(v0 - 72);

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t result, uint64_t a2)
{
  *(v2 - 72) = a2;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_4@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = a1;
  v1[2] = a1;
  v4 = v1 + *(v2 + 28);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.hypotheses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse()
{
  result = qword_1EC2B43E0;
  if (!qword_1EC2B43E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse() + 20);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8A20AB0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4400);
  __swift_project_value_buffer(v0, qword_1EC2B4400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "hypotheses";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B43F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8A20D2C();
    }
  }

  return result;
}

uint64_t sub_1C8A20D2C()
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A21300(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C8A21300(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse), result = sub_1C8BD4E0C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse() + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C87D2A98();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse() + 20);
  sub_1C8BD49FC();
  sub_1C8A21300(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse();
  sub_1C8A21300(&qword_1EC2BE610, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A21048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A21300(&qword_1EC2BE628, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A210C8(uint64_t a1)
{
  v2 = sub_1C8A21300(&qword_1EC2BE618, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A21138()
{
  sub_1C8A21300(&qword_1EC2BE618, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A21300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v10 = OUTLINED_FUNCTION_13(*(v9 + 20));
  sub_1C8786744(v10, v11, &qword_1EC2B64A8, &unk_1C8BE7670);
  v12 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_65(v1);
  if (v13)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v14 = a1 + v12[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v12[6]);
    OUTLINED_FUNCTION_15_2(v12[7]);
    OUTLINED_FUNCTION_15_2(v12[8]);
    v15 = (a1 + v12[9]);
    *v15 = 0;
    v15[1] = 0;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_20();
    return sub_1C8A221C4(v1, a1);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest()
{
  result = qword_1EC2BE668;
  if (!qword_1EC2BE668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_3_20();
  sub_1C8A221C4(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Cati_CATIRequest.embeddings.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v0[2] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v0[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_28_13(v8);
  OUTLINED_FUNCTION_32_0(*(v9 + 20));
  v10 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v10, v11, v5);
  if (v12)
  {
    *v7 = MEMORY[0x1E69E7CC0];
    v13 = v7 + v5[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[6]);
    OUTLINED_FUNCTION_11_0(v5[7]);
    OUTLINED_FUNCTION_11_0(v5[8]);
    v14 = (v7 + v5[9]);
    *v14 = 0;
    v14[1] = 0;
    v15 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v12)
    {
      sub_1C8778ED8(v4, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_20();
    sub_1C8A221C4(v4, v7);
  }

  return sub_1C8A21698;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hasEmbeddings.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 20));
  sub_1C8786744(v8, v9, &qword_1EC2B64A8, &unk_1C8BE7670);
  v10 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_10(v10);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearEmbeddings()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    v2 = *v1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A217F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.modify()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_37_6(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearOriginalUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    v2 = *v1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A219AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.modify()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_37_6(v1) + 28);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearNormalisedUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v10 = OUTLINED_FUNCTION_13(*(v9 + 32));
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65(v1);
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v12[5]);
    OUTLINED_FUNCTION_15_2(v12[6]);
    *(a1 + v12[7]) = 6;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    return sub_1C8A221C4(v1, a1);
  }

  return result;
}

uint64_t sub_1C8A21C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1C8A22434(a1, &v16 - v13);
  return a7(v14);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.requestID.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 32);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_4_25();
  sub_1C8A221C4(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Cati_CATIRequest.requestID.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_28_13(v8) + 32);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[5]);
    OUTLINED_FUNCTION_11_0(v5[6]);
    *(v7 + v5[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    sub_1C8A221C4(v4, v7);
  }

  return sub_1C8A21E94;
}

void sub_1C8A21EBC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    sub_1C8A22434((*a1)[4], v8);
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C8A221C4(v8, v12 + v7);
    OUTLINED_FUNCTION_26_1();
    sub_1C8A2248C();
  }

  else
  {
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C8A221C4(v9, v12 + v7);
    OUTLINED_FUNCTION_26_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hasRequestID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 32));
  sub_1C8786744(v8, v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_10(v10);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearRequestID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v10 = OUTLINED_FUNCTION_13(*(v9 + 36));
  sub_1C8786744(v10, v11, &qword_1EC2B6038, &unk_1C8BE8850);
  v12 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_65(v1);
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v12 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(a1 + v14) = qword_1EDACCB68;
    v15 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v12);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_25();
    return sub_1C8A221C4(v1, a1);
  }

  return result;
}

uint64_t sub_1C8A221C4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 36);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_25();
  sub_1C8A221C4(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Cati_CATIRequest.turnInput.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v0[2] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v0[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_28_13(v8);
  OUTLINED_FUNCTION_32_0(*(v9 + 36));
  v10 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v10, v11, v5);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v5 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(v7 + v13) = qword_1EDACCB68;
    v14 = OUTLINED_FUNCTION_109();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v5);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v4, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_25();
    sub_1C8A221C4(v4, v7);
  }

  return sub_1C8A2240C;
}

uint64_t sub_1C8A22434(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C8A2248C()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hasTurnInput.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 36));
  sub_1C8786744(v8, v9, &qword_1EC2B6038, &unk_1C8BE8850);
  v10 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_10(v10);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearTurnInput()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  sub_1C8778ED8(v0 + *(v1 + 36), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v3 = v2[5];
  v4 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_447(v4);
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[8];
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_447(v8);
  v9 = v2[9];
  v10 = type metadata accessor for Siri_Nlu_External_TurnInput(0);

  return __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
}

uint64_t sub_1C8A2275C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE630);
  __swift_project_value_buffer(v0, qword_1EC2BE630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "embeddings";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "original_utterance";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "normalised_utterance";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "request_id";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "turn_input";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Cati_CATIRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A22B50();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A22C04();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A22C68();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A22CCC();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8A22D80();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A22B50()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 20);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8A24040(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A22CCC()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 32);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8A24040(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A22D80()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest() + 36);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A24040(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.traverse<A>(visitor:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v48 = v7;
  v8 = OUTLINED_FUNCTION_86();
  v49 = type metadata accessor for Siri_Nlu_External_TurnInput(v8);
  v9 = OUTLINED_FUNCTION_21(v49);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v46 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_81();
  v50 = v18;
  OUTLINED_FUNCTION_86();
  v51 = type metadata accessor for Siri_Nlu_External_UUID();
  v19 = OUTLINED_FUNCTION_21(v51);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33();
  v47 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_74();
  v28 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v29 = OUTLINED_FUNCTION_21(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_33();
  v34 = v33 - v32;
  v35 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v36 = OUTLINED_FUNCTION_13(v35[5]);
  sub_1C8786744(v36, v37, &qword_1EC2B64A8, &unk_1C8BE7670);
  v38 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v38, v39, v28) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C8A221C4(v2, v34);
    sub_1C8A24040(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C8A2248C();
    if (v1)
    {
      return result;
    }
  }

  v41 = (v0 + v35[6]);
  if (v41[1])
  {
    v42 = *v41;
    result = sub_1C8BD4DDC();
    v43 = v51;
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v43 = v51;
  }

  v44 = (v0 + v35[7]);
  if (!v44[1] || (v45 = *v44, result = sub_1C8BD4DDC(), !v1))
  {
    sub_1C8786744(v0 + v35[8], v50, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v43) == 1)
    {
      sub_1C8778ED8(v50, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C8A221C4(v50, v47);
      sub_1C8A24040(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
      OUTLINED_FUNCTION_39_5();
      result = sub_1C8A2248C();
      if (v1)
      {
        return result;
      }
    }

    sub_1C8786744(v0 + v35[9], v48, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
    {
      sub_1C8778ED8(v48, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8A221C4(v48, v46);
      sub_1C8A24040(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
      OUTLINED_FUNCTION_39_5();
      result = sub_1C8A2248C();
      if (v1)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Cati_CATIRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v116 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v4 = OUTLINED_FUNCTION_21(v116);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v112 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v114 = v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21(v115);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v117 = v17;
  OUTLINED_FUNCTION_86();
  v120 = type metadata accessor for Siri_Nlu_External_UUID();
  v18 = OUTLINED_FUNCTION_21(v120);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33();
  v113 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_81();
  v118 = v27;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v119);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_81();
  v121 = v31;
  OUTLINED_FUNCTION_86();
  v32 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v33 = OUTLINED_FUNCTION_21(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_33();
  v38 = (v37 - v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v112 - v43);
  v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880) - 8);
  v46 = *(*v45 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v112 - v48;
  v122 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  v123 = a1;
  v50 = *(v122 + 20);
  v51 = v45[14];
  sub_1C8786744(a1 + v50, v49, &qword_1EC2B64A8, &unk_1C8BE7670);
  v52 = a2 + v50;
  v53 = a2;
  sub_1C8786744(v52, &v49[v51], &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_65(v49);
  if (v54)
  {
    OUTLINED_FUNCTION_65(&v49[v51]);
    if (v54)
    {
      sub_1C8778ED8(v49, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_14;
    }

LABEL_9:
    v55 = &qword_1EC2B64E0;
    v56 = &unk_1C8BE7880;
    v57 = v49;
LABEL_10:
    sub_1C8778ED8(v57, v55, v56);
    goto LABEL_11;
  }

  sub_1C8786744(v49, v44, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_65(&v49[v51]);
  if (v54)
  {
    sub_1C8A2248C();
    goto LABEL_9;
  }

  sub_1C8A221C4(&v49[v51], v38);
  v60 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v44, v38);
  sub_1C8A2248C();
  sub_1C8A2248C();
  sub_1C8778ED8(v49, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v60 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v61 = v122;
  v62 = v123;
  v63 = *(v122 + 24);
  OUTLINED_FUNCTION_35_7();
  if (v64)
  {
    if (!v65)
    {
      goto LABEL_11;
    }

    v68 = *v66 == *v67 && v64 == v65;
    if (!v68 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v65)
  {
    goto LABEL_11;
  }

  v69 = v61[7];
  OUTLINED_FUNCTION_35_7();
  if (v70)
  {
    if (!v71)
    {
      goto LABEL_11;
    }

    v74 = *v72 == *v73 && v70 == v71;
    if (!v74 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v71)
  {
    goto LABEL_11;
  }

  v75 = v61[8];
  v76 = *(v119 + 48);
  v77 = v121;
  OUTLINED_FUNCTION_27(v62 + v75, v121);
  OUTLINED_FUNCTION_27(v53 + v75, v77 + v76);
  v78 = OUTLINED_FUNCTION_120();
  v79 = v120;
  OUTLINED_FUNCTION_76(v78, v80, v120);
  if (v54)
  {
    v81 = OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_76(v81, v82, v79);
    if (v54)
    {
      sub_1C8778ED8(v77, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_42;
    }

LABEL_40:
    v55 = &qword_1EC2B5EE8;
    v56 = &unk_1C8BE6F90;
LABEL_51:
    v57 = v77;
    goto LABEL_10;
  }

  v83 = v118;
  sub_1C8786744(v77, v118, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v84 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_76(v84, v85, v79);
  if (v86)
  {
    sub_1C8A2248C();
    goto LABEL_40;
  }

  v87 = v77 + v76;
  v88 = v113;
  sub_1C8A221C4(v87, v113);
  v89 = static Siri_Nlu_External_UUID.== infix(_:_:)(v83, v88);
  sub_1C8A2248C();
  sub_1C8A2248C();
  sub_1C8778ED8(v77, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_42:
  v90 = v61[9];
  v91 = *(v115 + 48);
  v92 = v117;
  OUTLINED_FUNCTION_27(v62 + v90, v117);
  v93 = v53 + v90;
  v77 = v92;
  OUTLINED_FUNCTION_27(v93, v92 + v91);
  v94 = OUTLINED_FUNCTION_109();
  v95 = v116;
  OUTLINED_FUNCTION_76(v94, v96, v116);
  if (v54)
  {
    v97 = OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_76(v97, v98, v95);
    if (v54)
    {
      sub_1C8778ED8(v92, &qword_1EC2B6038, &unk_1C8BE8850);
LABEL_55:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_14_13();
      sub_1C8A24040(v110, v111);
      v58 = sub_1C8BD517C();
      return v58 & 1;
    }

    goto LABEL_50;
  }

  v99 = v114;
  sub_1C8786744(v92, v114, &qword_1EC2B6038, &unk_1C8BE8850);
  v100 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_76(v100, v101, v95);
  if (v102)
  {
    sub_1C8A2248C();
LABEL_50:
    v55 = &qword_1EC2B6040;
    v56 = &unk_1C8BE6CF0;
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_0_25();
  v103 = v92 + v91;
  v104 = v112;
  sub_1C8A221C4(v103, v112);
  if (*(v99 + *(v95 + 20)) != *(v104 + *(v95 + 20)))
  {

    OUTLINED_FUNCTION_218();
    sub_1C88AD618();
    v106 = v105;

    if ((v106 & 1) == 0)
    {
      sub_1C8A2248C();
      sub_1C8A2248C();
      v55 = &qword_1EC2B6038;
      v56 = &unk_1C8BE8850;
      goto LABEL_51;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_14_13();
  sub_1C8A24040(v107, v108);
  OUTLINED_FUNCTION_220();
  v109 = sub_1C8BD517C();
  sub_1C8A2248C();
  sub_1C8A2248C();
  sub_1C8778ED8(v77, &qword_1EC2B6038, &unk_1C8BE8850);
  if (v109)
  {
    goto LABEL_55;
  }

LABEL_11:
  v58 = 0;
  return v58 & 1;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
  sub_1C8A24040(&qword_1EC2BE648, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A23C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A24040(&qword_1EC2BE678, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A23C94(uint64_t a1)
{
  v2 = sub_1C8A24040(&qword_1EC2BE658, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A23D04()
{
  sub_1C8A24040(&qword_1EC2BE658, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest);

  return sub_1C8BD4CFC();
}

void sub_1C8A23ECC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A23FEC(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    if (v1 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v2 <= 0x3F)
      {
        sub_1C8A23FEC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
        if (v3 <= 0x3F)
        {
          sub_1C8A23FEC(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A23FEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1C8A24040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_37_6(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.getter()
{
  OUTLINED_FUNCTION_7_25();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277();
  if (*(v2 + 24))
  {
    v3 = *(v2 + 16);
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A24124(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.setter();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.setter()
{
  OUTLINED_FUNCTION_731();
  v4 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0);
  v5 = OUTLINED_FUNCTION_41_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C8A26250(v7);
    OUTLINED_FUNCTION_40(v8);
  }

  OUTLINED_FUNCTION_178_0();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

void (*Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 64) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_277();
  if (*(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  return sub_1C8A24290;
}

void sub_1C8A24290(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.setter();
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
      OUTLINED_FUNCTION_11_22();
      v15 = OUTLINED_FUNCTION_2();
      v12 = sub_1C8A26250(v15);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    v16 = *(v12 + 24);
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
  }

  free(v2);
}

BOOL Siri_Nlu_Internal_Overrides_OverridesRequest.hasUtterance.getter()
{
  OUTLINED_FUNCTION_7_25();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277();
  return *(v2 + 24) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_OverridesRequest.clearUtterance()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v4 = sub_1C8A26250(v4);
    *(v0 + v1) = v4;
  }

  OUTLINED_FUNCTION_178_0();
  v5 = *(v4 + 24);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = *(v1 + *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(v8) + 20));
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_49_8();
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_65(v2);
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v12 = a1 + v10[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v10[6]);
    OUTLINED_FUNCTION_18_2(v10[7]);
    result = OUTLINED_FUNCTION_65(v2);
    if (!v11)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_121();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.tokenChain.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_23_16();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A26250(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_0_26();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_Overrides_OverridesRequest.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_7_25();
  v12 = *(v0 + v11);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v14 = v10 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[6]);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    sub_1C87977A8();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A2480C(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Overrides_OverridesRequest.matchingSpans.setter(v2);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.matchingSpans.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8A248EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_25();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_277();
  v6 = *(v4 + v5);
}

uint64_t sub_1C8A24934(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Overrides_OverridesRequest.systemDialogActs.setter(v2);
}

uint64_t sub_1C8A2496C(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_241();
  v7 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v3 + v4);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C8A26250(v10);
    OUTLINED_FUNCTION_40(v11);
  }

  v12 = *a2;
  OUTLINED_FUNCTION_178_0();
  v13 = *(v9 + v12);
  *(v9 + v12) = v2;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.systemDialogActs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.turnContext.getter()
{
  v1 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  OUTLINED_FUNCTION_7_25();
  v8 = *(v0 + v7);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_49_8();
  v9 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_65(v6);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = *(v9 + 20);
    type metadata accessor for Siri_Nlu_External_NLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = *(v9 + 24);
    type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    result = OUTLINED_FUNCTION_65(v6);
    if (!v10)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t sub_1C8A24BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C8A265D8();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.turnContext.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_23_16();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A26250(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_3_21();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_Overrides_OverridesRequest.turnContext.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v3[6] = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_7_25();
  v11 = *(v0 + v10);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v7 + 20);
    type metadata accessor for Siri_Nlu_External_NLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = *(v7 + 24);
    type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    sub_1C87977A8();
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C8A24EE0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1C8A265D8();
    a3(v5);
    sub_1C8A26630();
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

uint64_t sub_1C8A24FC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_731();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  OUTLINED_FUNCTION_7_25();
  v18 = *(v5 + v17);
  v19 = *a3;
  OUTLINED_FUNCTION_277();
  sub_1C8778810();
  v20 = a4(0);
  OUTLINED_FUNCTION_76(v16, 1, v20);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_1C8778ED8(v16, v6, v4);
  return v22;
}

uint64_t sub_1C8A250C4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_731();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v14 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v18 = OUTLINED_FUNCTION_2();
    *(v7 + v14) = sub_1C8A26250(v18);
  }

  a3(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C8A251D0(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Overrides_OverridesRequest.inputs.setter(v2);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.inputs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A252A4(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
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
      OUTLINED_FUNCTION_11_22();
      v19 = OUTLINED_FUNCTION_2();
      v16 = sub_1C8A26250(v19);
      *(v18 + v17) = v16;
    }

    v20 = *a3;
    swift_beginAccess();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v4);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  if (qword_1EC2B5CB0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2BE698;
}

uint64_t sub_1C8A254C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.setter();
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.setter()
{
  OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_34_9();
  v4 = (v1 + v3);
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_34_9();
  *(v1 + 32) = v3;
  v4 = (v0 + v3);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v5;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.clearUtterance()()
{
  OUTLINED_FUNCTION_34_9();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.tokenChain.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_200();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.tokenChain.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_13(v11);
  sub_1C8778810();
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v15 = v10 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[6]);
    OUTLINED_FUNCTION_26(v7[7]);
    v16 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v16, v17, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    sub_1C87977A8();
  }

  return sub_1C8A2581C;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.clearTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.matchingSpans.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.turnInput.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_200();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.turnInput.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 32);
  sub_1C8778810();
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *&v10[v12] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
    sub_1C87977A8();
  }

  return sub_1C8A25B14;
}

void sub_1C8A25B3C()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 10);
  v6 = (*v0)[3];
  v7 = (*v0)[4];
  v8 = (*v0)[1];
  v9 = (*v0)[2];
  v10 = **v0;
  if (v11)
  {
    v12 = (*v0)[4];
    sub_1C8A265D8();
    sub_1C8778ED8(v10 + v5, v4, v3);
    sub_1C87977A8();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    sub_1C8A26630();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v1, v2);
    sub_1C87977A8();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v19);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.hasTurnInput.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v6);
  OUTLINED_FUNCTION_13(*(v7 + 32));
  OUTLINED_FUNCTION_262();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
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
  sub_1C8778ED8(v13, v14, &unk_1C8BE8850);
  return v12;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.clearTurnInput()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v2) + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v0) + 20);
  return nullsub_1;
}

uint64_t sub_1C8A25E80()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE680);
  __swift_project_value_buffer(v0, qword_1EC2BE680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "matching_spans";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "system_dialog_acts";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "turn_context";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "inputs";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A26170()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C8A261B0();
  qword_1EC2BE698 = result;
  return result;
}

uint64_t sub_1C8A261B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain;
  v2 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs) = v3;
  v4 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext;
  v5 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs) = v3;
  return v0;
}

uint64_t sub_1C8A26250(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28[2] = v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain;
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs) = v11;
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext;
  v28[1] = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext;
  v14 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs) = v11;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 24) = v17;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();

  sub_1C8786514();
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
  swift_beginAccess();
  v19 = *(a1 + v18);
  swift_beginAccess();
  v20 = *(v1 + v10);
  *(v1 + v10) = v19;

  v21 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
  swift_beginAccess();
  v22 = *(a1 + v21);
  swift_beginAccess();
  v23 = *(v1 + v12);
  *(v1 + v12) = v22;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
  swift_beginAccess();
  v25 = *(a1 + v24);

  swift_beginAccess();
  v26 = *(v1 + v15);
  *(v1 + v15) = v25;

  return v1;
}

uint64_t sub_1C8A265D8()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C8A26630()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A26684()
{
  v1 = *(v0 + 24);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  v2 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans);

  v3 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext, &qword_1EC2B6010, &unk_1C8BF5040);
  v4 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs);

  return v0;
}

uint64_t sub_1C8A26714()
{
  v0 = sub_1C8A26684();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C8A26250(v9);
  }

  return sub_1C8A26808();
}

uint64_t sub_1C8A26808()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C8793380();
        break;
      case 2:
        sub_1C8A26920();
        break;
      case 3:
        sub_1C8A269FC();
        break;
      case 4:
        sub_1C8A26AD8();
        break;
      case 5:
        sub_1C8A26BB4();
        break;
      case 6:
        sub_1C8A26C90();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A26920()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A269FC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A26AD8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  sub_1C8776AE8(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A26BB4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  sub_1C8776AE8(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A26C90()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0);
  result = sub_1C8A26DD8(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A26DD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = v22 - v6;
  v24 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v7 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v22[1] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v22 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  swift_beginAccess();
  if (!*(a1 + 24) || (v15 = *(a1 + 16), v16 = *(a1 + 24), , sub_1C8BD4DDC(), result = , !v2))
  {
    swift_beginAccess();
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1C8778ED8(v12, &qword_1EC2B6048, &unk_1C8BE6F80);
    }

    else
    {
      sub_1C87977A8();
      sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
      sub_1C8BD4E2C();
      result = sub_1C8A26630();
      if (v2)
      {
        return result;
      }
    }

    v18 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
    swift_beginAccess();
    if (!*(*(a1 + v18) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v2))
    {
      v19 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
      swift_beginAccess();
      if (!*(*(a1 + v19) + 16) || (type metadata accessor for Siri_Nlu_External_SystemDialogAct(0), sub_1C8776AE8(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct), , sub_1C8BD4E0C(), result = , !v2))
      {
        swift_beginAccess();
        v20 = v23;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v20, 1, v24) == 1)
        {
          sub_1C8778ED8(v20, &qword_1EC2B6010, &unk_1C8BF5040);
        }

        else
        {
          sub_1C87977A8();
          sub_1C8776AE8(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext);
          sub_1C8BD4E2C();
          result = sub_1C8A26630();
          if (v2)
          {
            return result;
          }
        }

        v21 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
        result = swift_beginAccess();
        if (*(*(a1 + v21) + 16))
        {
          type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
          sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

          sub_1C8BD4E0C();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Overrides_OverridesRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_7_25();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1C8A2746C(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_26();
  sub_1C8776AE8(v7, v8);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A2746C(uint64_t a1, uint64_t a2)
{
  v77 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v4 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6018, &qword_1C8BE6CD0);
  v6 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v71 - v13;
  v14 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v79 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v71 - v25;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  swift_beginAccess();
  v29 = *(a2 + 24);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_25;
    }

    v30 = v28 == *(a2 + 16) && v27 == v29;
    if (!v30 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_10:
    v71 = v8;
    v73 = a2;
    swift_beginAccess();
    v31 = v73;
    sub_1C8778810();
    swift_beginAccess();
    v32 = *(v17 + 48);
    sub_1C8778810();
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
    {

      sub_1C8778ED8(v26, &qword_1EC2B6048, &unk_1C8BE6F80);
      if (__swift_getEnumTagSinglePayload(&v20[v32], 1, v14) == 1)
      {
        sub_1C8778ED8(v20, &qword_1EC2B6048, &unk_1C8BE6F80);
LABEL_18:
        v36 = a1;
        v37 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
        swift_beginAccess();
        v38 = *(a1 + v37);
        v39 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
        swift_beginAccess();
        v40 = *(v31 + v39);

        sub_1C87D27C0();
        v41 = v31;
        v43 = v42;

        if (v43)
        {
          v44 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
          swift_beginAccess();
          v45 = *(v36 + v44);
          v46 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
          swift_beginAccess();
          v47 = *(v41 + v46);

          sub_1C87D7384();
          v49 = v48;

          if (v49)
          {
            swift_beginAccess();
            v50 = v36;
            v51 = v76;
            sub_1C8778810();
            swift_beginAccess();
            v52 = *(v75 + 48);
            v53 = v71;
            sub_1C8778810();
            sub_1C8778810();
            v54 = v77;
            if (__swift_getEnumTagSinglePayload(v53, 1, v77) == 1)
            {
              sub_1C8778ED8(v51, &qword_1EC2B6010, &unk_1C8BF5040);
              if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v54) == 1)
              {
                sub_1C8778ED8(v53, &qword_1EC2B6010, &unk_1C8BF5040);
                v55 = v73;
LABEL_31:
                v60 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
                swift_beginAccess();
                v61 = *(v50 + v60);
                v62 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
                swift_beginAccess();
                v63 = *(v55 + v62);

                sub_1C87E30D0(v61, v63, v64, v65, v66, v67, v68, v69, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
                v56 = v70;

                return v56 & 1;
              }

              goto LABEL_29;
            }

            sub_1C8778810();
            if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v54) == 1)
            {
              sub_1C8778ED8(v51, &qword_1EC2B6010, &unk_1C8BF5040);
              sub_1C8A26630();
LABEL_29:
              sub_1C8778ED8(v53, &qword_1EC2B6018, &qword_1C8BE6CD0);

              goto LABEL_24;
            }

            sub_1C87977A8();
            static Siri_Nlu_External_TurnContext.== infix(_:_:)();
            v59 = v58;
            sub_1C8A26630();
            sub_1C8778ED8(v51, &qword_1EC2B6010, &unk_1C8BF5040);
            sub_1C8A26630();
            sub_1C8778ED8(v53, &qword_1EC2B6010, &unk_1C8BF5040);
            v55 = v73;
            if (v59)
            {
              goto LABEL_31;
            }
          }
        }

LABEL_23:

LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v33 = v79;
      sub_1C8778810();
      if (__swift_getEnumTagSinglePayload(&v20[v32], 1, v14) != 1)
      {
        v34 = v78;
        sub_1C87977A8();

        v35 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v33, v34);
        sub_1C8A26630();
        sub_1C8778ED8(v26, &qword_1EC2B6048, &unk_1C8BE6F80);
        sub_1C8A26630();
        v31 = v73;
        sub_1C8778ED8(v20, &qword_1EC2B6048, &unk_1C8BE6F80);
        if ((v35 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

      sub_1C8778ED8(v26, &qword_1EC2B6048, &unk_1C8BE6F80);
      sub_1C8A26630();
    }

    sub_1C8778ED8(v20, &qword_1EC2B6050, &qword_1C8BE6D00);
    goto LABEL_23;
  }

  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_25:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_1C8A27DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AE8(&qword_1EC2BE740, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A27E64(uint64_t a1)
{
  v2 = sub_1C8776AE8(&qword_1EC2BE6F8, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A27ED4()
{
  sub_1C8776AE8(&qword_1EC2BE6F8, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A27F70()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE6A0);
  __swift_project_value_buffer(v0, qword_1EC2BE6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "matching_spans";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "turn_input";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A281E4()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v39 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v10 = OUTLINED_FUNCTION_21(v39);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v38 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v22 = OUTLINED_FUNCTION_21(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v42 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  v25 = (v2 + v42[6]);
  if (!v25[1] || (v26 = *v25, result = sub_1C8BD4DDC(), !v3))
  {
    v40 = a2;
    v28 = v42[7];
    v29 = v2;
    sub_1C8778810();
    OUTLINED_FUNCTION_33_3();
    if (__swift_getEnumTagSinglePayload(v30, v31, v32) == 1)
    {
      sub_1C8778ED8(v20, &qword_1EC2B6048, &unk_1C8BE6F80);
    }

    else
    {
      sub_1C87977A8();
      sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
      sub_1C8BD4E2C();
      result = sub_1C8A26630();
      if (v3)
      {
        return result;
      }

      v29 = v2;
    }

    v33 = v41;
    if (!*(*v29 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), result = sub_1C8BD4E0C(), !v3))
    {
      v34 = v42[8];
      sub_1C8778810();
      v35 = OUTLINED_FUNCTION_120();
      if (__swift_getEnumTagSinglePayload(v35, v36, v39) == 1)
      {
        sub_1C8778ED8(v33, &qword_1EC2B6038, &unk_1C8BE8850);
      }

      else
      {
        sub_1C87977A8();
        sub_1C8776AE8(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
        sub_1C8BD4E2C();
        result = sub_1C8A26630();
        if (v3)
        {
          return result;
        }
      }

      v37 = v29 + v42[5];
      return sub_1C8BD49DC();
    }
  }

  return result;
}

void static Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v86 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v5 = OUTLINED_FUNCTION_21(v86);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v84 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_74();
  v19 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v82 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v82 - v36;
  v38 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  v39 = v38[6];
  v40 = (v4 + v39);
  v41 = *(v4 + v39 + 8);
  v42 = (v2 + v39);
  v43 = v42[1];
  if (!v41)
  {
    if (v43)
    {
      goto LABEL_36;
    }

LABEL_10:
    v82 = v0;
    v87 = v2;
    v45 = v38[7];
    v46 = *(v32 + 48);
    v83 = v4;
    OUTLINED_FUNCTION_262();
    v47 = v87;
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_76(v48, v49, v50);
    if (v44)
    {
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_76(v51, v52, v53);
      if (v44)
      {
        sub_1C8778ED8(v37, &qword_1EC2B6048, &unk_1C8BE6F80);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1C8778810();
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_76(v54, v55, v56);
      if (!v57)
      {
        sub_1C87977A8();
        v61 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v31, v25);
        sub_1C8A26630();
        sub_1C8A26630();
        sub_1C8778ED8(v37, &qword_1EC2B6048, &unk_1C8BE6F80);
        if ((v61 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_21:
        v62 = *v83;
        v63 = *v47;
        sub_1C87D27C0();
        if ((v64 & 1) == 0)
        {
          goto LABEL_36;
        }

        v65 = v38[8];
        v66 = *(v15 + 48);
        v67 = v82;
        OUTLINED_FUNCTION_262();
        OUTLINED_FUNCTION_262();
        v68 = v86;
        OUTLINED_FUNCTION_76(v67, 1, v86);
        if (v44)
        {
          OUTLINED_FUNCTION_76(v67 + v66, 1, v68);
          if (v44)
          {
            sub_1C8778ED8(v67, &qword_1EC2B6038, &unk_1C8BE8850);
            goto LABEL_35;
          }
        }

        else
        {
          v69 = v85;
          sub_1C8778810();
          OUTLINED_FUNCTION_76(v67 + v66, 1, v68);
          if (!v70)
          {
            OUTLINED_FUNCTION_1_18();
            v71 = v84;
            sub_1C87977A8();
            v72 = *(v68 + 20);
            if (*&v69[v72] == *(v71 + v72))
            {
              goto LABEL_34;
            }

            v73 = *&v69[v72];

            OUTLINED_FUNCTION_218();
            sub_1C88AD618();
            v75 = v74;

            if (v75)
            {
LABEL_34:
              sub_1C8BD49FC();
              OUTLINED_FUNCTION_4_26();
              sub_1C8776AE8(v76, v77);
              v78 = sub_1C8BD517C();
              sub_1C8A26630();
              sub_1C8A26630();
              sub_1C8778ED8(v67, &qword_1EC2B6038, &unk_1C8BE8850);
              if ((v78 & 1) == 0)
              {
                goto LABEL_36;
              }

LABEL_35:
              v79 = v38[5];
              sub_1C8BD49FC();
              OUTLINED_FUNCTION_4_26();
              sub_1C8776AE8(v80, v81);
              sub_1C8BD517C();
              goto LABEL_36;
            }

            sub_1C8A26630();
            sub_1C8A26630();
            v58 = &qword_1EC2B6038;
            v59 = &unk_1C8BE8850;
            goto LABEL_31;
          }

          sub_1C8A26630();
        }

        v58 = &qword_1EC2B6040;
        v59 = &unk_1C8BE6CF0;
LABEL_31:
        v60 = v67;
        goto LABEL_19;
      }

      sub_1C8A26630();
    }

    v58 = &qword_1EC2B6050;
    v59 = &qword_1C8BE6D00;
    v60 = v37;
LABEL_19:
    sub_1C8778ED8(v60, v58, v59);
    goto LABEL_36;
  }

  if (v43)
  {
    v44 = *v40 == *v42 && v41 == v43;
    if (v44 || (sub_1C8BD529C() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A28CF4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8776AE8(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A28DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AE8(&qword_1EC2BE738, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A28E3C(uint64_t a1)
{
  v2 = sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A28EAC()
{
  sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A29194()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8A29218()
{
  sub_1C8A294C0(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v2 <= 0x3F)
      {
        sub_1C8A294C0(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C8A294C0(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A2937C()
{
  sub_1C8A294C0(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C8A294C0(319, qword_1EDACC600, type metadata accessor for Siri_Nlu_External_TurnContext, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C8A294C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_25()
{
  result = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0);
  v1 = *(result + 20);
  return result;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup() + 20));
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

uint64_t type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup()
{
  result = qword_1EC2BE780;
  if (!qword_1EC2BE780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A295E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.setter(v1, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup() + 20);
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

Swift::Void __swiftcall Siri_Nlu_External_SsuInference_SsuInferenceSetup.clearLocale()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_1C8A298B0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE748);
  __swift_project_value_buffer(v0, qword_1EC2BE748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "locale";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceSetup._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE748);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8A29B2C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.traverse<A>(visitor:)()
{
  v2 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup() + 20));
  if (!v2[1])
  {
    return sub_1C8BD49DC();
  }

  v3 = *v2;
  result = sub_1C8BD4DDC();
  if (!v1)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceSetup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup() + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_1C8BD49FC();
    sub_1C8776B30(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup();
  sub_1C8776B30(&qword_1EC2BE760, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A29DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B30(&qword_1EC2BE790, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A29E64(uint64_t a1)
{
  v2 = sub_1C8776B30(&qword_1EC2BE770, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A29ED4()
{
  sub_1C8776B30(&qword_1EC2BE770, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);

  return sub_1C8BD4CFC();
}

void sub_1C8A2A09C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C8A2A120(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8786744(v3 + *(v13 + 24), v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87A5594(v8, v12, type metadata accessor for Siri_Nlu_External_UUID);
    v14 = *a1;
    sub_1C8A32CE4(v12, 2, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_UUID);
    if (v2)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v16, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A2A314(uint64_t a1, uint64_t *a2)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v46 - v5;
  v49 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v46 - v10;
  v51 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v46 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  v22 = a1;
  sub_1C8786744(a1 + v21, v16, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    v23 = v54;
    v24 = v53;
  }

  else
  {
    sub_1C87A5594(v16, v20, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    v23 = v54;
    v25 = *v54;
    v26 = v53;
    sub_1C8A32D80();
    v24 = v26;
    result = sub_1C87A9A38(v20, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    if (v26)
    {
      return result;
    }
  }

  v28 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities;
  swift_beginAccess();
  if (!*(*(a1 + v28) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_EntityCandidate(0), sub_1C87A4F90(qword_1EDACA548, v29, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACB7D8, 255, type metadata accessor for Siri_Nlu_External_EntityCandidate), , sub_1C8BD507C(), result = , !v24))
  {
    v30 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks;
    swift_beginAccess();
    if (!*(*(a1 + v30) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v31, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task), , sub_1C8BD507C(), result = , !v24))
    {
      v32 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks;
      swift_beginAccess();
      if (!*(*(a1 + v32) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v33, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task), , sub_1C8BD507C(), result = , !v24))
      {
        v34 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs;
        swift_beginAccess();
        if (!*(*(a1 + v34) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_AsrHypothesis(0), sub_1C87A4F90(qword_1EDACA548, v35, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACC330, 255, type metadata accessor for Siri_Nlu_External_AsrHypothesis), , sub_1C8BD507C(), result = , !v24))
        {
          v36 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext;
          swift_beginAccess();
          v37 = a1 + v36;
          v38 = v52;
          sub_1C8786744(v37, v52, &qword_1EC2B6010, &unk_1C8BF5040);
          if (__swift_getEnumTagSinglePayload(v38, 1, v51) == 1)
          {
            sub_1C8778ED8(v38, &qword_1EC2B6010, &unk_1C8BF5040);
          }

          else
          {
            v39 = v48;
            sub_1C87A5594(v38, v48, type metadata accessor for Siri_Nlu_External_TurnContext);
            v40 = *v23;
            sub_1C8A32D80();
            result = sub_1C87A9A38(v39, type metadata accessor for Siri_Nlu_External_TurnContext);
            if (v24)
            {
              return result;
            }
          }

          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          v41 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride;
          swift_beginAccess();
          v42 = v22 + v41;
          v43 = v50;
          sub_1C8786744(v42, v50, &qword_1EC2B6EF0, &unk_1C8BEBC70);
          if (__swift_getEnumTagSinglePayload(v43, 1, v49) == 1)
          {
            sub_1C8778ED8(v43, &qword_1EC2B6EF0, &unk_1C8BEBC70);
          }

          else
          {
            v44 = v47;
            sub_1C87A5594(v43, v47, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
            v45 = *v23;
            sub_1C8A32CE4(v44, 10, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
            result = sub_1C87A9A38(v44, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
            if (v24)
            {
              return result;
            }
          }

          return swift_beginAccess();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C8A2ABD8(uint64_t *a1)
{
  v3 = v1;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v29 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  v8 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v19 = *(v18 + 20);
  v30 = v3;
  sub_1C8786744(v3 + v19, v13, &qword_1EC2B6000, &qword_1C8BF5050);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C8778ED8(v13, &qword_1EC2B6000, &qword_1C8BF5050);
    v20 = v31;
  }

  else
  {
    sub_1C87A5594(v13, v17, type metadata accessor for Siri_Nlu_External_NLContext);
    v20 = v31;
    v21 = *v31;
    sub_1C8A32D80();
    result = sub_1C87A9A38(v17, type metadata accessor for Siri_Nlu_External_NLContext);
    if (v2)
    {
      return result;
    }
  }

  sub_1C8786744(v30 + *(v18 + 24), v7, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  if (__swift_getEnumTagSinglePayload(v7, 1, v29) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  }

  else
  {
    v23 = v7;
    v24 = v28;
    sub_1C87A5594(v23, v28, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
    v25 = *v20;
    sub_1C8A32D80();
    result = sub_1C87A9A38(v24, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
    if (v2)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v26, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A2AF40(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C8786744(v3 + *(v13 + 36), v8, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  }

  else
  {
    sub_1C87A5594(v8, v12, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    v14 = *a1;
    sub_1C8A32D80();
    result = sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v16, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task), result = sub_1C8BD507C(), !v2))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v17, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task), result = sub_1C8BD507C(), !v2))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_EntityCandidate(0), sub_1C87A4F90(qword_1EDACA548, v18, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACB7D8, 255, type metadata accessor for Siri_Nlu_External_EntityCandidate), result = sub_1C8BD507C(), !v2))
      {
        if (!*(v3[3] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_SystemDialogAct(0), sub_1C87A4F90(qword_1EDACA548, v19, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(qword_1EDACB410, 255, type metadata accessor for Siri_Nlu_External_SystemDialogAct), result = sub_1C8BD507C(), !v2))
        {
          v20 = *(v13 + 32);
          type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
          sub_1C87A4F90(qword_1EDACA548, v21, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
          return sub_1C8BD49DC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C8A2B434()
{
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  if (!*(*v0 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C8BD493C(), sub_1C87A4F90(qword_1EDACA548, v3, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACA318, 255, MEMORY[0x1E69AA9A0]), result = sub_1C8BD507C(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v5, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), result = sub_1C8BD4FFC(), !v1))
    {
      v6 = *(v2 + 24);
      type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
      sub_1C87A4F90(qword_1EDACA548, v7, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t sub_1C8A2B608(uint64_t *a1)
{
  v3 = v1;
  v55 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v45 - v6;
  v48 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v7 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v45 - v11;
  v50 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v12 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A60, &unk_1C8BF5058);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - v16;
  v53 = type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  v18 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v45 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_UUID();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8786744(v3 + *(v54 + 24), v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C8778ED8(v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v28 = v55;
  }

  else
  {
    sub_1C87A5594(v23, v27, type metadata accessor for Siri_Nlu_External_UUID);
    v28 = v55;
    v29 = *v55;
    sub_1C8A32CE4(v27, 1, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v27, type metadata accessor for Siri_Nlu_External_UUID);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_UserDialogAct(0), sub_1C87A4F90(qword_1EDACA548, v31, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACBDF8, 255, type metadata accessor for Siri_Nlu_External_UserDialogAct), result = sub_1C8BD507C(), !v2))
  {
    v32 = v54;
    sub_1C8786744(v3 + *(v54 + 36), v17, &qword_1EC2B8A60, &unk_1C8BF5058);
    if (__swift_getEnumTagSinglePayload(v17, 1, v53) == 1)
    {
      sub_1C8778ED8(v17, &qword_1EC2B8A60, &unk_1C8BF5058);
    }

    else
    {
      v33 = v49;
      sub_1C87A5594(v17, v49, type metadata accessor for Siri_Nlu_External_RepetitionResult);
      v34 = *v28;
      sub_1C8A33CF0(v33);
      result = sub_1C87A9A38(v33, type metadata accessor for Siri_Nlu_External_RepetitionResult);
      if (v2)
      {
        return result;
      }
    }

    v35 = v51;
    sub_1C8786744(v3 + v32[10], v51, &qword_1EC2B6540, &unk_1C8BE7A40);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v50);
    v37 = v52;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v35, &qword_1EC2B6540, &unk_1C8BE7A40);
    }

    else
    {
      v38 = v47;
      sub_1C87A5594(v35, v47, type metadata accessor for Siri_Nlu_External_Parser);
      v39 = *v28;
      sub_1C8A32CE4(v38, 6, type metadata accessor for Siri_Nlu_External_Parser);
      result = sub_1C87A9A38(v38, type metadata accessor for Siri_Nlu_External_Parser);
      if (v2)
      {
        return result;
      }
    }

    sub_1C8786744(v3 + v32[12], v37, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    if (__swift_getEnumTagSinglePayload(v37, 1, v48) == 1)
    {
      sub_1C8778ED8(v37, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }

    else
    {
      v40 = v37;
      v41 = v46;
      sub_1C87A5594(v40, v46, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
      v42 = *v28;
      sub_1C8A32CE4(v41, 8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
      result = sub_1C87A9A38(v41, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
      if (v2)
      {
        return result;
      }
    }

    v43 = v32[5];
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v44, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2BCD8(uint64_t a1, uint64_t *a2)
{
  v150 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v123 = &v120 - v5;
  v122 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  v6 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = &v120 - v10;
  v125 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  v11 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v129 = &v120 - v15;
  v128 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  v16 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v124 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v132 = &v120 - v20;
  v131 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  v21 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v127 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v135 = &v120 - v25;
  v134 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  v26 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v130 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v137 = &v120 - v30;
  v136 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  v31 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v133 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v139 = &v120 - v35;
  v138 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  v36 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v146 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v141 = &v120 - v40;
  v140 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  v41 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v145 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v144 = &v120 - v45;
  v143 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  v46 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v148 = &v120 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = &v120 - v50;
  v147 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  v52 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v142 = &v120 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v120 - v56;
  v58 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v120 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  swift_beginAccess();
  sub_1C8786744(a1 + v62, v57, &unk_1EC2B6330, &unk_1C8BF4FE0);
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    sub_1C8778ED8(v57, &unk_1EC2B6330, &unk_1C8BF4FE0);
    v63 = v149;
    v64 = v150;
  }

  else
  {
    sub_1C87A5594(v57, v61, type metadata accessor for Siri_Nlu_External_UserAccepted);
    v64 = v150;
    v65 = *v150;
    v66 = v149;
    sub_1C8A33324();
    v63 = v66;
    if (v66)
    {
      v67 = type metadata accessor for Siri_Nlu_External_UserAccepted;
LABEL_15:
      v79 = v67;
      v80 = v61;
      return sub_1C87A9A38(v80, v79);
    }

    sub_1C87A9A38(v61, type metadata accessor for Siri_Nlu_External_UserAccepted);
  }

  v68 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
  swift_beginAccess();
  sub_1C8786744(a1 + v68, v51, &qword_1EC2B6E28, &unk_1C8C10580);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v147);
  v61 = v148;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v51, &qword_1EC2B6E28, &unk_1C8C10580);
  }

  else
  {
    v70 = v142;
    sub_1C87A5594(v51, v142, type metadata accessor for Siri_Nlu_External_UserRejected);
    v71 = *v64;
    sub_1C8A33324();
    if (v63)
    {
      v72 = type metadata accessor for Siri_Nlu_External_UserRejected;
LABEL_26:
      v79 = v72;
      v80 = v70;
      return sub_1C87A9A38(v80, v79);
    }

    sub_1C87A9A38(v70, type metadata accessor for Siri_Nlu_External_UserRejected);
  }

  v73 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
  swift_beginAccess();
  v74 = a1 + v73;
  v75 = v144;
  sub_1C8786744(v74, v144, &qword_1EC2B6E20, &unk_1C8BF4FF0);
  v76 = __swift_getEnumTagSinglePayload(v75, 1, v143);
  v77 = v145;
  v70 = v146;
  if (v76 == 1)
  {
    sub_1C8778ED8(v75, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    goto LABEL_17;
  }

  sub_1C87A5594(v75, v61, type metadata accessor for Siri_Nlu_External_UserCancelled);
  v78 = *v64;
  sub_1C8A33324();
  if (v63)
  {
    v67 = type metadata accessor for Siri_Nlu_External_UserCancelled;
    goto LABEL_15;
  }

  sub_1C87A9A38(v61, type metadata accessor for Siri_Nlu_External_UserCancelled);
LABEL_17:
  v81 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  swift_beginAccess();
  v82 = a1 + v81;
  v83 = v141;
  sub_1C8786744(v82, v141, &qword_1EC2B6E10, &unk_1C8BF5000);
  if (__swift_getEnumTagSinglePayload(v83, 1, v140) == 1)
  {
    sub_1C8778ED8(v83, &qword_1EC2B6E10, &unk_1C8BF5000);
    goto LABEL_22;
  }

  sub_1C87A5594(v83, v77, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat);
  v84 = *v64;
  sub_1C8A33324();
  if (v63)
  {
    v79 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat;
    v80 = v77;
    return sub_1C87A9A38(v80, v79);
  }

  sub_1C87A9A38(v77, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat);
LABEL_22:
  v85 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  swift_beginAccess();
  v86 = a1 + v85;
  v87 = v139;
  sub_1C8786744(v86, v139, &qword_1EC2B86D8, &qword_1C8BF4620);
  if (__swift_getEnumTagSinglePayload(v87, 1, v138) == 1)
  {
    sub_1C8778ED8(v87, &qword_1EC2B86D8, &qword_1C8BF4620);
    goto LABEL_30;
  }

  sub_1C87A5594(v87, v70, type metadata accessor for Siri_Nlu_External_UserAcknowledged);
  v88 = *v64;
  sub_1C8A33324();
  if (v63)
  {
    v72 = type metadata accessor for Siri_Nlu_External_UserAcknowledged;
    goto LABEL_26;
  }

  sub_1C87A9A38(v70, type metadata accessor for Siri_Nlu_External_UserAcknowledged);
LABEL_30:
  v90 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  swift_beginAccess();
  v91 = a1 + v90;
  v92 = v137;
  sub_1C8786744(v91, v137, &qword_1EC2B86D0, &unk_1C8BF5010);
  if (__swift_getEnumTagSinglePayload(v92, 1, v136) == 1)
  {
    sub_1C8778ED8(v92, &qword_1EC2B86D0, &unk_1C8BF5010);
  }

  else
  {
    v93 = v133;
    sub_1C87A5594(v92, v133, type metadata accessor for Siri_Nlu_External_UserWantedToProceed);
    v94 = *v64;
    sub_1C8A33324();
    result = sub_1C87A9A38(v93, type metadata accessor for Siri_Nlu_External_UserWantedToProceed);
    if (v63)
    {
      return result;
    }
  }

  v95 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  swift_beginAccess();
  v96 = a1 + v95;
  v97 = v135;
  sub_1C8786744(v96, v135, &qword_1EC2B6E18, &qword_1C8BEBC48);
  if (__swift_getEnumTagSinglePayload(v97, 1, v134) == 1)
  {
    sub_1C8778ED8(v97, &qword_1EC2B6E18, &qword_1C8BEBC48);
  }

  else
  {
    v98 = v130;
    sub_1C87A5594(v97, v130, type metadata accessor for Siri_Nlu_External_UserWantedToPause);
    v99 = *v64;
    sub_1C8A33324();
    result = sub_1C87A9A38(v98, type metadata accessor for Siri_Nlu_External_UserWantedToPause);
    if (v63)
    {
      return result;
    }
  }

  v100 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
  swift_beginAccess();
  v101 = a1 + v100;
  v102 = v132;
  sub_1C8786744(v101, v132, &qword_1EC2B86C8, &unk_1C8C10570);
  if (__swift_getEnumTagSinglePayload(v102, 1, v131) == 1)
  {
    sub_1C8778ED8(v102, &qword_1EC2B86C8, &unk_1C8C10570);
  }

  else
  {
    v103 = v127;
    sub_1C87A5594(v102, v127, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);
    v104 = *v64;
    sub_1C8A32D80();
    result = sub_1C87A9A38(v103, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);
    if (v63)
    {
      return result;
    }
  }

  v105 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  swift_beginAccess();
  v106 = a1 + v105;
  v107 = v129;
  sub_1C8786744(v106, v129, &unk_1EC2B61D8, &unk_1C8BF4FD0);
  if (__swift_getEnumTagSinglePayload(v107, 1, v128) == 1)
  {
    sub_1C8778ED8(v107, &unk_1EC2B61D8, &unk_1C8BF4FD0);
  }

  else
  {
    v108 = v124;
    sub_1C87A5594(v107, v124, type metadata accessor for Siri_Nlu_External_UserStatedTask);
    v109 = *v64;
    sub_1C8A3370C(v108);
    result = sub_1C87A9A38(v108, type metadata accessor for Siri_Nlu_External_UserStatedTask);
    if (v63)
    {
      return result;
    }
  }

  v110 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  swift_beginAccess();
  v111 = a1 + v110;
  v112 = v126;
  sub_1C8786744(v111, v126, &qword_1EC2B86C0, &unk_1C8BF5020);
  if (__swift_getEnumTagSinglePayload(v112, 1, v125) == 1)
  {
    sub_1C8778ED8(v112, &qword_1EC2B86C0, &unk_1C8BF5020);
LABEL_45:
    v115 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment;
    swift_beginAccess();
    v116 = a1 + v115;
    v117 = v123;
    sub_1C8786744(v116, v123, &qword_1EC2B8A68, &qword_1C8BF5068);
    if (__swift_getEnumTagSinglePayload(v117, 1, v122) == 1)
    {
      return sub_1C8778ED8(v117, &qword_1EC2B8A68, &qword_1C8BF5068);
    }

    v118 = v120;
    sub_1C87A5594(v117, v120, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);
    v119 = *v64;
    sub_1C8A32D80();
    v80 = v118;
    v79 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment;
    return sub_1C87A9A38(v80, v79);
  }

  v113 = v121;
  sub_1C87A5594(v112, v121, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);
  v114 = *v64;
  sub_1C8A33324();
  result = sub_1C87A9A38(v113, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);
  if (!v63)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t sub_1C8A2CDBC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v43 - v7;
  v46 = type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  v9 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v43 - v13;
  v47 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  v14 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_1C8BD493C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  v26 = (v1 + *(v25 + 24));
  v27 = *(v26 + 4);
  v49 = v25;
  if ((v27 & 1) == 0)
  {
    v43 = v8;
    v28 = v1;
    v29 = *v26;
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v30, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
    result = sub_1C8BD504C();
    if (v2)
    {
      return result;
    }

    v3 = v28;
    v8 = v43;
    v25 = v49;
  }

  sub_1C8786744(v3 + *(v25 + 28), v19, &qword_1EC2B6110, &qword_1C8BF5070);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1C8778ED8(v19, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    v32 = *a1;
    sub_1C8A33908(v24, 2, MEMORY[0x1E69AA9A0], &qword_1EDACA318, MEMORY[0x1E69AA9A0]);
    if (v2)
    {
      return (*(v21 + 8))(v24, v20);
    }

    (*(v21 + 8))(v24, v20);
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Span(0), sub_1C87A4F90(qword_1EDACA548, v33, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EC2B4C10, 255, type metadata accessor for Siri_Nlu_External_Span), result = sub_1C8BD507C(), !v2))
  {
    v34 = v48;
    sub_1C8786744(v3 + *(v49 + 36), v48, &unk_1EC2B8A70, &qword_1C8BF5078);
    if (__swift_getEnumTagSinglePayload(v34, 1, v47) == 1)
    {
      sub_1C8778ED8(v34, &unk_1EC2B8A70, &qword_1C8BF5078);
    }

    else
    {
      v35 = v34;
      v36 = v45;
      sub_1C87A5594(v35, v45, type metadata accessor for Siri_Nlu_External_RewriteMessage);
      v37 = *a1;
      sub_1C8A32CE4(v36, 5, type metadata accessor for Siri_Nlu_External_RewriteMessage);
      result = sub_1C87A9A38(v36, type metadata accessor for Siri_Nlu_External_RewriteMessage);
      if (v2)
      {
        return result;
      }
    }

    v38 = v49;
    sub_1C8786744(v3 + *(v49 + 40), v8, &dword_1EC2B8A78, &unk_1C8BF5080);
    if (__swift_getEnumTagSinglePayload(v8, 1, v46) == 1)
    {
      sub_1C8778ED8(v8, &dword_1EC2B8A78, &unk_1C8BF5080);
    }

    else
    {
      v39 = v44;
      sub_1C87A5594(v8, v44, type metadata accessor for Siri_Nlu_External_ReferenceContext);
      v40 = *a1;
      sub_1C8A32CE4(v39, 6, type metadata accessor for Siri_Nlu_External_ReferenceContext);
      result = sub_1C87A9A38(v39, type metadata accessor for Siri_Nlu_External_ReferenceContext);
      if (v2)
      {
        return result;
      }

      v38 = v49;
    }

    v41 = *(v38 + 20);
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v42, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2D458(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE0, &unk_1C8C102D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  sub_1C8786744(v3 + *(v13 + 24), v8, &qword_1EC2B5FE0, &unk_1C8C102D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B5FE0, &unk_1C8C102D0);
  }

  else
  {
    sub_1C87A5594(v8, v12, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    v14 = *a1;
    sub_1C8A32DC0(v12, 1, type metadata accessor for Siri_Nlu_External_SystemDialogAct, sub_1C8A2D720);
    result = sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), sub_1C87A4F90(qword_1EDACA548, v16, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EC2B8AC0, 255, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup), result = sub_1C8BD507C(), !v2))
  {
    v17 = *(v13 + 20);
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v18, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2D720(uint64_t a1, uint64_t *a2)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v108 = &v90 - v5;
  v92 = sub_1C8BD493C();
  v109 = *(v92 - 8);
  v6 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v95 = &v90 - v10;
  v94 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  v11 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v90 - v15;
  v97 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  v16 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v101 = &v90 - v20;
  v100 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  v21 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v96 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v104 = &v90 - v25;
  v103 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  v26 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v107 = &v90 - v30;
  v106 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  v31 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v90 - v35;
  v37 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v105 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v90 - v42;
  v44 = type metadata accessor for Siri_Nlu_External_UUID();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v90 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id;
  swift_beginAccess();
  v49 = a1 + v48;
  v50 = a1;
  sub_1C8786744(v49, v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
  {
    sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v51 = v110;
    v52 = v111;
  }

  else
  {
    sub_1C87A5594(v43, v47, type metadata accessor for Siri_Nlu_External_UUID);
    v52 = v111;
    v53 = *v111;
    v54 = v110;
    sub_1C8A32CE4(v47, 1, type metadata accessor for Siri_Nlu_External_UUID);
    v51 = v54;
    if (v54)
    {
      return sub_1C87A9A38(v47, type metadata accessor for Siri_Nlu_External_UUID);
    }

    sub_1C87A9A38(v47, type metadata accessor for Siri_Nlu_External_UUID);
  }

  v56 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  swift_beginAccess();
  sub_1C8786744(a1 + v56, v36, &dword_1EC2B86E8, &unk_1C8BF4630);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_1C8778ED8(v36, &dword_1EC2B86E8, &unk_1C8BF4630);
  }

  else
  {
    v57 = v105;
    sub_1C87A5594(v36, v105, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    v58 = *v52;
    sub_1C8A33324();
    result = sub_1C87A9A38(v57, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    if (v51)
    {
      return result;
    }
  }

  v59 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered;
  swift_beginAccess();
  v60 = v107;
  sub_1C8786744(v50 + v59, v107, &qword_1EC2B86F0, &unk_1C8BF5030);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v106);
  v62 = v109;
  v63 = v108;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v60, &qword_1EC2B86F0, &unk_1C8BF5030);
  }

  else
  {
    v64 = v102;
    sub_1C87A5594(v60, v102, type metadata accessor for Siri_Nlu_External_SystemOffered);
    v65 = *v52;
    sub_1C8A334E8(v64);
    result = sub_1C87A9A38(v64, type metadata accessor for Siri_Nlu_External_SystemOffered);
    if (v51)
    {
      return result;
    }
  }

  v66 = v104;
  v67 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__gaveOptions;
  swift_beginAccess();
  sub_1C8786744(v50 + v67, v66, &dword_1EC2B8A80, &unk_1C8BF5090);
  if (__swift_getEnumTagSinglePayload(v66, 1, v103) == 1)
  {
    sub_1C8778ED8(v66, &dword_1EC2B8A80, &unk_1C8BF5090);
  }

  else
  {
    v68 = v99;
    sub_1C87A5594(v66, v99, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
    v69 = *v52;
    sub_1C8A33364(v68);
    result = sub_1C87A9A38(v68, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
    if (v51)
    {
      return result;
    }
  }

  v70 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  swift_beginAccess();
  v71 = v50 + v70;
  v72 = v101;
  sub_1C8786744(v71, v101, &qword_1EC2B8A88, &unk_1C8C10560);
  if (__swift_getEnumTagSinglePayload(v72, 1, v100) == 1)
  {
    sub_1C8778ED8(v72, &qword_1EC2B8A88, &unk_1C8C10560);
  }

  else
  {
    v73 = v96;
    sub_1C87A5594(v72, v96, type metadata accessor for Siri_Nlu_External_SystemInformed);
    v74 = *v52;
    sub_1C8A32D80();
    result = sub_1C87A9A38(v73, type metadata accessor for Siri_Nlu_External_SystemInformed);
    if (v51)
    {
      return result;
    }
  }

  v75 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  swift_beginAccess();
  v76 = v50 + v75;
  v77 = v98;
  sub_1C8786744(v76, v98, &qword_1EC2B8A90, &unk_1C8BF50A0);
  if (__swift_getEnumTagSinglePayload(v77, 1, v97) == 1)
  {
    sub_1C8778ED8(v77, &qword_1EC2B8A90, &unk_1C8BF50A0);
  }

  else
  {
    v78 = v93;
    sub_1C87A5594(v77, v93, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);
    v79 = *v52;
    sub_1C8A33324();
    result = sub_1C87A9A38(v78, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);
    if (v51)
    {
      return result;
    }
  }

  v80 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  swift_beginAccess();
  v81 = v50 + v80;
  v82 = v95;
  sub_1C8786744(v81, v95, &qword_1EC2B8A98, &unk_1C8C10550);
  if (__swift_getEnumTagSinglePayload(v82, 1, v94) == 1)
  {
    sub_1C8778ED8(v82, &qword_1EC2B8A98, &unk_1C8C10550);
  }

  else
  {
    v83 = v91;
    sub_1C87A5594(v82, v91, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);
    v84 = *v52;
    sub_1C8A32DC0(v83, 7, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, sub_1C8A2EA14);
    result = sub_1C87A9A38(v83, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);
    if (v51)
    {
      return result;
    }
  }

  v85 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C8786744(v50 + v85, v63, &qword_1EC2B6110, &qword_1C8BF5070);
  v86 = v92;
  if (__swift_getEnumTagSinglePayload(v63, 1, v92) == 1)
  {
    return sub_1C8778ED8(v63, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  v87 = v63;
  v88 = v90;
  (*(v62 + 32))(v90, v87, v86);
  v89 = *v52;
  sub_1C8A33908(v88, 101, MEMORY[0x1E69AA9A0], &qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  return (*(v62 + 8))(v88, v86);
}

uint64_t sub_1C8A2E438(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  sub_1C8786744(v3 + *(v13 + 24), v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87A5594(v8, v12, type metadata accessor for Siri_Nlu_External_UUID);
    v14 = *a1;
    sub_1C8A32CE4(v12, 1, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v12, type metadata accessor for Siri_Nlu_External_UUID);
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_UsoGraph(0), sub_1C87A4F90(qword_1EDACA548, v16, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor), sub_1C87A4F90(&qword_1EDACCCE0, 255, type metadata accessor for Siri_Nlu_External_UsoGraph), result = sub_1C8BD507C(), !v2))
  {
    v17 = *(v13 + 20);
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    sub_1C87A4F90(qword_1EDACA548, v18, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A2E6F8(uint64_t *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v43 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v12 = OUTLINED_FUNCTION_21(v43);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v42 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = type metadata accessor for Siri_Nlu_External_UUID();
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v29 = v28 - v27;
  v30 = a2(0);
  v31 = *(v30 + 20);
  v44 = v5;
  sub_1C8786744(v5 + v31, v22, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1C8778ED8(v22, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v32 = v45;
  }

  else
  {
    sub_1C87A5594(v22, v29, type metadata accessor for Siri_Nlu_External_UUID);
    v32 = v45;
    v33 = *v45;
    sub_1C8A32CE4(v29, 1, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v29, type metadata accessor for Siri_Nlu_External_UUID);
    if (v3)
    {
      return result;
    }
  }

  sub_1C8786744(v44 + *(v30 + 24), v11, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v43) == 1)
  {
    sub_1C8778ED8(v11, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  else
  {
    v35 = v11;
    v36 = v42;
    sub_1C87A5594(v35, v42, type metadata accessor for Siri_Nlu_External_UsoGraph);
    v37 = *v32;
    sub_1C8A32E88(v36);
    result = sub_1C87A9A38(v36, type metadata accessor for Siri_Nlu_External_UsoGraph);
    if (v3)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  OUTLINED_FUNCTION_1_19();
  sub_1C87A4F90(v38, v39, v40);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A2EA14(uint64_t a1, uint64_t *a2)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v41 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v9 = *(*(v41 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_UUID();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__taskID;
  swift_beginAccess();
  sub_1C8786744(a1 + v22, v17, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C8778ED8(v17, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v23 = v42;
    v24 = v43;
  }

  else
  {
    sub_1C87A5594(v17, v21, type metadata accessor for Siri_Nlu_External_UUID);
    v25 = v43;
    v26 = *v43;
    v27 = v42;
    sub_1C8A32CE4(v21, 1, type metadata accessor for Siri_Nlu_External_UUID);
    v23 = v27;
    result = sub_1C87A9A38(v21, type metadata accessor for Siri_Nlu_External_UUID);
    if (v27)
    {
      return result;
    }

    v24 = v25;
  }

  v29 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reason;
  swift_beginAccess();
  sub_1C8786744(a1 + v29, v8, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v30 = v41;
  if (__swift_getEnumTagSinglePayload(v8, 1, v41) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  else
  {
    sub_1C87A5594(v8, v13, type metadata accessor for Siri_Nlu_External_UsoGraph);
    v31 = *v24;
    sub_1C8A32E88(v13);
    result = sub_1C87A9A38(v13, type metadata accessor for Siri_Nlu_External_UsoGraph);
    if (v23)
    {
      return result;
    }
  }

  v32 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_External_SystemReportedFailureP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__task;
  swift_beginAccess();
  v33 = a1 + v32;
  v34 = v40;
  sub_1C8786744(v33, v40, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v30) == 1)
  {
    return sub_1C8778ED8(v34, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  }

  v35 = v34;
  v36 = v39;
  sub_1C87A5594(v35, v39, type metadata accessor for Siri_Nlu_External_UsoGraph);
  v37 = *v24;
  sub_1C8A32E88(v36);
  return sub_1C87A9A38(v36, type metadata accessor for Siri_Nlu_External_UsoGraph);
}