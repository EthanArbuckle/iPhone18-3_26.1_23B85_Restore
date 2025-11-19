uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0);
  sub_1C8776350(&qword_1EC2B64B8, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87F244C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776350(&qword_1EC2B64D0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87F24CC(uint64_t a1)
{
  v2 = sub_1C8776350(&qword_1EC2B64C0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87F253C()
{
  sub_1C8776350(&qword_1EC2B64C0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C87F2704()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C87F2790()
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

void sub_1C87F2968(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.text.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 20));
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

uint64_t type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest()
{
  result = qword_1EC2B6520;
  if (!qword_1EC2B6520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C87F2A88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Embedding_EmbeddingRequest.text.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Embedding_EmbeddingRequest.text.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 20);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingRequest.clearText()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_7_4();
  sub_1C87F2D10(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v10, v11, v9);
  if (!v12)
  {
    return sub_1C87F2D80(v2, a1);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v13 = a1 + v9[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v14 = (a1 + v9[6]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[7]);
  *v15 = 0;
  v15[1] = 0;
  v16 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_76(v16, v17, v9);
  if (!v12)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  return result;
}

uint64_t sub_1C87F2D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87F2D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87F2DE4(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87F313C(a1, v5);
  return Siri_Nlu_Internal_Embedding_EmbeddingRequest.tokenChain.setter(v5);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.tokenChain.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C87F2D80(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_Embedding_EmbeddingRequest.tokenChain.modify(void *a1))(uint64_t **a1, char a2)
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 24);
  *(v3 + 10) = v11;
  sub_1C87F2D10(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v15 = v10 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = (v10 + v7[6]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v10 + v7[7]);
    *v17 = 0;
    v17[1] = 0;
    v18 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v18, v19, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    sub_1C87F2D80(v6, v10);
  }

  return sub_1C87F305C;
}

void sub_1C87F305C(uint64_t **a1, char a2)
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
    sub_1C87F313C((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C87F2D80(v4, v8 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C87F31A0(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C87F2D80(v5, v8 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C87F313C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87F31A0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.hasTokenChain.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_7_4();
  sub_1C87F2D10(v0 + *(v6 + 24), v1);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingRequest.clearTokenChain()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B6048, &unk_1C8BE6F80);
  v2 = type metadata accessor for Siri_Nlu_Internal_TokenChain();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.unknownFields.setter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_5_0();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest();
  v3 = (a1 + *(v2 + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Siri_Nlu_Internal_TokenChain();

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C87F3468()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B64E8);
  __swift_project_value_buffer(v0, qword_1EC2B64E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Embedding_EmbeddingRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B64E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_5_0();
      sub_1C87F37C8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C87F3764();
    }
  }

  return result;
}

uint64_t sub_1C87F37C8()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest() + 24);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C87F41A4(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest();
  v15 = (v0 + *(v14 + 20));
  if (!v15[1] || (v16 = *v15, result = sub_1C8BD4DDC(), !v1))
  {
    sub_1C87F2D10(v0 + *(v14 + 24), v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6048, &unk_1C8BE6F80);
    }

    else
    {
      sub_1C87F2D80(v7, v13);
      sub_1C87F41A4(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
      sub_1C8BD4E2C();
      result = sub_1C87F31A0(v13);
      if (v1)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Embedding_EmbeddingRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v35 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest();
  v23 = *(v22 + 20);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_19;
    }

    v28 = *v24 == *v26 && v25 == v27;
    if (!v28 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v27)
  {
    goto LABEL_19;
  }

  v29 = *(v22 + 24);
  v30 = *(v16 + 48);
  sub_1C87F2D10(a1 + v29, v21);
  sub_1C87F2D10(a2 + v29, &v21[v30]);
  OUTLINED_FUNCTION_76(v21, 1, v4);
  if (v28)
  {
    OUTLINED_FUNCTION_76(&v21[v30], 1, v4);
    if (v28)
    {
      sub_1C8778ED8(v21, &qword_1EC2B6048, &unk_1C8BE6F80);
LABEL_22:
      sub_1C8BD49FC();
      sub_1C87F41A4(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      OUTLINED_FUNCTION_5_0();
      v32 = sub_1C8BD517C();
      return v32 & 1;
    }

    goto LABEL_18;
  }

  sub_1C87F2D10(v21, v15);
  OUTLINED_FUNCTION_76(&v21[v30], 1, v4);
  if (v31)
  {
    sub_1C87F31A0(v15);
LABEL_18:
    sub_1C8778ED8(v21, &qword_1EC2B6050, &qword_1C8BE6D00);
    goto LABEL_19;
  }

  sub_1C87F2D80(&v21[v30], v9);
  v34 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v15, v9);
  sub_1C87F31A0(v9);
  sub_1C87F31A0(v15);
  sub_1C8778ED8(v21, &qword_1EC2B6048, &unk_1C8BE6F80);
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_19:
  v32 = 0;
  return v32 & 1;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest();
  sub_1C87F41A4(&qword_1EC2B6500, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87F3DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87F41A4(&qword_1EC2B6530, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87F3E78(uint64_t a1)
{
  v2 = sub_1C87F41A4(&qword_1EC2B6510, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87F3EE8()
{
  sub_1C87F41A4(&qword_1EC2B6510, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);

  return sub_1C8BD4CFC();
}

void sub_1C87F40B0()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v1 <= 0x3F)
    {
      sub_1C87F414C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C87F414C()
{
  if (!qword_1EC2B4B18)
  {
    type metadata accessor for Siri_Nlu_Internal_TokenChain();
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B4B18);
    }
  }
}

uint64_t sub_1C87F41A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_4()
{

  return type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[5]);
    OUTLINED_FUNCTION_15_2(v8[6]);
    *(a1 + v8[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_3();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87F6444(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_39_1();
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.requestID.modify()
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
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
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
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.tokenisedUtterance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  OUTLINED_FUNCTION_2_6();
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v9, v8, &qword_1EC2B6538, &qword_1C8C12C80);
  v10 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = (a1 + v10[5]);
    *v11 = 0;
    v11[1] = 0;
    v12 = (a1 + v10[6]);
    *v12 = 0;
    v12[1] = 0;
    v13 = v10[7];
    v14 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_43(a1 + v13, v15, v16, v14);
    result = __swift_getEnumTagSinglePayload(v8, 1, v10);
    if (result != 1)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    return sub_1C87F97EC();
  }

  return result;
}

uint64_t sub_1C87F4708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C87F9840();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.tokenisedUtterance.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_3();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87F6444(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_39_1();
  v11 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B6538, &qword_1C8C12C80);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.tokenisedUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    OUTLINED_FUNCTION_26(v8[6]);
    v14 = v8[7];
    v15 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_43(v12 + v14, v16, v17, v15);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C87F4A00(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  OUTLINED_FUNCTION_2_6();
  v15 = *a3;
  swift_beginAccess();
  sub_1C87867A0(v4 + v15, v14, a1, a2);
  v16 = a4(0);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v16) != 1;
  sub_1C8778ED8(v14, a1, a2);
  return v17;
}

uint64_t sub_1C87F4B10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v20 = OUTLINED_FUNCTION_2();
    v19 = sub_1C87F6444(v20);
    *(v9 + v16) = v19;
  }

  v21 = a3(0);
  OUTLINED_FUNCTION_43(v15, v22, v23, v21);
  v24 = *a4;
  swift_beginAccess();
  sub_1C878656C(v15, v19 + v24, a1, a2);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
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
    OUTLINED_FUNCTION_6_5();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_3();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87F6444(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_39_1();
  v11 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B64A8, &unk_1C8BE7670);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.embeddings.modify()
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
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
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
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.getter()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20));
  v2 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1C87F500C(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.setter();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C87F6444(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

void (*Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v3[6] = *(v5 + v6);

  return sub_1C87F515C;
}

void sub_1C87F515C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_12_3();
      v14 = OUTLINED_FUNCTION_2();
      v11 = sub_1C87F6444(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
    swift_beginAccess();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(a1 + v10) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_3();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87F6444(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_39_1();
  v11 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B6038, &unk_1C8BE8850);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.turnInput.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *&v12[v14] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v8 + 20)) = 3;
    *(a1 + *(v8 + 24)) = 10;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_4();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.parser.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_3();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87F6444(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_39_1();
  v11 = type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B6540, &unk_1C8BE7A40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.parser.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_Parser(v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12[*(v8 + 20)] = 3;
    v12[*(v8 + 24)] = 10;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[5]);
    v10 = v8[6];
    v11 = type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_43(a1 + v10, v12, v13, v11);
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
    OUTLINED_FUNCTION_7_5();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_3();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87F6444(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_39_1();
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.nluRequestID.modify()
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
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v13 = v7[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_43(&v11[v13], v15, v16, v14);
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
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C87F5CD4(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1C87F9840();
    a3(v5);
    sub_1C87F9894();
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

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  if (qword_1EC2B46D0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B46D8;
}

uint64_t sub_1C87F5F54()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4698);
  __swift_project_value_buffer(v0, qword_1EC2B4698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C8BE7150;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "request_id";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "tokenised_utterance";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "embeddings";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "matching_spans";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "turn_input";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parser";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "nlu_request_id";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Itfm_ITFMParserRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4690 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4698);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C87F62F8()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C87F6338();
  qword_1EC2B46D8 = result;
  return result;
}

uint64_t sub_1C87F6338()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  v4 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  v10 = type metadata accessor for Siri_Nlu_External_Parser(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  v12 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  return v0;
}

uint64_t sub_1C87F6444(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v53 - v21;
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  v24 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  v26 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  v28 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v30 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  v54 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  v31 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  v55 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  v33 = type metadata accessor for Siri_Nlu_External_Parser(0);
  __swift_storeEnumTagSinglePayload(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  v57 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  v35 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v1 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v36, v22, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_beginAccess();
  sub_1C878656C(v22, v1 + v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  sub_1C87867A0(a1 + v37, v18, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_beginAccess();
  sub_1C878656C(v18, v1 + v25, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  swift_beginAccess();
  v39 = v56;
  sub_1C87867A0(a1 + v38, v56, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v39, v1 + v27, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v41 = *(a1 + v40);
  swift_beginAccess();
  v42 = *(v1 + v29);
  *(v1 + v29) = v41;

  v43 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  swift_beginAccess();
  v44 = v58;
  sub_1C87867A0(a1 + v43, v58, &qword_1EC2B6038, &unk_1C8BE8850);
  v45 = v54;
  swift_beginAccess();
  sub_1C878656C(v44, v1 + v45, &qword_1EC2B6038, &unk_1C8BE8850);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  swift_beginAccess();
  v47 = v59;
  sub_1C87867A0(a1 + v46, v59, &qword_1EC2B6540, &unk_1C8BE7A40);
  v48 = v55;
  swift_beginAccess();
  sub_1C878656C(v47, v1 + v48, &qword_1EC2B6540, &unk_1C8BE7A40);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  swift_beginAccess();
  v50 = v60;
  sub_1C87867A0(a1 + v49, v60, &qword_1EC2B64B0, &unk_1C8BF3F40);

  v51 = v57;
  swift_beginAccess();
  sub_1C878656C(v50, v1 + v51, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C87F6AA8()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings, &qword_1EC2B64A8, &unk_1C8BE7670);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C87F6B90()
{
  v0 = sub_1C87F6AA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C87F6444(v9);
  }

  return sub_1C87F6C84();
}

uint64_t sub_1C87F6C84()
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
        sub_1C87F6DB8();
        break;
      case 2:
        sub_1C87F6E94();
        break;
      case 3:
        sub_1C87F6F70();
        break;
      case 4:
        sub_1C87F704C();
        break;
      case 5:
        sub_1C87F7128();
        break;
      case 6:
        sub_1C87F7204();
        break;
      case 7:
        sub_1C87F72E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87F6DB8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776398(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F6E94()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8776398(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F6F70()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8776398(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F704C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776398(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C87F7128()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8776398(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F7204()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_Parser(0);
  sub_1C8776398(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F72E0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8776398(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0);
  result = sub_1C87F7428(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C87F7428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v70 = a3;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v55 - v7;
  v57 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v55[1] = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v55 - v12;
  v59 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v13 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v55[2] = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = v55 - v17;
  v60 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v18 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v63 = v55 - v22;
  v66 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v23 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v55 - v27;
  v65 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  v29 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v62 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v55 - v33;
  v35 = type metadata accessor for Siri_Nlu_External_UUID();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v37, v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_1C8778ED8(v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v38 = v68;
  }

  else
  {
    sub_1C87F97EC();
    sub_1C8776398(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v39 = v68;
    sub_1C8BD4E2C();
    v38 = v39;
    result = sub_1C87F9894();
    if (v39)
    {
      return result;
    }
  }

  v41 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  sub_1C87867A0(a1 + v41, v28, &qword_1EC2B6538, &qword_1C8C12C80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v65);
  v43 = v67;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v28, &qword_1EC2B6538, &qword_1C8C12C80);
    v44 = v66;
  }

  else
  {
    sub_1C87F97EC();
    sub_1C8776398(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    sub_1C8BD4E2C();
    result = sub_1C87F9894();
    v44 = v66;
    if (v38)
    {
      return result;
    }
  }

  v45 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  swift_beginAccess();
  v46 = a1 + v45;
  v47 = v63;
  sub_1C87867A0(v46, v63, &qword_1EC2B64A8, &unk_1C8BE7670);
  v48 = __swift_getEnumTagSinglePayload(v47, 1, v44);
  v49 = v64;
  if (v48 == 1)
  {
    sub_1C8778ED8(v47, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C87F97EC();
    sub_1C8776398(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C87F9894();
    if (v38)
    {
      return result;
    }

    v43 = v67;
  }

  v50 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  if (!*(*(a1 + v50) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776398(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v38))
  {
    v51 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
    swift_beginAccess();
    sub_1C87867A0(a1 + v51, v49, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v49, 1, v60) == 1)
    {
      sub_1C8778ED8(v49, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C87F97EC();
      sub_1C8776398(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
      sub_1C8BD4E2C();
      result = sub_1C87F9894();
      if (v38)
      {
        return result;
      }
    }

    v52 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
    swift_beginAccess();
    sub_1C87867A0(a1 + v52, v43, &qword_1EC2B6540, &unk_1C8BE7A40);
    if (__swift_getEnumTagSinglePayload(v43, 1, v59) == 1)
    {
      sub_1C8778ED8(v43, &qword_1EC2B6540, &unk_1C8BE7A40);
    }

    else
    {
      sub_1C87F97EC();
      sub_1C8776398(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser);
      sub_1C8BD4E2C();
      result = sub_1C87F9894();
      if (v38)
      {
        return result;
      }
    }

    v53 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
    swift_beginAccess();
    v54 = v56;
    sub_1C87867A0(a1 + v53, v56, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v54, 1, v57) == 1)
    {
      return sub_1C8778ED8(v54, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }

    else
    {
      sub_1C87F97EC();
      sub_1C8776398(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
      sub_1C8BD4E2C();
      return sub_1C87F9894();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Itfm_ITFMParserRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {
    v6 = *(v1 + v3);

    v7 = sub_1C87F8088(v4, v5);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776398(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C87F8088(uint64_t a1, uint64_t a2)
{
  v173 = a2;
  v145 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v141 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v5 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v141 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v142 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v152 = &v141 - v11;
  v150 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v12 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v143 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6568, &unk_1C8BE7C10);
  v14 = *(*(v149 - 8) + 64);
  MEMORY[0x1EEE9AC00](v149);
  v151 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v147 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v141 - v20;
  v155 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v21 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v148 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  v23 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v141 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v153 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v159 = &v141 - v29;
  v163 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v30 = *(*(v163 - 8) + 64);
  MEMORY[0x1EEE9AC00](v163);
  v158 = (&v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  v32 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v141 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v160 = (&v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v166 = &v141 - v38;
  v170 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  v39 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v170);
  v161 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6570, &unk_1C8C13000);
  v41 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v168);
  v171 = &v141 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v165 = &v141 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v169 = &v141 - v47;
  v48 = type metadata accessor for Siri_Nlu_External_UUID();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v167 = &v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v52 = v51 - 8;
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v141 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v172 = &v141 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v141 - v60;
  v62 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v62, v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v63 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  v64 = v173;
  swift_beginAccess();
  v65 = *(v52 + 56);
  sub_1C87867A0(v61, v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87867A0(v64 + v63, &v55[v65], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v48) == 1)
  {

    sub_1C8778ED8(v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v55[v65], 1, v48);
    v67 = a1;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v69 = &qword_1EC2B5EE8;
    v70 = &unk_1C8BE6F90;
    v71 = v55;
LABEL_21:
    sub_1C8778ED8(v71, v69, v70);
    goto LABEL_22;
  }

  v68 = v172;
  sub_1C87867A0(v55, v172, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(&v55[v65], 1, v48) == 1)
  {

    sub_1C8778ED8(v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87F9894();
    goto LABEL_6;
  }

  v72 = v167;
  sub_1C87F97EC();
  v73 = a1;

  v74 = static Siri_Nlu_External_UUID.== infix(_:_:)(v68, v72);
  sub_1C87F9894();
  sub_1C8778ED8(v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87F9894();
  v67 = v73;
  sub_1C8778ED8(v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v75 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v76 = v169;
  sub_1C87867A0(v67 + v75, v169, &qword_1EC2B6538, &qword_1C8C12C80);
  v77 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v78 = *(v168 + 48);
  v79 = v171;
  sub_1C87867A0(v76, v171, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C87867A0(v64 + v77, v79 + v78, &qword_1EC2B6538, &qword_1C8C12C80);
  v80 = v170;
  if (__swift_getEnumTagSinglePayload(v79, 1, v170) == 1)
  {
    sub_1C8778ED8(v76, &qword_1EC2B6538, &qword_1C8C12C80);
    if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v80) == 1)
    {
      sub_1C8778ED8(v79, &qword_1EC2B6538, &qword_1C8C12C80);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v81 = v165;
  sub_1C87867A0(v79, v165, &qword_1EC2B6538, &qword_1C8C12C80);
  if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v80) == 1)
  {
    sub_1C8778ED8(v76, &qword_1EC2B6538, &qword_1C8C12C80);
    sub_1C87F9894();
LABEL_13:
    v69 = &qword_1EC2B6570;
    v70 = &unk_1C8C13000;
    v71 = v79;
    goto LABEL_21;
  }

  v82 = v161;
  sub_1C87F97EC();
  static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(v81, v82, v83, v84, v85, v86, v87, v88, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
  v90 = v89;
  sub_1C87F9894();
  sub_1C8778ED8(v76, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C87F9894();
  sub_1C8778ED8(v79, &qword_1EC2B6538, &qword_1C8C12C80);
  if ((v90 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v91 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  swift_beginAccess();
  v92 = v166;
  sub_1C87867A0(v67 + v91, v166, &qword_1EC2B64A8, &unk_1C8BE7670);
  v93 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  swift_beginAccess();
  v94 = *(v162 + 48);
  v95 = v164;
  sub_1C87867A0(v92, v164, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87867A0(v64 + v93, v95 + v94, &qword_1EC2B64A8, &unk_1C8BE7670);
  v96 = v163;
  if (__swift_getEnumTagSinglePayload(v95, 1, v163) == 1)
  {
    sub_1C8778ED8(v92, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
    {
      sub_1C8778ED8(v95, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v97 = v160;
  sub_1C87867A0(v95, v160, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
  {
    sub_1C8778ED8(v166, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C87F9894();
LABEL_20:
    v69 = &qword_1EC2B64E0;
    v70 = &unk_1C8BE7880;
    v71 = v95;
    goto LABEL_21;
  }

  v99 = v158;
  sub_1C87F97EC();
  v100 = v95;
  v101 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v97, v99);
  sub_1C87F9894();
  sub_1C8778ED8(v166, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87F9894();
  sub_1C8778ED8(v100, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v101 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v102 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v103 = *(v67 + v102);
  v104 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v105 = *(v64 + v104);

  sub_1C87D27C0();
  v107 = v106;

  if ((v107 & 1) == 0)
  {
    goto LABEL_22;
  }

  v108 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  swift_beginAccess();
  v109 = v159;
  sub_1C87867A0(v67 + v108, v159, &qword_1EC2B6038, &unk_1C8BE8850);
  v110 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  swift_beginAccess();
  v111 = *(v154 + 48);
  v112 = v156;
  sub_1C87867A0(v109, v156, &qword_1EC2B6038, &unk_1C8BE8850);
  v113 = v64 + v110;
  v114 = v112;
  sub_1C87867A0(v113, v112 + v111, &qword_1EC2B6038, &unk_1C8BE8850);
  v115 = v155;
  if (__swift_getEnumTagSinglePayload(v112, 1, v155) == 1)
  {
    sub_1C8778ED8(v109, &qword_1EC2B6038, &unk_1C8BE8850);
    v116 = __swift_getEnumTagSinglePayload(v112 + v111, 1, v115);
    v117 = v157;
    if (v116 == 1)
    {
      sub_1C8778ED8(v112, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v118 = v153;
  sub_1C87867A0(v112, v153, &qword_1EC2B6038, &unk_1C8BE8850);
  v119 = __swift_getEnumTagSinglePayload(v112 + v111, 1, v115);
  v117 = v157;
  if (v119 == 1)
  {
    sub_1C8778ED8(v159, &qword_1EC2B6038, &unk_1C8BE8850);
    sub_1C87F9894();
LABEL_32:
    v69 = &qword_1EC2B6040;
    v70 = &unk_1C8BE6CF0;
    v71 = v112;
    goto LABEL_21;
  }

  v120 = v148;
  sub_1C87F97EC();
  if (*(v118 + *(v115 + 20)) != *(v120 + *(v115 + 20)))
  {

    sub_1C88AD618();
    v122 = v121;

    if ((v122 & 1) == 0)
    {
      sub_1C87F9894();
      sub_1C8778ED8(v159, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C87F9894();
      v71 = v114;
      v69 = &qword_1EC2B6038;
      v70 = &unk_1C8BE8850;
      goto LABEL_21;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776398(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v123 = sub_1C8BD517C();
  sub_1C87F9894();
  sub_1C8778ED8(v159, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C87F9894();
  sub_1C8778ED8(v114, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v123 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_36:
  v124 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  swift_beginAccess();
  sub_1C87867A0(v67 + v124, v117, &qword_1EC2B6540, &unk_1C8BE7A40);
  v125 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  swift_beginAccess();
  v126 = *(v149 + 48);
  v127 = v151;
  sub_1C87867A0(v117, v151, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C87867A0(v64 + v125, v127 + v126, &qword_1EC2B6540, &unk_1C8BE7A40);
  v128 = v150;
  if (__swift_getEnumTagSinglePayload(v127, 1, v150) != 1)
  {
    sub_1C87867A0(v127, v147, &qword_1EC2B6540, &unk_1C8BE7A40);
    v131 = __swift_getEnumTagSinglePayload(v127 + v126, 1, v128);
    v130 = v152;
    if (v131 == 1)
    {
      sub_1C8778ED8(v117, &qword_1EC2B6540, &unk_1C8BE7A40);
      sub_1C87F9894();
      goto LABEL_41;
    }

    sub_1C87F97EC();
    v132 = static Siri_Nlu_External_Parser.== infix(_:_:)();
    sub_1C87F9894();
    sub_1C8778ED8(v117, &qword_1EC2B6540, &unk_1C8BE7A40);
    sub_1C87F9894();
    sub_1C8778ED8(v127, &qword_1EC2B6540, &unk_1C8BE7A40);
    if (v132)
    {
      goto LABEL_43;
    }

LABEL_22:

    return 0;
  }

  sub_1C8778ED8(v117, &qword_1EC2B6540, &unk_1C8BE7A40);
  v129 = __swift_getEnumTagSinglePayload(v127 + v126, 1, v128);
  v130 = v152;
  if (v129 != 1)
  {
LABEL_41:
    v69 = &qword_1EC2B6568;
    v70 = &unk_1C8BE7C10;
    v71 = v127;
    goto LABEL_21;
  }

  sub_1C8778ED8(v127, &qword_1EC2B6540, &unk_1C8BE7A40);
LABEL_43:
  v133 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(v67 + v133, v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v134 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  swift_beginAccess();
  v135 = *(v144 + 48);
  v136 = v146;
  sub_1C87867A0(v130, v146, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87867A0(v64 + v134, v136 + v135, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v137 = v145;
  if (__swift_getEnumTagSinglePayload(v136, 1, v145) == 1)
  {

    sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v136 + v135, 1, v137) == 1)
    {
      sub_1C8778ED8(v136, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_49;
  }

  v138 = v142;
  sub_1C87867A0(v136, v142, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v136 + v135, 1, v137) == 1)
  {

    sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C87F9894();
LABEL_49:
    sub_1C8778ED8(v136, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v139 = v141;
  sub_1C87F97EC();
  v140 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v138, v139);

  sub_1C87F9894();
  sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87F9894();
  sub_1C8778ED8(v136, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v140 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0);
  sub_1C8776398(&qword_1EC2B6548, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87F967C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776398(&qword_1EC2B6560, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87F96FC(uint64_t a1)
{
  v2 = sub_1C8776398(&qword_1EC2B6550, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87F976C()
{
  sub_1C8776398(&qword_1EC2B6550, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C87F97EC()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C87F9840()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C87F9894()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C87F9A30()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C87F9ABC()
{
  sub_1C87F9D28(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_1C87F9D28(319, &qword_1EC2B45C8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_1C87F9D28(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_1C87F9D28(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_1C87F9D28(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_1C87F9D28(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1C87F9D28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v8 = OUTLINED_FUNCTION_13(*(matched + 20));
  sub_1C8786744(v8, v9, &qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_65(v1);
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v12 = a1 + v10[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = (a1 + v10[6]);
    *v13 = 0;
    v13[1] = 0;
    v14 = (a1 + v10[7]);
    *v14 = 0;
    v14[1] = 0;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    return sub_1C8797750(v1, a1);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest()
{
  result = qword_1EC2B65B0;
  if (!qword_1EC2B65B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.tokenChain.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_1_4();
  sub_1C8797750(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.tokenChain.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_22_2(v8) + 20);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B6048, &unk_1C8BE6F80);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    *v7 = MEMORY[0x1E69E7CC0];
    v15 = v7 + v5[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = (v7 + v5[6]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v7 + v5[7]);
    *v17 = 0;
    v17[1] = 0;
    v18 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v18, v19, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    sub_1C8797750(v4, v7);
  }

  return sub_1C87FA0D8;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hasTokenChain.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v8 = OUTLINED_FUNCTION_13(*(matched + 20));
  sub_1C8786744(v8, v9, &qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_10(v10);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearTokenChain()()
{
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  sub_1C8778ED8(v0 + *(matched + 20), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.nlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  sub_1C8786744(v1 + *(matched + 24), v8, &qword_1EC2B6000, &qword_1C8BF5050);
  v10 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_65(v8);
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v12;
    a1[2] = v12;
    a1[3] = v12;
    v13 = a1 + *(v10 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v10 + 36);
    type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_65(v8);
    if (!v11)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_7();
    return sub_1C8797750(v8, a1);
  }

  return result;
}

uint64_t sub_1C87FA314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1C87FACAC(a1, &v16 - v13);
  return a7(v14);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.nlContext.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 24);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_2_7();
  sub_1C8797750(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.nlContext.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v1 + 8) = v5;
  v6 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  *(v1 + 16) = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = *(OUTLINED_FUNCTION_22_2(v9) + 24);
  *(v1 + 40) = v10;
  sub_1C8786744(v0 + v10, v5, &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_76(v5, 1, v6);
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v12;
    v8[2] = v12;
    v8[3] = v12;
    v13 = v8 + *(v6 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v6 + 36);
    type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_76(v5, 1, v6);
    if (!v11)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_7();
    sub_1C8797750(v5, v8);
  }

  return sub_1C87FA5AC;
}

void sub_1C87FA5D4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    sub_1C87FACAC((*a1)[4], v8);
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C8797750(v8, v12 + v7);
    OUTLINED_FUNCTION_26_1();
    sub_1C87FAD04();
  }

  else
  {
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C8797750(v9, v12 + v7);
    OUTLINED_FUNCTION_26_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hasNlContext.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v8 = OUTLINED_FUNCTION_13(*(matched + 24));
  sub_1C8786744(v8, v9, &qword_1EC2B6000, &qword_1C8BF5050);
  v10 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_10(v10);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearNlContext()()
{
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  sub_1C8778ED8(v0 + *(matched + 24), &qword_1EC2B6000, &qword_1C8BF5050);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87FA804(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 28);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v8 = OUTLINED_FUNCTION_13(*(matched + 32));
  sub_1C8786744(v8, v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65(v1);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v10[5]);
    OUTLINED_FUNCTION_313(a1 + v10[6]);
    *(a1 + v10[7]) = 6;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
    return sub_1C8797750(v1, a1);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.asrID.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 32);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_3_2();
  sub_1C8797750(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.asrID.modify())(uint64_t **a1, char a2)
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
  v9 = *(OUTLINED_FUNCTION_22_2(v8) + 32);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(v7 + v5[5]);
    OUTLINED_FUNCTION_313(v7 + v5[6]);
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
    OUTLINED_FUNCTION_3_2();
    sub_1C8797750(v4, v7);
  }

  return sub_1C87FAC84;
}

uint64_t sub_1C87FACAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C87FAD04()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v8 = OUTLINED_FUNCTION_13(*(matched + 32));
  sub_1C8786744(v8, v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_10(v10);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearAsrID()()
{
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  sub_1C8778ED8(v0 + *(matched + 32), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v3 = matched[5];
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = matched[6];
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = (a1 + matched[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = matched[8];
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1C87FAFDC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6578);
  __swift_project_value_buffer(v0, qword_1EC2B6578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token_chain";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nl_context";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "utterance";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "asrId";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4CC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B6578);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.decodeMessage<A>(decoder:)()
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
        sub_1C87FB384();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C87FB438();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87FB4EC();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C87FB550();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87FB384()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 20);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C87A4AE0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87FB438()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 24);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C87A4AE0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87FB550()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest() + 32);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87A4AE0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v49 = v9;
  v50 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_21(v50);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v48 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v52 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  v21 = OUTLINED_FUNCTION_21(v52);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v51 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_74();
  v30 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v31 = OUTLINED_FUNCTION_21(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  v36 = v35 - v34;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v38 = OUTLINED_FUNCTION_13(matched[5]);
  sub_1C8786744(v38, v39, &qword_1EC2B6048, &unk_1C8BE6F80);
  v40 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v40, v41, v30) == 1)
  {
    sub_1C8778ED8(v4, &qword_1EC2B6048, &unk_1C8BE6F80);
    v42 = v53;
  }

  else
  {
    sub_1C8797750(v4, v36);
    sub_1C87A4AE0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    v43 = v53;
    sub_1C8BD4E2C();
    v42 = v43;
    result = sub_1C87FAD04();
    if (v43)
    {
      return result;
    }
  }

  sub_1C8786744(v3 + matched[6], v20, &qword_1EC2B6000, &qword_1C8BF5050);
  if (__swift_getEnumTagSinglePayload(v20, 1, v52) == 1)
  {
    sub_1C8778ED8(v20, &qword_1EC2B6000, &qword_1C8BF5050);
  }

  else
  {
    sub_1C8797750(v20, v51);
    sub_1C87A4AE0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext);
    sub_1C8BD4E2C();
    result = sub_1C87FAD04();
    if (v42)
    {
      return result;
    }
  }

  v45 = (v3 + matched[7]);
  if (!v45[1] || (v46 = *v45, result = sub_1C8BD4DDC(), !v42))
  {
    v47 = v49;
    sub_1C8786744(v3 + matched[8], v49, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v47, 1, v50) == 1)
    {
      sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C8797750(v47, v48);
      sub_1C87A4AE0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
      sub_1C8BD4E2C();
      result = sub_1C87FAD04();
      if (v42)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v90 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_21(v90);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v87 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_81();
  v88 = v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v89);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  v91 = v16;
  v96 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  v17 = OUTLINED_FUNCTION_21(v96);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v92 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  v93 = v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6008, &unk_1C8BE6CC0);
  OUTLINED_FUNCTION_21(v94);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v87 - v30;
  v32 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v33 = OUTLINED_FUNCTION_21(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_33();
  v38 = (v37 - v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v87 - v43);
  v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00) - 8);
  v46 = *(*v45 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v87 - v48;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  v50 = *(matched + 20);
  v51 = v45[14];
  v97 = a1;
  sub_1C8786744(a1 + v50, v49, &qword_1EC2B6048, &unk_1C8BE6F80);
  v52 = v98 + v50;
  v53 = v98;
  sub_1C8786744(v52, &v49[v51], &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_76(v49, 1, v32);
  if (v54)
  {
    OUTLINED_FUNCTION_76(&v49[v51], 1, v32);
    if (v54)
    {
      sub_1C8778ED8(v49, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_11;
    }

LABEL_9:
    v55 = &qword_1EC2B6050;
    v56 = &qword_1C8BE6D00;
    v57 = v49;
LABEL_20:
    sub_1C8778ED8(v57, v55, v56);
    goto LABEL_21;
  }

  sub_1C8786744(v49, v44, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_76(&v49[v51], 1, v32);
  if (v54)
  {
    sub_1C87FAD04();
    goto LABEL_9;
  }

  sub_1C8797750(&v49[v51], v38);
  v58 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v44, v38);
  OUTLINED_FUNCTION_12();
  sub_1C87FAD04();
  sub_1C87FAD04();
  sub_1C8778ED8(v49, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v58 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v59 = matched;
  v60 = *(matched + 24);
  v61 = *(v94 + 48);
  v62 = v97;
  OUTLINED_FUNCTION_27(v97 + v60, v31);
  OUTLINED_FUNCTION_27(v53 + v60, &v31[v61]);
  v63 = v96;
  OUTLINED_FUNCTION_76(v31, 1, v96);
  if (v54)
  {
    OUTLINED_FUNCTION_76(&v31[v61], 1, v63);
    if (v54)
    {
      sub_1C8778ED8(v31, &qword_1EC2B6000, &qword_1C8BF5050);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_1C8786744(v31, v93, &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_76(&v31[v61], 1, v63);
  if (v64)
  {
    sub_1C87FAD04();
LABEL_19:
    v55 = &qword_1EC2B6008;
    v56 = &unk_1C8BE6CC0;
    v57 = v31;
    goto LABEL_20;
  }

  sub_1C8797750(&v31[v61], v92);
  static Siri_Nlu_External_NLContext.== infix(_:_:)();
  v68 = v67;
  sub_1C87FAD04();
  sub_1C87FAD04();
  sub_1C8778ED8(v31, &qword_1EC2B6000, &qword_1C8BF5050);
  if ((v68 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v69 = *(v59 + 28);
  v70 = (v62 + v69);
  v71 = *(v62 + v69 + 8);
  v72 = (v53 + v69);
  v73 = v72[1];
  if (v71)
  {
    if (!v73)
    {
      goto LABEL_21;
    }

    v74 = *v70 == *v72 && v71 == v73;
    if (!v74 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v73)
  {
    goto LABEL_21;
  }

  v75 = *(v59 + 32);
  v76 = *(v89 + 48);
  v77 = v91;
  OUTLINED_FUNCTION_27(v62 + v75, v91);
  v78 = v53 + v75;
  v79 = v77;
  OUTLINED_FUNCTION_27(v78, v77 + v76);
  v80 = v90;
  OUTLINED_FUNCTION_76(v77, 1, v90);
  if (v54)
  {
    OUTLINED_FUNCTION_76(v77 + v76, 1, v80);
    if (v54)
    {
      sub_1C8778ED8(v77, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_43:
      sub_1C8BD49FC();
      sub_1C87A4AE0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      v65 = sub_1C8BD517C();
      return v65 & 1;
    }

    goto LABEL_41;
  }

  v81 = v77;
  v82 = v88;
  sub_1C8786744(v81, v88, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_76(v79 + v76, 1, v80);
  if (v83)
  {
    sub_1C87FAD04();
LABEL_41:
    v55 = &qword_1EC2B5EE8;
    v56 = &unk_1C8BE6F90;
    v57 = v79;
    goto LABEL_20;
  }

  v84 = v79 + v76;
  v85 = v87;
  sub_1C8797750(v84, v87);
  v86 = static Siri_Nlu_External_UUID.== infix(_:_:)(v82, v85);
  sub_1C87FAD04();
  sub_1C87FAD04();
  sub_1C8778ED8(v79, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v86)
  {
    goto LABEL_43;
  }

LABEL_21:
  v65 = 0;
  return v65 & 1;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
  sub_1C87A4AE0(&qword_1EC2B6590, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87FC348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87A4AE0(&qword_1EC2B65C0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87FC3C8(uint64_t a1)
{
  v2 = sub_1C87A4AE0(&qword_1EC2B65A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87FC438()
{
  sub_1C87A4AE0(&qword_1EC2B65A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);

  return sub_1C8BD4CFC();
}

void sub_1C87FC600()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87FC720(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v1 <= 0x3F)
    {
      sub_1C87FC720(319, qword_1EDACCC28, type metadata accessor for Siri_Nlu_External_NLContext);
      if (v2 <= 0x3F)
      {
        sub_1C87E8A54();
        if (v3 <= 0x3F)
        {
          sub_1C87FC720(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C87FC720(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_7_6();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 20));
  sub_1C8786744(v8, v9, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  v10 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v12 = a1 + *(v10 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = (a1 + *(v10 + 24));
    *v13 = 0;
    v13[1] = 0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    v14 = OUTLINED_FUNCTION_121();
    return sub_1C87FCE30(v14, v15);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse()
{
  result = qword_1EC2B6628;
  if (!qword_1EC2B6628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenChain.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse() + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_1_5();
  sub_1C87FCE30(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenChain.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse() + 20);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_13(v11);
  sub_1C8786744(v12, v13, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  v14 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v17 = v10 + *(v7 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = (v10 + *(v7 + 24));
    *v18 = 0;
    v18[1] = 0;
    v19 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v19, v20, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    sub_1C87FCE30(v6, v10);
  }

  return sub_1C87FCAAC;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.hasSubwordTokenChain.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_6();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 20));
  sub_1C8786744(v5, v6, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &qword_1C8BE7DD0);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.clearSubwordTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse();
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B65E0, &qword_1C8BE7DD0);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenEmbedding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_7_6();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 24));
  sub_1C8786744(v8, v9, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  v10 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = (a1 + v10[5]);
    *v12 = 0;
    v12[1] = 0;
    v13 = v10[6];
    v14 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    v18 = v10[7];
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
    v22 = a1 + v10[8];
    *v22 = 0;
    *(v22 + 8) = 1;
    *(a1 + v10[9]) = 2;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B65E8, &qword_1C8BE7DD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
    v23 = OUTLINED_FUNCTION_121();
    return sub_1C87FCE30(v23, v24);
  }

  return result;
}

uint64_t sub_1C87FCD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1C87FD188(a1, &v16 - v13);
  return a7(v14);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenEmbedding.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse() + 24);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_2_8();
  sub_1C87FCE30(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C87FCE30(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenEmbedding.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse() + 24);
  *(v3 + 10) = v11;
  sub_1C8786744(v1 + v11, v6, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_76(v6, 1, v7);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = &v10[v7[5]];
    *v13 = 0;
    v13[1] = 0;
    v14 = v7[6];
    v15 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = v7[7];
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
    v23 = &v10[v7[8]];
    *v23 = 0;
    v23[8] = 1;
    v10[v7[9]] = 2;
    OUTLINED_FUNCTION_76(v6, 1, v7);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B65E8, &qword_1C8BE7DD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
    sub_1C87FCE30(v6, v10);
  }

  return sub_1C87FD054;
}

void sub_1C87FD07C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    sub_1C87FD188((*a1)[4], v8);
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C87FCE30(v8, v12 + v7);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    sub_1C87FD1E0();
  }

  else
  {
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C87FCE30(v9, v12 + v7);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1C87FD188(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C87FD1E0()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.hasSubwordTokenEmbedding.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_6();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 24));
  sub_1C8786744(v5, v6, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &qword_1C8BE7DD8);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.clearSubwordTokenEmbedding()()
{
  v1 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse();
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B65E8, &qword_1C8BE7DD8);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_5_0();

  return v4(v3);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse();
  v1 = *(v0 + 20);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C87FD4AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B65C8);
  __swift_project_value_buffer(v0, qword_1EC2B65C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "subword_token_chain";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subword_token_embedding";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B65C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_5_0();
      sub_1C87FD854();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C87FD7A0();
    }
  }

  return result;
}

uint64_t sub_1C87FD7A0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse() + 20);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  sub_1C87FE5FC(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87FD854()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse() + 24);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C87FE5FC(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v35 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v11);
  v12 = OUTLINED_FUNCTION_21(v35);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v34 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v23 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v29 = v28 - v27;
  v30 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse();
  v31 = *(v30 + 20);
  v36 = v6;
  sub_1C8786744(v6 + v31, v22, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1C8778ED8(v22, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  }

  else
  {
    sub_1C87FCE30(v22, v29);
    sub_1C87FE5FC(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
    sub_1C8BD4E2C();
    result = sub_1C87FD1E0();
    if (v4)
    {
      return result;
    }
  }

  sub_1C8786744(v36 + *(v30 + 24), v5, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v35) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  }

  else
  {
    sub_1C87FCE30(v5, v34);
    sub_1C87FE5FC(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
    sub_1C8BD4E2C();
    result = sub_1C87FD1E0();
    if (v4)
    {
      return result;
    }
  }

  return sub_1C8BD49DC();
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v5 = OUTLINED_FUNCTION_21(v55);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v51 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v50 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65F8, &qword_1C8BE7DE0);
  OUTLINED_FUNCTION_21(v54);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v50 - v18;
  v19 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v50 - v30);
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6600, &qword_1C8BE7DE8) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17_4();
  v53 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse();
  v35 = *(v53 + 20);
  v36 = v32[14];
  v57 = a1;
  sub_1C8786744(a1 + v35, v2, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  sub_1C8786744(a2 + v35, v2 + v36, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_24(v2);
  if (v37)
  {
    OUTLINED_FUNCTION_24(v2 + v36);
    if (v37)
    {
      sub_1C8778ED8(v2, &qword_1EC2B65E0, &qword_1C8BE7DD0);
      goto LABEL_11;
    }

LABEL_9:
    v38 = &qword_1EC2B6600;
    v39 = &qword_1C8BE7DE8;
    v40 = v2;
LABEL_20:
    sub_1C8778ED8(v40, v38, v39);
    goto LABEL_21;
  }

  sub_1C8786744(v2, v31, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_24(v2 + v36);
  if (v37)
  {
    sub_1C87FD1E0();
    goto LABEL_9;
  }

  sub_1C87FCE30(v2 + v36, v25);
  v41 = static Siri_Nlu_Internal_SubwordTokenChain.== infix(_:_:)(v31, v25);
  sub_1C87FD1E0();
  OUTLINED_FUNCTION_5_0();
  sub_1C87FD1E0();
  sub_1C8778ED8(v2, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v42 = *(v53 + 24);
  v43 = *(v54 + 48);
  v44 = v56;
  sub_1C8786744(v57 + v42, v56, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  sub_1C8786744(a2 + v42, v44 + v43, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_76(v44, 1, v55);
  if (v37)
  {
    OUTLINED_FUNCTION_24(v44 + v43);
    if (v37)
    {
      sub_1C8778ED8(v44, &qword_1EC2B65E8, &qword_1C8BE7DD8);
LABEL_24:
      sub_1C8BD49FC();
      sub_1C87FE5FC(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      v46 = sub_1C8BD517C();
      return v46 & 1;
    }

    goto LABEL_19;
  }

  sub_1C8786744(v44, v52, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_24(v44 + v43);
  if (v45)
  {
    sub_1C87FD1E0();
LABEL_19:
    v38 = &qword_1EC2B65F8;
    v39 = &qword_1C8BE7DE0;
    v40 = v44;
    goto LABEL_20;
  }

  sub_1C87FCE30(v44 + v43, v51);
  static Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.== infix(_:_:)();
  v49 = v48;
  sub_1C87FD1E0();
  sub_1C87FD1E0();
  sub_1C8778ED8(v44, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  if (v49)
  {
    goto LABEL_24;
  }

LABEL_21:
  v46 = 0;
  return v46 & 1;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse();
  sub_1C87FE5FC(&qword_1EC2B6608, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87FE21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87FE5FC(&qword_1EC2B6648, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87FE29C(uint64_t a1)
{
  v2 = sub_1C87FE5FC(&qword_1EC2B6618, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87FE30C()
{
  sub_1C87FE5FC(&qword_1EC2B6618, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);

  return sub_1C8BD4CFC();
}

void sub_1C87FE4D4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87FE5A8(319, &qword_1EC2B6638, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
    if (v1 <= 0x3F)
    {
      sub_1C87FE5A8(319, &qword_1EC2B6640, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C87FE5A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1C87FE5FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_6()
{

  return type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.osRelease.getter()
{
  OUTLINED_FUNCTION_19_3();
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

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.osRelease.setter(int a1)
{
  result = OUTLINED_FUNCTION_19_3();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.osRelease.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_19_3();
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_4(v3);
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.ncvNumber.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_4(*(v0 + 24));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.ncvNumber.setter(int a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  result = OUTLINED_FUNCTION_25_0(v2);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.ncvNumber.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0) + 24);
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_4(v3);
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.clearNcvNumber()()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_25_0(v0);
  OUTLINED_FUNCTION_16_3(v1);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.patchNumber.getter()
{
  OUTLINED_FUNCTION_28_3();
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

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.patchNumber.setter(int a1)
{
  result = OUTLINED_FUNCTION_28_3();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.patchNumber.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_28_3();
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_4(v3);
  OUTLINED_FUNCTION_26_2();
  return sub_1C87FE8F0;
}

uint64_t sub_1C87FE8F0(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.getter()
{
  OUTLINED_FUNCTION_29_0();
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

uint64_t sub_1C87FE994(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_0();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.modify(void *a1))(uint64_t **, char)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_29_0();
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

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.clearBoltTaskID()()
{
  OUTLINED_FUNCTION_29_0();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

void Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_16_3(a1 + v2);
  OUTLINED_FUNCTION_24_2(*(v3 + 24));
  *(v4 + 4) = v5;
  OUTLINED_FUNCTION_24_2(*(v6 + 28));
  *(v7 + 4) = v8;
  v10 = (a1 + *(v9 + 32));
  *v10 = 0;
  v10[1] = 0;
}

uint64_t sub_1C87FEBAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87FEC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.version.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  OUTLINED_FUNCTION_34_1(v11);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v7[5]);
    OUTLINED_FUNCTION_7_0(v7[6]);
    OUTLINED_FUNCTION_7_0(v7[7]);
    v13 = &v10[v7[8]];
    *v13 = 0;
    *(v13 + 1) = 0;
    OUTLINED_FUNCTION_72(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6698, &qword_1C8BE7FB0);
    }
  }

  else
  {
    sub_1C87FEC1C(v6, v10);
  }

  return sub_1C87FEDF0;
}

uint64_t sub_1C87FEDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87FEE58(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  OUTLINED_FUNCTION_25_0(v0);
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

uint64_t sub_1C87FEF34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.modify(void *a1))(uint64_t **, char)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0) + 24);
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

  return sub_1C87E9980;
}

BOOL Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.hasModelType.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  OUTLINED_FUNCTION_25_0(v0);
  return *(v1 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.clearModelType()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  v3 = *(v2 + 20);
  OUTLINED_FUNCTION_35_0();
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v6 = (a1 + *(v2 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C87FF158@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = a1(0);
  sub_1C87FEBAC(v2 + *(v11 + 20), v10);
  v12 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    return sub_1C87FEC1C(v10, a2);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_24_2(v12[5]);
  *(v13 + 4) = 1;
  OUTLINED_FUNCTION_24_2(v12[6]);
  *(v14 + 4) = 1;
  OUTLINED_FUNCTION_24_2(v12[7]);
  *(v15 + 4) = 1;
  v16 = (a2 + v12[8]);
  *v16 = 0;
  v16[1] = 0;
  result = __swift_getEnumTagSinglePayload(v10, 1, v12);
  if (result != 1)
  {
    return sub_1C8778ED8(v10, &qword_1EC2B6698, &qword_1C8BE7FB0);
  }

  return result;
}

uint64_t sub_1C87FF2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v8 = OUTLINED_FUNCTION_80(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v13 = v12 - v11;
  sub_1C87FEDF4(a1, v12 - v11);
  return a5(v13);
}

uint64_t sub_1C87FF344(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1C8778ED8(v2 + v4, &qword_1EC2B6698, &qword_1C8BE7FB0);
  sub_1C87FEC1C(a1, v2 + v4);
  OUTLINED_FUNCTION_35_0();

  return __swift_storeEnumTagSinglePayload(v2 + v4, 0, 1, v5);
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.version.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(0);
  OUTLINED_FUNCTION_34_1(v11);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v7[5]);
    OUTLINED_FUNCTION_7_0(v7[6]);
    OUTLINED_FUNCTION_7_0(v7[7]);
    v13 = &v10[v7[8]];
    *v13 = 0;
    *(v13 + 1) = 0;
    OUTLINED_FUNCTION_72(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6698, &qword_1C8BE7FB0);
    }
  }

  else
  {
    sub_1C87FEC1C(v6, v10);
  }

  return sub_1C8801934;
}

void sub_1C87FF518(uint64_t **a1, char a2)
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
    sub_1C87FEDF4((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
    sub_1C87FEC1C(v4, v8 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C87FEE58(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
    sub_1C87FEC1C(v5, v8 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL sub_1C87FF610(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_45();
  v9 = a1(v8);
  sub_1C87FEBAC(v1 + *(v9 + 20), v2);
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v11 = __swift_getEnumTagSinglePayload(v2, 1, v10) != 1;
  sub_1C8778ED8(v2, &qword_1EC2B6698, &qword_1C8BE7FB0);
  return v11;
}

uint64_t sub_1C87FF6EC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_35_0();

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
}

uint64_t _s12SiriNLUTypes0A47_Nlu_Internal_SnlpIntermediate_ITFMAssetVersionV13unknownFields0D13SwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t _s12SiriNLUTypes0A47_Nlu_Internal_SnlpIntermediate_ITFMAssetVersionV13unknownFields0D13SwiftProtobuf14UnknownStorageVvs_0()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_5_0();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(0) + 20);
  OUTLINED_FUNCTION_35_0();

  return __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
}

uint64_t sub_1C87FF88C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6650);
  __swift_project_value_buffer(v0, qword_1EC2B6650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "os_release";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ncv_number";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch_number";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bolt_task_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.decodeMessage<A>(decoder:)()
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
        sub_1C87FFB94();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C87FFBF8();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87FFC5C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C87FFCC0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v4 = (v2 + v3[5]);
  if ((v4[1] & 1) != 0 || (v5 = *v4, result = OUTLINED_FUNCTION_30(), (v0 = v1) == 0))
  {
    v7 = (v2 + v3[6]);
    if ((v7[1] & 1) != 0 || (v8 = *v7, result = OUTLINED_FUNCTION_30(), (v0 = v1) == 0))
    {
      v9 = (v2 + v3[7]);
      if ((v9[1] & 1) != 0 || (v10 = *v9, result = OUTLINED_FUNCTION_30(), (v0 = v1) == 0))
      {
        v11 = (v2 + v3[8]);
        if (!v11[1])
        {
          return OUTLINED_FUNCTION_15();
        }

        v12 = *v11;
        result = sub_1C8BD4DDC();
        if (!v0)
        {
          return OUTLINED_FUNCTION_15();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_17();
  v1 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(v0);
  OUTLINED_FUNCTION_11(*(v1 + 20));
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v5)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v2 + 24));
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v9)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v6 + 28));
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v13)
    {
      return 0;
    }
  }

  v14 = *(v10 + 32);
  OUTLINED_FUNCTION_1();
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v19 = *v17 == *v18 && v15 == v16;
    if (!v19 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_20:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_9();
    sub_1C87763E0(v20, v21);
    OUTLINED_FUNCTION_5_0();
    return sub_1C8BD517C() & 1;
  }

  if (!v16)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1C87FFFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87763E0(&qword_1EC2B6750, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C880002C(uint64_t a1)
{
  v2 = sub_1C87763E0(&qword_1EC2B66A8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C880009C()
{
  sub_1C87763E0(&qword_1EC2B66A8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8800128()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6668);
  __swift_project_value_buffer(v0, qword_1EC2B6668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
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

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.decodeMessage<A>(decoder:)()
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
      sub_1C8800398();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8800C24(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v14 = v13 - v12;
  v15 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  sub_1C87FEBAC(v1 + *(v15 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2B6698, &qword_1C8BE7FB0);
  }

  else
  {
    sub_1C87FEC1C(v7, v14);
    OUTLINED_FUNCTION_3_3();
    sub_1C87763E0(v16, v17);
    sub_1C8BD4E2C();
    result = sub_1C87FEE58(v14);
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

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B66B0, &qword_1C8BE7FB8) - 8);
  v20 = *(*v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_45();
  v23 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(v22);
  v24 = *(v23 + 20);
  v25 = v19[14];
  sub_1C87FEBAC(v2 + v24, v3);
  sub_1C87FEBAC(a2 + v24, v3 + v25);
  OUTLINED_FUNCTION_72(v3);
  if (!v26)
  {
    sub_1C87FEBAC(v3, v18);
    OUTLINED_FUNCTION_72(v3 + v25);
    if (!v26)
    {
      sub_1C87FEC1C(v3 + v25, v12);
      v29 = static Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.== infix(_:_:)();
      sub_1C87FEE58(v12);
      sub_1C87FEE58(v18);
      sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87FEE58(v18);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B66B0, &qword_1C8BE7FB8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_72(v3 + v25);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
LABEL_13:
  v30 = *(v23 + 24);
  OUTLINED_FUNCTION_1();
  if (v31)
  {
    if (v32)
    {
      v35 = *v33 == *v34 && v31 == v32;
      if (v35 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v32)
  {
LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_9();
    sub_1C87763E0(v36, v37);
    OUTLINED_FUNCTION_5_0();
    v27 = sub_1C8BD517C();
    return v27 & 1;
  }

LABEL_10:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C88008B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87763E0(&qword_1EC2B6748, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8800934(uint64_t a1)
{
  v2 = sub_1C87763E0(&qword_1EC2B66E0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88009A4()
{
  sub_1C87763E0(&qword_1EC2B66E0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8800A30()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6680);
  __swift_project_value_buffer(v0, qword_1EC2B6680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.decodeMessage<A>(decoder:)()
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
      sub_1C8800C24(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1C8800C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_3_3();
  sub_1C87763E0(v6, v7);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v14 = v13 - v12;
  v15 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(0);
  sub_1C87FEBAC(v1 + *(v15 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2B6698, &qword_1C8BE7FB0);
  }

  else
  {
    sub_1C87FEC1C(v7, v14);
    OUTLINED_FUNCTION_3_3();
    sub_1C87763E0(v16, v17);
    sub_1C8BD4E2C();
    result = sub_1C87FEE58(v14);
    if (v0)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_15();
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B66B0, &qword_1C8BE7FB8) - 8);
  v20 = *(*v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_45();
  v23 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(v22) + 20);
  v24 = v19[14];
  sub_1C87FEBAC(v2 + v23, v3);
  sub_1C87FEBAC(a2 + v23, v3 + v24);
  OUTLINED_FUNCTION_72(v3);
  if (v25)
  {
    OUTLINED_FUNCTION_72(v3 + v24);
    if (v25)
    {
      sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_9();
      sub_1C87763E0(v28, v29);
      OUTLINED_FUNCTION_5_0();
      v26 = sub_1C8BD517C();
      return v26 & 1;
    }

    goto LABEL_9;
  }

  sub_1C87FEBAC(v3, v18);
  OUTLINED_FUNCTION_72(v3 + v24);
  if (v25)
  {
    sub_1C87FEE58(v18);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B66B0, &qword_1C8BE7FB8);
    goto LABEL_10;
  }

  sub_1C87FEC1C(v3 + v24, v12);
  v27 = static Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.== infix(_:_:)();
  sub_1C87FEE58(v12);
  sub_1C87FEE58(v18);
  sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C88010B0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C87763E0(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C880118C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87763E0(&qword_1EC2B6740, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C880120C(uint64_t a1)
{
  v2 = sub_1C87763E0(&qword_1EC2B66F8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C880127C()
{
  sub_1C87763E0(&qword_1EC2B66F8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion);

  return sub_1C8BD4CFC();
}

void sub_1C8801684()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD380);
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

void sub_1C8801770()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C880181C();
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

void sub_1C880181C()
{
  if (!qword_1EC2B6728)
  {
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(255);
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B6728);
    }
  }
}

void sub_1C880189C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C880181C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.plans.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.mappings.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0) + 24);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(v2) + 24);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(v0) + 24);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0) + 24);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.getter()
{
  OUTLINED_FUNCTION_3_4();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C8801BE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_4();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.modify(void *a1))(uint64_t **, char)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_3_4();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.clearVariable()()
{
  OUTLINED_FUNCTION_3_4();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.getter()
{
  OUTLINED_FUNCTION_4_5();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C8801D84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.modify(void *a1))(uint64_t **, char)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_4_5();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.clearEventID()()
{
  OUTLINED_FUNCTION_4_5();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_3_4();
  v4 = (a1 + v3);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + *(result + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C8802014()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6758);
  __swift_project_value_buffer(v0, qword_1EC2B6758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "plans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mappings";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.decodeMessage<A>(decoder:)()
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
      sub_1C8802270();
    }

    else if (result == 1)
    {
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t sub_1C8802270()
{
  type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0);
  sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_1C8BD4DAC(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0), sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair), result = sub_1C8BD4E0C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0) + 24);
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C87D2814(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  sub_1C87D28A0();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_3();
  sub_1C8802E80(v8, v9);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8802578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8802E80(&qword_1EC2B67F8, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88025F8(uint64_t a1)
{
  v2 = sub_1C8802E80(&qword_1EC2B67A8, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8802668()
{
  sub_1C8802E80(&qword_1EC2B67A8, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8802704()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6770);
  __swift_project_value_buffer(v0, qword_1EC2B6770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "variable";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "eventId";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.decodeMessage<A>(decoder:)()
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
      sub_1C88029BC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8802958();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0);
  v3 = (v0 + *(v2 + 20));
  if (!v3[1] || (v4 = *v3, result = sub_1C8BD4DDC(), !v1))
  {
    v6 = (v0 + *(v2 + 24));
    if (!v6[1])
    {
      return sub_1C8BD49DC();
    }

    v7 = *v6;
    result = sub_1C8BD4DDC();
    if (!v1)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.== infix(_:_:)()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0);
  v1 = *(v0 + 20);
  OUTLINED_FUNCTION_1();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_1();
  if (v8)
  {
    if (v9)
    {
      v12 = *v10 == *v11 && v8 == v9;
      if (v12 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v9)
  {
LABEL_17:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_3();
    sub_1C8802E80(v13, v14);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t sub_1C8802C2C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8802E80(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8802D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8802E80(&qword_1EC2B67F0, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8802D90(uint64_t a1)
{
  v2 = sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8802E00()
{
  sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8802E80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C8803130()
{
  sub_1C8803308(319, &qword_1EDACD398, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C88031E8();
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

void sub_1C88031E8()
{
  if (!qword_1EC2B67D8)
  {
    type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(255);
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B67D8);
    }
  }
}

void sub_1C8803268()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8803308(319, &qword_1EDACD3E8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8803308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.type.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  result = OUTLINED_FUNCTION_18_6(v2);
  if (v5)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C88033B0@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.type.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.hasType.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  OUTLINED_FUNCTION_18_6(v0);
  return !v1;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.currentTurn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 28));
  sub_1C87AB9AC(v9, v10, &qword_1EC2B6038, &unk_1C8BE8850);
  v11 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v11);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = *(v11 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(a1 + v15) = qword_1EDACCB68;
    v16 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v11);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_121();
    return sub_1C8805E34();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.currentTurn.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_4();
  sub_1C8805E34();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.currentTurn.modify(void *a1))()
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0) + 28);
  *(v3 + 10) = v11;
  sub_1C87AB9AC(v1 + v11, v6, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_76(v6, 1, v7);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v7 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *&v10[v13] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_1C8805E34();
  }

  return sub_1C8803854;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.hasCurrentTurn.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 28));
  sub_1C87AB9AC(v6, v7, &qword_1EC2B6038, &unk_1C8BE8850);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.clearCurrentTurn()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t (*Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v0) + 20);
  return nullsub_1;
}

SiriNLUTypes::Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle::ReformType_optional __swiftcall Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.ReformType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C8803A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8805F38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8803AAC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.ReformType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  v3 = a1 + v2[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + v2[6]) = 4;
  v4 = v2[7];
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v5 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.reformedTurnInputBundles.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v7);
  v9 = OUTLINED_FUNCTION_13(*(updated + 24));
  sub_1C87AB9AC(v9, v10, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v11);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v11[5]);
    OUTLINED_FUNCTION_313(a1 + v11[6]);
    *(a1 + v11[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_76(v15, v16, v11);
    if (!v14)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_121();
    return sub_1C8805E34();
  }

  return result;
}

uint64_t sub_1C8803CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C8805E8C();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.requestID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v1);
  sub_1C8778ED8(v0 + *(updated + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_2();
  sub_1C8805E34();
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.requestID.modify(void *a1))()
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0) + 24);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_13(v11);
  sub_1C87AB9AC(v12, v13, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v14 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    v17 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v17, v18, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    sub_1C8805E34();
  }

  return sub_1C8803F68;
}

void sub_1C8803F90(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    v13 = (*a1)[4];
    sub_1C8805E8C();
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C8805E34();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v11);
    sub_1C8805EE4();
  }

  else
  {
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C8805E34();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.hasRequestID.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v4);
  v6 = OUTLINED_FUNCTION_13(*(updated + 24));
  sub_1C87AB9AC(v6, v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
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
  sub_1C8778ED8(v13, v14, &unk_1C8BE68C0);
  return v12;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.clearRequestID()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
  sub_1C8778ED8(v0 + *(updated + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C88041BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C8BD49FC();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C8804250()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  v5 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t (*Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v0) + 20);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
  v3 = a1 + *(updated + 20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = *(updated + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C8804388()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6800);
  __swift_project_value_buffer(v0, qword_1EC2B6800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current_turn";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "previous_turns";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8805518(v3, v4, v5, v6, v7, &qword_1EDACC908, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8804704();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8804690();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8804690()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0) + 24);
  sub_1C8805F38();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C8804704()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0) + 28);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8805F8C(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_External_TurnInput(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  OUTLINED_FUNCTION_18_6(v13);
  if (v14 || (sub_1C8805F38(), OUTLINED_FUNCTION_19_4(), result = sub_1C8BD4D4C(), (v0 = v2) == 0))
  {
    v16 = OUTLINED_FUNCTION_13(*(v13 + 28));
    sub_1C87AB9AC(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_120();
    if (__swift_getEnumTagSinglePayload(v20, v21, v9) == 1)
    {
      sub_1C8778ED8(v3, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8805E34();
      OUTLINED_FUNCTION_8_5();
      sub_1C8805F8C(v22, v23);
      sub_1C8BD4E2C();
      result = sub_1C8805EE4();
      if (v0)
      {
        return result;
      }
    }

    if (!*(*v1 + 16) || (OUTLINED_FUNCTION_8_5(), sub_1C8805F8C(v24, v25), result = sub_1C8BD4E0C(), !v0))
    {
      v26 = v1 + *(v13 + 20);
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_74();
  v23 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v22);
  v24 = v23;
  v25 = *(v23 + 24);
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 4)
  {
    if (v27 != 4)
    {
      goto LABEL_20;
    }
  }

  else if (v26 != v27)
  {
LABEL_20:
    v52 = 0;
    return v52 & 1;
  }

  v28 = *(v23 + 28);
  v29 = *(v18 + 48);
  v55 = a1;
  OUTLINED_FUNCTION_32_4(a1 + v28, v2);
  OUTLINED_FUNCTION_32_4(a2 + v28, v2 + v29);
  v30 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v30, v31, v5);
  if (v36)
  {
    v32 = OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_76(v32, v33, v5);
    if (v36)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  sub_1C87AB9AC(v2, v17, &qword_1EC2B6038, &unk_1C8BE8850);
  v34 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_76(v34, v35, v5);
  if (v36)
  {
    sub_1C8805EE4();
LABEL_13:
    v37 = &qword_1EC2B6040;
    v38 = &unk_1C8BE6CF0;
LABEL_14:
    sub_1C8778ED8(v2, v37, v38);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_4();
  sub_1C8805E34();
  v39 = *(v5 + 20);
  if (*&v17[v39] != *(v11 + v39))
  {
    v40 = *&v17[v39];

    sub_1C88AD618();
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      sub_1C8805EE4();
      sub_1C8805EE4();
      v37 = &qword_1EC2B6038;
      v38 = &unk_1C8BE8850;
      goto LABEL_14;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_3_5();
  sub_1C8805F8C(v43, v44);
  v45 = sub_1C8BD517C();
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v45 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  v46 = *v55;
  v47 = *a2;
  sub_1C87D2CAC();
  if ((v48 & 1) == 0)
  {
    goto LABEL_20;
  }

  v49 = *(v24 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_3_5();
  sub_1C8805F8C(v50, v51);
  v52 = sub_1C8BD517C();
  return v52 & 1;
}

uint64_t sub_1C8804E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8805F8C(&qword_1EC2B68F0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8804F00(uint64_t a1)
{
  v2 = sub_1C8805F8C(&qword_1EC2B6858, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8804F70()
{
  sub_1C8805F8C(&qword_1EC2B6858, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8804FF0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6818);
  __swift_project_value_buffer(v0, qword_1EC2B6818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REFORM_TYPE_NONE";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CORRECTION_BY_REPETITION";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REFERENCE_RESOLUTION";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TAP_TO_EDIT";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8805274()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6830);
  __swift_project_value_buffer(v0, qword_1EC2B6830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "reformed_turn_input_bundles";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.decodeMessage<A>(decoder:)()
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
      sub_1C88055B4();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8805518(v3, v4, v5, v6, v7, &qword_1EC2B6858, v8);
    }
  }

  return result;
}

uint64_t sub_1C8805518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_1C8805F8C(a6, a7);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C88055B4()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0) + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8805F8C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v16 = v0;
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0), sub_1C8805F8C(&qword_1EC2B6858, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle), OUTLINED_FUNCTION_19_4(), result = sub_1C8BD4E0C(), !v1))
  {
    updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
    sub_1C87AB9AC(v16 + *(updated + 24), v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1C8778ED8(v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C8805E34();
      sub_1C8805F8C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
      OUTLINED_FUNCTION_19_4();
      sub_1C8BD4E2C();
      result = sub_1C8805EE4();
      if (v1)
      {
        return result;
      }
    }

    v14 = v16 + *(updated + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = *v1;
  v22 = *v0;
  sub_1C87D7480();
  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
  v24 = *(updated + 24);
  v25 = *(v15 + 48);
  OUTLINED_FUNCTION_32_4(v1 + v24, v20);
  OUTLINED_FUNCTION_32_4(v0 + v24, &v20[v25]);
  v26 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v26, v27, v2);
  if (v32)
  {
    v28 = OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_76(v28, v29, v2);
    if (v32)
    {
      sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_14:
      v36 = *(updated + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_3_5();
      sub_1C8805F8C(v37, v38);
      v33 = sub_1C8BD517C();
      return v33 & 1;
    }

    goto LABEL_10;
  }

  sub_1C87AB9AC(v20, v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v30 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_76(v30, v31, v2);
  if (v32)
  {
    sub_1C8805EE4();
LABEL_10:
    sub_1C8778ED8(v20, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_11;
  }

  sub_1C8805E34();
  v35 = static Siri_Nlu_External_UUID.== infix(_:_:)(v14, v8);
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v35)
  {
    goto LABEL_14;
  }

LABEL_11:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1C8805BC0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8805F8C(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8805CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8805F8C(&qword_1EC2B68E8, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8805D24(uint64_t a1)
{
  v2 = sub_1C8805F8C(&qword_1EC2B68A8, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8805D94()
{
  sub_1C8805F8C(&qword_1EC2B68A8, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8805E34()
{
  v2 = OUTLINED_FUNCTION_84();
  v4 = v3(v2);
  OUTLINED_FUNCTION_21(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C8805E8C()
{
  v2 = OUTLINED_FUNCTION_84();
  v4 = v3(v2);
  OUTLINED_FUNCTION_21(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C8805EE4()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1C8805F38()
{
  result = qword_1EC2B6848;
  if (!qword_1EC2B6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6848);
  }

  return result;
}

uint64_t sub_1C8805F8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8805FD8()
{
  result = qword_1EC2B6868;
  if (!qword_1EC2B6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6868);
  }

  return result;
}

unint64_t sub_1C8806030()
{
  result = qword_1EC2B6870;
  if (!qword_1EC2B6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6870);
  }

  return result;
}

unint64_t sub_1C8806088()
{
  result = qword_1EC2B6878;
  if (!qword_1EC2B6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6878);
  }

  return result;
}

unint64_t sub_1C88060E0()
{
  result = qword_1EC2B6880;
  if (!qword_1EC2B6880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B6888, &qword_1C8BE8948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6880);
  }

  return result;
}

void sub_1C88063AC()
{
  sub_1C8806510(319, &qword_1EDACA2F8, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C88064C0();
      if (v2 <= 0x3F)
      {
        sub_1C8806510(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C88064C0()
{
  if (!qword_1EC2B68C8)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B68C8);
    }
  }
}

void sub_1C8806510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.ReformType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8806678()
{
  sub_1C8806510(319, &qword_1EC2B68E0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8806510(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_External_UsoGraph.version.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(v7) + 40);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_SemVer();
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_96_0(v9[5]);
    OUTLINED_FUNCTION_96_0(v9[6]);
    OUTLINED_FUNCTION_96_0(v9[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_121();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.version.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_SemVer();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoGraph.version.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = type metadata accessor for Siri_Nlu_External_SemVer();
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(v13) + 40);
  *(v0 + 40) = v14;
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_73(v7);
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v8[5]);
    OUTLINED_FUNCTION_7_0(v8[6]);
    OUTLINED_FUNCTION_7_0(v8[7]);
    OUTLINED_FUNCTION_73(v7);
    if (!v15)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_184();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UsoGraph.edges.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.identifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.alignments.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.spans.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(v0) + 36);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_196();

  return v6(v5);
}

uint64_t Siri_Nlu_External_UsoGraph.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(v2) + 36);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Siri_Nlu_External_UsoGraph.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(v0) + 36);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_UsoNode.usoElementID.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoNode(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_UsoNode.usoElementID.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoNode(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoNode.stringPayload.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UsoNode(v7) + 28);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_37_4();
    return v13(v12);
  }

  return result;
}

void Siri_Nlu_External_UsoNode.stringPayload.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD493C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoNode(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 28));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
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

uint64_t Siri_Nlu_External_UsoNode.integerPayload.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UsoNode(v7) + 32);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD48BC();
  v9 = OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    MEMORY[0x1CCA7D9A0](v9);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6940, &unk_1C8BE8D90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v12 = *(v11 + 32);
    v13 = OUTLINED_FUNCTION_37_4();
    return v14(v13);
  }

  return result;
}

void Siri_Nlu_External_UsoNode.integerPayload.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD48BC();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoNode(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 32));
  v17 = OUTLINED_FUNCTION_7();
  if (v18)
  {
    MEMORY[0x1CCA7D9A0](v17);
    OUTLINED_FUNCTION_7();
    if (!v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6940, &unk_1C8BE8D90);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_4();
    v20(v19);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

void sub_1C8807354()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 12);
  v6 = (*v0)[4];
  v7 = (*v0)[5];
  v8 = (*v0)[2];
  v9 = (*v0)[3];
  v11 = **v0;
  v10 = (*v0)[1];
  if (v12)
  {
    (*(v9 + 16))((*v0)[4], v7, v8);
    sub_1C8778ED8(v11 + v5, v4, v3);
    (*(v9 + 32))(v11 + v5, v6, v8);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_220();
    v18(v17);
  }

  else
  {
    sub_1C8778ED8(v11 + v5, v1, v2);
    (*(v9 + 32))(v11 + v5, v7, v8);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  }

  free(v7);
  free(v6);
  free(v10);
  OUTLINED_FUNCTION_125();

  free(v22);
}

void Siri_Nlu_External_UsoNode.usoVerbElementID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoNode(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 36));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
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

uint64_t Siri_Nlu_External_UsoNode.entityLabel.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 40)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8807738(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UsoNode.entityLabel.setter();
}

uint64_t Siri_Nlu_External_UsoNode.entityLabel.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_UsoNode(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoNode.entityLabel.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 40)))
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

Swift::Void __swiftcall Siri_Nlu_External_UsoNode.clearEntityLabel()()
{
  v1 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 40));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoNode.verbLabel.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 44)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88078BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UsoNode.verbLabel.setter();
}

uint64_t Siri_Nlu_External_UsoNode.verbLabel.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_UsoNode(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoNode.verbLabel.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 44)))
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

Swift::Void __swiftcall Siri_Nlu_External_UsoNode.clearVerbLabel()()
{
  v1 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 44));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoNode.normalizedStringPayloads.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoNode.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_UsoNode(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_UsoEdge.fromIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdge(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_UsoEdge.fromIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdge(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

uint64_t sub_1C8807BA8()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  OUTLINED_FUNCTION_4(*(v2 + 24));
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UsoEdge.toIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdge(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_UsoEdge.toIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdge(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_External_UsoEdge.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = *(type metadata accessor for Siri_Nlu_External_UsoEdge(v9) + 28);
  sub_1C8778810();
  v11 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v12 = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_76(v12, v13, v11);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = a1 + v11[5];
    *v15 = 0;
    *(v15 + 4) = 1;
    v16 = a1 + v11[6];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v11[7];
    type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_199();
    result = OUTLINED_FUNCTION_76(v22, v23, v11);
    if (!v14)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoEdge.label.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdge(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B61B0, &qword_1C8BE6E40);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoEdge.label.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  *(v0 + 40) = *(type metadata accessor for Siri_Nlu_External_UsoEdge(v14) + 28);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v9[5]);
    OUTLINED_FUNCTION_7_0(v9[6]);
    v16 = v9[7];
    type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v7, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8807FA4()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C8808034()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_27_0();
  v9 = v1(v8);
  OUTLINED_FUNCTION_202_0(*(v9 + 28));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_48_2(v10);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88080FC()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C88081A4()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  OUTLINED_FUNCTION_4(*(v2 + 20));
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UsoEdgeLabel.usoElementID.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_UsoEdgeLabel.usoElementID.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

void Siri_Nlu_External_UsoEdgeLabel.enumeration.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_UsoEdgeLabel.enumeration.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoEdgeLabel.baseEdgeLabel.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v7) + 28);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v9 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6950, &unk_1C8BF4880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_121();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoEdgeLabel.baseEdgeLabel.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6950, &unk_1C8BF4880);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_UsoLabel(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoLabel.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
  OUTLINED_FUNCTION_18_2(*(v0 + 20));
}

void Siri_Nlu_External_UsoEdgeLabel.baseEdgeLabel.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoLabel(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = *(type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v15) + 28);
  *(v0 + 40) = v16;
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_73(v7);
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = (v11 + *(v9 + 20));
    *v18 = 0;
    v18[1] = 0;
    OUTLINED_FUNCTION_73(v7);
    if (!v17)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6950, &unk_1C8BF4880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_184();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_UsoEntityIdentifier.nodeIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.nodeIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88087D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.setter();
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v2);
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

Swift::Void __swiftcall Siri_Nlu_External_UsoEntityIdentifier.clearBackingAppBundleID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 24));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.value.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8808954(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UsoEntityIdentifier.value.setter();
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.value.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.value.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
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

Swift::Void __swiftcall Siri_Nlu_External_UsoEntityIdentifier.clearValue()()
{
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 28));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.namespace.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v7) + 32);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_37_4();
    return v13(v12);
  }

  return result;
}

uint64_t sub_1C8808BB4()
{
  v1 = OUTLINED_FUNCTION_65_2();
  v3 = *(v2(v1) + 32);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v7 = v0(0);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 32);
  v10 = OUTLINED_FUNCTION_159_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_99_0();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void Siri_Nlu_External_UsoEntityIdentifier.namespace.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD493C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 32));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
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

uint64_t sub_1C8808DB4()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_27_0();
  v9 = v1(v8);
  OUTLINED_FUNCTION_202_0(*(v9 + 32));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_48_2(v10);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C8808E7C()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v3 = *(v2(v1) + 32);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.probability.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v7) + 36);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD48FC();
  v9 = OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    MEMORY[0x1CCA7D9E0](v9);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v12 = *(v11 + 32);
    v13 = OUTLINED_FUNCTION_37_4();
    return v14(v13);
  }

  return result;
}

uint64_t sub_1C8809004()
{
  v1 = OUTLINED_FUNCTION_65_2();
  v3 = *(v2(v1) + 36);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v7 = v0(0);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 32);
  v10 = OUTLINED_FUNCTION_159_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_99_0();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void Siri_Nlu_External_UsoEntityIdentifier.probability.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 36));
  v17 = OUTLINED_FUNCTION_7();
  if (v18)
  {
    MEMORY[0x1CCA7D9E0](v17);
    OUTLINED_FUNCTION_7();
    if (!v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_4();
    v20(v19);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8809218()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_27_0();
  v9 = v1(v8);
  OUTLINED_FUNCTION_202_0(*(v9 + 36));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_48_2(v10);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88092E0()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v3 = *(v2(v1) + 36);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  v3 = *(v1 + *(type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v2) + 40));
  OUTLINED_FUNCTION_236_0();
  *v0 = v4;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v3) + 40);
  *(v1 + 8) = v4;
  v5 = *(v2 + v4);
  OUTLINED_FUNCTION_236_0();
  *(v1 + 12) = v6;
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.groupIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  OUTLINED_FUNCTION_4(*(v0 + 44));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UsoEntityIdentifier.groupIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 44));
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.groupIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 44));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.interpretationGroup.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  OUTLINED_FUNCTION_4(*(v0 + 48));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UsoEntityIdentifier.interpretationGroup.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 48));
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.interpretationGroup.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 48));
  return sub_1C8801920;
}

uint64_t sub_1C88096B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C881D1D0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  v4 = OUTLINED_FUNCTION_122_0(v3);
  *v5 = 0;
  *(v5 + 4) = 1;
  OUTLINED_FUNCTION_18_2(*(v4 + 24));
  OUTLINED_FUNCTION_18_2(*(v6 + 28));
  v8 = *(v7 + 32);
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v1[9];
  sub_1C8BD48FC();
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *(a1 + v1[10]) = 7;
  v19 = a1 + v1[11];
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1 + v1[12];
  *v20 = 0;
  *(v20 + 4) = 1;
  return result;
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.usoVersion.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v7) + 24);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_SemVer();
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_96_0(v9[5]);
    OUTLINED_FUNCTION_96_0(v9[6]);
    OUTLINED_FUNCTION_96_0(v9[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_121();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.usoVersion.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_SemVer();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoOntologyVocabulary.usoVersion.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_107(v7);
  v8 = type metadata accessor for Siri_Nlu_External_SemVer();
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = *(type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v13) + 24);
  *(v0 + 40) = v14;
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_73(v7);
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v8[5]);
    OUTLINED_FUNCTION_7_0(v8[6]);
    OUTLINED_FUNCTION_7_0(v8[7]);
    OUTLINED_FUNCTION_73(v7);
    if (!v15)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_184();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8809A90()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C8807FA4();
    sub_1C8778ED8(v10 + v5, v3, v2);
    sub_1C87A386C();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_253();
    sub_1C87A3B74();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v0, v1);
    sub_1C87A386C();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v18);
}

uint64_t sub_1C8809C34()
{
  v0 = OUTLINED_FUNCTION_207();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_196();

  return v7(v6);
}

uint64_t sub_1C8809CC0()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  v5 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(0);
  OUTLINED_FUNCTION_122_0(v2);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(v1 + 24);
  type metadata accessor for Siri_Nlu_External_SemVer();
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1C8809DF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UsoLabel.value.setter();
}

uint64_t Siri_Nlu_External_UsoLabel.value.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoLabel(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
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

void Siri_Nlu_External_MatchInfo.matchSignalBitset.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v0);
  OUTLINED_FUNCTION_59_0(*(matched + 24));
}

uint64_t (*Siri_Nlu_External_MatchInfo.matchSignalBitset.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  OUTLINED_FUNCTION_6_0(*(matched + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_MatchInfo.matchScore.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_MatchInfo(v7) + 28);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD483C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD482C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6198, &unk_1C8BE6E30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_37_4();
    return v13(v12);
  }

  return result;
}

uint64_t sub_1C880A128()
{
  v1 = OUTLINED_FUNCTION_65_2();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v7 = v0(0);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 32);
  v10 = OUTLINED_FUNCTION_159_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_99_0();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void Siri_Nlu_External_MatchInfo.matchScore.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD483C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 28));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD482C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6198, &unk_1C8BE6E30);
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

uint64_t Siri_Nlu_External_MatchInfo.maxTokenCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_MatchInfo(v7) + 32);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_37_4();
    return v13(v12);
  }

  return result;
}

void Siri_Nlu_External_MatchInfo.maxTokenCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 32));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
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

void Siri_Nlu_External_MatchInfo.matchedTokenCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 36));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
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

uint64_t Siri_Nlu_External_MatchInfo.maxStopWordCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_MatchInfo(v7) + 40);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_37_4();
    return v13(v12);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.maxStopWordCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 40), &qword_1EC2B6948, &unk_1C8BF9F90);
  v3 = sub_1C8BD499C();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_120_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_MatchInfo.maxStopWordCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 40));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
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

uint64_t sub_1C880AB24()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_27_0();
  v9 = v1(v8);
  OUTLINED_FUNCTION_202_0(*(v9 + 40));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_48_2(v10);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C880ABEC()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v3 = *(v2(v1) + 40);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Siri_Nlu_External_MatchInfo.matchedStopWordCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_MatchInfo(v7) + 44);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_37_4();
    return v13(v12);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.matchedStopWordCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 44), &qword_1EC2B6948, &unk_1C8BF9F90);
  v3 = sub_1C8BD499C();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_120_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_MatchInfo.matchedStopWordCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 44));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
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

uint64_t Siri_Nlu_External_MatchInfo.hasMatchedStopWordCount.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v6);
  OUTLINED_FUNCTION_13(*(matched + 44));
  OUTLINED_FUNCTION_262();
  v8 = sub_1C8BD499C();
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_MatchInfo.clearMatchedStopWordCount()()
{
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  sub_1C8778ED8(v0 + *(matched + 44), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_MatchInfo.editDistance.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_MatchInfo(v7) + 48);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_37_4();
    return v13(v12);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.editDistance.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 48), &qword_1EC2B6948, &unk_1C8BF9F90);
  v3 = sub_1C8BD499C();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_120_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_MatchInfo.editDistance.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 48));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
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