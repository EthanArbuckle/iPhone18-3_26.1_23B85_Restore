uint64_t sub_1C8822A40()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest() + 36);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8823CAC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8822AF4()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8823CAC(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8822B94()
{
  type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
  sub_1C8823CAC(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8822C34()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest() + 40);
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8823CAC(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Ssu_SSURequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_7(v10, v38[0]);
  v41 = type metadata accessor for Siri_Nlu_External_RequestID();
  v11 = OUTLINED_FUNCTION_21(v41);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v39 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38 - v20;
  v22 = type metadata accessor for Siri_Nlu_External_UUID();
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5_4();
  v26 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest();
  v27 = (v2 + v26[7]);
  if (!v27[1] || (v28 = *v27, result = sub_1C8BD4DDC(), !v3))
  {
    v30 = (v2 + v26[8]);
    if (!v30[1] || (v31 = *v30, result = sub_1C8BD4DDC(), !v3))
    {
      v38[1] = a2;
      sub_1C8786744(v2 + v26[9], v21, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      v32 = OUTLINED_FUNCTION_109();
      if (__swift_getEnumTagSinglePayload(v32, v33, v22) == 1)
      {
        sub_1C8778ED8(v21, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      }

      else
      {
        sub_1C8821D38(v21, v4, type metadata accessor for Siri_Nlu_External_UUID);
        sub_1C8823CAC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
        sub_1C8BD4E2C();
        result = sub_1C88221F0();
        if (v3)
        {
          return result;
        }
      }

      if (!*(*v2 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8823CAC(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), result = sub_1C8BD4E0C(), !v3))
      {
        if (!*(v2[1] + 16) || (type metadata accessor for Siri_Nlu_External_EntityCandidate(0), sub_1C8823CAC(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate), OUTLINED_FUNCTION_28_4(), result = sub_1C8BD4E0C(), !v3))
        {
          v34 = v40;
          sub_1C8786744(v2 + v26[10], v40, &qword_1EC2B64B0, &unk_1C8BF3F40);
          v35 = OUTLINED_FUNCTION_120();
          if (__swift_getEnumTagSinglePayload(v35, v36, v41) == 1)
          {
            sub_1C8778ED8(v34, &qword_1EC2B64B0, &unk_1C8BF3F40);
          }

          else
          {
            sub_1C8821D38(v34, v39, type metadata accessor for Siri_Nlu_External_RequestID);
            sub_1C8823CAC(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
            OUTLINED_FUNCTION_28_4();
            sub_1C8BD4E2C();
            result = sub_1C88221F0();
            if (v3)
            {
              return result;
            }
          }

          v37 = v2 + v26[6];
          return sub_1C8BD49DC();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Ssu_SSURequest.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v85 = type metadata accessor for Siri_Nlu_External_RequestID();
  v4 = OUTLINED_FUNCTION_21(v85);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_7(v19, v81);
  v20 = type metadata accessor for Siri_Nlu_External_UUID();
  v21 = OUTLINED_FUNCTION_21(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v81 - v37;
  v39 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest();
  v40 = v39[7];
  OUTLINED_FUNCTION_22_4();
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_43;
    }

    v45 = *v43 == *v44 && v41 == v42;
    if (!v45 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v42)
  {
    goto LABEL_43;
  }

  v46 = v39[8];
  OUTLINED_FUNCTION_22_4();
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_43;
    }

    v51 = *v49 == *v50 && v47 == v48;
    if (!v51 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v48)
  {
    goto LABEL_43;
  }

  v81 = v9;
  v83 = a2;
  v52 = v39[9];
  v53 = *(v33 + 48);
  v82 = a1;
  sub_1C8786744(a1 + v52, v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v54 = v83 + v52;
  v55 = v83;
  sub_1C8786744(v54, &v38[v53], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_65(v38);
  if (v45)
  {
    OUTLINED_FUNCTION_65(&v38[v53]);
    if (v45)
    {
      sub_1C8778ED8(v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_30;
    }

LABEL_27:
    v57 = &qword_1EC2B5EE8;
    v58 = &unk_1C8BE6F90;
    v59 = v38;
LABEL_28:
    sub_1C8778ED8(v59, v57, v58);
    goto LABEL_43;
  }

  sub_1C8786744(v38, v32, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_65(&v38[v53]);
  if (v56)
  {
    sub_1C88221F0();
    goto LABEL_27;
  }

  sub_1C8821D38(&v38[v53], v26, type metadata accessor for Siri_Nlu_External_UUID);
  v60 = static Siri_Nlu_External_UUID.== infix(_:_:)(v32, v26);
  sub_1C88221F0();
  sub_1C88221F0();
  sub_1C8778ED8(v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_30:
  v61 = v82;
  v62 = *v82;
  v63 = *v55;
  sub_1C87D27C0();
  if ((v64 & 1) == 0)
  {
    goto LABEL_43;
  }

  v65 = v61[1];
  v66 = v55[1];
  sub_1C87D73D8();
  if ((v67 & 1) == 0)
  {
    goto LABEL_43;
  }

  v68 = v39[10];
  v69 = *(v15 + 48);
  v70 = v86;
  sub_1C8786744(v61 + v68, v86, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C8786744(v83 + v68, v70 + v69, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v71 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v71, v72, v85);
  if (!v45)
  {
    v73 = v84;
    sub_1C8786744(v70, v84, &qword_1EC2B64B0, &unk_1C8BF3F40);
    OUTLINED_FUNCTION_65(v70 + v69);
    if (!v74)
    {
      v75 = v70 + v69;
      v76 = v81;
      sub_1C8821D38(v75, v81, type metadata accessor for Siri_Nlu_External_RequestID);
      v77 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v73, v76);
      OUTLINED_FUNCTION_12();
      sub_1C88221F0();
      sub_1C88221F0();
      sub_1C8778ED8(v70, &qword_1EC2B64B0, &unk_1C8BF3F40);
      if (v77)
      {
        goto LABEL_42;
      }

LABEL_43:
      v79 = 0;
      return v79 & 1;
    }

    sub_1C88221F0();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_65(v70 + v69);
  if (!v45)
  {
LABEL_40:
    v57 = &qword_1EC2B64D8;
    v58 = &unk_1C8BEAC20;
    v59 = v70;
    goto LABEL_28;
  }

  sub_1C8778ED8(v70, &qword_1EC2B64B0, &unk_1C8BF3F40);
LABEL_42:
  v78 = v39[6];
  sub_1C8BD49FC();
  sub_1C8823CAC(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v79 = sub_1C8BD517C();
  return v79 & 1;
}

uint64_t Siri_Nlu_Internal_Ssu_SSURequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest();
  sub_1C8823CAC(&qword_1EC2B6BE0, type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88237EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8823CAC(&qword_1EC2B6C10, type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882386C(uint64_t a1)
{
  v2 = sub_1C8823CAC(&qword_1EC2B6BF0, type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88238DC()
{
  sub_1C8823CAC(&qword_1EC2B6BF0, type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest);

  return sub_1C8BD4CFC();
}

void sub_1C8823AA4()
{
  sub_1C8823C48(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8823C48(319, &qword_1EDACA2E8, type metadata accessor for Siri_Nlu_External_EntityCandidate, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C87E8A54();
        if (v3 <= 0x3F)
        {
          sub_1C8823C48(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C8823C48(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID, MEMORY[0x1E69E6720]);
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

void sub_1C8823C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8823CAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_Internal_Ssu_SSURequest();
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.classificationLabel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  *a1 = *(v1 + *(result + 20)) & 1;
  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse()
{
  result = qword_1EC2B3E80;
  if (!qword_1EC2B3E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8823D98@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_Snlc_SNLCParserResponse.classificationLabel.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.classificationLabel.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Snlc_SNLCParserResponse.classificationLabel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse() + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return OUTLINED_FUNCTION_158;
}

float Siri_Nlu_Internal_Snlc_SNLCParserResponse.classificationProbability.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  result = OUTLINED_FUNCTION_0_6(*(v0 + 24));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.classificationProbability.setter(float a1)
{
  result = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Snlc_SNLCParserResponse.classificationProbability.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse() + 24);
  *(a1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_0_6(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(a1 + 8) = v4;
  return sub_1C87FE8F0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Snlc_SNLCParserResponse.clearClassificationProbability()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse() + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.unknownFields.setter()
{
  v0 = *(*(sub_1C8BD49FC() - 8) + 40);
  v1 = OUTLINED_FUNCTION_5_0();

  return v2(v1);
}

SiriNLUTypes::Siri_Nlu_Internal_Snlc_SNLCParserResponse::SNLCClass_optional __swiftcall Siri_Nlu_Internal_Snlc_SNLCParserResponse.SNLCClass.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_1C8824128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8824670();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8824190@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Snlc_SNLCParserResponse.SNLCClass.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  *(a1 + *(result + 20)) = 2;
  v3 = a1 + *(result + 24);
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t sub_1C882423C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3EE0);
  __swift_project_value_buffer(v0, qword_1EC2B3EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
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
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.decodeMessage<A>(decoder:)()
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
      sub_1C8824520();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C88244AC();
    }
  }

  return result;
}

uint64_t sub_1C88244AC()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse() + 20);
  sub_1C8824670();
  return sub_1C8BD4B4C();
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  if (*(v0 + *(v2 + 20)) == 2 || (sub_1C8824670(), result = sub_1C8BD4D4C(), !v1))
  {
    v4 = (v0 + *(v2 + 24));
    if (v4[1])
    {
      return sub_1C8BD49DC();
    }

    v5 = *v4;
    result = sub_1C8BD4D7C();
    if (!v1)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

unint64_t sub_1C8824670()
{
  result = qword_1EC2B3EB0;
  if (!qword_1EC2B3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3EB0);
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Snlc_SNLCParserResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776470(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  OUTLINED_FUNCTION_5_0();
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Snlc_SNLCParserResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse();
  sub_1C8776470(&qword_1EC2B6C18, type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C882489C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776470(&qword_1EC2B6C48, type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882491C(uint64_t a1)
{
  v2 = sub_1C8776470(&qword_1EC2B6C30, type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C882498C()
{
  sub_1C8776470(&qword_1EC2B6C30, type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8824A0C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3EC0);
  __swift_project_value_buffer(v0, qword_1EC2B3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SNLC_CLASS_SERVER";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SNLC_CLASS_DEVICE";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

unint64_t sub_1C8824BFC()
{
  result = qword_1EC2B3EA0;
  if (!qword_1EC2B3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3EA0);
  }

  return result;
}

unint64_t sub_1C8824C54()
{
  result = qword_1EC2B3EA8;
  if (!qword_1EC2B3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3EA8);
  }

  return result;
}

unint64_t sub_1C8824CAC()
{
  result = qword_1EC2B3E98;
  if (!qword_1EC2B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3E98);
  }

  return result;
}

unint64_t sub_1C8824D04()
{
  result = qword_1EC2B6C20;
  if (!qword_1EC2B6C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B6C28, &qword_1C8BEAEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6C20);
  }

  return result;
}

void sub_1C8824EB4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EC2B6C40);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EC2B4230);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_Snlc_SNLCParserResponse.SNLCClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Siri_Nlu_Internal_RewriteToken.value.getter()
{
  OUTLINED_FUNCTION_41_3();
  v2 = (v0 + v1);
  if (v2[1])
  {
    OUTLINED_FUNCTION_20(v2);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88250AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_RewriteToken.value.setter();
}

uint64_t Siri_Nlu_Internal_RewriteToken.value.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteToken.value.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteToken.clearValue()()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_25_2(v1);
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_RewriteToken.startIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
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

uint64_t Siri_Nlu_Internal_RewriteToken.startIndex.setter(int a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  result = OUTLINED_FUNCTION_25_0(v2);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteToken.startIndex.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteToken(v2) + 24);
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
  return sub_1C87FE8F0;
}

BOOL Siri_Nlu_Internal_RewriteToken.hasStartIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_25_0(v0);
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteToken.clearStartIndex()()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_25_0(v0);
  OUTLINED_FUNCTION_16_3(v1);
}

uint64_t Siri_Nlu_Internal_RewriteToken.endIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_4(*(v0 + 28));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_Internal_RewriteToken.endIndex.setter(int a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  result = OUTLINED_FUNCTION_26_3(v2);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteToken.endIndex.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteToken(v2) + 28);
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

BOOL Siri_Nlu_Internal_RewriteToken.hasEndIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_26_3(v0);
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteToken.clearEndIndex()()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_26_3(v0);
  OUTLINED_FUNCTION_16_3(v1);
}

double Siri_Nlu_Internal_RewriteToken.asrConfidence.getter()
{
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_2_12(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_RewriteToken.asrConfidence.setter(double a1)
{
  result = OUTLINED_FUNCTION_62_0();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteToken.asrConfidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteToken(v2) + 32);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_RewriteToken.phoneSequence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_25_4(v0);
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88254F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_RewriteToken.phoneSequence.setter();
}

uint64_t Siri_Nlu_Internal_RewriteToken.phoneSequence.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteToken.phoneSequence.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteToken.clearPhoneSequence()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 36));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_RewriteToken.removeSpaceAfter.setter(char a1)
{
  result = OUTLINED_FUNCTION_61_2();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteToken.removeSpaceAfter.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 40));
  return OUTLINED_FUNCTION_158;
}

void Siri_Nlu_Internal_RewriteToken.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_18_2(v2);
  OUTLINED_FUNCTION_16_3(a1 + *(v3 + 24));
  v5 = a1 + *(v4 + 28);
  *v5 = 0;
  *(v5 + 4) = v6;
  OUTLINED_FUNCTION_38(*(v4 + 32));
  *(v7 + 8) = v8;
  OUTLINED_FUNCTION_18_2(*(v9 + 36));
  *(a1 + *(v10 + 40)) = 2;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v7);
  OUTLINED_FUNCTION_67(*(v8 + 28));
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_82_1(v10, v11);
  if (!v12)
  {
    return sub_1C87E8E5C(v1, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v9[5]);
  OUTLINED_FUNCTION_15_2(v9[6]);
  *(a1 + v9[7]) = 6;
  v13 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_82_1(v13, v14);
  if (!v12)
  {
    return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v2) + 28);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_RewriteUtterance.asrID.modify(void *a1))()
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
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

  return sub_1C8825A68;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v7);
  OUTLINED_FUNCTION_67(*(v8 + 28));
  type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v9, v10, v11);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteUtterance.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0) + 32));
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8825BA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_RewriteUtterance.utterance.setter();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteUtterance.clearUtterance()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 32));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.asrUtteranceTokens.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double Siri_Nlu_Internal_RewriteUtterance.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 36));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.confidence.setter(double a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  result = OUTLINED_FUNCTION_25_4(v2);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v2) + 36);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.nluInternalTokens.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteUtterance.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v0) + 24);
  return nullsub_1;
}

void Siri_Nlu_Internal_RewriteUtterance.init()(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  v5 = a1 + v4[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v6 = v4[7];
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65_3(v7);
  OUTLINED_FUNCTION_18_2(v4[8]);
  OUTLINED_FUNCTION_38(v4[9]);
  *(v8 + 8) = v1;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.locale.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  OUTLINED_FUNCTION_26_3(v0);
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8825FF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_RewriteInteraction.locale.setter();
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.locale.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.locale.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteInteraction.clearLocale()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 28));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.tap2Edit.setter(char a1)
{
  result = OUTLINED_FUNCTION_59_1();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteInteraction.tap2Edit.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.startTimestamp.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  OUTLINED_FUNCTION_25_4(v0);
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.startTimestamp.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v1);
  result = OUTLINED_FUNCTION_25_4(v2);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.startTimestamp.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_33_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v3) + 36);
  *(v1 + 16) = v4;
  v5 = (v2 + v4);
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *v1 = v6;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C8826318@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C8BD49FC();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C88263AC()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 24);
  v5 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t (*Siri_Nlu_Internal_RewriteInteraction.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v0) + 24);
  return nullsub_1;
}

void Siri_Nlu_Internal_RewriteInteraction.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  v4 = a1 + v3[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v3[7]);
  *(a1 + v3[8]) = 2;
  OUTLINED_FUNCTION_38(v3[9]);
  *(v5 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v7);
  OUTLINED_FUNCTION_67(*(v8 + 20));
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_82_1(v10, v11);
  if (!v12)
  {
    return sub_1C87E8E5C(v1, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v9[5]);
  OUTLINED_FUNCTION_15_2(v9[6]);
  *(a1 + v9[7]) = 6;
  v13 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_82_1(v13, v14);
  if (!v12)
  {
    return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C88265D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = OUTLINED_FUNCTION_80(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v13 = v12 - v11;
  sub_1C87E9210(a1, v12 - v11);
  return a5(v13);
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v2) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_RewriteHypothesis.asrID.modify(void *a1))()
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0) + 20);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
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

  return sub_1C882AE18;
}

