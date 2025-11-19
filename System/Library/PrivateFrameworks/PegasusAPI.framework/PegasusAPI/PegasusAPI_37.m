uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.query.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.query.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_11_22();
  sub_1B904BDB4(v1 + *(v8 + 44), v2);
  v9 = sub_1B964C150();
  v10 = OUTLINED_FUNCTION_178(v2, 1, v9);
  if (!v11)
  {
    return (*(*(v9 - 8) + 32))(a1, v2, v9);
  }

  MEMORY[0x1BFADC0D0](v10);
  result = OUTLINED_FUNCTION_178(v2, 1, v9);
  if (!v11)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC2CB0, &qword_1B96835C0);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults()
{
  result = qword_1EBAC2CE8;
  if (!qword_1EBAC2CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B904BDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B904BE24(uint64_t a1)
{
  v2 = sub_1B964C150();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.setter(v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults() + 44);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
  v4 = sub_1B964C150();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C150();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults() + 44);
  *(v3 + 12) = v13;
  sub_1B904BDB4(v1 + v13, v6);
  v14 = OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v15)
  {
    MEMORY[0x1BFADC0D0](v14);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC2CB0, &qword_1B96835C0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B904C124;
}

void sub_1B904C124(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1B8D9207C(v9 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_43_1();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.hasCompletionScore.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_22();
  sub_1B904BDB4(v0 + *(v6 + 44), v1);
  v7 = sub_1B964C150();
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchResults.clearCompletionScore()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults() + 44);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  v2 = sub_1B964C150();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.feedbackQuery.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.feedbackQuery.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.results.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults() + 40);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults() + 40);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v3 = a1 + *(v2 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 44);
  v5 = sub_1B964C150();

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1B904C670()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2C98);
  __swift_project_value_buffer(v0, qword_1EBAC2C98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B9650810;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "prefix";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "query";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "completion_score";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "feedback_query";
  *(v13 + 1) = 14;
  v13[16] = 2;
  *(v13 + 3) = "fbq";
  *(v13 + 4) = 3;
  v13[40] = 2;
  v14 = *MEMORY[0x1E69AADD8];
  v8();
  v15 = v1[14];
  v16 = (v4 + 4 * v2);
  *v16 = 5;
  v17 = v16 + v15;
  *v17 = "max_age_seconds";
  *(v17 + 1) = 15;
  v17[16] = 2;
  *(v17 + 3) = "max_age";
  *(v17 + 4) = 7;
  v17[40] = 2;
  v8();
  v18 = (v4 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "suggestions_are_blended";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 51;
  *v21 = "results";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchResults._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC2C98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
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
        sub_1B904CB2C();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        if (result == 51)
        {
          OUTLINED_FUNCTION_9();
          sub_1B904CBE0();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B904CB2C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults() + 44);
  sub_1B964C150();
  sub_1B904D8B0(&qword_1ED9C8FD8, MEMORY[0x1E69AA960]);
  return sub_1B964C580();
}

uint64_t sub_1B904CBE0()
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
  sub_1B904D8B0(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = sub_1B964C150();
  v9 = OUTLINED_FUNCTION_30_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  v17 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v18 || (result = sub_1B964C700(), !v1))
  {
    v20 = v0[2];
    v21 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v22 || (result = sub_1B964C700(), !v1))
    {
      v29 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
      sub_1B904BDB4(v0 + *(v29 + 44), v7);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        sub_1B8D9207C(v7, &qword_1EBAC2CB0, &qword_1B96835C0);
      }

      else
      {
        (*(v11 + 32))(v15, v7, v8);
        OUTLINED_FUNCTION_1_38();
        sub_1B904D8B0(v23, v24);
        sub_1B964C740();
        if (v1)
        {
          return (*(v11 + 8))(v15, v8);
        }

        (*(v11 + 8))(v15, v8);
      }

      if (sub_1B8D99EA8(v0[4], v0[5]) || (v25 = v0[4], v26 = v0[5], result = sub_1B964C6A0(), !v1))
      {
        if (!v0[6] || (result = sub_1B964C6D0(), !v1))
        {
          if (*(v0 + 56) != 1 || (result = sub_1B964C670(), !v1))
          {
            if (!*(v0[8] + 16) || (type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0), sub_1B904D8B0(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult), result = sub_1B964C730(), !v1))
            {
              v27 = v0 + *(v29 + 40);
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C150();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB8, &qword_1B96835C8);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v24 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v25 = *(v24 + 44);
  v26 = *(v16 + 48);
  sub_1B904BDB4(v1 + v25, v21);
  sub_1B904BDB4(v0 + v25, &v21[v26]);
  OUTLINED_FUNCTION_178(v21, 1, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_178(&v21[v26], 1, v2);
    if (v22)
    {
      sub_1B8D9207C(v21, &qword_1EBAC2CB0, &qword_1B96835C0);
      goto LABEL_21;
    }

LABEL_19:
    sub_1B8D9207C(v21, &qword_1EBAC2CB8, &qword_1B96835C8);
LABEL_26:
    v36 = 0;
    return v36 & 1;
  }

  sub_1B904BDB4(v21, v15);
  OUTLINED_FUNCTION_178(&v21[v26], 1, v2);
  if (v27)
  {
    (*(v5 + 8))(v15, v2);
    goto LABEL_19;
  }

  (*(v5 + 32))(v9, &v21[v26], v2);
  OUTLINED_FUNCTION_1_38();
  sub_1B904D8B0(v28, v29);
  v30 = sub_1B964C850();
  v31 = *(v5 + 8);
  v31(v9, v2);
  v31(v15, v2);
  sub_1B8D9207C(v21, &qword_1EBAC2CB0, &qword_1B96835C0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((MEMORY[0x1BFADC060](*(v1 + 32), *(v1 + 40), *(v0 + 32), *(v0 + 40)) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*(v1 + 48) != *(v0 + 48))
  {
    goto LABEL_26;
  }

  if (*(v1 + 56) != *(v0 + 56))
  {
    goto LABEL_26;
  }

  v32 = *(v1 + 64);
  v33 = *(v0 + 64);
  sub_1B8D61678();
  if ((v34 & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(v24 + 40);
  sub_1B964C2B0();
  sub_1B904D8B0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v36 = sub_1B964C850();
  return v36 & 1;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  sub_1B904D8B0(&qword_1EBAC2CC8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B904D464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B904D8B0(&qword_1EBAC2CF8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B904D4E4(uint64_t a1)
{
  v2 = sub_1B904D8B0(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B904D554()
{
  sub_1B904D8B0(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);

  return sub_1B964C5D0();
}

void sub_1B904D71C()
{
  sub_1B904D84C(319, &qword_1ED9C8FA8, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B904D84C(319, &qword_1ED9C8FD0, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904D84C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B904D8B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_22()
{

  return type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.searchQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v9);
  OUTLINED_FUNCTION_115(*(v10 + 20));
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v11, v12, v13, v14);
  v15 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_57(v1);
  if (v16)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    v17 = a1 + *(v15 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v16)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_44();
    return sub_1B9051124();
  }

  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.searchQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.searchQuery.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v13) + 20);
  *(v0 + 40) = v14;
  v15 = OUTLINED_FUNCTION_115(v14);
  sub_1B8DD9078(v15, v16, &qword_1EBAC2228, &unk_1B967FDC0);
  v17 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v17, v18, v7);
  if (v19)
  {
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    v20 = v9 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v21 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v21, v22, v7);
    if (!v19)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_44();
    sub_1B9051124();
  }

  return sub_1B904DC08;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.hasSearchQuery.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 20));
  v6 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.clearSearchQuery()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v9);
  OUTLINED_FUNCTION_115(*(v10 + 24));
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v11, v12, v13, v14);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_57(v1);
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(a1 + v17) = qword_1ED9D38C8;
    v18 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_39();
    return sub_1B9051124();
  }

  return result;
}

uint64_t sub_1B904DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B9051178();
  return a7(v13);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_39();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.queryContext.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v6);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v15, v16, v17);
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v9 + v19) = qword_1ED9D38C8;
    OUTLINED_FUNCTION_28_13();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, v21, v22);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_39();
    sub_1B9051124();
  }

  return sub_1B904E0A0;
}

void sub_1B904E0C8(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    sub_1B9051178();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B9051124();
    OUTLINED_FUNCTION_187_1();
    sub_1B90511CC();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B9051124();
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.hasQueryContext.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 24));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_11(Context);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.clearQueryContext()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  v1 = *(v0 + 20);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v9);
  OUTLINED_FUNCTION_115(*(v10 + 32));
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v11, v12, v13, v14);
  v15 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_57(v1);
  if (v16)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    v17 = a1 + *(v15 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v16)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
    return sub_1B9051124();
  }

  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Search_Error();
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.error.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v12) + 32);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_115(v13);
  sub_1B8DD9078(v14, v15, &qword_1EBAB9188, &qword_1B964D970);
  v16 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v16, v17, v6);
  if (v18)
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = -1;
    v19 = v8 + *(v6 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v20, v21, v6);
    if (!v18)
    {
      sub_1B8D9207C(v5, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
    sub_1B9051124();
  }

  return sub_1B904E6D8;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.hasError.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 32));
  v6 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.clearError()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.traceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.traceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.searchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0) + 36);
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v11, v12, v13, v14);
  v15 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  OUTLINED_FUNCTION_57(v9);
  if (v16)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = xmmword_1B9652FE0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = MEMORY[0x1E69E7CC0];
    v17 = a1 + *(v15 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v15 + 44);
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    result = OUTLINED_FUNCTION_57(v9);
    if (!v16)
    {
      return sub_1B8D9207C(v9, &qword_1EBAC2D30, &unk_1B96E8F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_15();
    return sub_1B9051124();
  }

  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.searchResults.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC2D30, &unk_1B96E8F80);
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.searchResults.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 36));
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v14, v15, v16);
  if (v17)
  {
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0xE000000000000000;
    *(v8 + 32) = xmmword_1B9652FE0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = MEMORY[0x1E69E7CC0];
    v18 = v8 + *(v6 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v6 + 44);
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_178(v24, v25, v26);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2D30, &unk_1B96E8F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_15();
    sub_1B9051124();
  }

  return sub_1B904EB7C;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.hasSearchResults.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v4);
  OUTLINED_FUNCTION_23_2(*(v5 + 36));
  v6 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.clearSearchResults()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC2D30, &unk_1B96E8F80);
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.serviceDebug.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v0) + 28);
  return nullsub_1;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(a1 + 32) = sub_1B964C7B0();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  v3 = a1 + v2[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[8];
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[9];
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B904EED8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2D00);
  __swift_project_value_buffer(v0, qword_1EBAC2D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "search_query";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_context";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B904F1E0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B904F12C();
    }
  }

  return result;
}

