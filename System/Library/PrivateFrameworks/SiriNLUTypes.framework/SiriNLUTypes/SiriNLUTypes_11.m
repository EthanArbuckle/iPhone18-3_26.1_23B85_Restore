uint64_t static UsoGraphProtoReader.fromObjCProtobuf(protobufGraph:vocabManager:)(void *a1, uint64_t a2)
{
  v5 = sub_1C8BD4AAC();
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v15 = v14 - v13;
  result = sub_1C888D594(a1);
  if (v17 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1C8BD4A9C();
    sub_1C888D5F4();
    sub_1C8BD4CBC();
    if (!v2)
    {
      a2 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)(v15, a2);
      sub_1C87A8B2C(v15, type metadata accessor for Siri_Nlu_External_UsoGraph);
    }

    return a2;
  }

  return result;
}

uint64_t sub_1C888D594(void *a1)
{
  v1 = [a1 data];
  if (v1)
  {
    v2 = v1;
    sub_1C8BD400C();
  }

  return OUTLINED_FUNCTION_218();
}

unint64_t sub_1C888D5F4()
{
  result = qword_1EDACCCE0;
  if (!qword_1EDACCCE0)
  {
    type metadata accessor for Siri_Nlu_External_UsoGraph(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCCE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UsoGraphProtoReader(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C888D6F8()
{
  result = qword_1EC2B2F88;
  if (!qword_1EC2B2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B2F88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_82_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_84_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 472);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

float Siri_Nlu_Internal_Psc_PSCServiceResponse.pommesProbability.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse();
  result = OUTLINED_FUNCTION_0_6(*(v0 + 20));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse()
{
  result = qword_1EC2B8820;
  if (!qword_1EC2B8820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.pommesProbability.setter(float a1)
{
  result = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Psc_PSCServiceResponse.pommesProbability.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse() + 20);
  *(a1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_0_6(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(a1 + 8) = v4;
  return sub_1C87FE8F0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Psc_PSCServiceResponse.clearPommesProbability()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse() + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse();
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t sub_1C888DAB8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B87E8);
  __swift_project_value_buffer(v0, qword_1EC2B87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "pommes_probability";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5148 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B87E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.decodeMessage<A>(decoder:)()
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
      sub_1C888DD34();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17();
  v2 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse() + 20));
  if (v2[1])
  {
    return sub_1C8BD49DC();
  }

  v3 = *v2;
  result = sub_1C8BD4D7C();
  if (!v1)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse() + 20);
  v5 = (v2 + v4);
  v6 = *(v2 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C87766B0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse();
  sub_1C87766B0(&qword_1EC2B8800, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C888DFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87766B0(&qword_1EC2B8830, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C888E054(uint64_t a1)
{
  v2 = sub_1C87766B0(&qword_1EC2B8810, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C888E0C4()
{
  sub_1C87766B0(&qword_1EC2B8810, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse);

  return sub_1C8BD4CFC();
}

void sub_1C888E28C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C888E310();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C888E310()
{
  if (!qword_1EC2B4230)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B4230);
    }
  }
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.label.getter()
{
  OUTLINED_FUNCTION_10_9();
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

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.label.setter(int a1)
{
  result = OUTLINED_FUNCTION_10_9();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMHypothesis.label.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(v2) + 20);
  *(v1 + 12) = v3;
  OUTLINED_FUNCTION_4(v3);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 8) = v6;
  return sub_1C8801920;
}

float Siri_Nlu_Internal_Itfm_ITFMHypothesis.probability.getter()
{
  OUTLINED_FUNCTION_16_7();
  result = OUTLINED_FUNCTION_0_6(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.probability.setter(float a1)
{
  result = OUTLINED_FUNCTION_16_7();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMHypothesis.probability.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(v2) + 24);
  *(v1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_0_6(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 8) = v4;
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  OUTLINED_FUNCTION_26_3(v0);
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

uint64_t sub_1C888E590(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0) + 28);
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

BOOL Siri_Nlu_Internal_Itfm_ITFMHypothesis.hasStringLabel.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  OUTLINED_FUNCTION_26_3(v0);
  return *(v1 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Itfm_ITFMHypothesis.clearStringLabel()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

void Siri_Nlu_Internal_Itfm_ITFMHypothesis.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_16_3(a1 + v2);
  v4 = a1 + *(v3 + 24);
  *v4 = 0;
  *(v4 + 4) = v5;
  v6 = (a1 + *(v3 + 28));
  *v6 = 0;
  v6[1] = 0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationLabel.setter(char a1)
{
  result = OUTLINED_FUNCTION_17_9();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationLabel.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v3) + 24);
  *(v1 + 8) = v4;
  *(v1 + 12) = *(v2 + v4) & 1;
  return OUTLINED_FUNCTION_158;
}

float Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationProbability.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  result = OUTLINED_FUNCTION_0_6(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationProbability.setter(float a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  result = OUTLINED_FUNCTION_26_3(v2);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationProbability.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v2) + 28);
  *(v1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_0_6(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 8) = v4;
  return sub_1C8801920;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Itfm_ITFMParserResponse.clearClassificationProbability()()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  OUTLINED_FUNCTION_26_3(v0);
  OUTLINED_FUNCTION_16_3(v1);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v8);
  sub_1C888EB30(v1 + *(v9 + 32), v2);
  v10 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v11 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v11, v12, v10) != 1)
  {
    return sub_1C888EBA0(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + *(v10 + 20)) = 3;
  *(a1 + *(v10 + 24)) = 10;
  v13 = OUTLINED_FUNCTION_120();
  result = __swift_getEnumTagSinglePayload(v13, v14, v10);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B6540, &unk_1C8BE7A40);
  }

  return result;
}

uint64_t sub_1C888EB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C888EBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C888EC04(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C888EF40(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.setter();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v2) + 32);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C888EBA0(v0, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0) + 32);
  *(v3 + 10) = v11;
  sub_1C888EB30(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10[*(v7 + 20)] = 3;
    v10[*(v7 + 24)] = 10;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    sub_1C888EBA0(v6, v10);
  }

  return sub_1C888EE60;
}

void sub_1C888EE60(uint64_t **a1, char a2)
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
    sub_1C888EF40((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
    sub_1C888EBA0(v4, v8 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C888EFA4(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
    sub_1C888EBA0(v5, v8 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C888EF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C888EFA4(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Siri_Nlu_Internal_Itfm_ITFMParserResponse.hasParser.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v6);
  sub_1C888EB30(v0 + *(v7 + 32), v1);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  v8 = OUTLINED_FUNCTION_120();
  v11 = __swift_getEnumTagSinglePayload(v8, v9, v10) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B6540, &unk_1C8BE7A40);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Itfm_ITFMParserResponse.clearParser()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0) + 32);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B6540, &unk_1C8BE7A40);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.hypotheses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v2) + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v0) + 20);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  v3 = a1 + v2[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + v2[6]) = 2;
  OUTLINED_FUNCTION_16_3(a1 + v2[7]);
  v4 = v2[8];
  v5 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C888F338()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3FF0);
  __swift_project_value_buffer(v0, qword_1EC2B3FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "probability";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "string_label";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.decodeMessage<A>(decoder:)()
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
        sub_1C888F6B4();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C888F650();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C888F5EC();
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_1C8BD4D8C(), !v1))
  {
    v6 = (v0 + v2[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_1C8BD4D7C(), !v1))
    {
      v8 = (v0 + v2[7]);
      if (!v8[1])
      {
        return sub_1C8BD49DC();
      }

      v9 = *v8;
      result = sub_1C8BD4DDC();
      if (!v1)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Itfm_ITFMHypothesis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11(v4);
  if (v9)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v8)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v5 + 24));
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
    if (v13)
    {
      return 0;
    }
  }

  v14 = *(v10 + 28);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = *v15 == *v17 && v16 == v18;
    if (!v19 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_4_15();
    sub_1C87766F8(v20, v21);
    return sub_1C8BD517C() & 1;
  }

  if (!v18)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1C888F9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87766F8(&qword_1EC2B8868, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C888FA3C(uint64_t a1)
{
  v2 = sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C888FAAC()
{
  sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C888FB48()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4660);
  __swift_project_value_buffer(v0, qword_1EC2B4660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "classification_label";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "classification_probability";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parser";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "hypotheses";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.decodeMessage<A>(decoder:)()
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
        sub_1C888FE60();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C888FEC4();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C888FF28();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C888FFDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C888FF28()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0) + 32);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  sub_1C87766F8(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C888FFDC()
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.traverse<A>(visitor:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_Parser(v7);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  if (*(v0 + v14[6]) == 2 || (result = sub_1C8BD4D3C(), !v1))
  {
    v16 = (v0 + v14[7]);
    if ((v16[1] & 1) != 0 || (v17 = *v16, result = sub_1C8BD4D7C(), !v1))
    {
      sub_1C888EB30(v0 + v14[8], v2);
      v18 = OUTLINED_FUNCTION_120();
      if (__swift_getEnumTagSinglePayload(v18, v19, v8) == 1)
      {
        sub_1C8778ED8(v2, &qword_1EC2B6540, &unk_1C8BE7A40);
      }

      else
      {
        sub_1C888EBA0(v2, v13);
        sub_1C87766F8(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser);
        sub_1C8BD4E2C();
        result = sub_1C888EFA4(v13);
        if (v1)
        {
          return result;
        }
      }

      if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0), sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis), result = sub_1C8BD4E0C(), !v1))
      {
        v20 = v0 + v14[5];
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Itfm_ITFMParserResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6568, &unk_1C8BE7C10);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  v23 = v22;
  v24 = *(v22 + 24);
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11(*(v22 + 28));
  if (v28)
  {
    if (!v27)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
    if (v29)
    {
LABEL_22:
      v40 = 0;
      return v40 & 1;
    }
  }

  v30 = *(v23 + 32);
  v31 = *(v16 + 48);
  sub_1C888EB30(a1 + v30, v21);
  sub_1C888EB30(a2 + v30, &v21[v31]);
  OUTLINED_FUNCTION_73(v21);
  if (v32)
  {
    OUTLINED_FUNCTION_73(&v21[v31]);
    if (v32)
    {
      sub_1C8778ED8(v21, &qword_1EC2B6540, &unk_1C8BE7A40);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1C888EB30(v21, v15);
  OUTLINED_FUNCTION_73(&v21[v31]);
  if (v32)
  {
    sub_1C888EFA4(v15);
LABEL_18:
    sub_1C8778ED8(v21, &qword_1EC2B6568, &unk_1C8BE7C10);
    goto LABEL_22;
  }

  sub_1C888EBA0(&v21[v31], v9);
  v33 = static Siri_Nlu_External_Parser.== infix(_:_:)();
  sub_1C888EFA4(v9);
  sub_1C888EFA4(v15);
  sub_1C8778ED8(v21, &qword_1EC2B6540, &unk_1C8BE7A40);
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v34 = *a1;
  v35 = *a2;
  sub_1C87DCC18();
  if ((v36 & 1) == 0)
  {
    goto LABEL_22;
  }

  v37 = *(v23 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_15();
  sub_1C87766F8(v38, v39);
  v40 = sub_1C8BD517C();
  return v40 & 1;
}

uint64_t sub_1C889060C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C87766F8(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88906F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87766F8(&qword_1EC2B8860, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8890770(uint64_t a1)
{
  v2 = sub_1C87766F8(&qword_1EC2B8850, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88907E0()
{
  sub_1C87766F8(&qword_1EC2B8850, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8890AC8()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD388);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EC2B4230);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD3E8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8890BD4()
{
  sub_1C8890D20(319, &qword_1EC2B2F38, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACA2B8);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B4230);
        if (v3 <= 0x3F)
        {
          sub_1C8890D20(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8890D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v11[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8890F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  OUTLINED_FUNCTION_4_16();
  v10 = *a1;
  OUTLINED_FUNCTION_28();
  sub_1C8778810();
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (!v12)
  {
    return OUTLINED_FUNCTION_54();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v11[5]);
  OUTLINED_FUNCTION_15_2(v11[6]);
  *(a2 + v11[7]) = 6;
  result = OUTLINED_FUNCTION_1_0();
  if (!v12)
  {
    return sub_1C8778ED8(v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C88910CC(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v15 = OUTLINED_FUNCTION_2();
    *(v4 + v11) = sub_1C88930EC(v15);
  }

  sub_1C87EF7B0();
  v16 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v11[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C8891378(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  OUTLINED_FUNCTION_4_16();
  v14 = *a3;
  OUTLINED_FUNCTION_28();
  sub_1C8778810();
  v15 = a4(0);
  v16 = __swift_getEnumTagSinglePayload(v13, 1, v15) != 1;
  sub_1C8778ED8(v13, a1, a2);
  return v16;
}

uint64_t sub_1C889147C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v18 = OUTLINED_FUNCTION_2();
    *(v7 + v14) = sub_1C88930EC(v18);
  }

  v19 = a3(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = *a4;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C889158C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.resultCandidateID.setter(v1, v2);
}

void (*Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.resultCandidateID.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  v4[8] = v1;
  OUTLINED_FUNCTION_8_14();
  *(v4 + 18) = v5;
  v6 = *(v1 + v5);
  OUTLINED_FUNCTION_37_5();
  if (v2[1])
  {
    v7 = *v2;
    v8 = v2[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v4[6] = v7;
  v4[7] = v8;

  return sub_1C8891674;
}

uint64_t sub_1C88916B8(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_14();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_11_12();
  if (a1[1])
  {
    v6 = *a1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8891714(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.utterance.setter(v1, v2);
}

uint64_t sub_1C8891760(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v12 = OUTLINED_FUNCTION_2();
    v11 = sub_1C88930EC(v12);
    *(v5 + v8) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_36_0();
  v14 = v13[1];
  *v13 = a1;
  v13[1] = a2;
}

void (*Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.utterance.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  v4[8] = v1;
  OUTLINED_FUNCTION_8_14();
  *(v4 + 18) = v5;
  v6 = *(v1 + v5);
  OUTLINED_FUNCTION_37_5();
  if (v2[1])
  {
    v7 = *v2;
    v8 = v2[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v4[6] = v7;
  v4[7] = v8;

  return sub_1C889188C;
}

void sub_1C88918AC(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v8 = *(v4 + 64);
    v9 = *(*a1 + 56);

    a4(v5, v6);
    v10 = *(v4 + 56);
  }

  else
  {
    v12 = *(v4 + 72);
    v13 = *(v4 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 72);
      v18 = *(v4 + 64);
      OUTLINED_FUNCTION_10_10();
      v19 = OUTLINED_FUNCTION_2();
      v16 = sub_1C88930EC(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *a3);
    OUTLINED_FUNCTION_36_0();
    v21 = v20[1];
    *v20 = v5;
    v20[1] = v6;
  }

  free(v4);
}

BOOL sub_1C8891990(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_14();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_11_12();
  return a1[1] != 0;
}

uint64_t sub_1C88919E0(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C88930EC(v8);
    *(v3 + v4) = v7;
  }

  v9 = (v7 + *a1);
  OUTLINED_FUNCTION_42_3();
  v10 = v9[1];
  *v9 = 0;
  v9[1] = 0;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_32_3();
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = a1 + v8[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[6]);
    OUTLINED_FUNCTION_18_2(v8[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.tokenChain.setter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_40_4();
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v9 = OUTLINED_FUNCTION_2();
    *(v2 + v1) = sub_1C88930EC(v9);
  }

  OUTLINED_FUNCTION_5_2();
  sub_1C87EF7B0();
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_33_1(v10);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    v13 = v11 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[6]);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.embeddingTensor.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_32_3();
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = a1 + v8[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[6]);
    OUTLINED_FUNCTION_15_2(v8[7]);
    OUTLINED_FUNCTION_15_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.embeddingTensor.setter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_40_4();
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v9 = OUTLINED_FUNCTION_2();
    *(v2 + v1) = sub_1C88930EC(v9);
  }

  OUTLINED_FUNCTION_7_1();
  sub_1C87EF7B0();
  v10 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_33_1(v10);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.embeddingTensor.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    v13 = v11 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[6]);
    OUTLINED_FUNCTION_11_0(v7[7]);
    OUTLINED_FUNCTION_11_0(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.maxCandidates.getter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_11_12();
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.maxCandidates.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C88930EC(v8);
    *(v2 + v4) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  result = OUTLINED_FUNCTION_36_0();
  *v9 = v0;
  *(v9 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.maxCandidates.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_8_14();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  swift_beginAccess();
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  v3[9] = v6;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8892358(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_10_10();
    v10 = OUTLINED_FUNCTION_2();
    v7 = sub_1C88930EC(v10);
    *(v9 + v8) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  OUTLINED_FUNCTION_36_0();
  *v11 = v2;
  *(v11 + 8) = 0;

  free(v1);
}

BOOL Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.hasMaxCandidates.getter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_11_12();
  return (*(v0 + 8) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.clearMaxCandidates()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v6 = OUTLINED_FUNCTION_2();
    v5 = sub_1C88930EC(v6);
    *(v1 + v2) = v5;
  }

  v7 = v5 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  OUTLINED_FUNCTION_42_3();
  *v7 = 0;
  *(v7 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.cdmRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_32_3();
  v8 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[5]);
    v10 = v8[6];
    v11 = type metadata accessor for Siri_Nlu_External_UUID();
    __swift_storeEnumTagSinglePayload(a1 + v10, 1, 1, v11);
    OUTLINED_FUNCTION_18_2(v8[7]);
    OUTLINED_FUNCTION_18_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    OUTLINED_FUNCTION_18_2(v8[10]);
    *(a1 + v8[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t sub_1C8892600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C87EF808();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.cdmRequestID.setter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_40_4();
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v9 = OUTLINED_FUNCTION_2();
    *(v2 + v1) = sub_1C88930EC(v9);
  }

  OUTLINED_FUNCTION_6_4();
  sub_1C87EF7B0();
  v10 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_33_1(v10);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.cdmRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v13 = v7[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID();
    __swift_storeEnumTagSinglePayload(&v11[v13], 1, 1, v14);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_26(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_26(v7[10]);
    v11[v7[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8892928(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1C87EF808();
    a3(v5);
    sub_1C87EF860();
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

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  if (qword_1EC2B43A0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B43A8;
}

uint64_t sub_1C8892BA8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4368);
  __swift_project_value_buffer(v0, qword_1EC2B4368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nlu_request_id";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "result_candidate_id";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utterance";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "token_chain";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "embedding_tensor";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "max_candidates";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "cdm_request_id";
  *(v23 + 1) = 14;
  v23[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4360 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C8892F9C()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C8892FDC();
  qword_1EC2B43A8 = result;
  return result;
}

uint64_t sub_1C8892FDC()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__nluRequestID, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain;
  v6 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor;
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID;
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  return v0;
}

uint64_t sub_1C88930EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37[6] = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37[5] = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37[3] = v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__requestID;
  v15 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__nluRequestID, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain;
  v37[1] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain;
  v19 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor;
  v37[2] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor;
  v21 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v22 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  v37[0] = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID;
  v37[4] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID;
  v24 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
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
  v25 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  swift_beginAccess();
  v28 = v16[1];
  *v16 = v27;
  v16[1] = v26;

  v29 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  swift_beginAccess();
  v32 = v17[1];
  *v17 = v31;
  v17[1] = v30;

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
  v33 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v37[0];
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8893698()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__nluRequestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance + 8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C8893788()
{
  v0 = sub_1C8893698();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C88930EC(v9);
  }

  return sub_1C889387C();
}

uint64_t sub_1C889387C()
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
      case 2:
        sub_1C88939FC();
        break;
      case 3:
      case 4:
        sub_1C8893AC0();
        break;
      case 5:
        sub_1C8893B34();
        break;
      case 6:
        sub_1C8893C10();
        break;
      case 7:
        sub_1C8893CEC();
        break;
      case 8:
        sub_1C8893D78();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88939FC()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776740(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8893AC0()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C8893B34()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C8776740(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8893C10()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8776740(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8893CEC()
{
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}

uint64_t sub_1C8893D78()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8776740(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0);
  result = sub_1C8893EC0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8893EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v47 - v7;
  v49 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v47 - v12;
  v52 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v13 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v47 - v17;
  v54 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v18 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  v27 = type metadata accessor for Siri_Nlu_External_UUID();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v56 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  swift_beginAccess();
  v60 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1C8778ED8(v26, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v31 = v57;
  }

  else
  {
    sub_1C87EF7B0();
    sub_1C8776740(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v32 = v57;
    sub_1C8BD4E2C();
    v31 = v32;
    result = sub_1C87EF860();
    if (v32)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v24, 1, v27) == 1)
  {
    sub_1C8778ED8(v24, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87EF7B0();
    sub_1C8776740(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8BD4E2C();
    result = sub_1C87EF860();
    if (v31)
    {
      return result;
    }
  }

  v34 = v60;
  v35 = (v60 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  swift_beginAccess();
  if (!v35[1] || (v36 = *v35, v37 = v35[1], , sub_1C8BD4DDC(), result = , !v31))
  {
    v38 = (v34 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
    swift_beginAccess();
    if (!v38[1] || (v39 = *v38, v40 = v38[1], , sub_1C8BD4DDC(), result = , !v31))
    {
      swift_beginAccess();
      v41 = v53;
      sub_1C8778810();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v54);
      v43 = v55;
      if (EnumTagSinglePayload == 1)
      {
        sub_1C8778ED8(v41, &qword_1EC2B6048, &unk_1C8BE6F80);
      }

      else
      {
        sub_1C87EF7B0();
        sub_1C8776740(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
        sub_1C8BD4E2C();
        result = sub_1C87EF860();
        if (v31)
        {
          return result;
        }
      }

      swift_beginAccess();
      sub_1C8778810();
      if (__swift_getEnumTagSinglePayload(v43, 1, v52) == 1)
      {
        sub_1C8778ED8(v43, &qword_1EC2B64A8, &unk_1C8BE7670);
      }

      else
      {
        sub_1C87EF7B0();
        sub_1C8776740(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
        sub_1C8BD4E2C();
        result = sub_1C87EF860();
        if (v31)
        {
          return result;
        }
      }

      v44 = (v34 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates);
      swift_beginAccess();
      if ((v44[1] & 1) != 0 || (v45 = *v44, result = sub_1C8BD4DFC(), !v31))
      {
        swift_beginAccess();
        v46 = v48;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v46, 1, v49) == 1)
        {
          return sub_1C8778ED8(v46, &qword_1EC2B64B0, &unk_1C8BF3F40);
        }

        else
        {
          sub_1C87EF7B0();
          sub_1C8776740(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
          sub_1C8BD4E2C();
          return sub_1C87EF860();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_8_14();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1C8894960(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776740(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C8894960(uint64_t a1, uint64_t a2)
{
  v134 = a2;
  v112 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v5 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v108 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v108 - v11;
  v118 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v12 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v114 = (&v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  v14 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v115 = (&v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v108 - v20;
  v123 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v21 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v116 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  v23 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v108 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v121 = (&v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v108 - v29;
  v133 = type metadata accessor for Siri_Nlu_External_UUID();
  v30 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v128 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v131 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v108 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v127 = &v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v130 = &v108 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v132 = &v108 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v108 - v46;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v129 = v32;
  v48 = *(v32 + 48);
  sub_1C8778810();
  v49 = v133;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v37, 1, v49) == 1)
  {

    sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v50 = a1;
    if (__swift_getEnumTagSinglePayload(&v37[v48], 1, v49) == 1)
    {
      sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C8778ED8(v37, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_16;
  }

  v50 = a1;
  v51 = v132;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(&v37[v48], 1, v49) == 1)
  {

    sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87EF860();
    goto LABEL_6;
  }

  v52 = v128;
  sub_1C87EF7B0();

  v53 = static Siri_Nlu_External_UUID.== infix(_:_:)(v51, v52);
  sub_1C87EF860();
  sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87EF860();
  sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  swift_beginAccess();
  v54 = v130;
  sub_1C8778810();
  swift_beginAccess();
  v55 = *(v129 + 48);
  v56 = v131;
  sub_1C8778810();
  sub_1C8778810();
  v57 = v50;
  if (__swift_getEnumTagSinglePayload(v56, 1, v49) == 1)
  {
    sub_1C8778ED8(v54, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v56 + v55, 1, v49) == 1)
    {
      sub_1C8778ED8(v56, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_20;
    }

LABEL_14:
    v59 = &qword_1EC2B5EE8;
    v60 = &unk_1C8BE6F90;
    v61 = v56;
LABEL_15:
    sub_1C8778ED8(v61, v59, v60);
    goto LABEL_16;
  }

  v58 = v127;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v56 + v55, 1, v49) == 1)
  {
    sub_1C8778ED8(v54, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87EF860();
    goto LABEL_14;
  }

  v63 = v128;
  sub_1C87EF7B0();
  v64 = static Siri_Nlu_External_UUID.== infix(_:_:)(v58, v63);
  sub_1C87EF860();
  sub_1C8778ED8(v54, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87EF860();
  sub_1C8778ED8(v56, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v65 = (v50 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  v68 = (v134 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  swift_beginAccess();
  v69 = v68[1];
  if (v67)
  {
    v70 = v126;
    if (!v69)
    {
      goto LABEL_16;
    }

    v71 = v66 == *v68 && v67 == v69;
    if (!v71 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v70 = v126;
    if (v69)
    {
      goto LABEL_16;
    }
  }

  v72 = (v50 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  swift_beginAccess();
  v73 = *v72;
  v74 = v72[1];
  v75 = (v134 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  swift_beginAccess();
  v76 = v75[1];
  if (v74)
  {
    if (!v76)
    {
      goto LABEL_16;
    }

    v77 = v73 == *v75 && v74 == v76;
    if (!v77 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v76)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v78 = *(v122 + 48);
  v79 = v124;
  sub_1C8778810();
  sub_1C8778810();
  v80 = v123;
  if (__swift_getEnumTagSinglePayload(v79, 1, v123) == 1)
  {
    sub_1C8778ED8(v70, &qword_1EC2B6048, &unk_1C8BE6F80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79 + v78, 1, v80);
    v82 = v125;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v79, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_45;
    }

LABEL_43:
    v59 = &qword_1EC2B6050;
    v60 = &qword_1C8BE6D00;
LABEL_51:
    v61 = v79;
    goto LABEL_15;
  }

  v83 = v121;
  sub_1C8778810();
  v84 = __swift_getEnumTagSinglePayload(v79 + v78, 1, v80);
  v82 = v125;
  if (v84 == 1)
  {
    sub_1C8778ED8(v70, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C87EF860();
    goto LABEL_43;
  }

  v85 = v116;
  sub_1C87EF7B0();
  v86 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v83, v85);
  sub_1C87EF860();
  sub_1C8778ED8(v70, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C87EF860();
  sub_1C8778ED8(v79, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v86 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_45:
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v87 = *(v117 + 48);
  v79 = v119;
  sub_1C8778810();
  sub_1C8778810();
  v88 = v118;
  if (__swift_getEnumTagSinglePayload(v79, 1, v118) == 1)
  {
    sub_1C8778ED8(v82, &qword_1EC2B64A8, &unk_1C8BE7670);
    v89 = __swift_getEnumTagSinglePayload(v79 + v87, 1, v88);
    v90 = v120;
    if (v89 == 1)
    {
      sub_1C8778ED8(v79, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v91 = v115;
  sub_1C8778810();
  v92 = __swift_getEnumTagSinglePayload(v79 + v87, 1, v88);
  v90 = v120;
  if (v92 == 1)
  {
    sub_1C8778ED8(v125, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C87EF860();
LABEL_50:
    v59 = &qword_1EC2B64E0;
    v60 = &unk_1C8BE7880;
    goto LABEL_51;
  }

  v93 = v114;
  sub_1C87EF7B0();
  v94 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v91, v93);
  sub_1C87EF860();
  sub_1C8778ED8(v125, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87EF860();
  sub_1C8778ED8(v79, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v94 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_53:
  v95 = (v57 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates);
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 8);
  v98 = v134 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  swift_beginAccess();
  v99 = *(v98 + 8);
  if ((v97 & 1) == 0)
  {
    if ((*(v98 + 8) & 1) == 0 && v96 == *v98)
    {
      goto LABEL_58;
    }

LABEL_16:

    return 0;
  }

  if ((*(v98 + 8) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_58:
  swift_beginAccess();
  sub_1C8778810();
  v100 = v90;
  swift_beginAccess();
  v101 = *(v111 + 48);
  v102 = v113;
  sub_1C8778810();
  v103 = v102;
  sub_1C8778810();
  v104 = v112;
  if (__swift_getEnumTagSinglePayload(v102, 1, v112) == 1)
  {

    sub_1C8778ED8(v100, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v102 + v101, 1, v104) == 1)
    {
      sub_1C8778ED8(v102, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_63;
  }

  v105 = v110;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v103 + v101, 1, v104) == 1)
  {

    sub_1C8778ED8(v120, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C87EF860();
LABEL_63:
    sub_1C8778ED8(v103, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v106 = v109;
  sub_1C87EF7B0();
  v107 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v105, v106);

  sub_1C87EF860();
  sub_1C8778ED8(v120, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87EF860();
  sub_1C8778ED8(v103, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v107 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0);
  sub_1C8776740(&qword_1EC2B8870, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8895B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776740(&qword_1EC2B8888, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8895C04(uint64_t a1)
{
  v2 = sub_1C8776740(&qword_1EC2B8878, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8895C74()
{
  sub_1C8776740(&qword_1EC2B8878, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8895E3C()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8895EC8()
{
  sub_1C87F2968(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1C87F2968(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1C87F2968(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1C87F2968(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_37_5()
{

  return swift_beginAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.userStatedTask.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = OUTLINED_FUNCTION_332_0();
    v10 = type metadata accessor for Siri_Nlu_External_UsoGraph(v9);
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserStatedTask.task.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = *(type metadata accessor for Siri_Nlu_External_UserStatedTask(v7) + 20);
  OUTLINED_FUNCTION_232();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_24_8();
  if (v9)
  {
    OUTLINED_FUNCTION_412(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_496();
    v10 = type metadata accessor for Siri_Nlu_External_SemVer();
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.hasAccepted.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserParse.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(v0);
  OUTLINED_FUNCTION_109_0(v1);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_524();
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_38(v1[7]);
  *(v6 + 8) = 1;
  OUTLINED_FUNCTION_18_2(v1[8]);
  v7 = v1[9];
  type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = v1[10];
  type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_38(v1[11]);
  *(v17 + 8) = 1;
  v18 = v1[12];
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v19 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t Siri_Nlu_External_UserDialogAct.hasRejected.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasCancelled.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToPause.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_CorrectionOutcome.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_421();
  *(a1 + v3) = 2;
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.hasAcknowledged.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToProceed.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasDelegated.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_UserDialogAct.accepted.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &unk_1EC2B6330, &unk_1C8BF4FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.rejected.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserRejected(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E28, &unk_1C8C10580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.cancelled.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToRepeat.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E10, &unk_1C8BF5000);
    }
  }

  else
  {
    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.acknowledged.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86D8, &qword_1C8BF4620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToProceed.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86D0, &unk_1C8BF5010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToPause.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6E18, &qword_1C8BEBC48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToUndo.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86C0, &unk_1C8BF5020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasOffered.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_TurnInput.systemDialogActGroup.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_215_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_24_8();
  if (v9)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_313_0();
    v11 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v10);
    result = OUTLINED_FUNCTION_9_13(v11);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_TurnInput.systemDialogActGroup.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87924BC(v10);
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_TurnInput.systemDialogActGroup.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v8);
  OUTLINED_FUNCTION_48_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_TurnInput(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = OUTLINED_FUNCTION_317_0();
    v19 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v18);
    OUTLINED_FUNCTION_5_12(v19);
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_TurnInput.hasSystemDialogActGroup.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v8 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearSystemDialogActGroup()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87924BC(v10);
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t sub_1C88976F0(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_External_TurnInput.salientEntities.setter();
}

uint64_t Siri_Nlu_External_TurnInput.salientEntities.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C889783C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_167();
  v6 = v5(v4);
  OUTLINED_FUNCTION_215_1(v6);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_277();
  v7 = *(v2 + a2);
}

uint64_t sub_1C8897884(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_External_TurnInput.activeTasks.setter();
}

uint64_t sub_1C88978F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v6;
  v11 = OUTLINED_FUNCTION_241();
  v13 = *(v12(v11) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a3(0);
    OUTLINED_FUNCTION_218_2(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_2();
    v16 = a4(v18);
    *(v10 + v13) = v16;
  }

  v19 = *a5;
  OUTLINED_FUNCTION_37_0();
  v20 = *(v16 + v19);
  *(v16 + v19) = v5;
}

uint64_t Siri_Nlu_External_TurnInput.activeTasks.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8897A80(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_External_TurnInput.executedTasks.setter();
}

uint64_t Siri_Nlu_External_TurnInput.executedTasks.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8897BCC(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_External_TurnInput.asrOutputs.setter();
}

uint64_t Siri_Nlu_External_TurnInput.asrOutputs.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_TurnInput.turnContext.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87924BC(v10);
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_TurnInput.turnContext.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  v9 = type metadata accessor for Siri_Nlu_External_TurnContext(v8);
  OUTLINED_FUNCTION_48_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  v15 = type metadata accessor for Siri_Nlu_External_TurnInput(v14);
  OUTLINED_FUNCTION_215_1(v15);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_NLContext(v17);
    v18 = OUTLINED_FUNCTION_73_3();
    v22 = OUTLINED_FUNCTION_265_1(v18, v19, v20, v21);
    v23 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v22);
    OUTLINED_FUNCTION_5_12(v23);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8897F28()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_97();
    sub_1C88AC5E8();
    v2(v3);
    OUTLINED_FUNCTION_299_0();
    sub_1C87A0410();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_260();

  free(v8);
}

uint64_t Siri_Nlu_External_TurnInput.hasTurnContext.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v8 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearTurnContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87924BC(v10);
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_TurnInput.locale.getter()
{
  OUTLINED_FUNCTION_160_1();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_11_12();
  if (v0[1])
  {
    v4 = *v0;
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

void sub_1C889817C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Siri_Nlu_External_TurnInput.locale.setter();
}

void Siri_Nlu_External_TurnInput.locale.setter()
{
  OUTLINED_FUNCTION_533();
  v4 = OUTLINED_FUNCTION_68();
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(v4);
  v6 = OUTLINED_FUNCTION_41_1(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C87924BC(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  v10 = (v7 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  OUTLINED_FUNCTION_36_0();
  v11 = v10[1];
  *v10 = v2;
  v10[1] = v0;

  OUTLINED_FUNCTION_534();
}

void (*Siri_Nlu_External_TurnInput.locale.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_160_1();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_277();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C88982D0;
}

void sub_1C88982D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    OUTLINED_FUNCTION_184();
    Siri_Nlu_External_TurnInput.locale.setter();
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
      OUTLINED_FUNCTION_202_1();
      v15 = OUTLINED_FUNCTION_2();
      v12 = sub_1C87924BC(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
    OUTLINED_FUNCTION_36_0();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v4;
  }

  free(v2);
}

BOOL Siri_Nlu_External_TurnInput.hasLocale.getter()
{
  OUTLINED_FUNCTION_160_1();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_11_12();
  return *(v0 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearLocale()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_External_TurnInput(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v6 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v6);
    *(v1 + v2) = v5;
  }

  v7 = (v5 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  OUTLINED_FUNCTION_37_0();
  v8 = v7[1];
  *v7 = 0;
  v7[1] = 0;
}

uint64_t Siri_Nlu_External_TurnInput.tapToEdit.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_160_1();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 84) = *(v4 + v5) & 1;
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_TurnInput.startTimestamp.getter()
{
  OUTLINED_FUNCTION_160_1();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_11_12();
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Siri_Nlu_External_TurnInput.startTimestamp.setter()
{
  v3 = OUTLINED_FUNCTION_241();
  v4 = type metadata accessor for Siri_Nlu_External_TurnInput(v3);
  v5 = OUTLINED_FUNCTION_436(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C87924BC(v7);
    OUTLINED_FUNCTION_264_1(v8);
  }

  v9 = v6 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  result = OUTLINED_FUNCTION_36_0();
  *v9 = v0;
  *(v9 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_External_TurnInput.startTimestamp.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_160_1();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_277();
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8898650(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_202_1();
    v10 = OUTLINED_FUNCTION_2();
    v7 = sub_1C87924BC(v10);
    *(v9 + v8) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  OUTLINED_FUNCTION_36_0();
  *v11 = v2;
  *(v11 + 8) = 0;

  free(v1);
}

BOOL Siri_Nlu_External_TurnInput.hasStartTimestamp.getter()
{
  OUTLINED_FUNCTION_160_1();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_11_12();
  return (*(v0 + 8) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearStartTimestamp()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_External_TurnInput(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v6 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87924BC(v6);
    *(v1 + v2) = v5;
  }

  v7 = v5 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  OUTLINED_FUNCTION_37_0();
  *v7 = 0;
  *(v7 + 8) = 1;
}

uint64_t Siri_Nlu_External_TurnInput.correctionOutcomeOverride.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_215_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_409();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_TurnInput.correctionOutcomeOverride.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87924BC(v10);
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_TurnInput.correctionOutcomeOverride.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 32) = v7;
  v8 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  v14 = type metadata accessor for Siri_Nlu_External_TurnInput(v13);
  OUTLINED_FUNCTION_215_1(v14);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_TurnInput.hasCorrectionOutcomeOverride.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v8 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_TurnInput.clearCorrectionOutcomeOverride()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87924BC(v10);
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t sub_1C8898C44(uint64_t a1)
{
  OUTLINED_FUNCTION_160_1();
  v4 = *(v1 + v3);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_277();
  return *(v4 + a1) & 1;
}

void sub_1C8898C90()
{
  OUTLINED_FUNCTION_533();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87924BC(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_37_0();
  *(v8 + v3) = v5 & 1;
  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_TurnInput.connectedToCarPlayUltra.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_160_1();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 84) = *(v4 + v5) & 1;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8898D80()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_202_1();
    v12 = OUTLINED_FUNCTION_2();
    v9 = sub_1C87924BC(v12);
    *(v11 + v10) = v9;
  }

  v13 = *v1;
  OUTLINED_FUNCTION_37_0();
  *(v9 + v13) = v6;
  OUTLINED_FUNCTION_260();

  free(v14);
}

BOOL sub_1C8898E34(uint64_t a1)
{
  OUTLINED_FUNCTION_160_1();
  v4 = *(v1 + v3);
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_277();
  return *(v4 + a1) != 2;
}

uint64_t sub_1C8898E84(uint64_t a1)
{
  v4 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v5 = OUTLINED_FUNCTION_436(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_202_1();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C87924BC(v7);
    OUTLINED_FUNCTION_264_1(v8);
  }

  OUTLINED_FUNCTION_316_0();
  result = OUTLINED_FUNCTION_37_0();
  *(v6 + a1) = 2;
  return result;
}

uint64_t Siri_Nlu_External_TurnContext.nlContext.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_TurnContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_TurnContext.nlContext.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_NLContext(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_TurnContext(v16);
  OUTLINED_FUNCTION_130_3(*(v17 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v19;
    v12[2] = v19;
    v12[3] = v19;
    v20 = v12 + *(v0 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v21 = *(v0 + 36);
    v22 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_5_12(v22);
    if (!v18)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_TurnContext.legacyNlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_TurnContext(v9) + 24);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    Siri_Nlu_External_LegacyNLContext.init()(a1);
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_3();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_TurnContext.legacyNlContext.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_TurnContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5FB8, &unk_1C8BF3D70);
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_TurnContext.legacyNlContext.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_TurnContext(v16);
  OUTLINED_FUNCTION_86_2(v17);
  OUTLINED_FUNCTION_0_0();
  if (v18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v19;
    v20 = v12 + v0[6];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v12 + v0[7]) = 2;
    *(v12 + v0[8]) = 2;
    OUTLINED_FUNCTION_26(v0[9]);
    *(v12 + v0[10]) = v21;
    OUTLINED_FUNCTION_523(v0[11]);
    OUTLINED_FUNCTION_0_0();
    if (!v18)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NLContext.systemDialogActGroup.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = *(type metadata accessor for Siri_Nlu_External_NLContext(v7) + 36);
  OUTLINED_FUNCTION_232();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  OUTLINED_FUNCTION_24_8();
  if (v9)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_313_0();
    v11 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v10);
    result = OUTLINED_FUNCTION_9_13(v11);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_NLContext.systemDialogActGroup.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NLContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NLContext.systemDialogActGroup.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_NLContext(v15);
  OUTLINED_FUNCTION_130_3(*(v16 + 36));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = OUTLINED_FUNCTION_317_0();
    v19 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v18);
    OUTLINED_FUNCTION_5_12(v19);
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NLContext.salientEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NLContext.systemDialogActs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NLContext.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = *(type metadata accessor for Siri_Nlu_External_NLContext(v0) + 32);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_196();

  return v6(v5);
}

uint64_t Siri_Nlu_External_NLContext.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NLContext(v0) + 32);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_167_1();

  return v6(v5);
}

uint64_t Siri_Nlu_External_NLContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NLContext(v0) + 32);
  return OUTLINED_FUNCTION_242();
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.dictationPrompt.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 28));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.strictPrompt.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_LegacyNLContext.previousDomainName.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 36)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8899A90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_LegacyNLContext.previousDomainName.setter();
}

uint64_t Siri_Nlu_External_LegacyNLContext.previousDomainName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 36)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_LegacyNLContext.clearPreviousDomainName()()
{
  v1 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 36));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 40));
  return j_j__OUTLINED_FUNCTION_158;
}

void Siri_Nlu_External_LegacyNLContext.legacyContextSource.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_275_0(*(v2 + 44));
  *v0 = v3;
}

uint64_t (*Siri_Nlu_External_LegacyNLContext.legacyContextSource.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 44));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_LegacyNLContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_LegacyNLContext(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8899E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D07C4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_RepetitionResult.asrHypothesisIndex.getter()
{
  OUTLINED_FUNCTION_420();
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

void Siri_Nlu_External_RepetitionResult.asrHypothesisIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_RepetitionResult.asrHypothesisIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

void Siri_Nlu_External_RepetitionResult.repetitionType.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v1);
  OUTLINED_FUNCTION_275_0(*(v2 + 24));
  *v0 = v3;
}

uint64_t Siri_Nlu_External_RepetitionResult.repetitionType.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_RepetitionResult(v3);
  *(v2 + *(result + 24)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_RepetitionResult.repetitionType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 24));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889A0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D0818();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Siri_Nlu_External_RepetitionResult.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_24_2(v0);
  *(v1 + 4) = 1;
  OUTLINED_FUNCTION_464(*(v2 + 24));
}

uint64_t Siri_Nlu_External_Parser.algorithm.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_Parser(v2);
  v4 = *(v1 + *(result + 20));
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1C889A1E0@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_Parser.algorithm.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_Parser.algorithm.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_Parser(v3);
  *(v2 + *(result + 20)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_Parser.algorithm.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 20));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_Parser.parserID.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_Parser(v2);
  v4 = *(v1 + *(result + 24));
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1C889A358@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_Parser.parserID.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_Parser.parserID.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_Parser(v3);
  *(v2 + *(result + 24)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_Parser.parserID.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 24));
  OUTLINED_FUNCTION_24_5(v3);
  return j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889A4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D08C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C889A548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D086C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_UserParse.id.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.id.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserParse(v13);
  OUTLINED_FUNCTION_85(*(v14 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C889A7E8()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v4 = *(v3(v2) + 24);
  v5 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v5, v6, v1);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Siri_Nlu_External_UserParse.probability.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 28));
}

uint64_t Siri_Nlu_External_UserParse.probability.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_UserParse(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C889A964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UserParse.parserID.setter();
}

uint64_t Siri_Nlu_External_UserParse.parserID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UserParse(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 32)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_UserParse.repetitionResult.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = *(type metadata accessor for Siri_Nlu_External_UserParse(v8) + 36);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_24_2(dword_1EC2B8A74);
    *(v11 + 4) = v0;
    OUTLINED_FUNCTION_464(dword_1EC2B8A78);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8A60, &unk_1C8BF5058);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.repetitionResult.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2B8A60, &unk_1C8BF5058);
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.repetitionResult.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UserParse(v15);
  OUTLINED_FUNCTION_85(*(v16 + 36));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(*(v1 + 20));
    OUTLINED_FUNCTION_523(*(v1 + 24));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8A60, &unk_1C8BF5058);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C889AD4C()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = v1(0);
  OUTLINED_FUNCTION_202_0(*(v9 + 36));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v11, v10);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v12, v13, v14);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C889AE30()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v4 = *(v3(v2) + 36);
  v5 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v5, v6, v1);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Siri_Nlu_External_UserParse.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_UserParse(v9) + 40);
  OUTLINED_FUNCTION_57_0();
  v11 = type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v11 + 20)) = 3;
    *(a1 + *(v11 + 24)) = 10;
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.parser.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_Parser(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.parser.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_Parser(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_UserParse(v16);
  OUTLINED_FUNCTION_85(*(v17 + 40));
  OUTLINED_FUNCTION_5_6();
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v12 + *(v1 + 20)) = 3;
    *(v12 + *(v1 + 24)) = 10;
    OUTLINED_FUNCTION_5_6();
    if (!v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_UserParse.comparableProbability.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 44));
}

uint64_t Siri_Nlu_External_UserParse.comparableProbability.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_UserParse(v2) + 44);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_UserParse.correctionOutcome.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UserParse(v7) + 48);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_409();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.correctionOutcome.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(v1);
  sub_1C8778ED8(v0 + *(v2 + 48), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserParse.correctionOutcome.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserParse(v14);
  OUTLINED_FUNCTION_85(*(v15 + 48));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserParse.hasCorrectionOutcome.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_UserParse(v7);
  OUTLINED_FUNCTION_13(*(v8 + 48));
  OUTLINED_FUNCTION_262();
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_10(v9);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_External_UserParse.clearCorrectionOutcome()()
{
  v1 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8778ED8(v0 + *(v1 + 48), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_UserParse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_UserParse(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_CorrectionOutcome.type.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v2);
  *v0 = *(v1 + *(result + 20)) & 1;
  return result;
}

uint64_t sub_1C889B6AC@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_CorrectionOutcome.type.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_CorrectionOutcome.type.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_421();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_CorrectionOutcome.type.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 20));
  return j_j__OUTLINED_FUNCTION_158;
}

SiriNLUTypes::Siri_Nlu_External_CorrectionOutcome::CorrectionType_optional __swiftcall Siri_Nlu_External_CorrectionOutcome.CorrectionType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C889B818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D0914();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C889B880@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_CorrectionOutcome.CorrectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.accepted.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.accepted.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserAccepted(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &unk_1EC2B6330, &unk_1C8BF4FE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearAccepted()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.rejected.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserRejected(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.rejected.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserRejected(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E28, &unk_1C8C10580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearRejected()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.cancelled.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.cancelled.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserCancelled(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearCancelled()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToRepeat.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToRepeat.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E10, &unk_1C8BF5000);
    }
  }

  else
  {
    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToRepeat()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.acknowledged.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.acknowledged.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86D8, &qword_1C8BF4620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearAcknowledged()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToProceed.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86D0, &unk_1C8BF5010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToProceed()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToPause.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToPause.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6E18, &qword_1C8BEBC48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToPause()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.delegated.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_145_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_24_8();
  if (v11)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    v12 = a1 + dword_1EC2B86E0;
    *v12 = 0;
    *(v12 + 4) = v2;
    sub_1C8BD493C();
    v13 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    v17 = (a1 + dword_1EC2B86E8);
    *v17 = 0;
    v17[1] = 0;
    type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
    v18 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_496();
    v23 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v22);
    result = OUTLINED_FUNCTION_9_13(v23);
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B86C8, &unk_1C8C10570);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.delegated.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v0);
  OUTLINED_FUNCTION_109_0(v1);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_24_2(v1[6]);
  *(v2 + 4) = 1;
  v3 = v1[7];
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_18_2(v1[8]);
  v8 = v1[9];
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v1[10];
  type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  v14 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void Siri_Nlu_External_UserDialogAct.delegated.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  v11 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v10);
  OUTLINED_FUNCTION_48_5(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_38_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    *v15 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v0[6]);
    v17 = v0[7];
    sub_1C8BD493C();
    v18 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_26(v0[8]);
    v22 = v0[9];
    type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
    v23 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_303_0();
    v28 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v27);
    OUTLINED_FUNCTION_5_12(v28);
    if (!v16)
    {
      sub_1C8778ED8(v1, &qword_1EC2B86C8, &unk_1C8C10570);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearDelegated()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.userStatedTask.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserStatedTask(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_327_0();
    v16 = type metadata accessor for Siri_Nlu_External_UsoGraph(v15);
    OUTLINED_FUNCTION_5_12(v16);
    if (!v14)
    {
      sub_1C8778ED8(v0, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearUserStatedTask()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToUndo.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.wantedToUndo.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86C0, &unk_1C8BF5020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearWantedToUndo()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserDialogAct.alignment.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  OUTLINED_FUNCTION_415();
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_24_2(dword_1EC2B8A80);
    *(v12 + 4) = v1;
    OUTLINED_FUNCTION_24_2(dword_1EC2B8A84);
    *(v13 + 4) = v1;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B8A68, &qword_1C8BF5068);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.alignment.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_UserDialogAct.alignment.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  v11 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v10);
  OUTLINED_FUNCTION_48_5(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_38_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    *v15 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(*(v0 + 24));
    OUTLINED_FUNCTION_7_0(*(v0 + 28));
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v1, &qword_1EC2B8A68, &qword_1C8BF5068);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_UserDialogAct.hasAlignment.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_145_1(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_UserDialogAct.clearAlignment()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_374(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_UserAccepted.offerID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAccepted(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAccepted.offerID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserAccepted(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C889DE68()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = v1(0);
  OUTLINED_FUNCTION_202_0(*(v9 + 20));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v11, v10);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v12, v13, v14);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C889DF4C()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v4 = *(v3(v2) + 20);
  v5 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v5, v6, v1);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Siri_Nlu_External_UserAccepted.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAccepted(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAccepted.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserAccepted(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserRejected.offerID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserRejected(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserRejected.offerID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserRejected(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserRejected.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserRejected(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserRejected.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserRejected(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserCancelled.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserCancelled(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserCancelled.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserCancelled(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserCancelled.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserCancelled(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserCancelled.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserCancelled(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToRepeat.systemDialogActID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToRepeat.systemDialogActID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToRepeat.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToRepeat.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserAcknowledged.systemDialogActID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAcknowledged.systemDialogActID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserAcknowledged.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserAcknowledged.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToProceed.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToProceed.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_UserWantedToProceed.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToPause.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToPause.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToPause.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToPause.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_RewriteMessage.rewriteType.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v1);
  OUTLINED_FUNCTION_275_0(*(v2 + 20));
  *v0 = v3;
}

uint64_t Siri_Nlu_External_RewriteMessage.rewriteType.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_422();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_RewriteMessage.rewriteType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 20));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889FB70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RewriteMessage.rewrittenUtterance.setter();
}

uint64_t Siri_Nlu_External_RewriteMessage.rewrittenUtterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C889FCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D0968();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Siri_Nlu_External_RewriteMessage.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_464(v0);
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
}

uint64_t Siri_Nlu_External_ReferenceContext.contextualReference.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_ReferenceContext(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_ReferenceContext.contextualReference.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 20));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_ReferenceContext.disambiguationNeeded.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_ReferenceContext(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_ReferenceContext.disambiguationNeeded.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 24));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t sub_1C889FF4C@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = a1(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void Siri_Nlu_External_DelegatedUserDialogAct.asrHypothesisIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_DelegatedUserDialogAct.asrHypothesisIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v7) + 28);
  OUTLINED_FUNCTION_57_0();
  v9 = sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_211_2(v9);
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_84_1();
    return v13();
  }

  return result;
}

void Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = sub_1C8BD493C();
  v9 = OUTLINED_FUNCTION_278_0(v8);
  OUTLINED_FUNCTION_13_1(v9);
  *(v0 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 28));
  OUTLINED_FUNCTION_73(v7);
  if (v17)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_73(v7);
    if (!v17)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88A036C()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 32)))
  {
    OUTLINED_FUNCTION_20(v3);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88A03B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
}

uint64_t sub_1C88A040C()
{
  v3 = OUTLINED_FUNCTION_68();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_24_0(*(v5 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 32)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C88A04F8()
{
  v1 = OUTLINED_FUNCTION_167();
  v3 = v2(v1);
  result = OUTLINED_FUNCTION_25_2(*(v3 + 32));
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v7) + 36);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_464(*(v9 + 20));
    OUTLINED_FUNCTION_18_2(*(v9 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.rewrite.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_DelegatedUserDialogAct.rewrite.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v15);
  OUTLINED_FUNCTION_85(*(v16 + 36));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_523(*(v1 + 20));
    OUTLINED_FUNCTION_26(*(v1 + 24));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.referenceContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v9) + 40);
  OUTLINED_FUNCTION_57_0();
  v11 = type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_409();
    *(a1 + *(v11 + 24)) = v13;
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v1, &dword_1EC2B8A78, &unk_1C8BF5080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.referenceContext.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &dword_1EC2B8A78, &unk_1C8BF5080);
  OUTLINED_FUNCTION_57_4();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_DelegatedUserDialogAct.referenceContext.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_ReferenceContext(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v16);
  OUTLINED_FUNCTION_85(*(v17 + 40));
  OUTLINED_FUNCTION_5_6();
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_401();
    *(v12 + *(v1 + 24)) = v19;
    OUTLINED_FUNCTION_5_6();
    if (!v18)
    {
      sub_1C8778ED8(v0, &dword_1EC2B8A78, &unk_1C8BF5080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C88A0B30()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = v1(0);
  OUTLINED_FUNCTION_202_0(*(v9 + 40));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v11, v10);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v12, v13, v14);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88A0C14()
{
  v2 = OUTLINED_FUNCTION_46_1();
  v4 = *(v3(v2) + 40);
  v5 = OUTLINED_FUNCTION_256_2();
  sub_1C8778ED8(v5, v6, v1);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C88A0C94()
{
  v0 = OUTLINED_FUNCTION_207();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_196();

  return v7(v6);
}

uint64_t sub_1C88A0D20()
{
  v0 = OUTLINED_FUNCTION_241();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_167_1();

  return v7(v6);
}

uint64_t Siri_Nlu_External_DelegatedUserDialogAct.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_UserStatedTask.task.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserStatedTask(v14);
  OUTLINED_FUNCTION_130_3(*(v15 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToUndo.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToUndo.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UserWantedToUndo.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UserWantedToUndo.reference.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v14);
  OUTLINED_FUNCTION_86_2(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_303_0();
    v17 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5_12(v17);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemDialogActGroup.systemDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v9) + 24);
  OUTLINED_FUNCTION_57_0();
  v11 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v11 + 20);
    if (qword_1EDACB5F8 != -1)
    {
      OUTLINED_FUNCTION_397();
    }

    *(a1 + v13) = qword_1EDACB600;
    v14 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_507(v14, v15);
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogActGroup.systemDialogAct.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5FE0, &unk_1C8C102D0);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemDialogActGroup.systemDialogAct.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v16);
  OUTLINED_FUNCTION_86_2(v17);
  OUTLINED_FUNCTION_0_0();
  if (v18)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v19 = *(v0 + 20);
    if (qword_1EDACB5F8 != -1)
    {
      OUTLINED_FUNCTION_397();
    }

    *(v12 + v19) = qword_1EDACB600;
    v20 = OUTLINED_FUNCTION_82_5();
    __swift_getEnumTagSinglePayload(v20, v21, v22);
    OUTLINED_FUNCTION_511();

    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_SystemDialogActGroup.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_SystemDialogAct.id.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_13_2(v9);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v2 + 48) = v14;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v0[5]);
    OUTLINED_FUNCTION_11_0(v0[6]);
    v14[v0[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearID()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.prompted.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v10 = sub_1C879A880();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.prompted.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &dword_1EC2B86E8, &unk_1C8BF4630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearPrompted()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.offered.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_166_2(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = OUTLINED_FUNCTION_332_0();
    v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct(v9);
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B86F0, &unk_1C8BF5030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

void Siri_Nlu_External_SystemDialogAct.offered.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_SystemOffered(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_327_0();
    v16 = type metadata accessor for Siri_Nlu_External_UserDialogAct(v15);
    OUTLINED_FUNCTION_5_12(v16);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B86F0, &unk_1C8BF5030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearOffered()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.gaveOptions.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v9);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v1, &dword_1EC2B8A80, &unk_1C8BF5090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

void Siri_Nlu_External_SystemDialogAct.gaveOptions.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 32) = v7;
  v8 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v0 + 48) = v12;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_530();
  OUTLINED_FUNCTION_5_6();
  if (v13)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    v14 = v12 + *(v8 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v13)
    {
      sub_1C8778ED8(v7, &dword_1EC2B8A80, &unk_1C8BF5090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_93_3();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearGaveOptions()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.informed.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_166_2(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    OUTLINED_FUNCTION_463(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_313_0();
    v9 = type metadata accessor for Siri_Nlu_External_UUID();
    result = OUTLINED_FUNCTION_9_13(v9);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B8A88, &unk_1C8C10560);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.informed.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v10 = sub_1C879A880();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C88A252C@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  v5 = a1(0);
  v6 = a3 + *(v5 + 20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v7 = *(v5 + 24);
  a2(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_SystemDialogAct.informed.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_SystemInformed(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_384();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_317_0();
    v16 = type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5_12(v16);
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8A88, &unk_1C8C10560);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasInformed.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearInformed()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedSuccess.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_166_2(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v9 = OUTLINED_FUNCTION_44();
    v13 = OUTLINED_FUNCTION_231_1(v9, v10, v11, v12);
    v14 = type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B8A90, &unk_1C8BF50A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedSuccess.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v10 = sub_1C879A880();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.reportedSuccess.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_327_0();
    type metadata accessor for Siri_Nlu_External_UUID();
    v15 = OUTLINED_FUNCTION_73_3();
    v19 = OUTLINED_FUNCTION_265_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
    OUTLINED_FUNCTION_5_12(v20);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8A90, &unk_1C8BF50A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasReportedSuccess.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearReportedSuccess()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedFailure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v9);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_207_2();
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v10 + 20);
    if (qword_1EC2B51C8 != -1)
    {
      OUTLINED_FUNCTION_395();
    }

    *(a1 + v12) = qword_1EC2B89E0;
    v13 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_507(v13, v14);
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8A98, &unk_1C8C10550);
    }
  }

  else
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.reportedFailure.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v10 = sub_1C879A880();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.reportedFailure.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  v11 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v10);
  OUTLINED_FUNCTION_48_5(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_38_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = *(v0 + 20);
    if (qword_1EC2B51C8 != -1)
    {
      OUTLINED_FUNCTION_395();
    }

    *&v15[v17] = qword_1EC2B89E0;
    v18 = OUTLINED_FUNCTION_82_5();
    __swift_getEnumTagSinglePayload(v18, v19, v20);
    OUTLINED_FUNCTION_511();

    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B8A98, &unk_1C8C10550);
    }
  }

  else
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasReportedFailure.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearReportedFailure()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

void Siri_Nlu_External_SystemDialogAct.renderedText.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_51();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_13_2(v8);
  v9 = sub_1C8BD493C();
  v1[5] = v9;
  OUTLINED_FUNCTION_13_1(v9);
  v11 = v10;
  v1[6] = v10;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_222_0(v13);
  v1[8] = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_240_2();
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v16 = *(v11 + 32);
    v17 = OUTLINED_FUNCTION_220();
    v18(v17);
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_SystemDialogAct.hasRenderedText.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_166_2(v6);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_158_2();
  v7 = sub_1C8BD493C();
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_SystemDialogAct.clearRenderedText()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_429(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879A880();
    OUTLINED_FUNCTION_264_1(v9);
  }

  v10 = sub_1C8BD493C();
  OUTLINED_FUNCTION_156_2(v10);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemPrompted.taskID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_SystemPrompted.taskID.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_43_0(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v13);
  OUTLINED_FUNCTION_123_0(v14);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}