void sub_1C8826828(uint64_t **a1, char a2)
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
    sub_1C87E9210((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87E8E5C(v4, v8 + v3);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_1C87E9274(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87E8E5C(v5, v8 + v3);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v7);
  OUTLINED_FUNCTION_67(*(v8 + 20));
  type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v9, v10, v11);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteHypothesis.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.utterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  OUTLINED_FUNCTION_25_0(v0);
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8826A50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_RewriteHypothesis.utterance.setter();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteHypothesis.clearUtterance()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 24));
  *v0 = 0;
  v0[1] = 0;
}

double Siri_Nlu_Internal_RewriteHypothesis.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.confidence.setter(double a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  result = OUTLINED_FUNCTION_26_3(v2);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.rewriteType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_60_0();
  *a1 = *(v1 + v4) & 1;
  return result;
}

uint64_t sub_1C8826CB4@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_RewriteHypothesis.rewriteType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.rewriteType.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_60_0();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteHypothesis.rewriteType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t _s12SiriNLUTypes0A26_Nlu_Internal_RewriteTokenV13unknownFields0D13SwiftProtobuf14UnknownStorageVvg_0()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t _s12SiriNLUTypes0A26_Nlu_Internal_RewriteTokenV13unknownFields0D13SwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

SiriNLUTypes::Siri_Nlu_Internal_RewriteHypothesis::RewriteType_optional __swiftcall Siri_Nlu_Internal_RewriteHypothesis.RewriteType.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_1C8826EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C882A088();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8826F44@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_RewriteHypothesis.RewriteType.rawValue.getter();
  *a1 = result;
  return result;
}

void Siri_Nlu_Internal_RewriteHypothesis.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  v4 = v3[5];
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65_3(v5);
  OUTLINED_FUNCTION_18_2(v3[6]);
  OUTLINED_FUNCTION_38(v3[7]);
  *(v6 + 8) = v1;
  *(a1 + v3[8]) = 2;
}