uint64_t sub_1B904F12C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0) + 20);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  sub_1B9051220(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
  return sub_1B964C580();
}

uint64_t sub_1B904F1E0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0) + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B9051220(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v11);
  v12 = OUTLINED_FUNCTION_59_1(Context);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v30[1] = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v30 - v21;
  v23 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v27 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  v28 = *(v27 + 20);
  v32 = v6;
  sub_1B8DD9078(v6 + v28, v22, &qword_1EBAC2228, &unk_1B967FDC0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2228, &unk_1B967FDC0);
  }

  else
  {
    sub_1B9051124();
    sub_1B9051220(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
    sub_1B964C740();
    result = sub_1B90511CC();
    if (v4)
    {
      return result;
    }
  }

  sub_1B8DD9078(v32 + *(v27 + 24), v5, &qword_1EBABED40, &qword_1B96809F0);
  if (__swift_getEnumTagSinglePayload(v5, 1, Context) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B9051124();
    sub_1B9051220(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    sub_1B964C740();
    result = sub_1B90511CC();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v5 = OUTLINED_FUNCTION_59_1(Context);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v68 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v69 = v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1(v71);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v73 = v18;
  v19 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v67 - v30;
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2250, &unk_1B967FDF0) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_156();
  v70 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v35);
  v36 = *(v70 + 20);
  v37 = v32[14];
  v74 = a1;
  sub_1B8DD9078(a1 + v36, v2, &qword_1EBAC2228, &unk_1B967FDC0);
  sub_1B8DD9078(a2 + v36, v2 + v37, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_178(v2, 1, v19);
  if (v42)
  {
    OUTLINED_FUNCTION_178(v2 + v37, 1, v19);
    if (v42)
    {
      sub_1B8D9207C(v2, &qword_1EBAC2228, &unk_1B967FDC0);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_1B8DD9078(v2, v31, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_178(v2 + v37, 1, v19);
  if (v42)
  {
    sub_1B90511CC();
LABEL_14:
    v43 = &qword_1EBAC2250;
    v44 = &unk_1B967FDF0;
LABEL_24:
    v51 = v2;
LABEL_30:
    sub_1B8D9207C(v51, v43, v44);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_44();
  sub_1B9051124();
  v45 = *v31 == *v25 && *(v31 + 1) == *(v25 + 8);
  if (!v45 && (sub_1B964C9F0() & 1) == 0 || (v46 = *(v25 + 24), !sub_1B8D92198(*(v31 + 2), v31[24], *(v25 + 16))))
  {
    sub_1B90511CC();
    OUTLINED_FUNCTION_432();
    sub_1B90511CC();
    v43 = &qword_1EBAC2228;
    v44 = &unk_1B967FDC0;
    goto LABEL_24;
  }

  v47 = *(v19 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_24();
  sub_1B9051220(v48, v49);
  v50 = sub_1B964C850();
  sub_1B90511CC();
  sub_1B90511CC();
  sub_1B8D9207C(v2, &qword_1EBAC2228, &unk_1B967FDC0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v38 = *(v70 + 24);
  v39 = *(v71 + 48);
  v40 = v73;
  sub_1B8DD9078(v74 + v38, v73, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B8DD9078(a2 + v38, v40 + v39, &qword_1EBABED40, &qword_1B96809F0);
  v41 = Context;
  OUTLINED_FUNCTION_178(v40, 1, Context);
  if (v42)
  {
    OUTLINED_FUNCTION_178(v40 + v39, 1, v41);
    if (v42)
    {
      sub_1B8D9207C(v40, &qword_1EBABED40, &qword_1B96809F0);
LABEL_36:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_24();
      sub_1B9051220(v65, v66);
      v54 = sub_1B964C850();
      return v54 & 1;
    }

    goto LABEL_28;
  }

  v52 = v69;
  sub_1B8DD9078(v40, v69, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_178(v40 + v39, 1, v41);
  if (v53)
  {
    sub_1B90511CC();
LABEL_28:
    v43 = &qword_1EBABED68;
    v44 = &qword_1B9680A10;
LABEL_29:
    v51 = v40;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_39();
  v56 = v68;
  sub_1B9051124();
  v57 = *(v41 + 20);
  if (*(v52 + v57) != *(v56 + v57))
  {
    v58 = *(v52 + v57);

    v59 = OUTLINED_FUNCTION_432();
    v61 = sub_1B9090820(v59, v60);

    if (!v61)
    {
      sub_1B90511CC();
      sub_1B90511CC();
      v43 = &qword_1EBABED40;
      v44 = &qword_1B96809F0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_24();
  sub_1B9051220(v62, v63);
  v64 = sub_1B964C850();
  sub_1B90511CC();
  sub_1B90511CC();
  sub_1B8D9207C(v40, &qword_1EBABED40, &qword_1B96809F0);
  if (v64)
  {
    goto LABEL_36;
  }

LABEL_31:
  v54 = 0;
  return v54 & 1;
}

uint64_t sub_1B904FCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9051220(&qword_1EBAC2DB0, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B904FD68(uint64_t a1)
{
  v2 = sub_1B9051220(&qword_1EBAC2D58, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B904FDD8()
{
  sub_1B9051220(&qword_1EBAC2D58, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B904FE74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2D18);
  __swift_project_value_buffer(v0, qword_1EBAC2D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trace_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 50;
  *v15 = "search_results";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 100;
  *v17 = "service_debug";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B9050348();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B90501E0();
        break;
      case 3:
        sub_1B964C530();
        break;
      case 50:
        OUTLINED_FUNCTION_9();
        sub_1B9050294();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8F283B0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B90501E0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0) + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  sub_1B9051220(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
  return sub_1B964C580();
}

uint64_t sub_1B9050294()
{
  v0 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0) + 36);
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  sub_1B9051220(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
  return sub_1B964C580();
}

uint64_t sub_1B9050348()
{
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B9051220(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray);
  sub_1B9051220(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray);
  return sub_1B964C3A0();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_185();
  v38 = v6;
  v7 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v35 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for Apple_Parsec_Search_Error();
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v23 = *(v0 + 8), v36 = *v0, v37 = v23, sub_1B8F2116C(), result = sub_1B964C680(), !v1))
  {
    v33 = v7;
    v34 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
    sub_1B8DD9078(v0 + v34[8], v18, &qword_1EBAB9188, &qword_1B964D970);
    OUTLINED_FUNCTION_28_13();
    if (__swift_getEnumTagSinglePayload(v25, v26, v27) == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B9051124();
      sub_1B9051220(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
      sub_1B964C740();
      result = sub_1B90511CC();
      if (v1)
      {
        return result;
      }
    }

    v28 = v0[3];
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    v30 = v38;
    if (!v29 || (result = sub_1B964C700(), !v1))
    {
      sub_1B8DD9078(v0 + v34[9], v30, &qword_1EBAC2D30, &unk_1B96E8F80);
      if (__swift_getEnumTagSinglePayload(v30, 1, v33) == 1)
      {
        sub_1B8D9207C(v30, &qword_1EBAC2D30, &unk_1B96E8F80);
      }

      else
      {
        sub_1B9051124();
        sub_1B9051220(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
        sub_1B964C740();
        result = sub_1B90511CC();
        if (v1)
        {
          return result;
        }
      }

      if (!*(v0[4] + 16) || (v38 = sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), sub_1B9051220(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray), sub_1B9051220(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray), result = sub_1B964C5E0(), !v1))
      {
        v31 = v0 + v34[7];
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_280();
  v77 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v2 = OUTLINED_FUNCTION_59_1(v77);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v76 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D40, &unk_1B9683790);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = type metadata accessor for Apple_Parsec_Search_Error();
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v72 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v72 - v36;
  v38 = *v1;
  v39 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        if (v38 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v38 != 2)
      {
        goto LABEL_36;
      }
    }

    else if (v38)
    {
      goto LABEL_36;
    }
  }

  else if (v38 != v39)
  {
    goto LABEL_36;
  }

  v74 = v18;
  v72 = v7;
  v40 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  v41 = v1;
  v73 = v40;
  v42 = *(v40 + 32);
  v43 = *(v32 + 48);
  v75 = v41;
  sub_1B8DD9078(v41 + v42, v37, &qword_1EBAB9188, &qword_1B964D970);
  sub_1B8DD9078(v0 + v42, &v37[v43], &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(v37, 1, v19);
  if (v44)
  {
    OUTLINED_FUNCTION_178(&v37[v43], 1, v19);
    if (v44)
    {
      sub_1B8D9207C(v37, &qword_1EBAB9188, &qword_1B964D970);
      goto LABEL_21;
    }

LABEL_19:
    v45 = &qword_1EBAB9190;
    v46 = &qword_1B964D978;
    v47 = v37;
LABEL_35:
    sub_1B8D9207C(v47, v45, v46);
    goto LABEL_36;
  }

  sub_1B8DD9078(v37, v31, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(&v37[v43], 1, v19);
  if (v44)
  {
    sub_1B90511CC();
    goto LABEL_19;
  }

  sub_1B9051124();
  v48 = static Apple_Parsec_Search_Error.== infix(_:_:)(v31, v25);
  sub_1B90511CC();
  OUTLINED_FUNCTION_236();
  sub_1B90511CC();
  sub_1B8D9207C(v37, &qword_1EBAB9188, &qword_1B964D970);
  if ((v48 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  v49 = v75[2] == v0[2] && v75[3] == v0[3];
  if (!v49 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v51 = v73;
  v50 = v74;
  v52 = *(v73 + 36);
  v53 = *(v13 + 48);
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v54, v55, v56, v57);
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v58, v59, v60, v61);
  OUTLINED_FUNCTION_178(v50, 1, v77);
  if (!v44)
  {
    sub_1B8DD9078(v50, v76, &qword_1EBAC2D30, &unk_1B96E8F80);
    OUTLINED_FUNCTION_57(v50 + v53);
    if (!v62)
    {
      sub_1B9051124();
      v65 = static Apple_Parsec_Lookup_V1alpha_LookupSearchResults.== infix(_:_:)();
      sub_1B90511CC();
      sub_1B90511CC();
      sub_1B8D9207C(v50, &qword_1EBAC2D30, &unk_1B96E8F80);
      if ((v65 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    sub_1B90511CC();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_57(v50 + v53);
  if (!v44)
  {
LABEL_34:
    v45 = &qword_1EBAC2D40;
    v46 = &unk_1B9683790;
    v47 = v50;
    goto LABEL_35;
  }

  sub_1B8D9207C(v50, &qword_1EBAC2D30, &unk_1B96E8F80);
LABEL_39:
  v66 = v75[4];
  v67 = v0[4];
  sub_1B8DAFA20();
  if (v68)
  {
    v69 = *(v51 + 28);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_24();
    sub_1B9051220(v70, v71);
    v63 = sub_1B964C850();
    return v63 & 1;
  }

LABEL_36:
  v63 = 0;
  return v63 & 1;
}

uint64_t sub_1B9050EB0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B9051220(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9050F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9051220(&qword_1EBAC2DA8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9051014(uint64_t a1)
{
  v2 = sub_1B9051220(&qword_1EBAC2D70, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9051084()
{
  sub_1B9051220(&qword_1EBAC2D70, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9051124()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B9051178()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B90511CC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B9051220(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B90514D0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B90516D0(319, &qword_1EBAB5CF0, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
    if (v1 <= 0x3F)
    {
      sub_1B90516D0(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B90515CC()
{
  sub_1B8E00BFC();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B90516D0(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error);
      if (v2 <= 0x3F)
      {
        sub_1B90516D0(319, &qword_1EBAC2DA0, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B90516D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_40_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return sub_1B9051124();
}

unint64_t Apple_Parsec_Multimodal_V1_Placement.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9051828@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Multimodal_V1_Placement.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B905185C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B905895C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Multimodal_V1_Placement.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC2DB8 = a1;
}

uint64_t sub_1B90519A4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Multimodal_V1_Placement.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 24));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(a1 + v13) = qword_1ED9D38C8;
    v14 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_182();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v6);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  v15 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v15, v16, Context);
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v9 + v18) = qword_1ED9D38C8;
    v19 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_246();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.textualSignal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v9);
  OUTLINED_FUNCTION_51_9(*(v10 + 28));
  v11 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0xE000000000000000;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0xE000000000000000;
    v13 = a1 + *(v11 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v11 + 40);
    type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2E50, &qword_1B9683AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_18();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.textualSignal.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.textualSignal.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 28));
  v15 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v15, v16, v7);
  if (v17)
  {
    *v9 = 0;
    *(v9 + 8) = 1;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0xE000000000000000;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0xE000000000000000;
    *(v9 + 64) = 0;
    *(v9 + 72) = 0xE000000000000000;
    v18 = v9 + *(v7 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v7 + 40);
    type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v24, v25, v7);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2E50, &qword_1B9683AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_18();
    OUTLINED_FUNCTION_246();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.visualSignal.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v7);
  OUTLINED_FUNCTION_51_9(*(v8 + 32));
  v9 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  OUTLINED_FUNCTION_57(v0);
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    result = OUTLINED_FUNCTION_57(v0);
    if (!v10)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC2E58, &qword_1B9683B00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_25();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.visualSignal.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.visualSignal.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v6);
  v8 = OUTLINED_FUNCTION_53_6(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v13);
  OUTLINED_FUNCTION_19_11(*(v14 + 32));
  OUTLINED_FUNCTION_75(v5);
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_75(v5);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2E58, &qword_1B9683B00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_25();
    OUTLINED_FUNCTION_461();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0);
  v3 = a1 + v2[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[8];
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  v15 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.cardData.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 24));
  v9 = sub_1B964C1C0();
  OUTLINED_FUNCTION_57(v0);
  if (v10)
  {
    sub_1B964C1B0();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v10)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v11 = *(*(v9 - 8) + 32);
    OUTLINED_FUNCTION_397();
    return v12();
  }

  return result;
}

uint64_t sub_1B9052658(uint64_t a1)
{
  v2 = sub_1B964C1C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Multimodal_V1_Rendering.cardData.setter();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.cardData.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Multimodal_V1_Rendering.cardData.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  *(v1 + 24) = v8;
  v11 = *(v10 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v11);
  *(v1 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0) + 24);
  *(v1 + 48) = v12;
  sub_1B8DD9078(v0 + v12, v5, &qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_75(v5);
  if (v13)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_75(v5);
    if (!v13)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v14 = *(v9 + 32);
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B905292C()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_1B8D9207C(v7 + v1, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    v12 = *(v5 + 8);
    v13 = OUTLINED_FUNCTION_236();
    v14(v13);
  }

  else
  {
    sub_1B8D9207C(v7 + v1, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t sub_1B9052A9C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_103();
  v10 = *(v1(v9) + 24);
  OUTLINED_FUNCTION_24_3();
  sub_1B8DD9078(v11, v12, v13, v14);
  v15 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v18, v19, v20);
  return v17;
}

uint64_t sub_1B9052B88()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 24);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.feedback.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.feedback.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t sub_1B9052C98()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9052D20()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  sub_1B964C1C0();
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.rendering.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v9);
  OUTLINED_FUNCTION_51_9(*(v10 + 28));
  v11 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = xmmword_1B9652FE0;
    v13 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v11 + 24);
    sub_1B964C1C0();
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB90D0, &qword_1B964D8C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_19();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.rendering.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_SectionResult.rendering.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 28));
  v15 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v15, v16, v7);
  if (v17)
  {
    *v9 = xmmword_1B9652FE0;
    v18 = v9 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v7 + 24);
    sub_1B964C1C0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v24, v25, v7);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAB90D0, &qword_1B964D8C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_19();
    OUTLINED_FUNCTION_246();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9053150()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_103();
  v10 = *(v1(v9) + 28);
  OUTLINED_FUNCTION_24_3();
  sub_1B8DD9078(v11, v12, v13, v14);
  v15 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v18, v19, v20);
  return v17;
}

uint64_t sub_1B905323C()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 28);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  v3 = v1 + *(v2 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 28);
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.sectionBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.sectionBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 36));
  v11 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v13 = a1 + *(v11 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_182();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_SectionRendering.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v6);
  v8 = OUTLINED_FUNCTION_53_6(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v14);
  OUTLINED_FUNCTION_19_11(*(v15 + 36));
  OUTLINED_FUNCTION_75(v5);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v17 = v10 + *(v0 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v5);
    if (!v16)
    {
      sub_1B8D9207C(v5, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_461();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.hasBoundingBox.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v6);
  sub_1B8DD9078(v0 + *(v7 + 36), v1, &qword_1EBAB90C0, &unk_1B964D8B0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &unk_1B964D8B0);
  return v12;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_SectionRendering.clearBoundingBox()()
{
  v1 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB90C0, &unk_1B964D8B0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0);
  v3 = a1 + *(v2 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 36);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.statusCode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.statusCode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 32));
  v11 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    v13 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_182();
    return sub_1B9058798();
  }

  return result;
}

uint64_t sub_1B9053B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B90587EC();
  return a7(v7);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Search_Error();
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Apple_Parsec_Search_Error();
  v7 = OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v13);
  OUTLINED_FUNCTION_19_11(*(v14 + 32));
  OUTLINED_FUNCTION_75(v5);
  if (v15)
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = -1;
    v16 = v9 + *(v0 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v5);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_461();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9053DE4()
{
  OUTLINED_FUNCTION_284();
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
    sub_1B90587EC();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B9058798();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    OUTLINED_FUNCTION_177_1();
    sub_1B9058840();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B9058798();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t sub_1B9053F18()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_103();
  v10 = *(v1(v9) + 32);
  OUTLINED_FUNCTION_24_3();
  sub_1B8DD9078(v11, v12, v13, v14);
  v15 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v18, v19, v20);
  return v17;
}

uint64_t sub_1B9054004()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 32);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.query.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.query.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.sectionRenderings.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(0);
  v3 = v1 + *(v2 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B90542B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2DC0);
  __swift_project_value_buffer(v0, qword_1EBAC2DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLACEMENT_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLACEMENT_TOP";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLACEMENT_BOTTOM";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLACEMENT_TOP_HIT";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9054538()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2DD8);
  __swift_project_value_buffer(v0, qword_1EBAC2DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "textual_signal";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visual_signal";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query_id";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9054840();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B90548F4();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B90549A8();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9054840()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0) + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B9058914(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t sub_1B90548F4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0) + 28);
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  sub_1B9058914(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal);
  return sub_1B964C580();
}