uint64_t sub_1C8827008()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C50);
  __swift_project_value_buffer(v0, qword_1EC2B6C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_index";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "end_index";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "asr_confidence";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "phone_sequence";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "remove_space_after";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C88273B4();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8827418();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C882747C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C88274E0();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8827544();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C88275A8();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_RewriteToken.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_17();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v3);
  v5 = (v0 + v4[5]);
  if (!v5[1] || (v6 = *v5, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
  {
    v8 = (v0 + v4[6]);
    if ((v8[1] & 1) != 0 || (v9 = *v8, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), (v2 = v1) == 0))
    {
      v10 = (v0 + v4[7]);
      if ((v10[1] & 1) != 0 || (v11 = *v10, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), (v2 = v1) == 0))
      {
        v12 = (v0 + v4[8]);
        if ((v12[1] & 1) != 0 || (v13 = *v12, v1 = v2, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v2))
        {
          v14 = (v0 + v4[9]);
          if (!v14[1] || (v15 = *v14, result = OUTLINED_FUNCTION_9_5(), !v1))
          {
            if (*(v0 + v4[10]) == 2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v1))
            {
              OUTLINED_FUNCTION_55();
              return sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteToken.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_17();
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v0);
  v2 = v1[5];
  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11(v1[6]);
  if (v10)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v11)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(v1[7]);
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
    if (v14)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0(v1[8]);
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v17)
    {
      return 0;
    }
  }

  v18 = v1[9];
  OUTLINED_FUNCTION_1();
  if (v21)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v20);
    v24 = v8 && v22 == v23;
    if (!v24 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(v1[10]);
  if (v8)
  {
    if (v25 == 2)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (v25 == 2 || ((v26 ^ v25) & 1) != 0)
  {
    return 0;
  }

LABEL_38:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_7();
  sub_1C87764B8(v28, v29);
  OUTLINED_FUNCTION_117();
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8827958(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88279D8(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B6CD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8827A48()
{
  sub_1C87764B8(&qword_1EC2B6CD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8827AE0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C68);
  __swift_project_value_buffer(v0, qword_1EC2B6C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "asr_utterance_tokens";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "confidence";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "nlu_internal_tokens";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8827EB8();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8827F6C();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8828AF0(v3, v4, v5, v6, v7, &qword_1EC2B6CD0, v8);
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C8828CE4(v9, v10, v11, v12, v13, v14);
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C8828B8C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8827EB8()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0) + 28);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87764B8(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_80_2();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v13 = v12 - v11;
  v14 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  sub_1C87E8DEC(v1 + v14[7], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v2, v13);
    OUTLINED_FUNCTION_23_4();
    sub_1C87764B8(v15, v16);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v13);
    if (v0)
    {
      return result;
    }
  }

  v18 = (v1 + v14[8]);
  if (!v18[1] || (v19 = *v18, OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v0))
  {
    if (!*(*v1 + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteToken(0), sub_1C87764B8(&qword_1EC2B6CD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
    {
      v20 = v1 + v14[9];
      if ((v20[8] & 1) != 0 || (v21 = *v20, OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DCC(), !v0))
      {
        if (!*(v1[1] + 16))
        {
          return OUTLINED_FUNCTION_49_0();
        }

        type metadata accessor for Siri_Nlu_Internal_Token();
        OUTLINED_FUNCTION_5_5();
        sub_1C87764B8(v22, v23);
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_9_1();
        result = sub_1C8BD4E0C();
        if (!v0)
        {
          return OUTLINED_FUNCTION_49_0();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteUtterance.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_27_0();
  v22 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v21);
  v23 = v22[7];
  v24 = v18[14];
  sub_1C87E8DEC(v2 + v23, v3);
  sub_1C87E8DEC(a2 + v23, v3 + v24);
  OUTLINED_FUNCTION_73(v3);
  if (!v25)
  {
    sub_1C87E8DEC(v3, v17);
    OUTLINED_FUNCTION_73(v3 + v24);
    if (!v25)
    {
      sub_1C87E8E5C(v3 + v24, v11);
      v28 = static Siri_Nlu_External_UUID.== infix(_:_:)(v17, v11);
      sub_1C87E9274(v11);
      sub_1C87E9274(v17);
      sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87E9274(v17);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v3 + v24);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  v29 = v22[8];
  OUTLINED_FUNCTION_1();
  if (v32)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v31);
    v35 = v25 && v33 == v34;
    if (!v35 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  v36 = *v2;
  v37 = *a2;
  sub_1C87DD6C4();
  if (v38)
  {
    OUTLINED_FUNCTION_4_0(v22[9]);
    if (v40)
    {
      if (!v39)
      {
        goto LABEL_10;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v41)
      {
        goto LABEL_10;
      }
    }

    v42 = v2[1];
    v43 = a2[1];
    sub_1C87D85EC();
    if (v44)
    {
      v45 = v22[6];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_7();
      sub_1C87764B8(v46, v47);
      v26 = OUTLINED_FUNCTION_64_0();
      return v26 & 1;
    }
  }

LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C8828590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DC8, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8828610(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B6CE0, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8828680()
{
  sub_1C87764B8(&qword_1EC2B6CE0, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8828718()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C80);
  __swift_project_value_buffer(v0, qword_1EC2B6C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "original_utterances";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siri_response";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "locale";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "tap2edit";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "start_timestamp";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8828AF0(v3, v4, v5, v6, v7, &qword_1EC2B6CE0, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8828B8C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8828C1C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8828C80();
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C8828CE4(v9, v10, v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8828AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_1C87764B8(a6, a7);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8828B8C()
{
  type metadata accessor for Siri_Nlu_Internal_Token();
  OUTLINED_FUNCTION_5_5();
  sub_1C87764B8(v0, v1);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8828CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a5(0) + 36);
  OUTLINED_FUNCTION_55();
  return a6();
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0), sub_1C87764B8(&qword_1EC2B6CE0, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Siri_Nlu_Internal_Token(), OUTLINED_FUNCTION_5_5(), sub_1C87764B8(v4, v5), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
    {
      v6 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
      v7 = (v2 + v6[7]);
      if (!v7[1] || (v8 = *v7, OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v1))
      {
        if (*(v2 + v6[8]) == 2 || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4D3C(), !v1))
        {
          v9 = (v2 + v6[9]);
          if (v9[1])
          {
            return OUTLINED_FUNCTION_49_0();
          }

          v10 = *v9;
          OUTLINED_FUNCTION_29_1();
          result = sub_1C8BD4DFC();
          if (!v1)
          {
            return OUTLINED_FUNCTION_49_0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteInteraction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_1C87DD0B4();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  v8 = a2[1];
  sub_1C87D85EC();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  v11 = v10[7];
  OUTLINED_FUNCTION_1();
  if (v14)
  {
    if (!v12)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v13);
    v17 = v17 && v15 == v16;
    if (!v17 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(v10[8]);
  if (v17)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v19 ^ v18) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_0(v10[9]);
  if (v23)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v22)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v25 = v10[6];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_7();
  sub_1C87764B8(v26, v27);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C88290AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DC0, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882912C(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C882919C()
{
  sub_1C87764B8(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8829234()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C98);
  __swift_project_value_buffer(v0, qword_1EC2B6C98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "confidence";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "rewrite_type";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8829544();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C88295F8();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C882965C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C88296C0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8829544()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0) + 20);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87764B8(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88296C0()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0) + 32);
  sub_1C882A088();
  return sub_1C8BD4B4C();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.traverse<A>(visitor:)()
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_80_2();
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v14 = v13 - v12;
  v15 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C87E8DEC(v0 + v15[5], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v2, v14);
    OUTLINED_FUNCTION_23_4();
    sub_1C87764B8(v16, v17);
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v14);
    if (v1)
    {
      return result;
    }
  }

  v19 = (v0 + v15[6]);
  if (!v19[1] || (v20 = *v19, result = OUTLINED_FUNCTION_9_5(), (v3 = v1) == 0))
  {
    v21 = (v0 + v15[7]);
    if ((v21[1] & 1) != 0 || (v22 = *v21, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v3))
    {
      if (*(v0 + v15[8]) == 2 || (sub_1C882A088(), result = sub_1C8BD4D4C(), !v3))
      {
        OUTLINED_FUNCTION_55();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteHypothesis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_27_0();
  v22 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v21);
  v23 = v22[5];
  v24 = v18[14];
  sub_1C87E8DEC(v2 + v23, v3);
  sub_1C87E8DEC(a2 + v23, v3 + v24);
  OUTLINED_FUNCTION_73(v3);
  if (!v25)
  {
    sub_1C87E8DEC(v3, v17);
    OUTLINED_FUNCTION_73(v3 + v24);
    if (!v25)
    {
      sub_1C87E8E5C(v3 + v24, v11);
      v28 = static Siri_Nlu_External_UUID.== infix(_:_:)(v17, v11);
      sub_1C87E9274(v11);
      sub_1C87E9274(v17);
      sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87E9274(v17);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v3 + v24);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  v29 = v22[6];
  OUTLINED_FUNCTION_1();
  if (v32)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v31);
    v35 = v25 && v33 == v34;
    if (!v35 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_0(v22[7]);
  if (v37)
  {
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v38)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_47(v22[8]);
  if (v25)
  {
    if (v39 == 2)
    {
LABEL_32:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_7();
      sub_1C87764B8(v41, v42);
      OUTLINED_FUNCTION_117();
      v26 = sub_1C8BD517C();
      return v26 & 1;
    }
  }

  else if (v39 != 2 && ((v39 ^ v40) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C8829C4C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C87764B8(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8829D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DB8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8829DA8(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8829E18()
{
  sub_1C87764B8(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8829E98()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6CB0);
  __swift_project_value_buffer(v0, qword_1EC2B6CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CORRECTION";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REFERENCE_RESOLUTION";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

unint64_t sub_1C882A088()
{
  result = qword_1EC2B6CF0;
  if (!qword_1EC2B6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6CF0);
  }

  return result;
}

unint64_t sub_1C882A0E0()
{
  result = qword_1EC2B6D00;
  if (!qword_1EC2B6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D00);
  }

  return result;
}

unint64_t sub_1C882A138()
{
  result = qword_1EC2B6D08;
  if (!qword_1EC2B6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D08);
  }

  return result;
}

unint64_t sub_1C882A190()
{
  result = qword_1EC2B6D10;
  if (!qword_1EC2B6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D10);
  }

  return result;
}

unint64_t sub_1C882A1E8()
{
  result = qword_1EC2B6D18;
  if (!qword_1EC2B6D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B6D20, &qword_1C8BEB1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D18);
  }

  return result;
}

uint64_t sub_1C882A6F4()
{
  v0 = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD380);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_1C87EB4B0(319, &qword_1EDACD390);
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1C87EB4B0(319, &qword_1EDACA2B8);
        v0 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_1C882A844()
{
  sub_1C882A9D8(319, &qword_1EC2B6D90, type metadata accessor for Siri_Nlu_Internal_RewriteToken, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C882A9D8(319, &qword_1EC2B2F68, type metadata accessor for Siri_Nlu_Internal_Token, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C882A9D8(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACD3E8);
          if (v4 <= 0x3F)
          {
            sub_1C87EB4B0(319, &qword_1EDACD390);
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

void sub_1C882A9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C882AA64()
{
  sub_1C882A9D8(319, &qword_1EC2B6DA8, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C882A9D8(319, &qword_1EC2B2F68, type metadata accessor for Siri_Nlu_Internal_Token, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD3E8);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACA2B8);
          if (v4 <= 0x3F)
          {
            sub_1C87EB4B0(319, &qword_1EDACD378);
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

void sub_1C882AC00()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C882A9D8(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD390);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2B6DB0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_RewriteHypothesis.RewriteType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_41_3()
{
  result = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_2()
{

  return sub_1C8778ED8(v2, v0, v1);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_7_7();
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

uint64_t type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse()
{
  result = qword_1EC2B4240;
  if (!qword_1EC2B4240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C882AFE0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v5);
  return Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.setter(v5);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.modify(void *a1))(uint64_t **a1, char a2)
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 24);
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

BOOL Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_7_7();
  sub_1C87E8DEC(v0 + *(v6 + 24), v1);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v8;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.mentions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 28));
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

uint64_t sub_1C882B410(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 28);
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

Swift::Void __swiftcall Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.clearRewrittenUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  v3 = a1 + v2[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  result = __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v7 = (a1 + v2[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C882B760()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B2FA0);
  __swift_project_value_buffer(v0, qword_1EC2B2FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
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
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "rewritten_utterance";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_MentionResolver_MentionResolverResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B2F98 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B2FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.decodeMessage<A>(decoder:)()
{
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
        sub_1C882BBF8();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C882BB58();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C882BAA4();
        break;
    }
  }

  return result;
}

uint64_t sub_1C882BAA4()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse() + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C882C680(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C882BB58()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C882C680(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  sub_1C87E8DEC(v3 + v16[6], v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C8778ED8(v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v9, v15);
    sub_1C882C680(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    v2 = v1;
    result = sub_1C87E9274(v15);
    if (v1)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C882C680(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), (v2 = v1) == 0))
  {
    v18 = (v3 + v16[7]);
    if (!v18[1] || (v19 = *v18, result = sub_1C8BD4DDC(), !v2))
    {
      v20 = v3 + v16[5];
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  v22 = v21[6];
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
    goto LABEL_21;
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
    goto LABEL_21;
  }

LABEL_11:
  v26 = *a1;
  v27 = *a2;
  sub_1C87D27C0();
  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

  v29 = v21[7];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v36 = 0;
    return v36 & 1;
  }

  if (v33)
  {
    goto LABEL_21;
  }

LABEL_19:
  v35 = v21[5];
  sub_1C8BD49FC();
  sub_1C882C680(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v36 = sub_1C8BD517C();
  return v36 & 1;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  sub_1C882C680(&qword_1EC2B6DD8, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C882C250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C882C680(&qword_1EC2B6DF0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882C2D0(uint64_t a1)
{
  v2 = sub_1C882C680(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C882C340()
{
  sub_1C882C680(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);

  return sub_1C8BD4CFC();
}

void sub_1C882C508()
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
        sub_1C87E8A54();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C882C61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C882C680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_7()
{

  return type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
}

uint64_t Siri_Nlu_Internal_Token.value.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C882C738(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Token.value.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Token.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Token() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Token.value.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_20_3(v1) + 28);
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

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Token.clearValue()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Token() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Siri_Nlu_Internal_Token.begin.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 32));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_Internal_Token.end.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 36));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_Internal_Token.isSignificant.setter()
{
  result = OUTLINED_FUNCTION_13_10();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Token.isSignificant.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_21_1(*(v1 + 40));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Token.isWhitespace.setter()
{
  result = OUTLINED_FUNCTION_13_10();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Token.isWhitespace.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_21_1(*(v1 + 44));
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Token.cleanValues.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Token.tokenIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token();
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

uint64_t (*Siri_Nlu_Internal_Token.tokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 48));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_Internal_Token.nonWhitespaceTokenIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token();
  OUTLINED_FUNCTION_4(*(v0 + 52));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t (*Siri_Nlu_Internal_Token.nonWhitespaceTokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 52));
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_Internal_Token.cleanValue.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 56)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C882CE20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Token.cleanValue.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Token.cleanValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Token() + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Token.cleanValue.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_20_3(v1) + 56);
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

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Token.clearCleanValue()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Token() + 56));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Token.normalizedValues.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Token.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Token() + 24);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_Token.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Token() + 24);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C882D13C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4BF0);
  __swift_project_value_buffer(v0, qword_1EC2B4BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C8BE8D50;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "begin";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v27 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "end";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v27 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_significant";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_whitespace";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "clean_values";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "token_index";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "non_whitespace_token_index";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "clean_value";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "normalized_values";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Token._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4BE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4BF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Token.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Token();
  v3 = (v0 + v2[7]);
  if (!v3[1] || (v4 = *v3, result = OUTLINED_FUNCTION_19_5(), !v1))
  {
    OUTLINED_FUNCTION_18_8(v2[8]);
    if ((v7 & 1) != 0 || (v8 = *v6, OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v1))
    {
      OUTLINED_FUNCTION_18_8(v2[9]);
      if ((v10 & 1) != 0 || (v11 = *v9, OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v1))
      {
        if (*(v0 + v2[10]) == 2 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
        {
          if (*(v0 + v2[11]) == 2 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
          {
            if (!*(*v0 + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DAC(), !v1))
            {
              OUTLINED_FUNCTION_18_8(v2[12]);
              if ((v13 & 1) != 0 || (v14 = *v12, OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v1))
              {
                OUTLINED_FUNCTION_18_8(v2[13]);
                if ((v16 & 1) != 0 || (v17 = *v15, OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v1))
                {
                  v18 = (v0 + v2[14]);
                  if (!v18[1] || (v19 = *v18, result = OUTLINED_FUNCTION_19_5(), !v1))
                  {
                    if (!*(v0[1] + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DAC(), !v1))
                    {
                      v20 = v0 + v2[6];
                      return sub_1C8BD49DC();
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

  return result;
}

uint64_t static Siri_Nlu_Internal_Token.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_Token();
  v5 = v4[7];
  OUTLINED_FUNCTION_1();
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *v8 == *v9 && v6 == v7;
    if (!v10 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11(v4[8]);
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

  OUTLINED_FUNCTION_11(v4[9]);
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

  v17 = v4[10];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[11];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  if (sub_1C87D2814(*a1, *a2))
  {
    OUTLINED_FUNCTION_11(v4[12]);
    if (v24)
    {
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      if (v25)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_11(v4[13]);
    if (v27)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      if (v28)
      {
        return 0;
      }
    }

    v29 = v4[14];
    OUTLINED_FUNCTION_1();
    if (v30)
    {
      if (!v31)
      {
        return 0;
      }

      v34 = *v32 == *v33 && v30 == v31;
      if (!v34 && (sub_1C8BD529C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v31)
    {
      return 0;
    }

    if (sub_1C87D2814(a1[1], a2[1]))
    {
      v35 = v4[6];
      sub_1C8BD49FC();
      sub_1C8776500(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      return sub_1C8BD517C() & 1;
    }
  }

  return 0;
}

uint64_t Siri_Nlu_Internal_Token.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Token();
  sub_1C8776500(&qword_1EC2B6DF8, type metadata accessor for Siri_Nlu_Internal_Token);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C882DA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776500(&qword_1EC2B6E08, type metadata accessor for Siri_Nlu_Internal_Token);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882DAC4(uint64_t a1)
{
  v2 = sub_1C8776500(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C882DB34()
{
  sub_1C8776500(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C882DCE8()
{
  sub_1C882DE84(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C8BD49FC();
    if (v3 <= 0x3F)
    {
      sub_1C882DE84(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1C882DE84(319, &qword_1EDACD388, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_1C882DE84(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          if (v9 > 0x3F)
          {
            return v8;
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

void sub_1C882DE84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void Siri_Nlu_External_UserParse.interpretableAsUniversalCommand.getter()
{
  v73 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  v1 = OUTLINED_FUNCTION_80(v73);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_33();
  v69[2] = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v7 = OUTLINED_FUNCTION_80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_0();
  v69[1] = v10;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  v71 = v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v72 = v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v74 = v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v75 = v69 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v69 - v32;
  v34 = type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  v35 = OUTLINED_FUNCTION_13_1(v34);
  v76 = v36;
  v77 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_33();
  v41 = v40 - v39;
  v42 = 0;
  v70 = v0;
  v43 = *v0;
  v78 = *(*v0 + 16);
  while (v78 != v42)
  {
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
      return;
    }

    sub_1C882F0A0(v43 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v42, v41, type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v44 = *(v41 + *(v77 + 20));
    v45 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
    OUTLINED_FUNCTION_277();
    sub_1C8786744(v44 + v45, v33, &qword_1EC2B6E28, &unk_1C8C10580);
    v46 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
    LODWORD(v45) = __swift_getEnumTagSinglePayload(v33, 1, v46);
    v47 = OUTLINED_FUNCTION_218();
    sub_1C8778ED8(v47, v48, &unk_1C8C10580);
    if (v45 != 1)
    {
      goto LABEL_10;
    }

    v49 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
    OUTLINED_FUNCTION_277();
    v50 = v75;
    sub_1C8786744(v44 + v49, v75, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    v51 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
    LODWORD(v49) = __swift_getEnumTagSinglePayload(v50, 1, v51);
    sub_1C8778ED8(v50, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    if (v49 != 1)
    {
      goto LABEL_10;
    }

    v52 = v43;
    v53 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
    OUTLINED_FUNCTION_277();
    v54 = v74;
    sub_1C8786744(v44 + v53, v74, &qword_1EC2B6E18, &qword_1C8BEBC48);
    v55 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
    __swift_getEnumTagSinglePayload(v54, 1, v55);
    v56 = OUTLINED_FUNCTION_12_6();
    sub_1C8778ED8(v56, v57, &qword_1C8BEBC48);
    if (v53 != 1)
    {
      goto LABEL_10;
    }

    v58 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
    OUTLINED_FUNCTION_277();
    v59 = v72;
    sub_1C8786744(v44 + v58, v72, &qword_1EC2B6E10, &unk_1C8BF5000);
    v60 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
    __swift_getEnumTagSinglePayload(v59, 1, v60);
    v61 = OUTLINED_FUNCTION_12_6();
    sub_1C8778ED8(v61, v62, &unk_1C8BF5000);
    if (v58 != 1)
    {
LABEL_10:
      OUTLINED_FUNCTION_7_8();
      sub_1C882F0FC(v41, v68);
      return;
    }

    v63 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
    OUTLINED_FUNCTION_277();
    v64 = v71;
    sub_1C8786744(v44 + v63, v71, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    __swift_getEnumTagSinglePayload(v64, 1, v73);
    v65 = OUTLINED_FUNCTION_12_6();
    sub_1C8778ED8(v65, v66, &unk_1C8BF4FD0);
    OUTLINED_FUNCTION_7_8();
    sub_1C882F0FC(v41, v67);
    ++v42;
    v43 = v52;
  }
}

uint64_t sub_1C882E508(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34[-v7];
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v15 = (v14 - v13);
  v16 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  sub_1C8786744(a1 + *(v16 + 20), v8, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v17 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v17, v18, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v15 = MEMORY[0x1E69E7CC0];
    v15[1] = v19;
    v15[2] = v19;
    v15[3] = v19;
    v15[4] = v19;
    v20 = v15 + *(v9 + 36);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v21 = *(v9 + 40);
    v22 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_43(v15 + v21, v23, v24, v22);
    v25 = OUTLINED_FUNCTION_120();
    if (__swift_getEnumTagSinglePayload(v25, v26, v9) != 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    sub_1C879A6C4(v8, v15, v27);
  }

  v28 = v15[2];

  OUTLINED_FUNCTION_0_7();
  v30 = sub_1C882F0FC(v15, v29);
  MEMORY[0x1EEE9AC00](v30);
  *&v34[-16] = v1;
  v31 = sub_1C8886B28(sub_1C882F080, &v34[-32], v28);

  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_1C882E99C(a1);
  }

  return v32 & 1;
}

uint64_t sub_1C882E704(uint64_t a1)
{
  v3 = sub_1C8BD493C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  v9 = v8;
  v10 = a1 + *(v8 + 20);
  if ((*(v10 + 4) & 1) == 0 && *v10)
  {
    goto LABEL_3;
  }

  v12 = (a1 + *(v8 + 24));
  v13 = v12[1];
  v27[1] = v1;
  if (v13)
  {
    v14 = *v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  if (v14 == 0xD000000000000015 && 0x80000001C8C1FA90 == v15)
  {
  }

  else
  {
    v17 = sub_1C8BD529C();

    if ((v17 & 1) == 0)
    {
      v11 = 0;
      return v11 & 1;
    }
  }

  Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
  v18 = sub_1C8BD490C();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  if (v18 == 0xD000000000000010 && 0x80000001C8C1FAB0 == v20)
  {
  }

  else
  {
    v22 = sub_1C8BD529C();

    if ((v22 & 1) == 0)
    {
LABEL_3:
      v11 = 0;
      return v11 & 1;
    }
  }

  v23 = (a1 + *(v9 + 28));
  v24 = v23[1];
  if (v24 && (v24 == 0xE400000000000000 ? (v25 = *v23 == 1702195828) : (v25 = 0), v25))
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_1C8BD529C();
  }

  return v11 & 1;
}

uint64_t sub_1C882E99C(uint64_t a1)
{
  v2 = sub_1C8BD499C();
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v118 = v4;
  v119 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_0();
  v117 = v7;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v114 - v9;
  v10 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v11 = OUTLINED_FUNCTION_13_1(v10);
  v125 = v12;
  v126 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_0();
  v115 = v15;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v114 - v17;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v114 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v22 = OUTLINED_FUNCTION_80(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10_0();
  v121 = v25;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v114 - v27;
  OUTLINED_FUNCTION_83_0();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v114 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v114 - v32;
  v34 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v35 = OUTLINED_FUNCTION_21(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_10_0();
  v120 = v38;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v39);
  v123 = (&v114 - v40);
  OUTLINED_FUNCTION_83_0();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = (&v114 - v43);
  MEMORY[0x1EEE9AC00](v42);
  v46 = (&v114 - v45);
  v127 = *(type metadata accessor for Siri_Nlu_External_UserStatedTask(0) + 20);
  sub_1C8786744(a1 + v127, v33, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v34);
  v48 = MEMORY[0x1E69E7CC0];
  if (EnumTagSinglePayload == 1)
  {
    *v46 = MEMORY[0x1E69E7CC0];
    v46[1] = v48;
    v46[2] = v48;
    v46[3] = v48;
    v46[4] = v48;
    v49 = v46 + *(v34 + 36);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v50 = *(v34 + 40);
    v51 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_43(v46 + v50, v52, v53, v51);
    OUTLINED_FUNCTION_66_0(v33);
    if (!v54)
    {
      sub_1C8778ED8(v33, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    sub_1C879A6C4(v33, v46, v55);
  }

  v56 = *v46;

  OUTLINED_FUNCTION_0_7();
  sub_1C882F0FC(v46, v57);
  v58 = *(v56 + 16);

  if (v58 < 2)
  {
    v59 = 0;
    return v59 & 1;
  }

  v61 = a1;
  sub_1C8786744(a1 + v127, v31, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_66_0(v31);
  if (v54)
  {
    OUTLINED_FUNCTION_15_5();
    v62 = *(v34 + 40);
    v63 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_43(v44 + v62, v64, v65, v63);
    OUTLINED_FUNCTION_66_0(v31);
    v68 = v125;
    v67 = v126;
    if (!v54)
    {
      sub_1C8778ED8(v31, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    sub_1C879A6C4(v31, v44, v66);
    v68 = v125;
    v67 = v126;
  }

  v69 = *v44;

  OUTLINED_FUNCTION_0_7();
  result = sub_1C882F0FC(v44, v70);
  if (!*(v69 + 16))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  OUTLINED_FUNCTION_3_7();
  sub_1C882F0A0(v69 + v71, v20, v72);

  v73 = &v20[*(v67 + 24)];
  v74 = *v73;
  v75 = v73[4];
  OUTLINED_FUNCTION_2_13();
  sub_1C882F0FC(v20, v76);
  v59 = 0;
  if ((v75 & 1) != 0 || v74 != 1)
  {
    return v59 & 1;
  }

  v77 = v124;
  sub_1C8786744(v61 + v127, v124, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_66_0(v77);
  if (v54)
  {
    v82 = v123;
    OUTLINED_FUNCTION_15_5();
    v78 = *(v34 + 40);
    v79 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_43(v82 + v78, v80, v81, v79);
    OUTLINED_FUNCTION_66_0(v77);
    if (!v54)
    {
      sub_1C8778ED8(v77, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    v82 = v123;
    sub_1C879A6C4(v77, v123, v83);
  }

  v84 = *v82;

  OUTLINED_FUNCTION_0_7();
  result = sub_1C882F0FC(v82, v85);
  if (*(v84 + 16) < 2uLL)
  {
    goto LABEL_29;
  }

  v86 = *(v68 + 72);
  OUTLINED_FUNCTION_3_7();
  v88 = v122;
  sub_1C882F0A0(v87 + v86, v122, v89);

  v90 = v88 + *(v67 + 24);
  v91 = *v90;
  v92 = *(v90 + 4);
  OUTLINED_FUNCTION_2_13();
  sub_1C882F0FC(v88, v93);
  v59 = 0;
  if ((v92 & 1) != 0 || v91 != 3108)
  {
    return v59 & 1;
  }

  v94 = v121;
  sub_1C8786744(v61 + v127, v121, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_66_0(v94);
  if (v54)
  {
    v100 = v120;
    *v120 = v48;
    v100[1] = v48;
    v100[2] = v48;
    v100[3] = v48;
    v100[4] = v48;
    v95 = v100 + *(v34 + 36);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v96 = *(v34 + 40);
    v97 = type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_43(v100 + v96, v98, v99, v97);
    OUTLINED_FUNCTION_66_0(v94);
    if (!v54)
    {
      sub_1C8778ED8(v94, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    v100 = v120;
    sub_1C879A6C4(v94, v120, v101);
  }

  v102 = *v100;

  OUTLINED_FUNCTION_0_7();
  result = sub_1C882F0FC(v100, v103);
  if (*(v102 + 16) >= 2uLL)
  {
    OUTLINED_FUNCTION_3_7();
    v105 = v104 + v86;
    v106 = v115;
    sub_1C882F0A0(v105, v115, v107);

    v108 = v116;
    Siri_Nlu_External_UsoNode.usoVerbElementID.getter();
    OUTLINED_FUNCTION_2_13();
    sub_1C882F0FC(v106, v109);
    v110 = v117;
    sub_1C8BD494C();
    v59 = MEMORY[0x1CCA7DA50](v108, v110);
    v111 = *(v118 + 8);
    v112 = v110;
    v113 = v119;
    v111(v112, v119);
    v111(v108, v113);
    return v59 & 1;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1C882F0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

uint64_t sub_1C882F0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecision.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 28)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecision.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v3);
  *(v2 + *(result + 28)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecision.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 28));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.status.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 32)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.status.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v3);
  *(v2 + *(result + 32)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.status.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 32));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.siriXRewriteUtterances.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.queryRewrites.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecisionSource.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 36)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecisionSource.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v3);
  *(v2 + *(result + 36)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecisionSource.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 36));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.genAiMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_170();
  v11 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v10);
  OUTLINED_FUNCTION_73_2(v2 + *(v11 + 40), v1);
  v12 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_65(v1);
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + v12[5]) = 5;
    *(a1 + v12[6]) = 3;
    v14 = v12[7];
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.genAiMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = OUTLINED_FUNCTION_44_3();
  *(a1 + v3) = 5;
  *(a1 + *(v2 + 24)) = 3;
  v4 = *(v2 + 28);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.genAiMetadata.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v1 + 8) = v6;
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v13) + 40);
  *(v1 + 40) = v14;
  OUTLINED_FUNCTION_67_2(v0 + v14, v6);
  v15 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v15, v16, v7);
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v9 + v7[5]) = 5;
    *(v9 + v7[6]) = 3;
    v18 = v7[7];
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v23, v24, v7);
    if (!v17)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.hasGenAiMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v6);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 40));
  OUTLINED_FUNCTION_94_0(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_10(v10);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterServiceResponse.clearGenAiMetadata()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  sub_1C8778ED8(v0 + *(v1 + 40), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C882FB68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.setter(v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_70_1();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_70_1();
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

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterServiceResponse.clearHeuristicRule()()
{
  OUTLINED_FUNCTION_70_1();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v2) + 24);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v2) + 24);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v0) + 24);
  return nullsub_1;
}

uint64_t sub_1C882FDFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832D04();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C882FE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832CB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C882FEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C5C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  v4 = a1 + v3[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + v3[7]) = 7;
  *(a1 + v3[8]) = 6;
  *(a1 + v3[9]) = 4;
  v5 = v3[10];
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v11 = (a1 + v3[11]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.utteranceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v9);
  v11 = OUTLINED_FUNCTION_13(*(v10 + 20));
  OUTLINED_FUNCTION_73_2(v11, v12);
  v13 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65(v1);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v13[5]);
    OUTLINED_FUNCTION_313(a1 + v13[6]);
    *(a1 + v13[7]) = 6;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v14)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t sub_1C8830158()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.utteranceID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_UUID();
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.utteranceID.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_43_0(v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v13);
  OUTLINED_FUNCTION_28_5(*(v14 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(v9 + v7[5]);
    OUTLINED_FUNCTION_313(v9 + v7[6]);
    *(v9 + v7[7]) = 6;
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8830370()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C88303C4()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.getter()
{
  OUTLINED_FUNCTION_71_0();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88304D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_71_0();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_71_0();
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

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.clearRewriteUtterance()()
{
  OUTLINED_FUNCTION_71_0();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.routingDecision.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v0);
  OUTLINED_FUNCTION_64_2(*(v1 + 28));
  OUTLINED_FUNCTION_63_2(v2);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.routingDecision.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v3);
  *(v2 + *(result + 28)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.routingDecision.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 28));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.hasRoutingDecision.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  OUTLINED_FUNCTION_64_2(*(v0 + 28));
  return !v1;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.correctionOutcome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v9);
  v11 = OUTLINED_FUNCTION_13(*(v10 + 32));
  OUTLINED_FUNCTION_73_2(v11, v12);
  v13 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_65(v1);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v13 + 20)) = 2;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v14)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.correctionOutcome.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.correctionOutcome.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v14);
  OUTLINED_FUNCTION_28_5(*(v15 + 32));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v10 + *(v8 + 20)) = 2;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.hasCorrectionOutcome.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v6);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 32));
  OUTLINED_FUNCTION_94_0(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_10(v10);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.clearCorrectionOutcome()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8830B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8837860();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  v3 = v2[5];
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (a1 + v2[6]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + v2[7]) = 5;
  v9 = v2[8];
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.prescribedTool.getter()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_64_2(v0);
  OUTLINED_FUNCTION_63_2(v1);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.prescribedTool.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_44_3();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.prescribedTool.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 20));
  OUTLINED_FUNCTION_24_5(v3);
  return j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.hasPrescribedTool.getter()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_64_2(v0);
  return !v1;
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.queryType.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 24)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.queryType.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v3);
  *(v2 + *(result + 24)) = v1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.queryType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 24));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.query.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_170();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v8);
  OUTLINED_FUNCTION_73_2(v1 + *(v9 + 28), v0);
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  OUTLINED_FUNCTION_65(v0);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v10 + 20);
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    v17 = *(v10 + 24);
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v11)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F98, &qword_1C8BE6C48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.query.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B5F98, &qword_1C8BE6C48);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  v1 = *(v0 + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.query.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v1 + 8) = v6;
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v12) + 28);
  *(v1 + 40) = v13;
  OUTLINED_FUNCTION_67_2(v0 + v13, v6);
  v14 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = *(v7 + 20);
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = *(v7 + 24);
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v27, v28, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5F98, &qword_1C8BE6C48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.hasQuery.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v6);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 28));
  OUTLINED_FUNCTION_94_0(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  OUTLINED_FUNCTION_10(v10);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.clearQuery()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B5F98, &qword_1C8BE6C48);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C88313FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8837908();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8831468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88378B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.explicitQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v9);
  v11 = OUTLINED_FUNCTION_13(*(v10 + 20));
  OUTLINED_FUNCTION_73_2(v11, v12);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_65(v1);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v13 + 20)) = 2;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v14)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6EF8, &qword_1C8BEBC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.explicitQuery.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_45_3();
  *(a1 + v3) = 2;
  return result;
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.explicitQuery.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v14);
  OUTLINED_FUNCTION_28_5(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v10 + *(v8 + 20)) = 2;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C88317C0()
{
  OUTLINED_FUNCTION_50();
  v6 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_65_0();
  v13 = v2(v12);
  sub_1C8786744(v1 + *(v13 + 20), v4, v6, v3);
  v14 = v0(0);
  OUTLINED_FUNCTION_76(v4, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_1C8778ED8(v4, v6, v3);
  return v16;
}

uint64_t sub_1C88318B8()
{
  OUTLINED_FUNCTION_50();
  v5 = v4(0);
  sub_1C8778ED8(v1 + *(v5 + 20), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.implicitQuery.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 24));
  OUTLINED_FUNCTION_73_2(v9, v10);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_65(v0);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_65(v0);
    if (!v11)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6F00, &qword_1C8BEBC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t sub_1C8831A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C8830370();
  return a7(v13);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.implicitQuery.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.implicitQuery.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v13);
  OUTLINED_FUNCTION_28_5(*(v14 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6F00, &qword_1C8BEBC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8831C48()
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
    sub_1C8830370();
    sub_1C8778ED8(v10 + v5, v4, v3);
    sub_1C8830158();
    OUTLINED_FUNCTION_26_1();
    sub_1C88303C4();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v1, v2);
    sub_1C8830158();
    OUTLINED_FUNCTION_26_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v13);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.hasImplicitQuery.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v6);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 24));
  OUTLINED_FUNCTION_94_0(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_10(v10);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.clearImplicitQuery()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B6F00, &qword_1C8BEBC88);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_45_3();
  *a1 = *(v1 + v4) & 1;
  return result;
}

uint64_t sub_1C8831E5C@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_45_3();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v2);
  OUTLINED_FUNCTION_53_3(*(v3 + 20));
  *(v1 + 12) = v4 & 1;
  return j__OUTLINED_FUNCTION_158;
}

SiriNLUTypes::Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata::AjaxQuery::Explicit::GenAIPartner_optional __swiftcall Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.GenAIPartner.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_1C8831FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C883795C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8832048@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.GenAIPartner.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C88320FC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3608);
  __swift_project_value_buffer(v0, qword_1EC2B3608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "routing_decision";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "siri_x_rewrite_utterances";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "query_rewrites";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "routingDecisionSource";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "gen_ai_metadata";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "heuristic_rule";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8833FBC();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8832538();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88325AC();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C883264C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C88326EC();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C8832760();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C8832814();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8832538()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0) + 32);
  sub_1C8832CB0();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C88325AC()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C883264C()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C88326EC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0) + 36);
  sub_1C8832C5C();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C8832760()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0) + 40);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  if (*(v0 + v13[7]) == 7 || (sub_1C8832D04(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4D4C(), (v3 = v1) == 0))
  {
    if (*(v0 + v13[8]) == 6 || (sub_1C8832CB0(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4D4C(), (v3 = v1) == 0))
    {
      if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0), OUTLINED_FUNCTION_35_2(), sub_1C8832C14(v14, v15), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_39_3(), sub_1C8BD4E0C(), (v3 = v1) == 0))
      {
        if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0), OUTLINED_FUNCTION_35_2(), sub_1C8832C14(v16, v17), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_39_3(), sub_1C8BD4E0C(), (v3 = v1) == 0))
        {
          if (*(v0 + v13[9]) == 4 || (sub_1C8832C5C(), OUTLINED_FUNCTION_39_3(), sub_1C8BD4D4C(), (v3 = v1) == 0))
          {
            sub_1C8786744(v0 + v13[10], v2, &qword_1EC2B5FA8, &unk_1C8BEBC60);
            if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
            {
              sub_1C8778ED8(v2, &qword_1EC2B5FA8, &unk_1C8BEBC60);
            }

            else
            {
              sub_1C8830158();
              sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);
              OUTLINED_FUNCTION_39_3();
              sub_1C8BD4E2C();
              v3 = v1;
              sub_1C88303C4();
              if (v1)
              {
                goto LABEL_17;
              }
            }

            v18 = (v0 + v13[11]);
            if (!v18[1] || (v19 = *v18, sub_1C8BD4DDC(), !v3))
            {
              v20 = v0 + v13[6];
              sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8832C14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8832C5C()
{
  result = qword_1EC2B35D8;
  if (!qword_1EC2B35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35D8);
  }

  return result;
}

unint64_t sub_1C8832CB0()
{
  result = qword_1EC2B3688;
  if (!qword_1EC2B3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3688);
  }

  return result;
}