uint64_t sub_1B90549A8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0) + 32);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  sub_1B9058914(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v38 = v9;
  v39 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  v10 = OUTLINED_FUNCTION_59_1(v39);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_77_3();
  v40 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v17);
  v18 = OUTLINED_FUNCTION_59_1(v40);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_103();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v25);
  v27 = OUTLINED_FUNCTION_59_1(Context);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v41 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0);
  sub_1B8DD9078(v0 + v41[6], v2, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v30, v31, v32);
  if (v33)
  {
    sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B9058798();
    sub_1B9058914(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    OUTLINED_FUNCTION_76_4();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  sub_1B8DD9078(v0 + v41[7], v3, &qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_178(v3, 1, v40);
  if (v33)
  {
    sub_1B8D9207C(v3, &qword_1EBAC2E50, &qword_1B9683AF8);
  }

  else
  {
    sub_1B9058798();
    sub_1B9058914(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal);
    OUTLINED_FUNCTION_108_3();
    v4 = v1;
    sub_1B9058840();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  sub_1B8DD9078(v0 + v41[8], v38, &qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v34, v35, v36);
  if (v33)
  {
    sub_1B8D9207C(v38, &qword_1EBAC2E58, &qword_1B9683B00);
  }

  else
  {
    sub_1B9058798();
    sub_1B9058914(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal);
    OUTLINED_FUNCTION_108_3();
    v4 = v1;
    sub_1B9058840();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  if (!*v0 || (sub_1B964C720(), !v4))
  {
    v37 = v0 + v41[5];
    sub_1B964C290();
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Multimodal_V1_MultimodalRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v86 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  v6 = OUTLINED_FUNCTION_59_1(v86);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v84 = v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E70, &qword_1B9683B08);
  OUTLINED_FUNCTION_59_1(v85);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v87 = v17;
  v90 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  v18 = OUTLINED_FUNCTION_59_1(v90);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_185();
  v88 = v25;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E78, &unk_1B9683B10);
  OUTLINED_FUNCTION_59_1(v89);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_185();
  v91 = v29;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v31 = OUTLINED_FUNCTION_59_1(Context);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_79();
  v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10) - 8);
  v42 = *(*v41 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_103();
  v92 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v44);
  v93 = v5;
  v45 = v92[6];
  v46 = v41[14];
  sub_1B8DD9078(v5 + v45, v1, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B8DD9078(v3 + v45, v1 + v46, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v47, v48, v49);
  if (v56)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v50, v51, v52);
    if (v56)
    {
      sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1B8DD9078(v1, v0, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v53, v54, v55);
  if (v56)
  {
    sub_1B9058840();
LABEL_9:
    v57 = &qword_1EBABED68;
    v58 = &qword_1B9680A10;
LABEL_10:
    v59 = v1;
LABEL_34:
    sub_1B8D9207C(v59, v57, v58);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_1_40();
  sub_1B9058798();
  v60 = *(Context + 20);
  v61 = *(v0 + v60);
  v62 = *(v36 + v60);
  if (v61 != v62)
  {
    v63 = *(v0 + v60);

    v64 = sub_1B9090820(v61, v62);

    if (!v64)
    {
      sub_1B9058840();
      sub_1B9058840();
      v57 = &qword_1EBABED40;
      v58 = &qword_1B96809F0;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_45();
  sub_1B9058914(v65, v66);
  v67 = sub_1B964C850();
  sub_1B9058840();
  OUTLINED_FUNCTION_246();
  sub_1B9058840();
  sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_14:
  v68 = v92[7];
  v69 = *(v89 + 48);
  sub_1B8DD9078(v5 + v68, v91, &qword_1EBAC2E50, &qword_1B9683AF8);
  sub_1B8DD9078(v3 + v68, v91 + v69, &qword_1EBAC2E50, &qword_1B9683AF8);
  v70 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v70, v71, v90);
  if (v56)
  {
    OUTLINED_FUNCTION_178(v91 + v69, 1, v90);
    if (v56)
    {
      sub_1B8D9207C(v91, &qword_1EBAC2E50, &qword_1B9683AF8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_1B8DD9078(v91, v88, &qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_178(v91 + v69, 1, v90);
  if (v72)
  {
    sub_1B9058840();
LABEL_22:
    v57 = &qword_1EBAC2E78;
    v58 = &unk_1B9683B10;
    v59 = v91;
    goto LABEL_34;
  }

  sub_1B9058798();
  v73 = static Apple_Parsec_Multimodal_V1_TextualSignal.== infix(_:_:)();
  sub_1B9058840();
  sub_1B9058840();
  sub_1B8D9207C(v91, &qword_1EBAC2E50, &qword_1B9683AF8);
  if ((v73 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  v74 = v92[8];
  v75 = *(v85 + 48);
  sub_1B8DD9078(v93 + v74, v87, &qword_1EBAC2E58, &qword_1B9683B00);
  sub_1B8DD9078(v3 + v74, v87 + v75, &qword_1EBAC2E58, &qword_1B9683B00);
  v76 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v76, v77, v86);
  if (!v56)
  {
    sub_1B8DD9078(v87, v84, &qword_1EBAC2E58, &qword_1B9683B00);
    OUTLINED_FUNCTION_178(v87 + v75, 1, v86);
    if (!v78)
    {
      sub_1B9058798();
      OUTLINED_FUNCTION_461();
      v80 = static Apple_Parsec_Multimodal_V1_VisualSignal.== infix(_:_:)();
      sub_1B9058840();
      OUTLINED_FUNCTION_182();
      sub_1B9058840();
      sub_1B8D9207C(v87, &qword_1EBAC2E58, &qword_1B9683B00);
      if ((v80 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    sub_1B9058840();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_178(v87 + v75, 1, v86);
  if (!v56)
  {
LABEL_33:
    v57 = &qword_1EBAC2E70;
    v58 = &qword_1B9683B08;
    v59 = v87;
    goto LABEL_34;
  }

  sub_1B8D9207C(v87, &qword_1EBAC2E58, &qword_1B9683B00);
LABEL_38:
  if (*v93 == *v3)
  {
    v81 = v92[5];
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_45();
    sub_1B9058914(v82, v83);
    v79 = sub_1B964C850();
    goto LABEL_36;
  }

LABEL_35:
  v79 = 0;
LABEL_36:
  OUTLINED_FUNCTION_264(v79);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B905574C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FF8, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90557CC(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2F00, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905583C()
{
  sub_1B9058914(&qword_1EBAC2F00, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B90558D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2DF0);
  __swift_project_value_buffer(v0, qword_1EBAC2DF0);
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
  *v10 = "feedback";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9055B24();
    }
  }

  return result;
}

uint64_t sub_1B9055B24()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0) + 24);
  sub_1B964C1C0();
  sub_1B9058914(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_Rendering.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v25[1] = v3;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = sub_1B964C1C0();
  v13 = OUTLINED_FUNCTION_30_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v18 = OUTLINED_FUNCTION_186_1();
  v25[0] = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v18);
  sub_1B8DD9078(v1 + *(v25[0] + 24), v11, &qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_178(v11, 1, v12);
  if (v19)
  {
    sub_1B8D9207C(v11, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    (*(v15 + 32))(v2, v11, v12);
    OUTLINED_FUNCTION_31_14();
    sub_1B9058914(v20, v21);
    sub_1B964C740();
    if (v0)
    {
      (*(v15 + 8))(v2, v12);
      goto LABEL_10;
    }

    (*(v15 + 8))(v2, v12);
  }

  if (sub_1B8D99EA8(*v1, *(v1 + 8)) || (v22 = *v1, v23 = *(v1 + 8), sub_1B964C6A0(), !v0))
  {
    v24 = v1 + *(v25[0] + 20);
    sub_1B964C290();
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Multimodal_V1_Rendering.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_313();
  v5 = sub_1B964C1C0();
  v6 = OUTLINED_FUNCTION_30_1(v5);
  v42 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_173();
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_103();
  v41 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v20);
  v21 = *(v41 + 24);
  v22 = v17[14];
  OUTLINED_FUNCTION_65_7(v0 + v21, v1);
  OUTLINED_FUNCTION_65_7(v4 + v21, v1 + v22);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v23, v24, v25);
  if (v32)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v26, v27, v28);
    if (v32)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v1, &qword_1EBAB8F28, &unk_1B9683B20);
LABEL_13:
    v40 = 0;
    goto LABEL_14;
  }

  sub_1B8DD9078(v1, v2, &qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v29, v30, v31);
  if (v32)
  {
    (*(v42 + 8))(v2, v5);
    goto LABEL_9;
  }

  (*(v42 + 32))(v12, v1 + v22, v5);
  OUTLINED_FUNCTION_31_14();
  sub_1B9058914(v33, v34);
  v35 = sub_1B964C850();
  v36 = *(v42 + 8);
  v36(v12, v5);
  v36(v2, v5);
  sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v35 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((MEMORY[0x1BFADC060](*v0, v0[1], *v4, v4[1]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v37 = *(v41 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_45();
  sub_1B9058914(v38, v39);
  v40 = sub_1B964C850();
LABEL_14:
  OUTLINED_FUNCTION_264(v40);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90561C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FF0, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9056240(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90562B0()
{
  sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering);

  return sub_1B964C5D0();
}

uint64_t sub_1B9056348()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2E08);
  __swift_project_value_buffer(v0, qword_1EBAC2E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rendering";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "placement";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 1000;
  *v12 = "rendering_metadata_json";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1000:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B90566AC();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B90565F8();
        break;
    }
  }

  return result;
}

uint64_t sub_1B90565F8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0) + 28);
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_SectionResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_186_1();
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v22 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  sub_1B8DD9078(v1 + *(v22 + 28), v2, &qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v14, v15, v16);
  if (v17)
  {
    sub_1B8D9207C(v2, &qword_1EBAB90D0, &qword_1B964D8C0);
  }

  else
  {
    sub_1B9058798();
    sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    OUTLINED_FUNCTION_76_4();
    if (v0)
    {
      goto LABEL_10;
    }
  }

  if (!*v1 || (v23 = *(v1 + 8), sub_1B905895C(), sub_1B964C680(), !v0))
  {
    v18 = *(v1 + 16);
    v19 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v20 || (sub_1B964C700(), !v0))
    {
      v21 = v1 + *(v22 + 24);
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Multimodal_V1_SectionResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_173();
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D8, &qword_1B964D8C8) - 8);
  v13 = *(*v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v29 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  v15 = *(v29 + 28);
  v16 = v12[14];
  OUTLINED_FUNCTION_65_7(v1 + v15, v2);
  OUTLINED_FUNCTION_65_7(v0 + v15, v2 + v16);
  v17 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v17, v18, v4);
  if (!v19)
  {
    sub_1B8DD9078(v2, v3, &qword_1EBAB90D0, &qword_1B964D8C0);
    OUTLINED_FUNCTION_178(v2 + v16, 1, v4);
    if (!v19)
    {
      sub_1B9058798();
      static Apple_Parsec_Multimodal_V1_Rendering.== infix(_:_:)();
      v22 = v21;
      sub_1B9058840();
      sub_1B9058840();
      sub_1B8D9207C(v2, &qword_1EBAB90D0, &qword_1B964D8C0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1B9058840();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBAB90D8, &qword_1B964D8C8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_178(v2 + v16, 1, v4);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB90D0, &qword_1B964D8C0);
LABEL_13:
  v23 = *v1;
  v24 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v24)
    {
      case 1:
        if (v23 == 1)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 2:
        if (v23 == 2)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 3:
        if (v23 == 3)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      default:
        if (!v23)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
    }
  }

  if (v23 == v24)
  {
LABEL_18:
    v25 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v25 || (sub_1B964C9F0() & 1) != 0)
    {
      v26 = *(v29 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_45();
      sub_1B9058914(v27, v28);
      OUTLINED_FUNCTION_81_6();
      v20 = sub_1B964C850();
      goto LABEL_11;
    }
  }

LABEL_10:
  v20 = 0;
LABEL_11:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9056CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FE8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9056D74(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2EA8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9056DE4()
{
  sub_1B9058914(&qword_1EBAC2EA8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B9056E7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2E20);
  __swift_project_value_buffer(v0, qword_1EBAC2E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "section_bundle_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "section_header";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "section_results";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "max_initially_visible_results";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 1000;
  *v16 = "bounding_box";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Multimodal_V1_SectionRendering.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9057EA8();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        if (v1 == 1000)
        {
          OUTLINED_FUNCTION_9();
          sub_1B9057228();
        }

        break;
    }
  }
}

uint64_t sub_1B9057228()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0) + 36);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  sub_1B9058914(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_SectionRendering.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_186_1();
  v9 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = *v2;
  v14 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (v1 = v0, sub_1B964C700(), !v0))
  {
    v16 = v2[2];
    v17 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (v1 = v0, sub_1B964C700(), !v0))
    {
      if (!*(v2[4] + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0), sub_1B9058914(&qword_1EBAC2EA8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), (v0 = v1) == 0))
      {
        if (!*(v2 + 10) || (OUTLINED_FUNCTION_24_3(), sub_1B964C710(), !v0))
        {
          v19 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0);
          sub_1B8DD9078(v2 + *(v19 + 36), v3, &qword_1EBAB90C0, &unk_1B964D8B0);
          OUTLINED_FUNCTION_178(v3, 1, v9);
          if (v20)
          {
            sub_1B8D9207C(v3, &qword_1EBAB90C0, &unk_1B964D8B0);
LABEL_13:
            v21 = v2 + *(v19 + 32);
            OUTLINED_FUNCTION_12();
            sub_1B964C290();
            goto LABEL_14;
          }

          sub_1B9058798();
          sub_1B9058914(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);
          OUTLINED_FUNCTION_39_4();
          sub_1B964C740();
          OUTLINED_FUNCTION_76_4();
          if (!v0)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9057900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FE0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9057980(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2EC0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90579F0()
{
  sub_1B9058914(&qword_1EBAC2EC0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering);

  return sub_1B964C5D0();
}

uint64_t sub_1B9057A88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2E38);
  __swift_project_value_buffer(v0, qword_1EBAC2E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status_code";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "query";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "section_renderings";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8F283B0();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9057DF4();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9057EA8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9057DF4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(0) + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  sub_1B9058914(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
  return sub_1B964C580();
}

void sub_1B9057EA8()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v4(0);
  sub_1B9058914(v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_77_3();
  v8 = type metadata accessor for Apple_Parsec_Search_Error();
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  if (!*v2 || (v18 = *(v2 + 8), sub_1B8F2116C(), v1 = v0, sub_1B964C680(), !v0))
  {
    v17 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(0);
    sub_1B8DD9078(v2 + *(v17 + 32), v3, &qword_1EBAB9188, &qword_1B964D970);
    OUTLINED_FUNCTION_178(v3, 1, v8);
    if (v12)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B9058798();
      sub_1B9058914(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
      v1 = v0;
      sub_1B964C740();
      sub_1B9058840();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v2 + 16);
    v14 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v15 || (v1 = v0, sub_1B964C700(), !v0))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0), sub_1B9058914(&qword_1EBAC2EC0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
      {
        v16 = v2 + *(v17 + 28);
        OUTLINED_FUNCTION_12();
        sub_1B964C290();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9058550()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B9058914(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9058628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FD8, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90586A8(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2F48, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9058718()
{
  sub_1B9058914(&qword_1EBAC2F48, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9058798()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B90587EC()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B9058840()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B9058914(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B905895C()
{
  result = qword_1EBAC2E90;
  if (!qword_1EBAC2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2E90);
  }

  return result;
}

unint64_t sub_1B90589B4()
{
  result = qword_1EBAC2ED0;
  if (!qword_1EBAC2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2ED0);
  }

  return result;
}

unint64_t sub_1B9058A0C()
{
  result = qword_1EBAC2ED8;
  if (!qword_1EBAC2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2ED8);
  }

  return result;
}

unint64_t sub_1B9058A64()
{
  result = qword_1EBAC2EE0;
  if (!qword_1EBAC2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2EE0);
  }

  return result;
}

unint64_t sub_1B9058ABC()
{
  result = qword_1EBAC2EE8;
  if (!qword_1EBAC2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC2EF0, &qword_1B9683C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2EE8);
  }

  return result;
}

void sub_1B90590F8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B905924C(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B905924C(319, &qword_1EBAC2F68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B905924C(319, &qword_1EBAC2F70, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B905924C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B90592D8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B905924C(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90593C4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B905924C(319, &qword_1EBAC2F98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90594B8()
{
  sub_1B905924C(319, &qword_1EBAC2FB0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B905924C(319, &qword_1EBAC2FB8, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B90595F4()
{
  sub_1B905924C(319, &qword_1EBAC2FD0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B905924C(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_32_11@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_51_9@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v2 + a1, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_75_4()
{

  return sub_1B9058798();
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return sub_1B9058840();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  v3 = a1 + *(v2 + 36);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 40);
  v5 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.surroundingText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.surroundingText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.queryBoundingBoxes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Multimodal_V1_TextContext.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Multimodal_V1_TextualSignal.queryType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.queryType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.query.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.query.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.textContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  sub_1B9059D4C(v1 + *(v9 + 40), v8);
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (!v13)
  {
    return sub_1B9059DBC(v8, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v14 = a1 + *(v10 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v15, v16, v10);
  if (!v13)
  {
    return sub_1B8D9207C(v8, &qword_1EBAC3030, &qword_1B9684520);
  }

  return result;
}

uint64_t sub_1B9059D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9059DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9059E20(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B905A164(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Multimodal_V1_TextualSignal.textContext.setter();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.textContext.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v2) + 40);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC3030, &qword_1B9684520);
  sub_1B9059DBC(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Multimodal_V1_TextualSignal.textContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 40);
  *(v3 + 10) = v11;
  sub_1B9059D4C(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    v15 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC3030, &qword_1B9684520);
    }
  }

  else
  {
    sub_1B9059DBC(v6, v10);
  }

  return sub_1B905A084;
}

void sub_1B905A084(uint64_t **a1, char a2)
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
    sub_1B905A164((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAC3030, &qword_1B9684520);
    sub_1B9059DBC(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B905A1C8(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAC3030, &qword_1B9684520);
    sub_1B9059DBC(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B905A164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B905A1C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.hasTextContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  sub_1B9059D4C(v0 + *(v7 + 40), v6);
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBAC3030, &qword_1B9684520);
  return v12;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_TextualSignal.clearTextContext()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 40);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC3030, &qword_1B9684520);
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

void Apple_Parsec_Multimodal_V1_TextualSignal.lookupSelectionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupSelectionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupAppBundleID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupAppBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupHintDomain.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupHintDomain.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v2) + 36);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Multimodal_V1_TextualSignal.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v0) + 36);
  return nullsub_1;
}

uint64_t sub_1B905A5C8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3000);
  __swift_project_value_buffer(v0, qword_1EBAC3000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "surrounding_text";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1000;
  *v10 = "query_bounding_boxes";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1000)
    {
      OUTLINED_FUNCTION_9();
      sub_1B905A828();
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B905A828()
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  sub_1B905BAA4(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0), sub_1B905BAA4(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v6 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_TextContext.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  sub_1B8D83D3C();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_46();
  sub_1B905BAA4(v9, v10);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B905AB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B905BAA4(&qword_1EBAC30C0, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905AB94(uint64_t a1)
{
  v2 = sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905AC04()
{
  sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B905ACA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3018);
  __swift_project_value_buffer(v0, qword_1EBAC3018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "queryType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_context";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "lookupSelectionType";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "lookupAppBundleId";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "lookupHintDomain";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B905B048();
        break;
      case 2:
      case 5:
      case 6:
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B905B0B0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B905B164();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B905B0B0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 40);
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v31 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v9 = OUTLINED_FUNCTION_59_1(v31);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v15 = *(v2 + 8);
  if (sub_1B8D92198(v14, v15, 0) || (v29 = v14, v30 = v15, sub_1B905BAEC(), result = sub_1B964C680(), !v1))
  {
    v17 = v2[2];
    v18 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v19 || (result = sub_1B964C700(), !v1))
    {
      v20 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
      sub_1B9059D4C(v2 + *(v20 + 40), v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v31) == 1)
      {
        sub_1B8D9207C(v8, &qword_1EBAC3030, &qword_1B9684520);
      }

      else
      {
        sub_1B9059DBC(v8, v13);
        sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        result = sub_1B905A1C8(v13);
        if (v1)
        {
          return result;
        }
      }

      if (!v2[4] || (v21 = *(v2 + 40), v29 = v2[4], v30 = v21, sub_1B905BB40(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        v22 = v2[6];
        v23 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v24 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v25 = v2[8];
          v26 = v2[9];
          OUTLINED_FUNCTION_1();
          if (!v27 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v28 = *(v20 + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_TextualSignal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v44 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3058, &qword_1B9684528);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = *(v0 + 8);
  if (!sub_1B8D92198(*v1, *(v1 + 8), *v0))
  {
    goto LABEL_38;
  }

  v21 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  v22 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  v23 = *(v22 + 40);
  v24 = *(v14 + 48);
  sub_1B9059D4C(v1 + v23, v19);
  sub_1B9059D4C(v0 + v23, &v19[v24]);
  OUTLINED_FUNCTION_178(v19, 1, v2);
  if (v21)
  {
    OUTLINED_FUNCTION_178(&v19[v24], 1, v2);
    if (v21)
    {
      sub_1B8D9207C(v19, &qword_1EBAC3030, &qword_1B9684520);
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  sub_1B9059D4C(v19, v13);
  OUTLINED_FUNCTION_178(&v19[v24], 1, v2);
  if (v32)
  {
    sub_1B905A1C8(v13);
LABEL_27:
    v33 = &qword_1EBAC3058;
    v34 = &qword_1B9684528;
LABEL_37:
    sub_1B8D9207C(v19, v33, v34);
LABEL_38:
    v31 = 0;
    return v31 & 1;
  }

  sub_1B9059DBC(&v19[v24], v7);
  v35 = *v13 == *v7 && v13[1] == v7[1];
  if (!v35 && (sub_1B964C9F0() & 1) == 0 || (v36 = v13[2], v37 = v7[2], sub_1B8D83D3C(), (v38 & 1) == 0))
  {
    sub_1B905A1C8(v7);
    sub_1B905A1C8(v13);
    v33 = &qword_1EBAC3030;
    v34 = &qword_1B9684520;
    goto LABEL_37;
  }

  v39 = *(v2 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_46();
  sub_1B905BAA4(v40, v41);
  v42 = sub_1B964C850();
  sub_1B905A1C8(v7);
  sub_1B905A1C8(v13);
  sub_1B8D9207C(v19, &qword_1EBAC3030, &qword_1B9684520);
  if ((v42 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  v25 = *(v0 + 40);
  if (!sub_1B8D92198(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
  {
    goto LABEL_38;
  }

  v26 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  v27 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  v28 = *(v22 + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_46();
  sub_1B905BAA4(v29, v30);
  v31 = sub_1B964C850();
  return v31 & 1;
}

uint64_t sub_1B905B850(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B905BAA4(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B905B934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B905BAA4(&qword_1EBAC30B8, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905B9B4(uint64_t a1)
{
  v2 = sub_1B905BAA4(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905BA24()
{
  sub_1B905BAA4(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B905BAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B905BAEC()
{
  result = qword_1EBAC3040;
  if (!qword_1EBAC3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3040);
  }

  return result;
}

unint64_t sub_1B905BB40()
{
  result = qword_1EBAC3048;
  if (!qword_1EBAC3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3048);
  }

  return result;
}

void sub_1B905BDFC()
{
  sub_1B905BFC8(319, &qword_1EBAC3098, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B905BEE8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B905BFC8(319, &qword_1EBAC30B0, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B905BFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0) + 20);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v2) + 36);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v13 = a1 + *(v9 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v14, v15, v9);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_182();
    return sub_1B905CF40();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_3_26();
  sub_1B905CF40();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Multimodal_V1_RegionInfo.boundingBox.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0) + 24);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  OUTLINED_FUNCTION_643();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v15 = v10 + *(v7 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_26();
    sub_1B905CF40();
  }

  return sub_1B905C684;
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.hasBoundingBox.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v4);
  OUTLINED_FUNCTION_115(*(v5 + 24));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B964D8B0);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_RegionInfo.clearBoundingBox()()
{
  v1 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB90C0, &unk_1B964D8B0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.predictedLabels.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.predictions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B905CAAC()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B905CB54()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B905CCC8()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B905CD50()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.visualQuery.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v7);
  OUTLINED_FUNCTION_115(*(v8 + 20));
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v14, v15, v9);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3168, &unk_1B9684898);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_182();
    return sub_1B905CF40();
  }

  return result;
}

uint64_t sub_1B905CF40()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B905CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B905D32C();
  return a7(v13);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.visualQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_1_41();
  sub_1B905CF40();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Multimodal_V1_VisualSignal.visualQuery.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0) + 20);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  OUTLINED_FUNCTION_643();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v15 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC3168, &unk_1B9684898);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_41();
    sub_1B905CF40();
  }

  return sub_1B905D210;
}

void sub_1B905D238(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    sub_1B905D32C();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B905CF40();
    OUTLINED_FUNCTION_187_1();
    sub_1B905D384();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B905CF40();
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1B905D32C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B905D384()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.hasVisualQuery.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v4);
  OUTLINED_FUNCTION_115(*(v5 + 20));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B9684898);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_VisualSignal.clearVisualQuery()()
{
  v1 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC3168, &unk_1B9684898);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B905D5D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC30C8);
  __swift_project_value_buffer(v0, qword_1EBAC30C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B964EE70;
  v4 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v4 = "x";
  *(v4 + 8) = 1;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v16 + v3 + v2 + v1[14];
  *(v16 + v3 + v2) = 2;
  *v8 = "y";
  *(v8 + 8) = 1;
  *(v8 + 16) = 2;
  v7();
  v9 = (v16 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "width";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v16 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v16 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "identifier";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
    {
      if (*(v2 + 8) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
      {
        if (*(v2 + 12) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
        {
          v3 = *(v2 + 16);
          v4 = *(v2 + 24);
          OUTLINED_FUNCTION_1();
          if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
          {
            v7 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_BoundingBox.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v6 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B905DB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32D0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905DBF0(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905DC60()
{
  sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);

  return sub_1B964C5D0();
}

uint64_t sub_1B905DCF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC30E0);
  __swift_project_value_buffer(v0, qword_1EBAC30E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "predicted_labels";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B905F6C8(v3, v4, v5, v6, v7, &qword_1EBAC3178, v8);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B905DF94();
    }
  }

  return result;
}

uint64_t sub_1B905DF94()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0) + 24);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.traverse<A>(visitor:)(uint64_t a1)
{
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v17 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  v18 = v1;
  v13 = *(v17 + 24);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAB90C0, &unk_1B964D8B0);
  }

  else
  {
    sub_1B905CF40();
    sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox);
    OUTLINED_FUNCTION_39_5();
    sub_1B964C740();
    result = sub_1B905D384();
    if (v2)
    {
      return result;
    }
  }

  v15 = v18;
  if (!*(*v18 + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0), sub_1B8CD2528(&qword_1EBAC3178, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_5(), result = sub_1B964C730(), !v2))
  {
    v16 = v15 + *(v17 + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_RegionInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v34 - v15);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C8, &unk_1B9683B30) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v34 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  v35 = a1;
  v22 = *(v34 + 24);
  v23 = v17[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v21, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_178(&v21[v23], 1, v4);
    if (v24)
    {
      sub_1B8D9207C(v21, &qword_1EBAB90C0, &unk_1B964D8B0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v21, &qword_1EBAB90C8, &unk_1B9683B30);
LABEL_13:
    v32 = 0;
    return v32 & 1;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v21[v23], 1, v4);
  if (v24)
  {
    sub_1B905D384();
    goto LABEL_9;
  }

  sub_1B905CF40();
  v25 = static Apple_Parsec_Multimodal_V1_BoundingBox.== infix(_:_:)(v16, v10);
  sub_1B905D384();
  sub_1B905D384();
  sub_1B8D9207C(v21, &qword_1EBAB90C0, &unk_1B964D8B0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v26 = *v35;
  v27 = *a2;
  sub_1B8D70BB8();
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(v34 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v30, v31);
  v32 = sub_1B964C850();
  return v32 & 1;
}

uint64_t sub_1B905E620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32C8, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905E6A0(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC31A0, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905E710()
{
  sub_1B8CD2528(&qword_1EBAC31A0, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B905E7A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC30F8);
  __swift_project_value_buffer(v0, qword_1EBAC30F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_urn";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "predictions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B905EA00();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B905EA00()
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0);
  sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0), sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_PredictedLabels.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  sub_1B8D6ABF4();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B905ECC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32C0, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905ED48(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC3178, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905EDB8()
{
  sub_1B8CD2528(&qword_1EBAC3178, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels);

  return sub_1B964C5D0();
}

uint64_t sub_1B905EE38()
{
  result = MEMORY[0x1BFADC850](0x746369646572502ELL, 0xEB000000006E6F69);
  qword_1EBAC3110 = 0xD00000000000002ALL;
  *algn_1EBAC3118 = 0x80000001B9703200;
  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.protoMessageName.getter()
{
  if (qword_1EBAB7048 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B905EF10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3120);
  __swift_project_value_buffer(v0, qword_1EBAC3120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B905F318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32B8, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905F398(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905F408()
{
  sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);

  return sub_1B964C5D0();
}

uint64_t sub_1B905F4A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3138);
  __swift_project_value_buffer(v0, qword_1EBAC3138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1000;
  *v5 = "regions";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1000)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B905F6C8(v3, v4, v5, v6, v7, &qword_1EBAC31A0, v8);
    }
  }

  return result;
}

uint64_t sub_1B905F6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_1B8CD2528(a6, a7);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0), sub_1B8CD2528(&qword_1EBAC31A0, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_VisualQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  sub_1B8D703F8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B905F94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905F9CC(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905FA3C()
{
  sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B905FAD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3150);
  __swift_project_value_buffer(v0, qword_1EBAC3150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "visual_query";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B905FCAC();
    }
  }

  return result;
}

uint64_t sub_1B905FCAC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0) + 20);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0) + 20);
  v18 = v3;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC3168, &unk_1B9684898);
  }

  else
  {
    sub_1B905CF40();
    sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery);
    sub_1B964C740();
    result = sub_1B905D384();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Multimodal_V1_VisualSignal.== infix(_:_:)()
{
  v1 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v2 = OUTLINED_FUNCTION_59_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - v12);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC31B8, &qword_1B96848A8) - 8);
  v15 = *(*v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_22_3();
  v18 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v17) + 20);
  v19 = v14[14];
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_643();
  v20 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v20, v21, v1);
  if (v25)
  {
    OUTLINED_FUNCTION_178(v0 + v19, 1, v1);
    if (v25)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3168, &unk_1B9684898);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0 + v19, 1, v1);
  if (v25)
  {
    sub_1B905D384();
LABEL_10:
    v26 = &qword_1EBAC31B8;
    v27 = &qword_1B96848A8;
LABEL_11:
    sub_1B8D9207C(v0, v26, v27);
LABEL_12:
    v24 = 0;
    return v24 & 1;
  }

  OUTLINED_FUNCTION_1_41();
  sub_1B905CF40();
  v29 = *v13;
  v30 = *v7;
  sub_1B8D703F8();
  if ((v31 & 1) == 0)
  {
    sub_1B905D384();
    sub_1B905D384();
    v26 = &qword_1EBAC3168;
    v27 = &unk_1B9684898;
    goto LABEL_11;
  }

  v32 = *(v1 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v33, v34);
  v35 = sub_1B964C850();
  sub_1B905D384();
  sub_1B905D384();
  sub_1B8D9207C(v0, &qword_1EBAC3168, &unk_1B9684898);
  if ((v35 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v22, v23);
  v24 = sub_1B964C850();
  return v24 & 1;
}

uint64_t sub_1B90602B4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2528(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9060398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32A8, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9060418(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9060488()
{
  sub_1B8CD2528(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B9060BF0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9060CA8()
{
  sub_1B9060DA4(319, &qword_1EBAC3248, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9060DA4(319, &qword_1EBAC2FB8, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9060DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9060E30()
{
  sub_1B9060DA4(319, &qword_1EBAC3260, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_23Tm_0()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1B9060FB0()
{
  sub_1B9060DA4(319, &qword_1EBAC3288, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B906108C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9060DA4(319, &qword_1EBAC32A0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t Apple_Parsec_Rendering_V2_RenderStyle.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9061220@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Rendering_V2_RenderStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9061254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90626D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Rendering_V2_RenderStyle.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC32D8 = a1;
}

uint64_t sub_1B906139C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Rendering_V2_RenderStyle.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Rendering_V2_Rendering.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.style.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.feedback.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.feedback.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_11_24();
  sub_1B8E203A8(v1 + *(v8 + 32), v2);
  v9 = sub_1B964C1C0();
  OUTLINED_FUNCTION_178(v2, 1, v9);
  if (!v10)
  {
    return (*(*(v9 - 8) + 32))(a1, v2, v9);
  }

  sub_1B964C1B0();
  result = OUTLINED_FUNCTION_178(v2, 1, v9);
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Parsec_Rendering_V2_Rendering()
{
  result = qword_1EBAC3360;
  if (!qword_1EBAC3360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9061664(uint64_t a1)
{
  v2 = sub_1B964C1C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.setter(v5);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering() + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Rendering_V2_Rendering.cardDataDebug.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C1C0();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering() + 32);
  *(v3 + 12) = v13;
  sub_1B8E203A8(v1 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B8E20AB0;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.hasCardDataDebug.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_24();
  sub_1B8E203A8(v0 + *(v6 + 32), v1);
  v7 = sub_1B964C1C0();
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Rendering_V2_Rendering.clearCardDataDebug()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering() + 32);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8F20, &qword_1B964D720);
  v2 = sub_1B964C1C0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering() + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering() + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  v3 = a1 + *(v2 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 32);
  v5 = sub_1B964C1C0();

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1B9061C24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC32E0);
  __swift_project_value_buffer(v0, qword_1EBAC32E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "UNSPECIFIED";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "ROW";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "DESCRIPTIVE";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FULLDETAIL";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "COMPACT";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "DATA";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "COMPACT_TOPHIT";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ZKW_ROW";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TOPHIT";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9061FC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC32F8);
  __swift_project_value_buffer(v0, qword_1EBAC32F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "style";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cardData";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feedback";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cardDataDebug";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B90622DC();
        break;
      case 2:
      case 3:
        sub_1B964C470();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9062344();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9062344()
{
  v0 = *(type metadata accessor for Apple_Parsec_Rendering_V2_Rendering() + 32);
  sub_1B964C1C0();
  sub_1B90630BC(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1B964C1C0();
  v13 = OUTLINED_FUNCTION_30_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v4 || (v20 = *(v4 + 8), v37 = *v4, v38 = v20, sub_1B90626D8(), result = sub_1B964C680(), !v2))
  {
    v36 = v15;
    v39 = a1;
    v22 = v4[2];
    v23 = v4[3];
    v24 = OUTLINED_FUNCTION_113_0();
    if (sub_1B8D99EA8(v24, v25) || (OUTLINED_FUNCTION_113_0(), result = OUTLINED_FUNCTION_10_19(), (v3 = v2) == 0))
    {
      v26 = v4[4];
      v27 = v4[5];
      v28 = OUTLINED_FUNCTION_113_0();
      if (sub_1B8D99EA8(v28, v29) || (OUTLINED_FUNCTION_113_0(), result = OUTLINED_FUNCTION_10_19(), (v3 = v2) == 0))
      {
        v30 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
        sub_1B8E203A8(v4 + *(v30 + 32), v11);
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          sub_1B8D9207C(v11, &qword_1EBAB8F20, &qword_1B964D720);
        }

        else
        {
          v35 = v30;
          v31 = v36;
          (*(v36 + 32))(v19, v11, v12);
          OUTLINED_FUNCTION_1_42();
          sub_1B90630BC(v32, v33);
          sub_1B964C740();
          if (v3)
          {
            return (*(v31 + 8))(v19, v12);
          }

          (*(v31 + 8))(v19, v12);
          v30 = v35;
        }

        v34 = v4 + *(v30 + 28);
        return sub_1B964C290();
      }
    }
  }

  return result;
}

unint64_t sub_1B90626D8()
{
  result = qword_1EBAC3310;
  if (!qword_1EBAC3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3310);
  }

  return result;
}

uint64_t static Apple_Parsec_Rendering_V2_Rendering.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1B964C1C0();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v24 = *a1;
  v25 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v25)
    {
      case 1:
        if (v24 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 2:
        if (v24 != 2)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 3:
        if (v24 != 3)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 4:
        if (v24 != 4)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 5:
        if (v24 != 5)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 6:
        if (v24 != 6)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 7:
        if (v24 != 7)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      case 8:
        if (v24 != 8)
        {
          goto LABEL_35;
        }

        goto LABEL_6;
      default:
        if (!v24)
        {
          goto LABEL_6;
        }

        goto LABEL_35;
    }
  }

  if (v24 != v25)
  {
    goto LABEL_35;
  }

LABEL_6:
  if ((MEMORY[0x1BFADC060](a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[4], a1[5], a2[4], a2[5]) & 1) == 0)
  {
LABEL_35:
    v35 = 0;
    return v35 & 1;
  }

  v26 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  v27 = *(v26 + 32);
  v28 = *(v18 + 48);
  sub_1B8E203A8(a1 + v27, v23);
  sub_1B8E203A8(a2 + v27, &v23[v28]);
  OUTLINED_FUNCTION_178(v23, 1, v4);
  if (!v29)
  {
    sub_1B8E203A8(v23, v17);
    OUTLINED_FUNCTION_178(&v23[v28], 1, v4);
    if (!v29)
    {
      (*(v7 + 32))(v11, &v23[v28], v4);
      OUTLINED_FUNCTION_1_42();
      sub_1B90630BC(v30, v31);
      v32 = sub_1B964C850();
      v33 = *(v7 + 8);
      v33(v11, v4);
      v33(v17, v4);
      sub_1B8D9207C(v23, &qword_1EBAB8F20, &qword_1B964D720);
      if (v32)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    (*(v7 + 8))(v17, v4);
LABEL_16:
    sub_1B8D9207C(v23, &qword_1EBAB8F28, &unk_1B9683B20);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_178(&v23[v28], 1, v4);
  if (!v29)
  {
    goto LABEL_16;
  }

  sub_1B8D9207C(v23, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_34:
  v34 = *(v26 + 28);
  sub_1B964C2B0();
  sub_1B90630BC(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v35 = sub_1B964C850();
  return v35 & 1;
}

uint64_t Apple_Parsec_Rendering_V2_Rendering.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  sub_1B90630BC(&qword_1EBAC3318, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9062BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90630BC(&qword_1EBAC3370, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9062C60(uint64_t a1)
{
  v2 = sub_1B90630BC(&qword_1EBAC3350, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9062CD0()
{
  sub_1B90630BC(&qword_1EBAC3350, type metadata accessor for Apple_Parsec_Rendering_V2_Rendering);

  return sub_1B964C5D0();
}

unint64_t sub_1B9062D50()
{
  result = qword_1EBAC3320;
  if (!qword_1EBAC3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3320);
  }

  return result;
}

unint64_t sub_1B9062DA8()
{
  result = qword_1EBAC3328;
  if (!qword_1EBAC3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3328);
  }

  return result;
}

unint64_t sub_1B9062E00()
{
  result = qword_1EBAC3330;
  if (!qword_1EBAC3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3330);
  }

  return result;
}

unint64_t sub_1B9062E58()
{
  result = qword_1EBAC3338;
  if (!qword_1EBAC3338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3340, &qword_1B9685368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3338);
  }

  return result;
}

void sub_1B9063018()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8E244A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B90630BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_10_19()
{
  v2 = *(v0 - 72);

  return sub_1B964C6A0();
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
}

unint64_t Apple_Parsec_Responseframework_Engagement_EngagementType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B90631A0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Responseframework_Engagement_EngagementType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90631D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9065A38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Responseframework_Engagement_EngagementType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3378 = a1;
}

uint64_t sub_1B906331C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Responseframework_Engagement_EngagementType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.nextCardURL.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.nextCardURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.engagementContext.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.engagementContext.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  sub_1B9063584(v1 + *(v8 + 28), v2);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v10 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v10, v11, Context) != 1)
  {
    return sub_1B9065910(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(Context + 20);
  if (qword_1ED9D38C0 != -1)
  {
    OUTLINED_FUNCTION_12_0();
  }

  *(a1 + v12) = qword_1ED9D38C8;
  v13 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, Context);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  return result;
}

uint64_t sub_1B9063584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B90635F4(uint64_t a1)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  sub_1B8D5383C(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.setter();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B9065910(v0, v1 + v3);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, Context);
}

void (*Apple_Parsec_Responseframework_Engagement_EngagementData.queryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3[2] = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 28);
  *(v3 + 10) = v11;
  sub_1B9063584(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, Context) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *&v10[v12] = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    sub_1B9065910(v6, v10);
  }

  return sub_1B906388C;
}

void sub_1B906388C(uint64_t **a1, char a2)
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
    sub_1B8D5383C((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBABED40, &qword_1B96809F0);
    sub_1B9065910(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9065974(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBABED40, &qword_1B96809F0);
    sub_1B9065910(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Apple_Parsec_Responseframework_Engagement_EngagementData.hasQueryContext.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  sub_1B9063584(v0 + *(v6 + 28), v1);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_EngagementData.clearQueryContext()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 28);
  sub_1B8D9207C(v0 + v1, &qword_1EBABED40, &qword_1B96809F0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, Context);
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Responseframework_Engagement_EngagementData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  v3 = a1 + *(v2 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 28);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, Context);
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.domain.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.searchQueryForAllDomains.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.searchQueryForAllDomains.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.customFields.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.nextCardURL.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.nextCardURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.magicFlags.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.magicFlags.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void Apple_Parsec_Responseframework_Engagement_Context.engagementType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.engagementType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0) + 48);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(v2) + 48);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Responseframework_Engagement_Context.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(v0) + 48);
  return nullsub_1;
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = sub_1B964C7B0();
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  v2 = a1 + *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0) + 48);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B90640B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3380);
  __swift_project_value_buffer(v0, qword_1EBAC3380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENGAGEMENT_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ENGAGEMENT_TYPE_SEARCH";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ENGAGEMENT_TYPE_CARD_ID_LOOKUP";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ENGAGEMENT_TYPE_ENTITY_EXPERIENCE";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9064334()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3398);
  __swift_project_value_buffer(v0, qword_1EBAC3398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "next_card_url";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "engagement_context";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "query_context";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B90645E8();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B90645E8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0) + 28);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B90659F0(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Responseframework_Engagement_EngagementData.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v12 = OUTLINED_FUNCTION_59_1(Context);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v18 = v3[1];
  OUTLINED_FUNCTION_1();
  if (!v19 || (result = sub_1B964C700(), !v2))
  {
    v23[1] = a1;
    if (sub_1B8D99EA8(v3[2], v3[3]) || (result = sub_1B964C6A0(), !v2))
    {
      v21 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
      sub_1B9063584(v3 + *(v21 + 28), v10);
      if (__swift_getEnumTagSinglePayload(v10, 1, Context) == 1)
      {
        sub_1B8D9207C(v10, &qword_1EBABED40, &qword_1B96809F0);
      }

      else
      {
        sub_1B9065910(v10, v16);
        sub_1B90659F0(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
        sub_1B964C740();
        result = sub_1B9065974(v16);
        if (v2)
        {
          return result;
        }
      }

      v22 = v3 + *(v21 + 24);
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Responseframework_Engagement_EngagementData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_59_1(Context);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1 == *v0 && v1[1] == v0[1];
  if (!v19 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData(0);
  v21 = *(v20 + 28);
  v22 = *(v15 + 48);
  sub_1B9063584(v1 + v21, v2);
  sub_1B9063584(v0 + v21, v2 + v22);
  v23 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v23, v24, Context) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v2 + v22, 1, Context) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
LABEL_19:
      v37 = *(v20 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_48();
      sub_1B90659F0(v38, v39);
      v27 = sub_1B964C850();
      return v27 & 1;
    }

    goto LABEL_12;
  }

  sub_1B9063584(v2, v14);
  if (__swift_getEnumTagSinglePayload(v2 + v22, 1, Context) == 1)
  {
    sub_1B9065974(v14);
LABEL_12:
    v25 = &qword_1EBABED68;
    v26 = &qword_1B9680A10;
LABEL_13:
    sub_1B8D9207C(v2, v25, v26);
    goto LABEL_14;
  }

  sub_1B9065910(v2 + v22, v8);
  v29 = *(Context + 20);
  v30 = *&v14[v29];
  v31 = *&v8[v29];
  if (v30 != v31)
  {
    v32 = *&v14[v29];

    v33 = sub_1B9090820(v30, v31);

    if (!v33)
    {
      sub_1B9065974(v8);
      sub_1B9065974(v14);
      v25 = &qword_1EBABED40;
      v26 = &qword_1B96809F0;
      goto LABEL_13;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_48();
  sub_1B90659F0(v34, v35);
  v36 = sub_1B964C850();
  sub_1B9065974(v8);
  sub_1B9065974(v14);
  sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  if (v36)
  {
    goto LABEL_19;
  }

LABEL_14:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1B9064CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90659F0(&qword_1EBAC3440, type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9064D20(uint64_t a1)
{
  v2 = sub_1B90659F0(&qword_1EBAC3410, type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9064D90()
{
  sub_1B90659F0(&qword_1EBAC3410, type metadata accessor for Apple_Parsec_Responseframework_Engagement_EngagementData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9064E2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC33B0);
  __swift_project_value_buffer(v0, qword_1EBAC33B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B96511B0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "card_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "domain";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "should_query_all_domains";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "search_query_for_all_domains";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "custom_fields";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "next_card_url";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "magic_flags";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "engagement_type";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9065268();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B90652E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Responseframework_Engagement_Context.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
    {
      if (*(v0 + 32) != 1 || (v1 = v2, result = sub_1B964C670(), !v2))
      {
        v10 = v0[5];
        v11 = v0[6];
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
        {
          if (!*(v0[7] + 16) || (sub_1B964C280(), v1 = v2, result = sub_1B964C5F0(), !v2))
          {
            v13 = v0[8];
            v14 = v0[9];
            OUTLINED_FUNCTION_1();
            if (!v15 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
            {
              v16 = v0[10];
              v17 = v0[11];
              OUTLINED_FUNCTION_1();
              if (!v18 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
              {
                if (!v0[12] || (v20 = v0[12], v21 = *(v0 + 104), sub_1B9065A38(), result = sub_1B964C680(), !v2))
                {
                  v19 = v0 + *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0) + 48);
                  OUTLINED_FUNCTION_12();
                  return sub_1B964C290();
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

uint64_t static Apple_Parsec_Responseframework_Engagement_Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(a1 + 56), *(a2 + 56));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 104);
  if (!sub_1B8D92198(*(a1 + 96), *(a1 + 104), *(a2 + 96)))
  {
    return 0;
  }

  v11 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_48();
  sub_1B90659F0(v12, v13);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B90656BC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B90659F0(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B90657A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90659F0(&qword_1EBAC3438, type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9065820(uint64_t a1)
{
  v2 = sub_1B90659F0(&qword_1EBAC3428, type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9065890()
{
  sub_1B90659F0(&qword_1EBAC3428, type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context);

  return sub_1B964C5D0();
}

uint64_t sub_1B9065910(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  (*(*(Context - 8) + 32))(a2, a1, Context);
  return a2;
}

uint64_t sub_1B9065974(uint64_t a1)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  (*(*(Context - 8) + 8))(a1, Context);
  return a1;
}

uint64_t sub_1B90659F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9065A38()
{
  result = qword_1EBAC33D0;
  if (!qword_1EBAC33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC33D0);
  }

  return result;
}

unint64_t sub_1B9065A90()
{
  result = qword_1EBAC33E0;
  if (!qword_1EBAC33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC33E0);
  }

  return result;
}

unint64_t sub_1B9065AE8()
{
  result = qword_1EBAC33E8;
  if (!qword_1EBAC33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC33E8);
  }

  return result;
}

unint64_t sub_1B9065B40()
{
  result = qword_1EBAC33F0;
  if (!qword_1EBAC33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC33F0);
  }

  return result;
}

unint64_t sub_1B9065B98()
{
  result = qword_1EBAC33F8;
  if (!qword_1EBAC33F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3400, &qword_1B96856B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC33F8);
  }

  return result;
}

void sub_1B9065E74()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9065F10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9065F10()
{
  if (!qword_1EDA04118)
  {
    type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA04118);
    }
  }
}

void sub_1B9065F90()
{
  sub_1B901FE74();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v9);
  OUTLINED_FUNCTION_62_2(*(v10 + 20));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(a1 + v13) = qword_1ED9D38C8;
    v14 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    v17 = OUTLINED_FUNCTION_182();
    return sub_1B906CE08(v17, v18);
  }

  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_43();
  v3 = OUTLINED_FUNCTION_122_0();
  sub_1B906CE08(v3, v4);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3[2] = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  OUTLINED_FUNCTION_52_5(*(v11 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *&v10[v13] = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_1B906CE08(v6, v10);
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.hasQueryContext.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v7);
  OUTLINED_FUNCTION_53_7(v0 + *(v8 + 20));
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v9 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v9, v10, v11);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.clearQueryContext()()
{
  v1 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v9);
  OUTLINED_FUNCTION_62_2(*(v10 + 24));
  v11 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    a1[2] = MEMORY[0x1E69E7CC0];
    a1[3] = v13;
    a1[4] = 0;
    a1[5] = 0xE000000000000000;
    a1[6] = 0;
    a1[7] = 0xE000000000000000;
    v14 = v11[9];
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = (a1 + v11[10]);
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    v20 = (a1 + v11[11]);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v21 = a1 + v11[12];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_25();
    v22 = OUTLINED_FUNCTION_182();
    return sub_1B906CE08(v22, v23);
  }

  return result;
}

uint64_t sub_1B90665E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v14 = OUTLINED_FUNCTION_177_1();
  sub_1B906CE60(v14, v15);
  return a7(v13);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_2_25();
  v3 = OUTLINED_FUNCTION_122_0();
  sub_1B906CE08(v3, v4);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  OUTLINED_FUNCTION_52_5(*(v11 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v10[2] = MEMORY[0x1E69E7CC0];
    v10[3] = v13;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v14 = v7[9];
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = (v10 + v7[10]);
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    v20 = (v10 + v7[11]);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v21 = v10 + v7[12];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_25();
    sub_1B906CE08(v6, v10);
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B90668B8(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    v13 = OUTLINED_FUNCTION_128();
    sub_1B906CE60(v13, v14);
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B906CE08(v8, v12 + v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    sub_1B906CEB8();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B906CE08(v9, v12 + v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.hasRequestMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v7);
  OUTLINED_FUNCTION_53_7(v0 + *(v8 + 24));
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v9 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v9, v10, v11);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.clearRequestMetadata()()
{
  v1 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC3480, &unk_1B9685AF8);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  v1 = *(v0 + 20);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_16();
  result = OUTLINED_FUNCTION_521();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B9066BB0@<X0>(uint64_t a1@<X8>)
{
  result = Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9066BF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.setter(&v3);
}