unint64_t sub_1C8832D04()
{
  result = qword_1EC2B3640;
  if (!qword_1EC2B3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3640);
  }

  return result;
}

uint64_t sub_1C8833168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B70B0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88331E8(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B7038, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8833258()
{
  sub_1C8832C14(&qword_1EC2B7038, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88332D8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3650);
  __swift_project_value_buffer(v0, qword_1EC2B3650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTING_DECISION_UNSET";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTING_DECISION_SIRI_X_NO_REWRITE";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTING_DECISION_SIRI_X_REWRITE";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTING_DECISION_PLANNER";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NL_ROUTING_DECISION_QUERY_REWRITE";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NL_ROUTING_DECISION_GEN_AI";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NL_ROUTING_DECISION_SEARCH";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88335F8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3698);
  __swift_project_value_buffer(v0, qword_1EC2B3698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_UNSET";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_SUCCEEDED";
  *(v10 + 8) = 43;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_CLIENT_NOT_INITIALIZED";
  *(v12 + 1) = 56;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_INPUT_INVALID";
  *(v14 + 1) = 47;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_NO_CLIENT_RESPONSE";
  *(v16 + 1) = 52;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_OVERRIDES_MATCHED";
  *(v18 + 1) = 51;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88338E0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B35E8);
  __swift_project_value_buffer(v0, qword_1EC2B35E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTING_DECISION_SOURCE_UNSET";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTING_DECISION_SOURCE_OVERRIDE";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTING_DECISION_SOURCE_MODEL";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTING_DECISION_SOURCE_HEURISTIC_RULE";
  *(v14 + 1) = 41;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8833B60()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3540);
  __swift_project_value_buffer(v0, qword_1EC2B3540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrite_utterance";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "routing_decision";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "correction_outcome";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8833EA4();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8833F58();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8833FBC();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C883400C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8833EA4()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0) + 20);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8832C14(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8833FBC()
{
  v1 = OUTLINED_FUNCTION_47_2();
  v3 = *(v2(v1) + 28);
  v0();
  return OUTLINED_FUNCTION_57_1();
}

uint64_t sub_1C883400C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0) + 32);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  sub_1C8832C14(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v37 = v3;
  v38 = v4;
  v36 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v33 - v10;
  v35 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v11 = OUTLINED_FUNCTION_21(v35);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_66_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_UUID();
  v22 = OUTLINED_FUNCTION_21(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v25 = OUTLINED_FUNCTION_65_0();
  v26 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v25);
  sub_1C8786744(v0 + v26[5], v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_33_3();
  if (__swift_getEnumTagSinglePayload(v27, v28, v29) == 1)
  {
    sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C8830158();
    sub_1C8832C14(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_82_2();
    OUTLINED_FUNCTION_50_3();
    sub_1C8BD4E2C();
    v2 = v1;
    sub_1C88303C4();
    if (v1)
    {
      goto LABEL_12;
    }
  }

  v30 = (v0 + v26[6]);
  if (!v30[1] || (v31 = *v30, v1 = v2, sub_1C8BD4DDC(), !v2))
  {
    if (*(v0 + v26[7]) == 5 || (sub_1C8837860(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4D4C(), !v1))
    {
      v32 = v34;
      sub_1C8786744(v0 + v26[8], v34, &qword_1EC2B6EF0, &unk_1C8BEBC70);
      if (__swift_getEnumTagSinglePayload(v32, 1, v35) == 1)
      {
        sub_1C8778ED8(v32, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_11:
        OUTLINED_FUNCTION_76_0();
        goto LABEL_12;
      }

      sub_1C8830158();
      sub_1C8832C14(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
      OUTLINED_FUNCTION_50_3();
      sub_1C8BD4E2C();
      sub_1C88303C4();
      if (!v1)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v66 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v4 = OUTLINED_FUNCTION_21(v66);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v64[1] = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_66_3(v13);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F10, &unk_1C8BF50D0);
  OUTLINED_FUNCTION_21(v65);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v67 = v64 - v17;
  v18 = type metadata accessor for Siri_Nlu_External_UUID();
  v19 = OUTLINED_FUNCTION_21(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33();
  v24 = v23 - v22;
  v25 = OUTLINED_FUNCTION_218();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_80(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v64 - v31;
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v64 - v36;
  v68 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  v69 = v3;
  v38 = *(v68 + 20);
  v39 = v33[14];
  OUTLINED_FUNCTION_27(v3 + v38, v37);
  OUTLINED_FUNCTION_27(v1 + v38, &v37[v39]);
  OUTLINED_FUNCTION_65(v37);
  if (v40)
  {
    OUTLINED_FUNCTION_65(&v37[v39]);
    if (v40)
    {
      sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_14;
    }

LABEL_9:
    v41 = &qword_1EC2B5EE8;
    v42 = &unk_1C8BE6F90;
    v43 = v37;
LABEL_10:
    sub_1C8778ED8(v43, v41, v42);
    goto LABEL_11;
  }

  sub_1C8786744(v37, v32, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_65(&v37[v39]);
  if (v40)
  {
    sub_1C88303C4();
    goto LABEL_9;
  }

  sub_1C8830158();
  v45 = static Siri_Nlu_External_UUID.== infix(_:_:)(v32, v24);
  sub_1C88303C4();
  sub_1C88303C4();
  sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v46 = v68;
  v47 = v69;
  v48 = *(v68 + 24);
  v49 = (v69 + v48);
  v50 = *(v69 + v48 + 8);
  v51 = (v1 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_11;
    }

    v53 = *v49 == *v51 && v50 == v52;
    if (!v53 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v52)
  {
    goto LABEL_11;
  }

  v54 = *(v46 + 28);
  v55 = *(v47 + v54);
  v56 = *(v1 + v54);
  if (v55 == 5)
  {
    if (v56 != 5)
    {
      goto LABEL_11;
    }
  }

  else if (v55 != v56)
  {
    goto LABEL_11;
  }

  v57 = *(v46 + 32);
  v58 = *(v65 + 48);
  v59 = v67;
  OUTLINED_FUNCTION_27(v47 + v57, v67);
  OUTLINED_FUNCTION_27(v1 + v57, v59 + v58);
  OUTLINED_FUNCTION_76(v59, 1, v66);
  if (v40)
  {
    OUTLINED_FUNCTION_24(v59 + v58);
    if (v40)
    {
      sub_1C8778ED8(v59, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_37:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_8();
      sub_1C8832C14(v62, v63);
      OUTLINED_FUNCTION_97();
      v44 = sub_1C8BD517C();
      goto LABEL_12;
    }

    goto LABEL_35;
  }

  sub_1C8786744(v59, v64[2], &qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_24(v59 + v58);
  if (v60)
  {
    sub_1C88303C4();
LABEL_35:
    v41 = &qword_1EC2B6F10;
    v42 = &unk_1C8BF50D0;
    v43 = v59;
    goto LABEL_10;
  }

  sub_1C8830158();
  v61 = static Siri_Nlu_External_CorrectionOutcome.== infix(_:_:)();
  sub_1C88303C4();
  sub_1C88303C4();
  sub_1C8778ED8(v59, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  if (v61)
  {
    goto LABEL_37;
  }

LABEL_11:
  v44 = 0;
LABEL_12:
  OUTLINED_FUNCTION_157(v44);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88349E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B70A8, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8834A64(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8834AD4()
{
  sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8834B54()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3588);
  __swift_project_value_buffer(v0, qword_1EC2B3588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTER_ROUTING_DECISION_UNSET";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTER_ROUTING_DECISION_SIRI_X";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTER_ROUTING_DECISION_PLANNER";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTER_ROUTING_DECISION_GEN_AI";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NL_ROUTER_ROUTING_DECISION_SEARCH";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8834E0C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3738);
  __swift_project_value_buffer(v0, qword_1EC2B3738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prescribed_tool";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_type";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "query";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C883516C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C88350F8();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8836E2C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C88350F8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0) + 24);
  sub_1C88378B4();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C883516C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0) + 28);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F98, &qword_1C8BE6C48);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_4();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v7);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v12 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  if (*(v0 + v12[5]) == 5 || (sub_1C8837908(), OUTLINED_FUNCTION_213_0(), sub_1C8BD4D4C(), !v1))
  {
    if (*(v0 + v12[6]) == 3 || (sub_1C88378B4(), OUTLINED_FUNCTION_213_0(), sub_1C8BD4D4C(), !v1))
    {
      sub_1C8786744(v0 + v12[7], v2, &qword_1EC2B5F98, &qword_1C8BE6C48);
      if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
      {
        sub_1C8778ED8(v2, &qword_1EC2B5F98, &qword_1C8BE6C48);
LABEL_8:
        OUTLINED_FUNCTION_15();
        goto LABEL_9;
      }

      sub_1C8830158();
      sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);
      OUTLINED_FUNCTION_213_0();
      sub_1C8BD4E2C();
      sub_1C88303C4();
      if (!v1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_84();
  v26 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v25);
  v27 = OUTLINED_FUNCTION_21(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_33();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F98, &qword_1C8BE6C48);
  OUTLINED_FUNCTION_80(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA0, &unk_1C8BE6C50);
  OUTLINED_FUNCTION_21(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_74();
  v41 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v40);
  OUTLINED_FUNCTION_58_1(*(v41 + 20));
  if (v44 == 5)
  {
    if (v43 != 5)
    {
      goto LABEL_18;
    }
  }

  else if (v44 != v43)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_58_1(*(v42 + 24));
  if (v47 == 3)
  {
    if (v46 != 3)
    {
      goto LABEL_18;
    }
  }

  else if (v47 != v46)
  {
    goto LABEL_18;
  }

  v48 = *(v45 + 28);
  v49 = *(v36 + 48);
  OUTLINED_FUNCTION_67_2(v21 + v48, v22);
  OUTLINED_FUNCTION_67_2(v20 + v48, v22 + v49);
  OUTLINED_FUNCTION_5_6();
  if (v56)
  {
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_76(v50, v51, v52);
    if (v56)
    {
      sub_1C8778ED8(v22, &qword_1EC2B5F98, &qword_1C8BE6C48);
      goto LABEL_21;
    }
  }

  else
  {
    sub_1C8786744(v22, v35, &qword_1EC2B5F98, &qword_1C8BE6C48);
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_76(v53, v54, v55);
    if (!v56)
    {
      sub_1C8830158();
      static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.== infix(_:_:)();
      v59 = v58;
      OUTLINED_FUNCTION_220();
      sub_1C88303C4();
      sub_1C88303C4();
      sub_1C8778ED8(v22, &qword_1EC2B5F98, &qword_1C8BE6C48);
      if ((v59 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_21:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_8();
      sub_1C8832C14(v60, v61);
      OUTLINED_FUNCTION_5_0();
      v57 = OUTLINED_FUNCTION_232_1();
      goto LABEL_19;
    }

    sub_1C88303C4();
  }

  sub_1C8778ED8(v22, &qword_1EC2B5FA0, &unk_1C8BE6C50);
LABEL_18:
  v57 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v57);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8835780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B70A0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8835800(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8835870()
{
  sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88358F0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E30);
  __swift_project_value_buffer(v0, qword_1EC2B6E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PRESCRIBED_TOOL_UNSET";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PRESCRIBED_TOOL_GENERATE_RICH_CONTENT_TOOL";
  *(v10 + 8) = 42;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PRESCRIBED_TOOL_GENERATE_RICH_CONTENT_FROM_MEDIA_INTENT_TOOL";
  *(v12 + 1) = 60;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PRESCRIBED_TOOL_GENERATE_IMAGE_INTENT_TOOL";
  *(v14 + 1) = 42;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PRESCRIBED_TOOL_GENERATE_KNOWLEDGE_RESPONSE_INTENT_TOOL";
  *(v16 + 1) = 55;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8835B94()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E48);
  __swift_project_value_buffer(v0, qword_1EC2B6E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "QUERY_TYPE_UNSET";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "QUERY_TYPE_IMPLICIT";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QUERY_TYPE_EXPLICIT";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8835DBC()
{
  result = MEMORY[0x1CCA7E2D0](0x65755178616A412ELL, 0xEA00000000007972);
  qword_1EC2B6E60 = 0xD000000000000033;
  *algn_1EC2B6E68 = 0x80000001C8C1FB50;
  return result;
}

uint64_t sub_1C8835E4C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E70);
  __swift_project_value_buffer(v0, qword_1EC2B6E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "explicit_query";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "implicit_query";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8836150();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C883609C();
    }
  }

  return result;
}

uint64_t sub_1C883609C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0) + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8836150()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0) + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v0;
  v35 = v4;
  v36 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_17_4();
  v33 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(v10);
  v11 = OUTLINED_FUNCTION_21(v33);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v32[1] = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v32 - v20;
  v22 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  v26 = OUTLINED_FUNCTION_65_0();
  v27 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v26);
  v28 = *(v27 + 20);
  v34 = v3;
  sub_1C8786744(v3 + v28, v21, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_33_3();
  if (__swift_getEnumTagSinglePayload(v29, v30, v31) == 1)
  {
    sub_1C8778ED8(v21, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  }

  else
  {
    sub_1C8830158();
    sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);
    OUTLINED_FUNCTION_82_2();
    OUTLINED_FUNCTION_50_3();
    sub_1C8BD4E2C();
    sub_1C88303C4();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  sub_1C8786744(v34 + *(v27 + 24), v2, &qword_1EC2B6F00, &qword_1C8BEBC88);
  if (__swift_getEnumTagSinglePayload(v2, 1, v33) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6F00, &qword_1C8BEBC88);
LABEL_7:
    OUTLINED_FUNCTION_76_0();
    goto LABEL_8;
  }

  sub_1C8830158();
  sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);
  OUTLINED_FUNCTION_50_3();
  sub_1C8BD4E2C();
  sub_1C88303C4();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v53 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  v5 = OUTLINED_FUNCTION_21(v53);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v50[1] = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66_3(v14);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F50, &qword_1C8BEBC90);
  OUTLINED_FUNCTION_21(v52);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v54 = v50 - v18;
  v19 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v50 - v27;
  v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F58, &qword_1C8BEBC98) - 8);
  v30 = *(*v29 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_17_4();
  v51 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v32);
  v33 = *(v51 + 20);
  v34 = v29[14];
  v55 = v4;
  sub_1C8786744(v4 + v33, v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  sub_1C8786744(v2 + v33, v0 + v34, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_24(v0);
  if (v35)
  {
    OUTLINED_FUNCTION_24(v0 + v34);
    if (v35)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
      goto LABEL_11;
    }

LABEL_9:
    v36 = &qword_1EC2B6F58;
    v37 = &qword_1C8BEBC98;
    v38 = v0;
LABEL_20:
    sub_1C8778ED8(v38, v36, v37);
    goto LABEL_21;
  }

  sub_1C8786744(v0, v28, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_24(v0 + v34);
  if (v35)
  {
    sub_1C88303C4();
    goto LABEL_9;
  }

  sub_1C8830158();
  v39 = static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.== infix(_:_:)();
  sub_1C88303C4();
  sub_1C88303C4();
  sub_1C8778ED8(v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  if ((v39 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v40 = *(v51 + 24);
  v41 = *(v52 + 48);
  v42 = v54;
  OUTLINED_FUNCTION_27(v55 + v40, v54);
  OUTLINED_FUNCTION_27(v2 + v40, v42 + v41);
  OUTLINED_FUNCTION_76(v42, 1, v53);
  if (v35)
  {
    OUTLINED_FUNCTION_24(v42 + v41);
    if (v35)
    {
      sub_1C8778ED8(v42, &qword_1EC2B6F00, &qword_1C8BEBC88);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_8();
      sub_1C8832C14(v48, v49);
      v44 = sub_1C8BD517C();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1C8786744(v42, v50[2], &qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_24(v42 + v41);
  if (v43)
  {
    sub_1C88303C4();
LABEL_19:
    v36 = &qword_1EC2B6F50;
    v37 = &qword_1C8BEBC90;
    v38 = v42;
    goto LABEL_20;
  }

  sub_1C8830158();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_8();
  sub_1C8832C14(v45, v46);
  OUTLINED_FUNCTION_184();
  v47 = sub_1C8BD517C();
  sub_1C88303C4();
  OUTLINED_FUNCTION_121();
  sub_1C88303C4();
  sub_1C8778ED8(v42, &qword_1EC2B6F00, &qword_1C8BEBC88);
  if (v47)
  {
    goto LABEL_24;
  }

LABEL_21:
  v44 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v44);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8836A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B7098, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8836AE4(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8836B54()
{
  sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8836C14()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E98);
  __swift_project_value_buffer(v0, qword_1EC2B6E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "partner";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8836E2C();
    }
  }

  return result;
}

uint64_t sub_1C8836E2C()
{
  v1 = OUTLINED_FUNCTION_47_2();
  v3 = *(v2(v1) + 20);
  v0();
  return OUTLINED_FUNCTION_57_1();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_17();
  if (*(v0 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v2) + 20)) == 2)
  {
    return OUTLINED_FUNCTION_15();
  }

  sub_1C883795C();
  OUTLINED_FUNCTION_213_0();
  result = sub_1C8BD4D4C();
  if (!v1)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v0);
  OUTLINED_FUNCTION_58_1(*(v1 + 20));
  if (v3 != 2)
  {
    if (v2 == 2 || ((v2 ^ v3) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_8();
    sub_1C8832C14(v4, v5);
    OUTLINED_FUNCTION_5_0();
    return OUTLINED_FUNCTION_232_1() & 1;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1C883702C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B7090, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88370AC(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C883711C()
{
  sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C883719C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6EB0);
  __swift_project_value_buffer(v0, qword_1EC2B6EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GEN_AI_PARTNER_UNSET";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GEN_AI_PARTNER_CHATGPT";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88373AC()
{
  OUTLINED_FUNCTION_50();
  if (qword_1EC2B4D78 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC2B6E60;
  v5 = *algn_1EC2B6E68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](v2, 0xE900000000000074);

  *v1 = v4;
  *v0 = v5;
  return result;
}

uint64_t sub_1C8837478(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_1C88374C8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6ED8);
  __swift_project_value_buffer(v0, qword_1EC2B6ED8);
  return sub_1C8BD511C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_121();
    result = sub_1C8BD4AFC();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_8();
  sub_1C8832C14(v0, v1);
  OUTLINED_FUNCTION_5_0();
  return OUTLINED_FUNCTION_232_1() & 1;
}

uint64_t sub_1C883763C()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  sub_1C8BD530C();
  v1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C8832C14(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88376F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B7088, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8837770(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88377E0()
{
  sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C8837860()
{
  result = qword_1EC2B3578;
  if (!qword_1EC2B3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3578);
  }

  return result;
}

unint64_t sub_1C88378B4()
{
  result = qword_1EC2B6F28;
  if (!qword_1EC2B6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6F28);
  }

  return result;
}

unint64_t sub_1C8837908()
{
  result = qword_1EC2B6F30;
  if (!qword_1EC2B6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6F30);
  }

  return result;
}

unint64_t sub_1C883795C()
{
  result = qword_1EC2B6F68;
  if (!qword_1EC2B6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6F68);
  }

  return result;
}

unint64_t sub_1C88379B4()
{
  result = qword_1EC2B3630;
  if (!qword_1EC2B3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3630);
  }

  return result;
}

unint64_t sub_1C8837A0C()
{
  result = qword_1EC2B3638;
  if (!qword_1EC2B3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3638);
  }

  return result;
}

unint64_t sub_1C8837A64()
{
  result = qword_1EC2B3628;
  if (!qword_1EC2B3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3628);
  }

  return result;
}

unint64_t sub_1C8837ABC()
{
  result = qword_1EC2B3678;
  if (!qword_1EC2B3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3678);
  }

  return result;
}

unint64_t sub_1C8837B14()
{
  result = qword_1EC2B3680;
  if (!qword_1EC2B3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3680);
  }

  return result;
}

unint64_t sub_1C8837B6C()
{
  result = qword_1EC2B3670;
  if (!qword_1EC2B3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3670);
  }

  return result;
}

unint64_t sub_1C8837BC4()
{
  result = qword_1EC2B35C8;
  if (!qword_1EC2B35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35C8);
  }

  return result;
}

unint64_t sub_1C8837C1C()
{
  result = qword_1EC2B35D0;
  if (!qword_1EC2B35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35D0);
  }

  return result;
}

unint64_t sub_1C8837C74()
{
  result = qword_1EC2B35C0;
  if (!qword_1EC2B35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35C0);
  }

  return result;
}

unint64_t sub_1C8837D5C()
{
  result = qword_1EC2B3568;
  if (!qword_1EC2B3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3568);
  }

  return result;
}

unint64_t sub_1C8837DB4()
{
  result = qword_1EC2B3570;
  if (!qword_1EC2B3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3570);
  }

  return result;
}

unint64_t sub_1C8837E0C()
{
  result = qword_1EC2B3560;
  if (!qword_1EC2B3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3560);
  }

  return result;
}

unint64_t sub_1C8837E94()
{
  result = qword_1EC2B6FC0;
  if (!qword_1EC2B6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FC0);
  }

  return result;
}

unint64_t sub_1C8837EEC()
{
  result = qword_1EC2B6FC8;
  if (!qword_1EC2B6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FC8);
  }

  return result;
}

unint64_t sub_1C8837F44()
{
  result = qword_1EC2B6FD0;
  if (!qword_1EC2B6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FD0);
  }

  return result;
}

unint64_t sub_1C8837F9C()
{
  result = qword_1EC2B6FD8;
  if (!qword_1EC2B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FD8);
  }

  return result;
}

unint64_t sub_1C8837FF4()
{
  result = qword_1EC2B6FE0;
  if (!qword_1EC2B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FE0);
  }

  return result;
}

unint64_t sub_1C883804C()
{
  result = qword_1EC2B6FE8;
  if (!qword_1EC2B6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FE8);
  }

  return result;
}

unint64_t sub_1C88380A4()
{
  result = qword_1EC2B6FF0;
  if (!qword_1EC2B6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FF0);
  }

  return result;
}

unint64_t sub_1C88380FC()
{
  result = qword_1EC2B6FF8;
  if (!qword_1EC2B6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FF8);
  }

  return result;
}

unint64_t sub_1C8838154()
{
  result = qword_1EC2B7000;
  if (!qword_1EC2B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B7000);
  }

  return result;
}

void sub_1C8838920()
{
  sub_1C8838ABC(319, &qword_1EC2B2EF0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EC2B3620);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B3668);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2B35B8);
          if (v4 <= 0x3F)
          {
            sub_1C8838ABC(319, &qword_1EC2B36B0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C87EB4B0(319, &qword_1EDACD3E8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C8838ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRoutingDecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRouterServiceResponseStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRoutingDecisionSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8838DDC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8838ABC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B3558);
        if (v3 <= 0x3F)
        {
          sub_1C8838ABC(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8838F60()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EC2B3750);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EC2B36D8);
      if (v2 <= 0x3F)
      {
        sub_1C8838ABC(319, &qword_1EC2B36E0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_External_Span.MatcherName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C88390EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.QueryType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C88392CC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8838ABC(319, &qword_1EC2B3710, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8838ABC(319, &qword_1EC2B36F8, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88393F0()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EC2B3728);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.GenAIPartner(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8839588()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  v1 = *(result + 24);
  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.contextualSpans.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse()
{
  result = qword_1EC2B70F0;
  if (!qword_1EC2B70F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse() + 20);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8839908()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B70B8);
  __swift_project_value_buffer(v0, qword_1EC2B70B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "contextual_spans";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4DB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B70B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.decodeMessage<A>(decoder:)()
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
      sub_1C8839B84();
    }
  }

  return result;
}

uint64_t sub_1C8839B84()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C883A234(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C883A234(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), result = sub_1C8BD4E0C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse() + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C87D27C0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse() + 20);
  sub_1C8BD49FC();
  sub_1C883A234(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse();
  sub_1C883A234(&qword_1EC2B70D0, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8839EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C883A234(&qword_1EC2B7100, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8839F20(uint64_t a1)
{
  v2 = sub_1C883A234(&qword_1EC2B70E0, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8839F90()
{
  sub_1C883A234(&qword_1EC2B70E0, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);

  return sub_1C8BD4CFC();
}

void sub_1C883A158()
{
  sub_1C883A1DC();
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C883A1DC()
{
  if (!qword_1EC2B2F60)
  {
    type metadata accessor for Siri_Nlu_Internal_MatchingSpan(255);
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B2F60);
    }
  }
}

uint64_t sub_1C883A234(unint64_t *a1, void (*a2)(uint64_t))
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

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.requestID.modify())(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_4_7();
  v12 = *(v0 + v11);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  return sub_1C883A424;
}

uint64_t sub_1C883A4BC(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Queryrewrite_QRRequest.interactions.setter(v2);
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.interactions.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_4_7();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  OUTLINED_FUNCTION_277();
  v3[6] = *(v5 + v6);

  return sub_1C883A580;
}

uint64_t sub_1C883A5AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_7();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_277();
  v6 = *(v4 + v5);
}

uint64_t sub_1C883A5F4(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Queryrewrite_QRRequest.originalInteractions.setter(v2);
}

uint64_t sub_1C883A62C(uint64_t a1, uint64_t *a2)
{
  v5 = v3;
  v6 = OUTLINED_FUNCTION_241();
  v7 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(v6) + 20);
  v8 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C883BDA4(v11);
    *(v5 + v7) = v10;
  }

  v12 = *a2;
  OUTLINED_FUNCTION_37_0();
  v13 = *(v10 + v12);
  *(v10 + v12) = v2;
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.originalInteractions.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_4_7();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  OUTLINED_FUNCTION_277();
  v3[6] = *(v5 + v6);

  return sub_1C883A740;
}