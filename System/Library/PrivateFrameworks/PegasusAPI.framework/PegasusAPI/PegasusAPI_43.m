uint64_t sub_1B90DC818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B40, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DC898(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC48B8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DC908()
{
  sub_1B90E3800(&qword_1EBAC48B8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DC988()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4220);
  __swift_project_value_buffer(v0, qword_1EBAC4220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "StatusOK";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "StatusError";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "StatusNoResults";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90DCBC8()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B9706650);
  qword_1EBAC4238 = 0xD000000000000025;
  unk_1EBAC4240 = 0x80000001B9705A40;
  return result;
}

uint64_t sub_1B90DCC5C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4248);
  __swift_project_value_buffer(v0, qword_1EBAC4248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "suggestion";
  *(v6 + 8) = 10;
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
  *v12 = "feedback";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "previouslyEngaged";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "score";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "entities";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "detailText";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "serverFeatures";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.decodeMessage<A>(decoder:)()
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
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B90DD0B4();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B90DD154();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90DD0B4()
{
  type metadata accessor for Apple_Parsec_Search_V2_Entity(0);
  sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity);
  return sub_1B964C570();
}

uint64_t sub_1B90DD154()
{
  sub_1B964C280();
  sub_1B964C270();
  return sub_1B964C3B0();
}

void Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v0 = v1) == 0))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v0 = v1) == 0))
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      v9 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v9, v10) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), (v0 = v1) == 0))
      {
        if (*(v2 + 48) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), (v0 = v1) == 0))
        {
          if (*(v2 + 52) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), (v0 = v1) == 0))
          {
            if (!*(*(v2 + 56) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_Entity(0), sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), (v0 = v1) == 0))
            {
              v11 = *(v2 + 64);
              v12 = *(v2 + 72);
              OUTLINED_FUNCTION_1();
              if (!v13 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v0 = v1) == 0))
              {
                if (!*(*(v2 + 80) + 16) || (sub_1B964C280(), sub_1B964C270(), sub_1B964C5F0(), !v0))
                {
                  v14 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0) + 48);
                  OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_263_2();
  if ((MEMORY[0x1BFADC060](v10) & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  if (*(v3 + 52) != *(v2 + 52))
  {
    return 0;
  }

  v11 = *(v3 + 56);
  v12 = *(v2 + 56);
  sub_1B8D85EAC();
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(v3 + 64) == *(v2 + 64) && *(v3 + 72) == *(v2 + 72);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB0470(*(v3 + 80), *(v2 + 80));
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v17, v18);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90DD53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B38, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DD5BC(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC48D0, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DD62C()
{
  sub_1B90E3800(&qword_1EBAC48D0, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QuerySuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DD6EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4270);
  __swift_project_value_buffer(v0, qword_1EBAC4270);
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
  *v10 = "encryptedMessage";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.decodeMessage<A>(decoder:)()
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
      sub_1B9035AFC();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9035A30(v3, v4);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Error.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_65_6();
  if (v3 || ((v2 & 1) == 0 ? (result = sub_1B8DC2578(v0)) : (result = sub_1B9035C80(v0)), !v1))
  {
    v5 = v0 + *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.Error.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v58[0] = *v0;
    v58[1] = v1;
    v59 = v2;
    if (v6 != 255)
    {
      v56[0] = v5;
      v56[1] = v4;
      v7 = v6 & 1;
      v57 = v6 & 1;
      v8 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_137_3();
      sub_1B90387E4(v11, v12, v13);
      v14 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v14, v15, v16);
      v17 = static Apple_Parsec_Search_V2_SearchResponse.Error.OneOf_Error.== infix(_:_:)(v58, v56);
      v18 = OUTLINED_FUNCTION_259();
      sub_1B9038824(v18, v19, v7);
      v20 = OUTLINED_FUNCTION_461();
      sub_1B9038824(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_42_0();
      sub_1B903880C(v23, v24, v25);
      if (v17)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v31 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v34, v35, 255);
    v36 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_461();
    sub_1B9038824(v39, v40, v41);
LABEL_8:
    v42 = OUTLINED_FUNCTION_42_0();
    sub_1B903880C(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_137_3();
    sub_1B903880C(v45, v46, v47);
    return 0;
  }

  v26 = OUTLINED_FUNCTION_461();
  sub_1B90387E4(v26, v27, 255);
  if (v6 != 255)
  {
    v28 = OUTLINED_FUNCTION_137_3();
    sub_1B90387E4(v28, v29, v30);
    goto LABEL_8;
  }

  v49 = OUTLINED_FUNCTION_259();
  sub_1B90387E4(v49, v50, 255);
  v51 = OUTLINED_FUNCTION_461();
  sub_1B903880C(v51, v52, 255);
LABEL_11:
  v53 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v54, v55);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90DDBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B30, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DDC78(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC48E8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DDCE8()
{
  sub_1B90E3800(&qword_1EBAC48E8, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DDDB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4298);
  __swift_project_value_buffer(v0, qword_1EBAC4298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "prefix";
  *(v6 + 8) = 6;
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
  *v12 = "stats";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "topDown";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.decodeMessage<A>(decoder:)()
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
        sub_1B90DE0D0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90DE0D0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0) + 32);
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);
  return sub_1B964C580();
}

void Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4510, &qword_1B968AEB0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_159();
  v8 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v17 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
      v19 = *(Features + 32);
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_749();
      if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
      {
        sub_1B8D9207C(v3, &qword_1EBAC4510, &qword_1B968AEB0);
      }

      else
      {
        OUTLINED_FUNCTION_16_19();
        sub_1B90D4000();
        sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);
        OUTLINED_FUNCTION_37_2();
        sub_1B964C740();
        sub_1B90D40A8();
        if (v1)
        {
          goto LABEL_11;
        }
      }

      if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
      {
        v23 = *(Features + 28);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_112();
  v3 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4510, &qword_1B968AEB0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4550, &unk_1B968AED0);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v22 || (sub_1B964C9F0() & 1) != 0)
  {
    v23 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
    if (v23 || (sub_1B964C9F0() & 1) != 0)
    {
      Features = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures(0);
      v24 = *(Features + 32);
      v25 = *(v16 + 48);
      sub_1B8F1B8B8();
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_178(v21, 1, v3);
      if (v22)
      {
        OUTLINED_FUNCTION_178(&v21[v25], 1, v3);
        if (v22)
        {
          sub_1B8D9207C(v21, &qword_1EBAC4510, &qword_1B968AEB0);
LABEL_16:
          if (*(v1 + 32) == *(v0 + 32))
          {
            v26 = *(Features + 28);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_57();
            sub_1B90E3800(v27, v28);
            OUTLINED_FUNCTION_199_0();
          }

          goto LABEL_28;
        }
      }

      else
      {
        sub_1B8F1B8B8();
        OUTLINED_FUNCTION_178(&v21[v25], 1, v3);
        if (!v29)
        {
          OUTLINED_FUNCTION_16_19();
          sub_1B90D4000();
          v32 = *v15;
          v33 = *v9;
          sub_1B8D86180();
          if (v34)
          {
            v35 = v15[1];
            v36 = v9[1];
            sub_1B8D86180();
            if (v37)
            {
              v38 = *(v3 + 24);
              sub_1B964C2B0();
              OUTLINED_FUNCTION_0_57();
              sub_1B90E3800(v39, v40);
              v41 = sub_1B964C850();
              sub_1B90D40A8();
              sub_1B90D40A8();
              sub_1B8D9207C(v21, &qword_1EBAC4510, &qword_1B968AEB0);
              if ((v41 & 1) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_16;
            }
          }

          sub_1B90D40A8();
          sub_1B90D40A8();
          v30 = &qword_1EBAC4510;
          v31 = &qword_1B968AEB0;
LABEL_27:
          sub_1B8D9207C(v21, v30, v31);
          goto LABEL_28;
        }

        sub_1B90D40A8();
      }

      v30 = &qword_1EBAC4550;
      v31 = &unk_1B968AED0;
      goto LABEL_27;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90DE794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B28, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DE814(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4900, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DE884()
{
  sub_1B90E3800(&qword_1EBAC4900, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DE954()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC42C0);
  __swift_project_value_buffer(v0, qword_1EBAC42C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90DEC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B20, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DECA0(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4568, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DED10()
{
  sub_1B90E3800(&qword_1EBAC4568, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_1EBAB7270 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBAC4288;
  v10 = qword_1EBAC4290;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_186();
  MEMORY[0x1BFADC850](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1B90DEE80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC42E8);
  __swift_project_value_buffer(v0, qword_1EBAC42E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Cep";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "CepLong";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.decodeMessage<A>(decoder:)()
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
      sub_1B90EB128();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B90DF134();
    }
  }
}

uint64_t sub_1B90DF134()
{
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats(0);
  sub_1B90E3800(&qword_1EBAC4568, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats);
  return sub_1B964C570();
}

void Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats(0), OUTLINED_FUNCTION_182_2(), sub_1B90E3800(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats(0), OUTLINED_FUNCTION_182_2(), sub_1B90E3800(v5, v6), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), !v1))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D86180();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8);
  v8 = *(v0 + 8);
  sub_1B8D86180();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats(0);
  OUTLINED_FUNCTION_188_1(v10);
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90DF3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B18, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DF458(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DF4C8()
{
  sub_1B90E3800(&qword_1EBAC4548, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DF594()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4310);
  __swift_project_value_buffer(v0, qword_1EBAC4310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prefix";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "completion";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Correction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      if (*(v1 + 32) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.Correction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90DFA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B10, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90DFAAC(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4938, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90DFB1C()
{
  sub_1B90E3800(&qword_1EBAC4938, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Correction);

  return sub_1B964C5D0();
}

uint64_t sub_1B90DFBC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x80000001B9705A40;
  return result;
}

uint64_t sub_1B90DFC4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4338);
  __swift_project_value_buffer(v0, qword_1EBAC4338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "moreLabel";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "moreUrl";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "morePunchout";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "blockId";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "doNotFold";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "resultIdentifiers";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B90E005C();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90E005C()
{
  result = sub_1B964C520();
  if (v0)
  {
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_SearchResponse.Section.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v0 = v1) == 0))
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v0 = v1) == 0))
    {
      if (*(v2 + 48) == 255 || ((v8 = OUTLINED_FUNCTION_491(), v1 = v0, (v9 & 1) == 0) ? (result = sub_1B90E0240(v8)) : (result = sub_1B90E028C(v8)), !v0))
      {
        if (!*(v2 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (*(v2 + 56) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (!*(*(v2 + 64) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
            {
              v10 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B90E0240(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 32);
    v2 = *(result + 40);
    return sub_1B964C700();
  }

  return result;
}

uint64_t sub_1B90E028C(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 32);
    v2 = *(result + 40);
    return sub_1B964C700();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_SearchResponse.Section.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v13 = *(v2 + 32);
  v12 = *(v2 + 40);
  v14 = *(v2 + 48);
  if (v11 != 255)
  {
    v57[0] = *(v3 + 32);
    v57[1] = v10;
    v58 = v11;
    if (v14 != 255)
    {
      v55[0] = v13;
      v55[1] = v12;
      v56 = v14 & 1;
      v15 = OUTLINED_FUNCTION_42_0();
      sub_1B90DA298(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_137_3();
      sub_1B90DA298(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_42_0();
      sub_1B90DA298(v21, v22, v23);
      v24 = static Apple_Parsec_Search_V2_SearchResponse.Section.OneOf_More.== infix(_:_:)(v57, v55);
      OUTLINED_FUNCTION_259();
      sub_1B90DA2D0();
      OUTLINED_FUNCTION_461();
      sub_1B90DA2D0();
      v25 = OUTLINED_FUNCTION_42_0();
      sub_1B90DA2B8(v25, v26, v27);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    v33 = OUTLINED_FUNCTION_42_0();
    sub_1B90DA298(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_259();
    sub_1B90DA298(v36, v37, 255);
    v38 = OUTLINED_FUNCTION_42_0();
    sub_1B90DA298(v38, v39, v40);
    OUTLINED_FUNCTION_461();
    sub_1B90DA2D0();
LABEL_18:
    v41 = OUTLINED_FUNCTION_42_0();
    sub_1B90DA2B8(v41, v42, v43);
    v44 = OUTLINED_FUNCTION_137_3();
    sub_1B90DA2B8(v44, v45, v46);
    return 0;
  }

  v28 = OUTLINED_FUNCTION_461();
  sub_1B90DA298(v28, v29, 255);
  if (v14 != 255)
  {
    v30 = OUTLINED_FUNCTION_137_3();
    sub_1B90DA298(v30, v31, v32);
    goto LABEL_18;
  }

  v47 = OUTLINED_FUNCTION_259();
  sub_1B90DA298(v47, v48, 255);
  v49 = OUTLINED_FUNCTION_461();
  sub_1B90DA2B8(v49, v50, 255);
LABEL_20:
  if (*(v3 + 52) == *(v2 + 52) && *(v3 + 56) == *(v2 + 56) && (sub_1B8D6123C(*(v3 + 64), *(v2 + 64)) & 1) != 0)
  {
    v51 = *(type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section(0) + 40);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_57();
    sub_1B90E3800(v52, v53);
    return OUTLINED_FUNCTION_634() & 1;
  }

  return 0;
}

uint64_t sub_1B90E0548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B08, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E05C8(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4950, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E0638()
{
  sub_1B90E3800(&qword_1EBAC4950, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Section);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E06D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4350);
  __swift_project_value_buffer(v0, qword_1EBAC4350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "probabilityScore";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "category";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "topics";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_Entity.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B90E09F0();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B90E0A58();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90E0A58()
{
  type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic(0);
  sub_1B90E3800(&qword_1ED9EDB88, type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Search_V2_Entity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v1))
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      if (!*(v2 + 24) || (v7 = *(v2 + 32), OUTLINED_FUNCTION_94_4(), sub_1B90EBC44(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        if (!*(*(v2 + 40) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic(0), sub_1B90E3800(&qword_1ED9EDB88, type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v1))
        {
          v8 = *(type metadata accessor for Apple_Parsec_Search_V2_Entity(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_Entity.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 32);
  if (!sub_1B8D92198(*(v3 + 24), *(v3 + 32), *(v2 + 24)))
  {
    return 0;
  }

  v7 = *(v3 + 40);
  v8 = *(v2 + 40);
  sub_1B8D7A894();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Search_V2_Entity(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90E0DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4B00, type metadata accessor for Apple_Parsec_Search_V2_Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E0E24(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E0E94()
{
  sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E0F14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4368);
  __swift_project_value_buffer(v0, qword_1EBAC4368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656D00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NamedEntityCategoryUnknown";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NamedEntityCategoryPerson";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NamedEntityCategoryOrganization";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NamedEntityCategoryLocation";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NamedEntityCategoryRestaurant";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NamedEntityCategoryActivityLocation";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NamedEntityCategoryMedia";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "NamedEntityCategoryArtist";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "NamedEntityCategoryStreetAddress";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "NamedEntityCategoryCity";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "NamedEntityCategoryState";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "NamedEntityCategoryCountry";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "NamedEntityCategoryFullAddress";
  *(v32 + 1) = 30;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "NamedEntityCategoryTouristAttraction";
  *(v34 + 1) = 36;
  v34[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90E13F8()
{
  result = MEMORY[0x1BFADC850](0x6369706F542ELL, 0xE600000000000000);
  qword_1EBAC4380 = 0xD00000000000001DLL;
  *algn_1EBAC4388 = 0x80000001B9705A70;
  return result;
}

uint64_t sub_1B90E1480()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4390);
  __swift_project_value_buffer(v0, qword_1EBAC4390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90E1680()
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

void sub_1B90E1718()
{
  OUTLINED_FUNCTION_822();
  v3 = v2;
  OUTLINED_FUNCTION_1_15();
  if (!v4 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v0))
    {
      v5 = *(v3(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B90E17BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v4 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v9 = a3(0);
  OUTLINED_FUNCTION_188_1(v9);
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90E18C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AF8, type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E1944(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1ED9EDB88, type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E19B4()
{
  sub_1B90E3800(&qword_1ED9EDB88, type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E1A4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC43A8);
  __swift_project_value_buffer(v0, qword_1EBAC43A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
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
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_Rendering.decodeMessage<A>(decoder:)()
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
      sub_1B964C470();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B90E1CB4();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_Rendering.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_94_4(), sub_1B90EBC98(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    switch(v6 >> 62)
    {
      case 1uLL:
        v7 = v5;
        v8 = v5 >> 32;
        goto LABEL_8;
      case 2uLL:
        v7 = *(v5 + 16);
        v8 = *(v5 + 24);
LABEL_8:
        if (v7 != v8)
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      case 3uLL:
        goto LABEL_10;
      default:
        if ((v6 & 0xFF000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_9:
        OUTLINED_FUNCTION_11_5();
        result = sub_1B964C6A0();
        if (!v1)
        {
LABEL_10:
          v9 = *(type metadata accessor for Apple_Parsec_Search_V2_Rendering(0) + 24);
          result = OUTLINED_FUNCTION_8_1();
        }

        break;
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_Rendering.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (MEMORY[0x1BFADC060](*(v1 + 16), *(v1 + 24), *(v0 + 16), *(v0 + 24)))
  {
    v6 = type metadata accessor for Apple_Parsec_Search_V2_Rendering(0);
    OUTLINED_FUNCTION_188_1(v6);
    OUTLINED_FUNCTION_0_57();
    sub_1B90E3800(v7, v8);
    return OUTLINED_FUNCTION_634() & 1;
  }

  return 0;
}

uint64_t sub_1B90E1F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AF0, type metadata accessor for Apple_Parsec_Search_V2_Rendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E1FEC(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC45B8, type metadata accessor for Apple_Parsec_Search_V2_Rendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E205C()
{
  sub_1B90E3800(&qword_1EBAC45B8, type metadata accessor for Apple_Parsec_Search_V2_Rendering);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E20F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC43C0);
  __swift_project_value_buffer(v0, qword_1EBAC43C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1B968AE80;
  v4 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v72 + v3 + v2 + v1[14];
  *(v72 + v3 + v2) = 2;
  *v8 = "identifier";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v72 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "canonicalId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v72 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "dataServiceId";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v72 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "score";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v72 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "feedback";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v72 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "url";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v7();
  v19 = (v72 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "maxAgeSeconds";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v72 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "serverScore";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entities";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "topHit";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v7();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "engagementScore";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "queryIndependentEngagementScore";
  *(v30 + 1) = 31;
  v30[16] = 2;
  v7();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "placement";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "renderHorizontallyWithOtherResultsInCategory";
  *(v34 + 1) = 44;
  v34[16] = 2;
  v7();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isQuickGlance";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v72 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "minimumRankOfTopHitToSuppressResult";
  *(v38 + 1) = 35;
  v38[16] = 2;
  v7();
  v39 = (v72 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "appleReferrer";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v72 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "sectionBundleId";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v72 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "bundleId";
  *(v44 + 1) = 8;
  v44[16] = 2;
  v7();
  v45 = (v72 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "adamId";
  *(v46 + 1) = 6;
  v46[16] = 2;
  v7();
  v47 = (v72 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "template";
  *(v48 + 1) = 8;
  v48[16] = 2;
  v7();
  v49 = (v72 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "intendedQuery";
  *(v50 + 1) = 13;
  v50[16] = 2;
  v7();
  v51 = (v72 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "correctedQuery";
  *(v52 + 1) = 14;
  v52[16] = 2;
  v7();
  v53 = (v72 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "completedQuery";
  *(v54 + 1) = 14;
  v54[16] = 2;
  v7();
  v55 = (v72 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "shouldUseCompactDisplay";
  *(v56 + 1) = 23;
  v56[16] = 2;
  v7();
  v57 = (v72 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "noGoTakeover";
  *(v58 + 1) = 12;
  v58[16] = 2;
  v7();
  v59 = (v72 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "preferTopPlatter";
  *(v60 + 1) = 16;
  v60[16] = 2;
  v7();
  v61 = (v72 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 31;
  *v62 = "usesCompactDisplay";
  *(v62 + 1) = 18;
  v62[16] = 2;
  v7();
  v63 = (v72 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "alternativeURLs";
  *(v64 + 1) = 15;
  v64[16] = 2;
  v7();
  v65 = (v72 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "serverFeatures";
  *(v66 + 1) = 14;
  v66[16] = 2;
  v7();
  v67 = (v72 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "isInstantAnswer";
  *(v68 + 1) = 15;
  v68[16] = 2;
  v7();
  v69 = (v72 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "shouldAutoNavigate";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B90E2A90()
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
  *(v0 + 88) = xmmword_1B9652FE0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 148) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 169) = 0;
  *(v0 + 172) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__template;
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldUseCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__noGoTakeover) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__preferTopPlatter) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__usesCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls) = v1;
  v7 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures;
  *(v0 + v7) = sub_1B964C7B0();
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInstantAnswer) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldAutoNavigate) = 0;
  return v0;
}

uint64_t sub_1B90E2BF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4518, &qword_1B968AEB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v119 = &v101 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v101 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v102 = (v1 + 80);
  *(v1 + 88) = xmmword_1B9652FE0;
  *(v1 + 104) = 0;
  v103 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v104 = (v1 + 120);
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 128) = MEMORY[0x1E69E7CC0];
  v105 = (v1 + 128);
  *(v1 + 136) = 0;
  v106 = (v1 + 136);
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  v108 = (v1 + 152);
  *(v1 + 148) = 0;
  v107 = (v1 + 148);
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 169) = 0;
  v109 = (v1 + 160);
  v110 = (v1 + 169);
  *(v1 + 172) = 0;
  v111 = (v1 + 172);
  *(v1 + 176) = 0;
  v112 = (v1 + 176);
  *(v1 + 192) = 0;
  v113 = (v1 + 192);
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 208) = 0;
  v114 = (v1 + 208);
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  v115 = (v1 + 224);
  *(v1 + 232) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__template;
  v116 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__template;
  v8 = type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery);
  v117 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery);
  v118 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery);
  v120 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v121 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldUseCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldUseCompactDisplay) = 0;
  v122 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__noGoTakeover;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__noGoTakeover) = 0;
  v123 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__preferTopPlatter;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__preferTopPlatter) = 0;
  v124 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__usesCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__usesCompactDisplay) = 0;
  v125 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls) = v6;
  v12 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures;
  v126 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures;
  *(v1 + v12) = sub_1B964C7B0();
  v127 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInstantAnswer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInstantAnswer) = 0;
  v128 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldAutoNavigate;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldAutoNavigate) = 0;
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  v15 = *(v1 + 24);
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;

  swift_beginAccess();
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  swift_beginAccess();
  v18 = *(v1 + 40);
  *(v1 + 32) = v16;
  *(v1 + 40) = v17;

  swift_beginAccess();
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  swift_beginAccess();
  v21 = *(v1 + 56);
  *(v1 + 48) = v20;
  *(v1 + 56) = v19;

  swift_beginAccess();
  v23 = *(a1 + 64);
  v22 = *(a1 + 72);
  v24 = v101;
  swift_beginAccess();
  v25 = *(v1 + 72);
  *v24 = v23;
  *(v1 + 72) = v22;

  swift_beginAccess();
  v26 = *(a1 + 80);
  v27 = v102;
  swift_beginAccess();
  *v27 = v26;
  swift_beginAccess();
  v28 = *(a1 + 88);
  v29 = *(a1 + 96);
  swift_beginAccess();
  v30 = *(v1 + 88);
  v31 = *(v1 + 96);
  *(v1 + 88) = v28;
  *(v1 + 96) = v29;
  sub_1B8D91FCC(v28, v29);
  sub_1B8D538A0(v30, v31);
  swift_beginAccess();
  v33 = *(a1 + 104);
  v32 = *(a1 + 112);
  v34 = v103;
  swift_beginAccess();
  v35 = *(v1 + 112);
  *v34 = v33;
  *(v1 + 112) = v32;

  swift_beginAccess();
  LODWORD(v32) = *(a1 + 120);
  v36 = v104;
  swift_beginAccess();
  *v36 = v32;
  swift_beginAccess();
  v37 = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 124) = v37;
  swift_beginAccess();
  v38 = *(a1 + 128);
  v39 = v105;
  swift_beginAccess();
  v40 = *v39;
  *v39 = v38;

  swift_beginAccess();
  v41 = *(a1 + 136);
  LOBYTE(v40) = *(a1 + 144);
  v42 = v106;
  swift_beginAccess();
  *v42 = v41;
  *(v1 + 144) = v40;
  swift_beginAccess();
  LODWORD(v41) = *(a1 + 148);
  v43 = v107;
  swift_beginAccess();
  *v43 = v41;
  swift_beginAccess();
  LODWORD(v41) = *(a1 + 152);
  v44 = v108;
  swift_beginAccess();
  *v44 = v41;
  swift_beginAccess();
  v45 = *(a1 + 160);
  LOBYTE(v44) = *(a1 + 168);
  v46 = v109;
  swift_beginAccess();
  *v46 = v45;
  *(v1 + 168) = v44;
  swift_beginAccess();
  LOBYTE(v45) = *(a1 + 169);
  v47 = v110;
  swift_beginAccess();
  *v47 = v45;
  swift_beginAccess();
  LOBYTE(v45) = *(a1 + 170);
  swift_beginAccess();
  *(v1 + 170) = v45;
  swift_beginAccess();
  LODWORD(v45) = *(a1 + 172);
  v48 = v111;
  swift_beginAccess();
  *v48 = v45;
  swift_beginAccess();
  v50 = *(a1 + 176);
  v49 = *(a1 + 184);
  v51 = v112;
  swift_beginAccess();
  v52 = *(v1 + 184);
  *v51 = v50;
  *(v1 + 184) = v49;

  swift_beginAccess();
  v54 = *(a1 + 192);
  v53 = *(a1 + 200);
  v55 = v113;
  swift_beginAccess();
  v56 = *(v1 + 200);
  *v55 = v54;
  *(v1 + 200) = v53;

  swift_beginAccess();
  v58 = *(a1 + 208);
  v57 = *(a1 + 216);
  v59 = v114;
  swift_beginAccess();
  v60 = *(v1 + 216);
  *v59 = v58;
  *(v1 + 216) = v57;

  swift_beginAccess();
  v62 = *(a1 + 224);
  v61 = *(a1 + 232);
  v63 = v115;
  swift_beginAccess();
  v64 = *(v1 + 232);
  *v63 = v62;
  *(v1 + 232) = v61;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery);
  swift_beginAccess();
  v67 = *v65;
  v66 = v65[1];
  v68 = v117;
  swift_beginAccess();
  v69 = v68[1];
  *v68 = v67;
  v68[1] = v66;

  v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery);
  swift_beginAccess();
  v72 = *v70;
  v71 = v70[1];
  v73 = v118;
  swift_beginAccess();
  v74 = v73[1];
  *v73 = v72;
  v73[1] = v71;

  v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery);
  swift_beginAccess();
  v77 = *v75;
  v76 = v75[1];
  v78 = v120;
  swift_beginAccess();
  v79 = v78[1];
  *v78 = v77;
  v78[1] = v76;

  v80 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldUseCompactDisplay;
  swift_beginAccess();
  LOBYTE(v80) = *(a1 + v80);
  v81 = v121;
  swift_beginAccess();
  *(v1 + v81) = v80;
  v82 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__noGoTakeover;
  swift_beginAccess();
  LOBYTE(v82) = *(a1 + v82);
  v83 = v122;
  swift_beginAccess();
  *(v1 + v83) = v82;
  v84 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__preferTopPlatter;
  swift_beginAccess();
  LOBYTE(v84) = *(a1 + v84);
  v85 = v123;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__usesCompactDisplay;
  swift_beginAccess();
  LOBYTE(v86) = *(a1 + v86);
  v87 = v124;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls;
  swift_beginAccess();
  v89 = *(a1 + v88);
  v90 = v125;
  swift_beginAccess();
  v91 = *(v1 + v90);
  *(v1 + v90) = v89;

  v92 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures;
  swift_beginAccess();
  v93 = *(a1 + v92);
  v94 = v126;
  swift_beginAccess();
  v95 = *(v1 + v94);
  *(v1 + v94) = v93;

  v96 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInstantAnswer;
  swift_beginAccess();
  LOBYTE(v96) = *(a1 + v96);
  v97 = v127;
  swift_beginAccess();
  *(v1 + v97) = v96;
  v98 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldAutoNavigate;
  swift_beginAccess();
  LOBYTE(v98) = *(a1 + v98);

  v99 = v128;
  swift_beginAccess();
  *(v1 + v99) = v98;
  return v1;
}

uint64_t sub_1B90E3800(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1B90E3848()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  sub_1B8D538A0(v0[11], v0[12]);
  v5 = v0[14];

  v6 = v0[16];

  v7 = v0[23];

  v8 = v0[25];

  v9 = v0[27];

  v10 = v0[29];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__template, &qword_1EBAC4518, &qword_1B968AEB8);
  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery + 8);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery + 8);

  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures);

  return v0;
}

uint64_t sub_1B90E394C(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B90E39FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B8DAA85C();
        break;
      case 2:
        sub_1B90E3DFC();
        break;
      case 3:
        sub_1B90B5DB4();
        break;
      case 4:
        sub_1B8E16ACC();
        break;
      case 5:
        sub_1B8DD57FC();
        break;
      case 6:
        sub_1B90AA018();
        break;
      case 7:
        sub_1B8EC1004();
        break;
      case 8:
        sub_1B8EC1088();
        break;
      case 9:
        sub_1B90E3E5C();
        break;
      case 10:
        sub_1B90E3EE0();
        break;
      case 11:
        sub_1B90E3FAC();
        break;
      case 12:
        sub_1B90E4040();
        break;
      case 13:
        sub_1B8F44754();
        break;
      case 14:
        sub_1B90E40C4();
        break;
      case 15:
        sub_1B90E4158();
        break;
      case 16:
        sub_1B90E41DC();
        break;
      case 17:
        sub_1B90E4260();
        break;
      case 18:
        sub_1B8E71A68();
        break;
      case 19:
        sub_1B8E2FD8C();
        break;
      case 20:
        sub_1B8E2FE10();
        break;
      case 21:
        sub_1B8E2FE94();
        break;
      case 22:
        sub_1B90E42E4();
        break;
      case 23:
      case 24:
      case 25:
        sub_1B90E43C0();
        break;
      case 26:
      case 27:
      case 28:
      case 31:
      case 32:
      case 33:
        sub_1B90AB150();
        break;
      case 29:
        sub_1B90E4408();
        break;
      case 30:
        sub_1B90E4450(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures, MEMORY[0x1E69AABD0]);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90E3DFC()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B90E3E5C()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B90E3EE0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Entity(0);
  sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B90E3FAC()
{
  swift_beginAccess();
  sub_1B90F04EC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90E4040()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B90E40C4()
{
  swift_beginAccess();
  sub_1B90F0498();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B90E4158()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B90E41DC()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B90E4260()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B90E42E4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  sub_1B90E3800(&qword_1EBAC4998, type metadata accessor for Apple_Parsec_Search_V2_Result.Template);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B90E43C0()
{
  OUTLINED_FUNCTION_819();
  OUTLINED_FUNCTION_89_9(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_818();
}

void sub_1B90E4408()
{
  OUTLINED_FUNCTION_819();
  OUTLINED_FUNCTION_89_9(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B90E4450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_122_1();
  v8 = *v7;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B964C280();
  a6(0);
  sub_1B964C3B0();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B90E4538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4518, &qword_1B968AEB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v69 - v11;
  v73 = type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  v13 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    if (v4)
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
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 56);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = *(a1 + 56);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = *(a1 + 72);

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_21;
    }
  }

LABEL_21:
  swift_beginAccess();
  if (*(a1 + 80) == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    v69[3] = v15;
    v28 = a3;
    v29 = a4;
    swift_beginAccess();
    if (!sub_1B8D99EA8(*(a1 + 88), *(a1 + 96)))
    {
      v30 = *(a1 + 88);
      v31 = *(a1 + 96);
      sub_1B8D91FCC(v30, v31);
      sub_1B964C6A0();
      if (v4)
      {
        return sub_1B8D538A0(v30, v31);
      }

      sub_1B8D538A0(v30, v31);
    }

    swift_beginAccess();
    v33 = *(a1 + 112);
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = *(a1 + 112);

      sub_1B964C700();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (!*(a1 + 120) || (result = sub_1B964C6C0(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 124) == 0.0 || (result = sub_1B964C6B0(), !v4))
      {
        swift_beginAccess();
        if (*(*(a1 + 128) + 16))
        {
          type metadata accessor for Apple_Parsec_Search_V2_Entity(0);
          sub_1B90E3800(&qword_1ED9EDB68, type metadata accessor for Apple_Parsec_Search_V2_Entity);

          sub_1B964C730();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 136) || (v36 = *(a1 + 144), v71 = *(a1 + 136), v72 = v36, sub_1B90F04EC(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 148) || (result = sub_1B964C6C0(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 152) || (result = sub_1B964C6C0(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 160) || (v37 = *(a1 + 168), v69[58] = *(a1 + 160), v70 = v37, sub_1B90F0498(), result = sub_1B964C680(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 169) != 1 || (result = sub_1B964C670(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 170) != 1 || (result = sub_1B964C670(), !v4))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 172) || (result = sub_1B964C6C0(), !v4))
                    {
                      swift_beginAccess();
                      v38 = *(a1 + 184);
                      v39 = HIBYTE(v38) & 0xF;
                      if ((v38 & 0x2000000000000000) == 0)
                      {
                        v39 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
                      }

                      if (v39)
                      {
                        v40 = *(a1 + 184);

                        sub_1B964C700();
                        if (v4)
                        {
                        }
                      }

                      swift_beginAccess();
                      v41 = *(a1 + 200);
                      v42 = HIBYTE(v41) & 0xF;
                      if ((v41 & 0x2000000000000000) == 0)
                      {
                        v42 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
                      }

                      if (v42)
                      {
                        v43 = *(a1 + 200);

                        sub_1B964C700();
                        if (v4)
                        {
                        }
                      }

                      swift_beginAccess();
                      v44 = *(a1 + 216);
                      v45 = HIBYTE(v44) & 0xF;
                      if ((v44 & 0x2000000000000000) == 0)
                      {
                        v45 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
                      }

                      v69[1] = v28;
                      v69[2] = v29;
                      if (v45)
                      {

                        sub_1B964C700();
                        if (v4)
                        {
                        }
                      }

                      swift_beginAccess();
                      v46 = *(a1 + 232);
                      v47 = HIBYTE(v46) & 0xF;
                      if ((v46 & 0x2000000000000000) == 0)
                      {
                        v47 = *(a1 + 224) & 0xFFFFFFFFFFFFLL;
                      }

                      if (v47)
                      {
                        v48 = *(a1 + 232);

                        sub_1B964C700();
                        if (v4)
                        {
                        }
                      }

                      swift_beginAccess();
                      sub_1B8F1B8B8();
                      if (__swift_getEnumTagSinglePayload(v12, 1, v73) == 1)
                      {
                        sub_1B8D9207C(v12, &qword_1EBAC4518, &qword_1B968AEB8);
                      }

                      else
                      {
                        sub_1B90D4000();
                        sub_1B90E3800(&qword_1EBAC4998, type metadata accessor for Apple_Parsec_Search_V2_Result.Template);
                        sub_1B964C740();
                        if (v4)
                        {
                          return sub_1B90D40A8();
                        }

                        sub_1B90D40A8();
                      }

                      v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery);
                      swift_beginAccess();
                      v50 = *v49;
                      v51 = v49[1];
                      v52 = HIBYTE(v51) & 0xF;
                      if ((v51 & 0x2000000000000000) == 0)
                      {
                        v52 = v50 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v52)
                      {

                        sub_1B964C700();
                        if (v5)
                        {
                        }
                      }

                      v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery);
                      swift_beginAccess();
                      v54 = *v53;
                      v55 = v53[1];
                      v56 = HIBYTE(v55) & 0xF;
                      if ((v55 & 0x2000000000000000) == 0)
                      {
                        v56 = v54 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v56 || (, sub_1B964C700(), result = , !v5))
                      {
                        v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery);
                        swift_beginAccess();
                        v58 = *v57;
                        v59 = v57[1];
                        v60 = HIBYTE(v59) & 0xF;
                        if ((v59 & 0x2000000000000000) == 0)
                        {
                          v60 = v58 & 0xFFFFFFFFFFFFLL;
                        }

                        if (!v60 || (, sub_1B964C700(), result = , !v5))
                        {
                          v61 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldUseCompactDisplay;
                          swift_beginAccess();
                          if (*(a1 + v61) != 1 || (result = sub_1B964C670(), !v5))
                          {
                            v62 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__noGoTakeover;
                            swift_beginAccess();
                            if (*(a1 + v62) != 1 || (result = sub_1B964C670(), !v5))
                            {
                              v63 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__preferTopPlatter;
                              swift_beginAccess();
                              if (*(a1 + v63) != 1 || (result = sub_1B964C670(), !v5))
                              {
                                v64 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls;
                                swift_beginAccess();
                                if (!*(*(a1 + v64) + 16) || (, sub_1B964C6E0(), result = , !v5))
                                {
                                  v65 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures;
                                  swift_beginAccess();
                                  if (!*(*(a1 + v65) + 16) || (sub_1B964C280(), sub_1B964C270(), , sub_1B964C5F0(), result = , !v5))
                                  {
                                    v66 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__usesCompactDisplay;
                                    swift_beginAccess();
                                    if (*(a1 + v66) != 1 || (result = sub_1B964C670(), !v5))
                                    {
                                      v67 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInstantAnswer;
                                      swift_beginAccess();
                                      if (*(a1 + v67) != 1 || (result = sub_1B964C670(), !v5))
                                      {
                                        v68 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldAutoNavigate;
                                        result = swift_beginAccess();
                                        if (*(a1 + v68) == 1)
                                        {
                                          return sub_1B964C670();
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

uint64_t sub_1B90E5230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = *(v7(0) + 20);
  if (*(v5 + v8) != *(v4 + v8))
  {
    v9 = *(v5 + v8);

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v12, v13);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B90E5308(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4B90, &qword_1B968F138);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_79();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4518, &qword_1B968AEB8);
  v17 = OUTLINED_FUNCTION_183(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v125 = (&v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v121 - v22;
  OUTLINED_FUNCTION_521();
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v26 = v25 == *(a2 + 16) && v24 == *(a2 + 24);
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_521();
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v29 = v27 == *(a2 + 32) && v28 == *(a2 + 40);
  if (!v29 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_521();
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  OUTLINED_FUNCTION_521();
  v32 = v30 == *(a2 + 48) && v31 == *(a2 + 56);
  if (!v32 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_521();
  v33 = *(a1 + 64);
  v34 = *(a1 + 72);
  OUTLINED_FUNCTION_521();
  v35 = v33 == *(a2 + 64) && v34 == *(a2 + 72);
  if (!v35 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_521();
  v36 = *(a1 + 80);
  OUTLINED_FUNCTION_521();
  if (v36 != *(a2 + 80))
  {
    goto LABEL_68;
  }

  v122 = v11;
  v123 = v5;
  v124 = v2;
  OUTLINED_FUNCTION_521();
  v37 = *(a1 + 88);
  v38 = *(a1 + 96);
  OUTLINED_FUNCTION_521();
  v39 = *(a2 + 88);
  v40 = *(a2 + 96);

  sub_1B8D91FCC(v37, v38);
  sub_1B8D91FCC(v39, v40);
  v41 = MEMORY[0x1BFADC060](v37, v38, v39, v40);
  sub_1B8D538A0(v39, v40);
  sub_1B8D538A0(v37, v38);
  if ((v41 & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v42 = *(a1 + 104);
  v43 = *(a1 + 112);
  OUTLINED_FUNCTION_521();
  v44 = v42 == *(a2 + 104) && v43 == *(a2 + 112);
  if (!v44 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v45 = *(a1 + 120);
  OUTLINED_FUNCTION_521();
  if (v45 != *(a2 + 120))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v46 = *(a1 + 124);
  OUTLINED_FUNCTION_521();
  if (v46 != *(a2 + 124))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v47 = *(a1 + 128);
  OUTLINED_FUNCTION_521();
  v48 = *(a2 + 128);

  OUTLINED_FUNCTION_177_1();
  sub_1B8D85EAC();
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v51 = *(a1 + 136);
  v52 = *(a1 + 144);
  OUTLINED_FUNCTION_521();
  v53 = *(a2 + 144);
  if (!sub_1B8D92198(v51, v52, *(a2 + 136)))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v54 = *(a1 + 148);
  OUTLINED_FUNCTION_521();
  if (v54 != *(a2 + 148))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v55 = *(a1 + 152);
  OUTLINED_FUNCTION_521();
  if (v55 != *(a2 + 152))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v56 = *(a1 + 160);
  v57 = *(a1 + 168);
  OUTLINED_FUNCTION_521();
  v58 = *(a2 + 168);
  if (!sub_1B8D92198(v56, v57, *(a2 + 160)))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v59 = *(a1 + 169);
  OUTLINED_FUNCTION_521();
  if (v59 != *(a2 + 169))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v60 = *(a1 + 170);
  OUTLINED_FUNCTION_521();
  if (v60 != *(a2 + 170))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v61 = *(a1 + 172);
  OUTLINED_FUNCTION_521();
  if (v61 != *(a2 + 172))
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v62 = *(a1 + 176);
  v63 = *(a1 + 184);
  OUTLINED_FUNCTION_521();
  v64 = v62 == *(a2 + 176) && v63 == *(a2 + 184);
  if (!v64 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v65 = *(a1 + 192);
  v66 = *(a1 + 200);
  OUTLINED_FUNCTION_521();
  v67 = v65 == *(a2 + 192) && v66 == *(a2 + 200);
  if (!v67 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v68 = *(a1 + 208);
  v69 = *(a1 + 216);
  OUTLINED_FUNCTION_521();
  v70 = v68 == *(a2 + 208) && v69 == *(a2 + 216);
  if (!v70 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v71 = *(a1 + 224);
  v72 = *(a1 + 232);
  OUTLINED_FUNCTION_521();
  v73 = v71 == *(a2 + 224) && v72 == *(a2 + 232);
  if (!v73 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521();
  v74 = *(v12 + 48);
  v75 = v124;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v75, 1, v123);
  if (v26)
  {
    sub_1B8D9207C(v23, &qword_1EBAC4518, &qword_1B968AEB8);
    OUTLINED_FUNCTION_178(v124 + v74, 1, v123);
    if (v26)
    {
      sub_1B8D9207C(v124, &qword_1EBAC4518, &qword_1B968AEB8);
LABEL_71:
      v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery);
      OUTLINED_FUNCTION_521();
      v84 = *v83;
      v85 = v83[1];
      v86 = (a2 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__intendedQuery);
      OUTLINED_FUNCTION_521();
      v87 = v84 == *v86 && v85 == v86[1];
      if (v87 || (OUTLINED_FUNCTION_177_1(), (sub_1B964C9F0() & 1) != 0))
      {
        v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery);
        OUTLINED_FUNCTION_521();
        v89 = *v88;
        v90 = v88[1];
        v91 = (a2 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__correctedQuery);
        OUTLINED_FUNCTION_521();
        v92 = v89 == *v91 && v90 == v91[1];
        if (v92 || (OUTLINED_FUNCTION_177_1(), (sub_1B964C9F0() & 1) != 0))
        {
          v93 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery);
          OUTLINED_FUNCTION_521();
          v94 = *v93;
          v95 = v93[1];
          v96 = (a2 + OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__completedQuery);
          OUTLINED_FUNCTION_521();
          v97 = v94 == *v96 && v95 == v96[1];
          if (v97 || (OUTLINED_FUNCTION_177_1(), (sub_1B964C9F0() & 1) != 0))
          {
            v98 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldUseCompactDisplay;
            OUTLINED_FUNCTION_521();
            v99 = *(a1 + v98);
            OUTLINED_FUNCTION_521();
            OUTLINED_FUNCTION_231_3();
            if (v26)
            {
              v100 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__noGoTakeover;
              OUTLINED_FUNCTION_521();
              v101 = *(a1 + v100);
              OUTLINED_FUNCTION_521();
              OUTLINED_FUNCTION_231_3();
              if (v26)
              {
                v102 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__preferTopPlatter;
                OUTLINED_FUNCTION_521();
                v103 = *(a1 + v102);
                OUTLINED_FUNCTION_521();
                OUTLINED_FUNCTION_231_3();
                if (v26)
                {
                  v104 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__usesCompactDisplay;
                  OUTLINED_FUNCTION_521();
                  v105 = *(a1 + v104);
                  OUTLINED_FUNCTION_521();
                  OUTLINED_FUNCTION_231_3();
                  if (v26)
                  {
                    v106 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls;
                    OUTLINED_FUNCTION_521();
                    v107 = *(a1 + v106);
                    v108 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__alternativeUrls;
                    OUTLINED_FUNCTION_521();
                    if (sub_1B8D6123C(v107, *(a2 + v108)))
                    {
                      v109 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures;
                      OUTLINED_FUNCTION_521();
                      v110 = *(a1 + v109);
                      v111 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__serverFeatures;
                      OUTLINED_FUNCTION_521();
                      v112 = *(a2 + v111);

                      v113 = OUTLINED_FUNCTION_177_1();
                      sub_1B8DB0470(v113, v114);
                      v116 = v115;

                      if (v116)
                      {
                        v117 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__isInstantAnswer;
                        OUTLINED_FUNCTION_521();
                        v118 = *(a1 + v117);
                        OUTLINED_FUNCTION_521();
                        OUTLINED_FUNCTION_231_3();
                        if (v26)
                        {
                          v119 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldAutoNavigate;
                          OUTLINED_FUNCTION_521();
                          LOBYTE(v119) = *(a1 + v119);

                          v120 = OBJC_IVAR____TtCV10PegasusAPI29Apple_Parsec_Search_V2_ResultP33_C0BAC08EDD69D8921D332789179C79B513_StorageClass__shouldAutoNavigate;
                          OUTLINED_FUNCTION_521();
                          LOBYTE(v120) = *(a2 + v120);

                          v78 = v119 ^ v120 ^ 1;
                          return v78 & 1;
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

      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v76 = v124;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v76 + v74, 1, v123);
  if (v77)
  {
    sub_1B8D9207C(v23, &qword_1EBAC4518, &qword_1B968AEB8);
    sub_1B90D40A8();
LABEL_66:
    sub_1B8D9207C(v124, &qword_1EBAC4B90, &qword_1B968F138);
    goto LABEL_67;
  }

  v80 = v124;
  v81 = v122;
  sub_1B90D4000();
  v82 = static Apple_Parsec_Search_V2_Result.Template.== infix(_:_:)(v125, v81);
  sub_1B90D40A8();
  sub_1B8D9207C(v23, &qword_1EBAC4518, &qword_1B968AEB8);
  sub_1B90D40A8();
  sub_1B8D9207C(v80, &qword_1EBAC4518, &qword_1B968AEB8);
  if (v82)
  {
    goto LABEL_71;
  }

LABEL_67:

LABEL_68:
  v78 = 0;
  return v78 & 1;
}

uint64_t sub_1B90E5DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AE8, type metadata accessor for Apple_Parsec_Search_V2_Result);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E5E7C(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4980, type metadata accessor for Apple_Parsec_Search_V2_Result);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E5EEC()
{
  sub_1B90E3800(&qword_1EBAC4980, type metadata accessor for Apple_Parsec_Search_V2_Result);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E5F6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC43D8);
  __swift_project_value_buffer(v0, qword_1EBAC43D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TopHitNo";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TopHitShouldBe";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TopHitMustBe";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90E61AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC43F0);
  __swift_project_value_buffer(v0, qword_1EBAC43F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PlacementNone";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PlacementTop";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PlacementBottom";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PlacementTopHit";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90E6424()
{
  result = MEMORY[0x1BFADC850](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EBAC4408 = 0xD00000000000001DLL;
  unk_1EBAC4410 = 0x80000001B9705AC0;
  return result;
}

uint64_t sub_1B90E64B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4418);
  __swift_project_value_buffer(v0, qword_1EBAC4418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "completionIcon";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "thumbnail";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "cardData";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "legacyTemplateName";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "renderings";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_Result.Template.decodeMessage<A>(decoder:)()
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
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B90E68A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90E68A0()
{
  type metadata accessor for Apple_Parsec_Search_V2_Rendering(0);
  sub_1B90E3800(&qword_1EBAC45B8, type metadata accessor for Apple_Parsec_Search_V2_Rendering);
  return sub_1B964C570();
}

void Apple_Parsec_Search_V2_Result.Template.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    v3 = v1[2];
    v4 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      v6 = v1[4];
      v7 = v1[5];
      v8 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v8, v9) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        v12 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v12, v13) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
        {
          v14 = v1[8];
          v15 = v1[9];
          v16 = OUTLINED_FUNCTION_616();
          if (sub_1B8D99EA8(v16, v17) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
          {
            v18 = v1[10];
            v19 = v1[11];
            OUTLINED_FUNCTION_1();
            if (!v20 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
            {
              if (!*(v1[12] + 16) || (type metadata accessor for Apple_Parsec_Search_V2_Rendering(0), sub_1B90E3800(&qword_1EBAC45B8, type metadata accessor for Apple_Parsec_Search_V2_Rendering), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), !v0))
              {
                v21 = *(type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0) + 44);
                OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_Result.Template.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_263_2();
  if ((MEMORY[0x1BFADC060](v10) & 1) == 0 || (MEMORY[0x1BFADC060](v3[6], v3[7], v2[6], v2[7]) & 1) == 0 || (MEMORY[0x1BFADC060](v3[8], v3[9], v2[8], v2[9]) & 1) == 0)
  {
    return 0;
  }

  v11 = v3[10] == v2[10] && v3[11] == v2[11];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[12];
  v13 = v2[12];
  sub_1B8D7A27C();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for Apple_Parsec_Search_V2_Result.Template(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90E6C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AE0, type metadata accessor for Apple_Parsec_Search_V2_Result.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E6CC0(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4998, type metadata accessor for Apple_Parsec_Search_V2_Result.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E6D30()
{
  sub_1B90E3800(&qword_1EBAC4998, type metadata accessor for Apple_Parsec_Search_V2_Result.Template);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E6DC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4430);
  __swift_project_value_buffer(v0, qword_1EBAC4430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "portraitVersion";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topics";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Search_V2_Silhouette.decodeMessage<A>(decoder:)()
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
      sub_1B90EB128();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }
}

void Apple_Parsec_Search_V2_Silhouette.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), sub_1B964C6C0(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic(0), sub_1B90E3800(&qword_1EBAC45C8, type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), !v1))
    {
      v3 = *(type metadata accessor for Apple_Parsec_Search_V2_Silhouette(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_Silhouette.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  sub_1B8D76D38();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Apple_Parsec_Search_V2_Silhouette(0);
  OUTLINED_FUNCTION_188_1(v7);
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90E7278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AD8, type metadata accessor for Apple_Parsec_Search_V2_Silhouette);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E72F8(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC49B0, type metadata accessor for Apple_Parsec_Search_V2_Silhouette);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E7368()
{
  sub_1B90E3800(&qword_1EBAC49B0, type metadata accessor for Apple_Parsec_Search_V2_Silhouette);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E73E8()
{
  result = MEMORY[0x1BFADC850](0x6369706F542ELL, 0xE600000000000000);
  qword_1EBAC4448 = 0xD000000000000021;
  unk_1EBAC4450 = 0x80000001B9705AE0;
  return result;
}

uint64_t Apple_Parsec_Search_V2_Silhouette.Topic.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_Silhouette.Topic.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90E765C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AD0, type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E76DC(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC45C8, type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E774C()
{
  sub_1B90E3800(&qword_1EBAC45C8, type metadata accessor for Apple_Parsec_Search_V2_Silhouette.Topic);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E77E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4470);
  __swift_project_value_buffer(v0, qword_1EBAC4470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "suggestion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "topic";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "score";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_Suggestion.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B90E7AFC();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Search_V2_Suggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (v4 = *(v1 + 24), OUTLINED_FUNCTION_94_4(), sub_1B90EBCEC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      v5 = *(v1 + 32);
      v6 = *(v1 + 40);
      OUTLINED_FUNCTION_1();
      if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        if (*(v1 + 48) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
        {
          v8 = *(type metadata accessor for Apple_Parsec_Search_V2_Suggestion(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_Suggestion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_1B964C9F0() & 1) != 0)
  {
    v7 = *(v3 + 16);
    v8 = *(v2 + 16);
    if (*(v2 + 24) == 1)
    {
      switch(v8)
      {
        case 1:
          if (v7 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v7 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v7 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v7 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v7 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v7 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v7)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v7 == v8)
    {
LABEL_11:
      v9 = OUTLINED_FUNCTION_263_2();
      v13 = v9 == v12 && v10 == v11;
      if (v13 || (sub_1B964C9F0()) && *(v3 + 48) == *(v2 + 48))
      {
        v14 = *(type metadata accessor for Apple_Parsec_Search_V2_Suggestion(0) + 32);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_57();
        sub_1B90E3800(v15, v16);
        return OUTLINED_FUNCTION_634() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B90E7E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AC8, type metadata accessor for Apple_Parsec_Search_V2_Suggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E7EA8(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC49D8, type metadata accessor for Apple_Parsec_Search_V2_Suggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E7F18()
{
  sub_1B90E3800(&qword_1EBAC49D8, type metadata accessor for Apple_Parsec_Search_V2_Suggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E7F98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC4488);
  __swift_project_value_buffer(v0, qword_1EBAC4488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Parsec";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Contextual";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CoreSpotlight";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "UserTyped";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ThirdParty";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PastEngagement";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90E82E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC44A0);
  __swift_project_value_buffer(v0, qword_1EBAC44A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "country";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "administrativeArea";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subAdministrativeArea";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locality";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "formattedAddressLines";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_RevGeoResolution.decodeMessage<A>(decoder:)()
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
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Search_V2_RevGeoResolution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          if (!*(v1[8] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
          {
            v13 = *(type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_RevGeoResolution.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_263_2();
  v14 = v10 == v13 && v11 == v12;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v15 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(v3[8], v2[8]) & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v17, v18);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90E88AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AC0, type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E892C(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC45F8, type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E899C()
{
  sub_1B90E3800(&qword_1EBAC45F8, type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E8A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, &qword_1ED9CBFF8);
  __swift_project_value_buffer(v0, &qword_1ED9CBFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v4 = "latitude";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v23 + v3 + v2 + v1[14];
  *(v23 + v3 + v2) = 2;
  *v8 = "longitude";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v23 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v23 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "horizontalAccuracy";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v23 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "revGeoResolution";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v23 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_precise";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v7();
  v18 = (v23 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "precise_status";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  v20 = (v23 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "age";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_Location.decodeMessage<A>(decoder:)()
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
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B90E8E90();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B90E8EF8();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B90E8FAC();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B90E9014();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90E8EF8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Search_V2_Location(0) + 44);
  type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
  sub_1B90E3800(&qword_1EBAC45F8, type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution);
  return sub_1B964C580();
}

uint64_t sub_1B90E9014()
{
  v0 = *(type metadata accessor for Apple_Parsec_Search_V2_Location(0) + 48);
  sub_1B964C130();
  sub_1B90E3800(&qword_1EBAB3B48, MEMORY[0x1E69AA930]);
  return sub_1B964C580();
}

void Apple_Parsec_Search_V2_Location.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  v40 = sub_1B964C130();
  v9 = OUTLINED_FUNCTION_30_1(v40);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v36 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4520, &unk_1B968AEC0);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  v20 = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_251_2(), (v4 = v1) == 0))
  {
    if (*(v0 + 4) == 0.0 || (OUTLINED_FUNCTION_251_2(), (v4 = v1) == 0))
    {
      if (!*(v0 + 8) || (v38 = *(v0 + 16), sub_1B90EBD40(), v1 = v4, sub_1B964C680(), !v4))
      {
        if (*(v0 + 20) == 0.0 || (OUTLINED_FUNCTION_251_2(), (v4 = v1) == 0))
        {
          v35 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
          v24 = v35[11];
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_749();
          if (__swift_getEnumTagSinglePayload(v25, v26, v27) == 1)
          {
            sub_1B8D9207C(v2, &qword_1EBAC4520, &unk_1B968AEC0);
          }

          else
          {
            sub_1B90D4000();
            sub_1B90E3800(&qword_1EBAC45F8, type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution);
            sub_1B964C740();
            sub_1B90D40A8();
            if (v4)
            {
              goto LABEL_26;
            }
          }

          if (*(v0 + 24) != 1 || (sub_1B964C670(), !v4))
          {
            if (!*(v0 + 32) || (v39 = *(v0 + 40), sub_1B8E93930(), sub_1B964C680(), !v4))
            {
              v28 = v35[12];
              sub_1B8F1B8B8();
              OUTLINED_FUNCTION_749();
              if (__swift_getEnumTagSinglePayload(v29, v30, v31) == 1)
              {
                sub_1B8D9207C(v3, &qword_1EBAB9270, &unk_1B9660450);
LABEL_25:
                v34 = v35[10];
                OUTLINED_FUNCTION_8_1();
                goto LABEL_26;
              }

              (*(v37 + 32))();
              OUTLINED_FUNCTION_181_4();
              sub_1B90E3800(v32, v33);
              sub_1B964C740();
              if (!v4)
              {
                (*(v37 + 8))(v36, v40);
                goto LABEL_25;
              }

              (*(v37 + 8))(v36, v40);
            }
          }
        }
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Search_V2_Location.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_112();
  v3 = sub_1B964C130();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v77 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9278, &unk_1B964DA60);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v74 - v20;
  v21 = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v27 = (v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4520, &unk_1B968AEC0);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v74 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4600, &qword_1B968AEE0);
  OUTLINED_FUNCTION_59_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_159();
  if (*v1 != *v0 || *(v1 + 4) != *(v0 + 4))
  {
    goto LABEL_42;
  }

  v38 = *(v1 + 8);
  v39 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {
    if (v38 != v39)
    {
      goto LABEL_42;
    }

LABEL_8:
    if (*(v1 + 20) != *(v0 + 20))
    {
      goto LABEL_42;
    }

    v74 = v6;
    v76 = v3;
    v75 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
    v40 = *(v75 + 44);
    v41 = *(v34 + 48);
    sub_1B8F1B8B8();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_178(v42, v43, v44);
    if (v51)
    {
      OUTLINED_FUNCTION_749();
      OUTLINED_FUNCTION_178(v45, v46, v47);
      if (v51)
      {
        sub_1B8D9207C(v2, &qword_1EBAC4520, &unk_1B968AEC0);
LABEL_20:
        if (*(v1 + 24) != *(v0 + 24))
        {
          goto LABEL_42;
        }

        v56 = *(v0 + 40);
        if (!sub_1B8D92198(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
        {
          goto LABEL_42;
        }

        v57 = v75;
        v58 = *(v75 + 48);
        v59 = *(v16 + 48);
        v60 = v79;
        sub_1B8F1B8B8();
        sub_1B8F1B8B8();
        v61 = v76;
        OUTLINED_FUNCTION_178(v60, 1, v76);
        if (v51)
        {
          OUTLINED_FUNCTION_75(v60 + v59);
          if (v51)
          {
            sub_1B8D9207C(v60, &qword_1EBAB9270, &unk_1B9660450);
            goto LABEL_48;
          }
        }

        else
        {
          v62 = v78;
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_75(v60 + v59);
          if (!v63)
          {
            v64 = v74;
            v65 = v60 + v59;
            v66 = v77;
            (*(v74 + 32))(v77, v65, v61);
            OUTLINED_FUNCTION_181_4();
            sub_1B90E3800(v67, v68);
            v69 = sub_1B964C850();
            v70 = *(v64 + 8);
            v70(v66, v61);
            v70(v62, v61);
            sub_1B8D9207C(v60, &qword_1EBAB9270, &unk_1B9660450);
            if ((v69 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_48:
            v71 = *(v57 + 40);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_57();
            sub_1B90E3800(v72, v73);
            OUTLINED_FUNCTION_199_0();
            goto LABEL_42;
          }

          (*(v74 + 8))(v62, v61);
        }

        v52 = &qword_1EBAB9278;
        v53 = &unk_1B964DA60;
        v54 = v60;
LABEL_18:
        sub_1B8D9207C(v54, v52, v53);
        goto LABEL_42;
      }
    }

    else
    {
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_749();
      OUTLINED_FUNCTION_178(v48, v49, v50);
      if (!v51)
      {
        sub_1B90D4000();
        v55 = static Apple_Parsec_Search_V2_RevGeoResolution.== infix(_:_:)(v33, v27);
        sub_1B90D40A8();
        sub_1B90D40A8();
        sub_1B8D9207C(v2, &qword_1EBAC4520, &unk_1B968AEC0);
        if ((v55 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_20;
      }

      sub_1B90D40A8();
    }

    v52 = &qword_1EBAC4600;
    v53 = &qword_1B968AEE0;
    v54 = v2;
    goto LABEL_18;
  }

  switch(v39)
  {
    case 1:
      if (v38 == 1)
      {
        goto LABEL_8;
      }

      break;
    case 2:
      if (v38 == 2)
      {
        goto LABEL_8;
      }

      break;
    case 3:
      if (v38 == 3)
      {
        goto LABEL_8;
      }

      break;
    case 4:
      if (v38 == 4)
      {
        goto LABEL_8;
      }

      break;
    case 5:
      if (v38 == 5)
      {
        goto LABEL_8;
      }

      break;
    case 6:
      if (v38 == 6)
      {
        goto LABEL_8;
      }

      break;
    case 7:
      if (v38 == 7)
      {
        goto LABEL_8;
      }

      break;
    case 8:
      if (v38 == 8)
      {
        goto LABEL_8;
      }

      break;
    default:
      if (!v38)
      {
        goto LABEL_8;
      }

      break;
  }

LABEL_42:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90E9C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AB8, type metadata accessor for Apple_Parsec_Search_V2_Location);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90E9CA0(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90E9D10()
{
  sub_1B90E3800(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location);

  return sub_1B964C5D0();
}

uint64_t sub_1B90E9D90()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5118);
  __swift_project_value_buffer(v0, qword_1EBAB5118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SourceUnknown";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SourceDisabledByUser";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SourceDisabledByBag";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SourceTooSlow";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SourceError";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SourceGPS";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SourceCellular";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SourceWiFi";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "SourceSiriLocationSharingDisabledByUser";
  *(v24 + 1) = 39;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90EA178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D050;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1B964C750();
  OUTLINED_FUNCTION_21_7(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1B964C760();
}

uint64_t sub_1B90EA338(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_Subscriptions.traverse<A>(visitor:)()
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
        v7 = *(type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0) + 20);
        return OUTLINED_FUNCTION_8_1();
      }

      return result;
  }
}

uint64_t static Apple_Parsec_Search_V2_Subscriptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((MEMORY[0x1BFADC060](*v2, *(v1 + 8), *v0, v0[1]) & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90EA590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AB0, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90EA610(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90EA680()
{
  sub_1B90E3800(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions);

  return sub_1B964C5D0();
}

uint64_t sub_1B90EA718()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC44B8);
  __swift_project_value_buffer(v0, qword_1EBAC44B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "enviroment";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sequenceNumber";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relativeTimestamp";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "metadata";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_MapsSession.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Search_V2_MapsSession.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
      {
        if (*(v1 + 40) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v0))
        {
          v6 = *(v1 + 48);
          v7 = *(v1 + 56);
          v8 = OUTLINED_FUNCTION_616();
          if (sub_1B8D99EA8(v8, v9) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
          {
            v10 = *(type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0) + 36);
            OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_MapsSession.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 32) != *(v2 + 32) || *(v3 + 40) != *(v2 + 40) || (MEMORY[0x1BFADC060](*(v3 + 48), *(v3 + 56), *(v2 + 48), *(v2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90EACE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AA8, type metadata accessor for Apple_Parsec_Search_V2_MapsSession);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90EAD68(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90EADD8()
{
  sub_1B90E3800(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession);

  return sub_1B964C5D0();
}

uint64_t sub_1B90EAE70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB48D8);
  __swift_project_value_buffer(v0, qword_1EBAB48D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_marketplace_eligible";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supported_marketplaces";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Search_V2_MarketplaceInfo.decodeMessage<A>(decoder:)()
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
      sub_1B90EB128();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }
}

void sub_1B90EB128()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v4(0);
  sub_1B90E3800(v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Search_V2_MarketplaceInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace(0), sub_1B90E3800(&qword_1EBAC4620, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), sub_1B964C730(), !v1))
    {
      v3 = *(type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Search_V2_MarketplaceInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  sub_1B8D74510();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  OUTLINED_FUNCTION_188_1(v7);
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90EB3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4AA0, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90EB430(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAB48C8, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90EB4A0()
{
  sub_1B90E3800(&qword_1EBAB48C8, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B90EB520()
{
  result = MEMORY[0x1BFADC850](0x7074656B72614D2ELL, 0xEC0000006563616CLL);
  qword_1EBAC44D0 = 0xD000000000000026;
  *algn_1EBAC44D8 = 0x80000001B9705BF0;
  return result;
}

uint64_t sub_1B90EB5B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC44E0);
  __swift_project_value_buffer(v0, qword_1EBAC44E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "territory";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90EB7B0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.decodeMessage<A>(decoder:)()
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
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace(0);
  OUTLINED_FUNCTION_188_1(v8);
  OUTLINED_FUNCTION_0_57();
  sub_1B90E3800(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90EBA10(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B90E3800(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B90EBAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90E3800(&qword_1EBAC4A98, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90EBB54(uint64_t a1)
{
  v2 = sub_1B90E3800(&qword_1EBAC4620, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90EBBC4()
{
  sub_1B90E3800(&qword_1EBAC4620, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace);

  return sub_1B964C5D0();
}

unint64_t sub_1B90EBC44()
{
  result = qword_1EBAC4588;
  if (!qword_1EBAC4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4588);
  }

  return result;
}

unint64_t sub_1B90EBC98()
{
  result = qword_1EBAC45A0;
  if (!qword_1EBAC45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC45A0);
  }

  return result;
}

unint64_t sub_1B90EBCEC()
{
  result = qword_1EBAC45E0;
  if (!qword_1EBAC45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC45E0);
  }

  return result;
}

unint64_t sub_1B90EBD40()
{
  result = qword_1ED9CBFE8;
  if (!qword_1ED9CBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CBFE8);
  }

  return result;
}

unint64_t sub_1B90EBD98()
{
  result = qword_1EBAC4638;
  if (!qword_1EBAC4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4638);
  }

  return result;
}

unint64_t sub_1B90EBDF0()
{
  result = qword_1EBAC4640;
  if (!qword_1EBAC4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4640);
  }

  return result;
}

unint64_t sub_1B90EBE48()
{
  result = qword_1EBAC4648;
  if (!qword_1EBAC4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4648);
  }

  return result;
}

unint64_t sub_1B90EBEE4()
{
  result = qword_1EBAC4660;
  if (!qword_1EBAC4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4660);
  }

  return result;
}

unint64_t sub_1B90EBF3C()
{
  result = qword_1EBAC4668;
  if (!qword_1EBAC4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4668);
  }

  return result;
}

unint64_t sub_1B90EBF94()
{
  result = qword_1EBAC4670;
  if (!qword_1EBAC4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4670);
  }

  return result;
}

unint64_t sub_1B90EC030()
{
  result = qword_1EBAC4688;
  if (!qword_1EBAC4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4688);
  }

  return result;
}

unint64_t sub_1B90EC088()
{
  result = qword_1EBAC4690;
  if (!qword_1EBAC4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4690);
  }

  return result;
}

unint64_t sub_1B90EC0E0()
{
  result = qword_1EBAC4698;
  if (!qword_1EBAC4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4698);
  }

  return result;
}

unint64_t sub_1B90EC17C()
{
  result = qword_1EBAB4B50;
  if (!qword_1EBAB4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4B50);
  }

  return result;
}

unint64_t sub_1B90EC1D4()
{
  result = qword_1EBAB4B40;
  if (!qword_1EBAB4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4B40);
  }

  return result;
}

unint64_t sub_1B90EC22C()
{
  result = qword_1EBAB4B48;
  if (!qword_1EBAB4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4B48);
  }

  return result;
}

unint64_t sub_1B90EC2C8()
{
  result = qword_1EBAC46C0;
  if (!qword_1EBAC46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC46C0);
  }

  return result;
}

unint64_t sub_1B90EC320()
{
  result = qword_1EBAC46C8;
  if (!qword_1EBAC46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC46C8);
  }

  return result;
}

unint64_t sub_1B90EC378()
{
  result = qword_1EBAC46D0;
  if (!qword_1EBAC46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC46D0);
  }

  return result;
}

unint64_t sub_1B90EC414()
{
  result = qword_1EBAB4608;
  if (!qword_1EBAB4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4608);
  }

  return result;
}

unint64_t sub_1B90EC46C()
{
  result = qword_1EBAB45F8;
  if (!qword_1EBAB45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB45F8);
  }

  return result;
}

unint64_t sub_1B90EC4C4()
{
  result = qword_1EBAB4600;
  if (!qword_1EBAB4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4600);
  }

  return result;
}

unint64_t sub_1B90EC560()
{
  result = qword_1EBAC46F8;
  if (!qword_1EBAC46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC46F8);
  }

  return result;
}

unint64_t sub_1B90EC5B8()
{
  result = qword_1EBAC4700;
  if (!qword_1EBAC4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4700);
  }

  return result;
}

unint64_t sub_1B90EC610()
{
  result = qword_1EBAC4708;
  if (!qword_1EBAC4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4708);
  }

  return result;
}

unint64_t sub_1B90EC668()
{
  result = qword_1EBAC4710;
  if (!qword_1EBAC4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4710);
  }

  return result;
}

unint64_t sub_1B90EC6C0()
{
  result = qword_1EBAC4718;
  if (!qword_1EBAC4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4718);
  }

  return result;
}

unint64_t sub_1B90EC718()
{
  result = qword_1EBAC4720;
  if (!qword_1EBAC4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4720);
  }

  return result;
}

unint64_t sub_1B90EC770()
{
  result = qword_1EBAC4728;
  if (!qword_1EBAC4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4728);
  }

  return result;
}

unint64_t sub_1B90EC7C8()
{
  result = qword_1EBAC4730;
  if (!qword_1EBAC4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4730);
  }

  return result;
}

unint64_t sub_1B90EC820()
{
  result = qword_1EBAC4738;
  if (!qword_1EBAC4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4738);
  }

  return result;
}

unint64_t sub_1B90EC878()
{
  result = qword_1EBAC4740;
  if (!qword_1EBAC4740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4740);
  }

  return result;
}

unint64_t sub_1B90EC8D0()
{
  result = qword_1EBAC4748;
  if (!qword_1EBAC4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4748);
  }

  return result;
}

unint64_t sub_1B90EC928()
{
  result = qword_1EBAC4750;
  if (!qword_1EBAC4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4750);
  }

  return result;
}

unint64_t sub_1B90EC980()
{
  result = qword_1EBAC4758;
  if (!qword_1EBAC4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4758);
  }

  return result;
}

unint64_t sub_1B90EC9D8()
{
  result = qword_1EBAC4760;
  if (!qword_1EBAC4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4760);
  }

  return result;
}

unint64_t sub_1B90ECA30()
{
  result = qword_1EBAC4768;
  if (!qword_1EBAC4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4768);
  }

  return result;
}

unint64_t sub_1B90ECBDC()
{
  result = qword_1EBAC47C0;
  if (!qword_1EBAC47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC47C0);
  }

  return result;
}

unint64_t sub_1B90ECC34()
{
  result = qword_1EBAC47C8;
  if (!qword_1EBAC47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC47C8);
  }

  return result;
}

unint64_t sub_1B90ECC8C()
{
  result = qword_1EBAC47D0;
  if (!qword_1EBAC47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC47D0);
  }

  return result;
}

unint64_t sub_1B90ECD28()
{
  result = qword_1EBAC47E8;
  if (!qword_1EBAC47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC47E8);
  }

  return result;
}

unint64_t sub_1B90ECD80()
{
  result = qword_1EBAC47F0;
  if (!qword_1EBAC47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC47F0);
  }

  return result;
}

unint64_t sub_1B90ECDD8()
{
  result = qword_1EBAC47F8;
  if (!qword_1EBAC47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC47F8);
  }

  return result;
}

unint64_t sub_1B90ECE74()
{
  result = qword_1EBAC4810;
  if (!qword_1EBAC4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4810);
  }

  return result;
}

unint64_t sub_1B90ECECC()
{
  result = qword_1EBAC4818;
  if (!qword_1EBAC4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4818);
  }

  return result;
}

unint64_t sub_1B90ECF24()
{
  result = qword_1EBAC4820;
  if (!qword_1EBAC4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4820);
  }

  return result;
}

unint64_t sub_1B90ECF7C()
{
  result = qword_1EBAC4828;
  if (!qword_1EBAC4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4828);
  }

  return result;
}

unint64_t sub_1B90ECFD4()
{
  result = qword_1EBAC4830;
  if (!qword_1EBAC4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4830);
  }

  return result;
}

unint64_t sub_1B90ED02C()
{
  result = qword_1EBAC4838;
  if (!qword_1EBAC4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4838);
  }

  return result;
}

unint64_t sub_1B90ED10C()
{
  result = qword_1EBAC4860;
  if (!qword_1EBAC4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4860);
  }

  return result;
}

unint64_t sub_1B90ED164()
{
  result = qword_1EBAC4868;
  if (!qword_1EBAC4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4868);
  }

  return result;
}

unint64_t sub_1B90ED1BC()
{
  result = qword_1EBAC4870;
  if (!qword_1EBAC4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4870);
  }

  return result;
}

unint64_t sub_1B90ED258()
{
  result = qword_1ED9CBFE0;
  if (!qword_1ED9CBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CBFE0);
  }

  return result;
}

unint64_t sub_1B90ED2B0()
{
  result = qword_1ED9CBFD0;
  if (!qword_1ED9CBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CBFD0);
  }

  return result;
}

unint64_t sub_1B90ED308()
{
  result = qword_1ED9CBFD8;
  if (!qword_1ED9CBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CBFD8);
  }

  return result;
}

uint64_t sub_1B90EEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

void sub_1B90EEF68()
{
  sub_1B90EF2A4(319, &qword_1EBAC4A40, type metadata accessor for Apple_Parsec_Search_V2_Entity, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B90EF068();
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B90EF068()
{
  if (!qword_1ED9C8FB0)
  {
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9C8FB0);
    }
  }
}

void sub_1B90EF0F0()
{
  sub_1B90EF5F4(319, &qword_1EBAB5CD8, &type metadata for Apple_Parsec_Search_V2_SearchResponse.Error.OneOf_Error, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90EF1D0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B90EF2A4(319, &qword_1ED9EF0D0, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.Stats, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90EF2A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B90EF358()
{
  sub_1B90EF2A4(319, &qword_1EBAB3B18, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures.CategoryStats, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B90EF434()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B90EF4E8()
{
  sub_1B90EF5F4(319, &qword_1EBAC4A68, &type metadata for Apple_Parsec_Search_V2_SearchResponse.Section.OneOf_More, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B90EF5F4(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B90EF5F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B90EF67C()
{
  sub_1B90EF2A4(319, &qword_1ED9C8F90, type metadata accessor for Apple_Parsec_Search_V2_Entity.Topic, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90EF854()
{
  sub_1B90EF2A4(319, &qword_1ED9C8F88, type metadata accessor for Apple_Parsec_Search_V2_Rendering, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B90EF9CC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B90EFA94()
{
  sub_1B90EF5F4(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90EFB70()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B90EF2A4(319, &qword_1ED9FD160, type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B90EF2A4(319, qword_1ED9FBDE8, MEMORY[0x1E69AA930], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_550Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_1B90EFD6C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B90EFE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1B90EF2A4(319, a5, a6, MEMORY[0x1E69E62F8]);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B90EFF00()
{
  sub_1B90EF2A4(319, &qword_1ED9CB978, type metadata accessor for Apple_Parsec_Search_V2_Silhouette, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1B90EF2A4(319, &qword_1ED9FE338, type metadata accessor for Apple_Parsec_Search_V2_Location, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1B90EF2A4(319, &qword_1ED9FD840, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1B90EF2A4(319, &qword_1ED9FDC38, type metadata accessor for Apple_Parsec_Search_V2_MapsSession, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B90F01B8()
{
  sub_1B90EF2A4(319, &qword_1ED9EED50, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.Error, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B90EF2A4(319, &qword_1ED9EF080, type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.QueryFeatures, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B90F0354()
{
  sub_1B90EF2A4(319, &qword_1ED9F94A0, type metadata accessor for Apple_Parsec_Search_V2_Result.Template, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B90F0498()
{
  result = qword_1EBAC4B50;
  if (!qword_1EBAC4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B50);
  }

  return result;
}

unint64_t sub_1B90F04EC()
{
  result = qword_1EBAC4B58;
  if (!qword_1EBAC4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B58);
  }

  return result;
}

unint64_t sub_1B90F0540()
{
  result = qword_1EBAC4B60;
  if (!qword_1EBAC4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B60);
  }

  return result;
}

unint64_t sub_1B90F0594()
{
  result = qword_1EBAC4B68;
  if (!qword_1EBAC4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B68);
  }

  return result;
}

unint64_t sub_1B90F05E8()
{
  result = qword_1EBAC4B70;
  if (!qword_1EBAC4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B70);
  }

  return result;
}

unint64_t sub_1B90F063C()
{
  result = qword_1EBAC4B78;
  if (!qword_1EBAC4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B78);
  }

  return result;
}

unint64_t sub_1B90F0690()
{
  result = qword_1EBAC4B80;
  if (!qword_1EBAC4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B80);
  }

  return result;
}

unint64_t sub_1B90F06E4()
{
  result = qword_1EBAC4B88;
  if (!qword_1EBAC4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC4B88);
  }

  return result;
}

uint64_t sub_1B90F0738(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Search_V2_SearchRequest(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Search_V2_Result(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_22(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Search_V2_Result(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_15(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  result = type metadata accessor for Apple_Parsec_Search_V2_SearchRequest(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_16()
{
  result = type metadata accessor for Apple_Parsec_Search_V2_SearchRequest(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_35_9()
{
  result = type metadata accessor for Apple_Parsec_Search_V2_SearchRequest(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_8()
{
  result = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_8()
{
  v0 = type metadata accessor for Apple_Parsec_Search_V2_SearchRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Search_V2_SearchRequest(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_59_8()
{
  v0 = type metadata accessor for Apple_Parsec_Search_V2_Result._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_89_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_92_6()
{
  v0 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_149_3(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Search_V2_SearchRequest(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_165_3()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_177_5(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Search_V2_Result(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_205_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Search_V2_Result(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_214_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_236_1()
{

  return sub_1B90D4000();
}

uint64_t OUTLINED_FUNCTION_237_1()
{

  return sub_1B90D4000();
}

uint64_t OUTLINED_FUNCTION_251_2()
{

  return sub_1B964C6B0();
}

uint64_t OUTLINED_FUNCTION_257_1()
{

  return sub_1B964C420();
}

uint64_t OUTLINED_FUNCTION_261_0()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_263_2()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

uint64_t *OUTLINED_FUNCTION_270_1(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = *(result + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  return result;
}

void OUTLINED_FUNCTION_272_1()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xC000000000000000;
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits() + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits()
{
  result = qword_1ED9F1950;
  if (!qword_1ED9F1950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Apple_Parsec_Search_V2_WeatherUnits.temperature.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.temperature.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Apple_Parsec_Search_V2_WeatherUnits.wind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.wind.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Apple_Parsec_Search_V2_WeatherUnits.precipitation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.precipitation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void Apple_Parsec_Search_V2_WeatherUnits.pressure.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.pressure.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

void Apple_Parsec_Search_V2_WeatherUnits.distance.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.distance.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B90F14C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F2154();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90F152C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F21A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90F1590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F21FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90F1604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F2250();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90F1690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90F22A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90F1770@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90F1820@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_V2_WeatherUnits.WindUnit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90F18D0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90F1980@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_V2_WeatherUnits.PressureUnit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90F1A30@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90F1A74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4C90);
  __swift_project_value_buffer(v0, qword_1EBAB4C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "temperature";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wind";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "precipitation";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pressure";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "distance";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.decodeMessage<A>(decoder:)()
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
        sub_1B90F1DD4();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B90F1E3C();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B90F1EA4();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B90F1F0C();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B90F1F74();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.traverse<A>(visitor:)()
{
  if (!*v0 || (v2 = *(v0 + 8), OUTLINED_FUNCTION_94_4(), sub_1B90F2154(), result = OUTLINED_FUNCTION_3_31(), !v1))
  {
    if (!*(v0 + 16) || (v4 = *(v0 + 24), OUTLINED_FUNCTION_94_4(), sub_1B90F21A8(), result = OUTLINED_FUNCTION_3_31(), !v1))
    {
      if (!*(v0 + 32) || (v5 = *(v0 + 40), OUTLINED_FUNCTION_94_4(), sub_1B90F21FC(), result = OUTLINED_FUNCTION_3_31(), !v1))
      {
        if (!*(v0 + 48) || (v6 = *(v0 + 56), OUTLINED_FUNCTION_94_4(), sub_1B90F2250(), result = OUTLINED_FUNCTION_3_31(), !v1))
        {
          if (!*(v0 + 64) || (v7 = *(v0 + 72), OUTLINED_FUNCTION_94_4(), sub_1B90F22A4(), result = OUTLINED_FUNCTION_3_31(), !v1))
          {
            v8 = v0 + *(type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits() + 36);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B90F2154()
{
  result = qword_1EBAB4D00;
  if (!qword_1EBAB4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D00);
  }

  return result;
}

unint64_t sub_1B90F21A8()
{
  result = qword_1EBAB4C60;
  if (!qword_1EBAB4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4C60);
  }

  return result;
}

unint64_t sub_1B90F21FC()
{
  result = qword_1EBAB4CC0;
  if (!qword_1EBAB4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4CC0);
  }

  return result;
}

unint64_t sub_1B90F2250()
{
  result = qword_1EBAB4D40;
  if (!qword_1EBAB4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D40);
  }

  return result;
}

unint64_t sub_1B90F22A4()
{
  result = qword_1EBAB4D80;
  if (!qword_1EBAB4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D80);
  }

  return result;
}

uint64_t static Apple_Parsec_Search_V2_WeatherUnits.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (*(a2 + 24) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 != 1)
        {
          return 0;
        }

        goto LABEL_16;
      case 2:
        if (v6 != 2)
        {
          return 0;
        }

        goto LABEL_16;
      case 3:
        if (v6 != 3)
        {
          return 0;
        }

        goto LABEL_16;
      case 4:
        if (v6 != 4)
        {
          return 0;
        }

        goto LABEL_16;
      case 5:
        if (v6 != 5)
        {
          return 0;
        }

        goto LABEL_16;
      default:
        if (!v6)
        {
          goto LABEL_16;
        }

        return 0;
    }
  }

  if (v6 == v7)
  {
LABEL_16:
    v8 = *(a2 + 40);
    if (sub_1B8D92198(a1[4], *(a1 + 40), a2[4]))
    {
      v9 = *(a2 + 56);
      if (sub_1B8D92198(a1[6], *(a1 + 56), a2[6]))
      {
        v10 = *(a2 + 72);
        if (sub_1B8D92198(a1[8], *(a1 + 72), a2[8]))
        {
          v11 = *(type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits() + 36);
          sub_1B964C2B0();
          sub_1B8CD27B0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
          return sub_1B964C850() & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t Apple_Parsec_Search_V2_WeatherUnits.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  sub_1B8CD27B0(&qword_1EBAC4BD8, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B90F2584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD27B0(&qword_1EBAC4C38, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90F2604(uint64_t a1)
{
  v2 = sub_1B8CD27B0(&qword_1EBAB4C40, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90F2674()
{
  sub_1B8CD27B0(&qword_1EBAB4C40, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);

  return sub_1B964C5D0();
}

uint64_t sub_1B90F26F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4D10);
  __swift_project_value_buffer(v0, qword_1EBAB4D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TEMPERATURE_UNIT_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TEMPERATURE_UNIT_CELSIUS";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TEMPERATURE_UNIT_FAHRENHEIT";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90F2920()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4C70);
  __swift_project_value_buffer(v0, qword_1EBAB4C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WIND_UNIT_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WIND_UNIT_MILES_PER_HOUR";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WIND_UNIT_KILOMETERS_PER_HOUR";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WIND_UNIT_METERS_PER_SECOND";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "WIND_UNIT_BEAUFORT";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "WIND_UNIT_KNOTS";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90F2C08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4CD0);
  __swift_project_value_buffer(v0, qword_1EBAB4CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PRECIPITATION_UNIT_UNKNOWN";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PRECIPITATION_UNIT_INCHES";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PRECIPITATION_UNIT_MILLIMETERS_AND_CENTIMETERS";
  *(v12 + 1) = 46;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90F2E34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4D50);
  __swift_project_value_buffer(v0, qword_1EBAB4D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PRESSURE_UNIT_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PRESSURE_UNIT_MILLIBARS";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PRESSURE_UNIT_INCHES_OF_MERCURY";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PRESSURE_UNIT_MILLIMETERS_OF_MERCURY";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PRESSURE_UNIT_HECTOPASCALS";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRESSURE_UNIT_KILOPASCALS";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90F311C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4D90);
  __swift_project_value_buffer(v0, qword_1EBAB4D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DISTANCE_UNIT_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DISTANCE_UNIT_MILES";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DISTANCE_UNIT_KILOMETERS";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B90F3348()
{
  result = qword_1EBAB4CF8;
  if (!qword_1EBAB4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4CF8);
  }

  return result;
}

unint64_t sub_1B90F33A0()
{
  result = qword_1EBAB4CE8;
  if (!qword_1EBAB4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4CE8);
  }

  return result;
}

unint64_t sub_1B90F33F8()
{
  result = qword_1EBAB4CF0;
  if (!qword_1EBAB4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4CF0);
  }

  return result;
}

unint64_t sub_1B90F3450()
{
  result = qword_1EBAB4C58;
  if (!qword_1EBAB4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4C58);
  }

  return result;
}

unint64_t sub_1B90F34A8()
{
  result = qword_1EBAB4C48;
  if (!qword_1EBAB4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4C48);
  }

  return result;
}

unint64_t sub_1B90F3500()
{
  result = qword_1EBAB4C50;
  if (!qword_1EBAB4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4C50);
  }

  return result;
}

unint64_t sub_1B90F3558()
{
  result = qword_1EBAB4CB8;
  if (!qword_1EBAB4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4CB8);
  }

  return result;
}

unint64_t sub_1B90F35B0()
{
  result = qword_1EBAB4CA8;
  if (!qword_1EBAB4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4CA8);
  }

  return result;
}

unint64_t sub_1B90F3608()
{
  result = qword_1EBAB4CB0;
  if (!qword_1EBAB4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4CB0);
  }

  return result;
}

unint64_t sub_1B90F3660()
{
  result = qword_1EBAB4D38;
  if (!qword_1EBAB4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D38);
  }

  return result;
}

unint64_t sub_1B90F36B8()
{
  result = qword_1EBAB4D28;
  if (!qword_1EBAB4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D28);
  }

  return result;
}

unint64_t sub_1B90F3710()
{
  result = qword_1EBAB4D30;
  if (!qword_1EBAB4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D30);
  }

  return result;
}

unint64_t sub_1B90F3768()
{
  result = qword_1EBAB4D78;
  if (!qword_1EBAB4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D78);
  }

  return result;
}

unint64_t sub_1B90F37C0()
{
  result = qword_1EBAB4D68;
  if (!qword_1EBAB4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D68);
  }

  return result;
}

unint64_t sub_1B90F3818()
{
  result = qword_1EBAB4D70;
  if (!qword_1EBAB4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4D70);
  }

  return result;
}

uint64_t sub_1B90F3AA8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return sub_1B964C680();
}

uint64_t sub_1B90F3C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9104F6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Context_MusicRankingInfluence.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B90F3CF8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Context_MusicRankingInfluence.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientDisplayHints.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(0);
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0xE000000000000000;
    *(a1 + 24) = MEMORY[0x1E69E7CC0];
    *(a1 + 32) = 0;
    v11 = a1 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v9 + 36);
    type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4D08, &qword_1B968FA70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_20();
    OUTLINED_FUNCTION_472();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientDisplayHints.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D08, &qword_1B968FA70);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_141_7();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90FA124();
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_16_20();
  OUTLINED_FUNCTION_185_3();
  type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(0);
  v3 = a1 + *(v2 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 36);
  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientDisplayHints.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0xE000000000000000;
    v12[3] = MEMORY[0x1E69E7CC0];
    v12[4] = 0;
    v14 = v12 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v8 + 36);
    type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D08, &qword_1B968FA70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_20();
    OUTLINED_FUNCTION_246();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientApplicationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  v11 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(v10) + 20));
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  v12 = type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v13)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = MEMORY[0x1E69E7CC0];
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    v14 = a1 + *(v12 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v13)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC4D10, &qword_1B968FA78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_182();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t sub_1B90F42FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B90FA578();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientApplicationContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D10, &qword_1B968FA78);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_141_7();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90FA124();
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_14_17();
  OUTLINED_FUNCTION_185_3();
  type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_ClientApplicationContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Context_ClientConversationContextInfo.clientApplicationContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0;
    *(v12 + 16) = 1;
    v12[3] = MEMORY[0x1E69E7CC0];
    *(v12 + 8) = 0;
    *(v12 + 36) = 0;
    v14 = v12 + *(v8 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D10, &qword_1B968FA78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_246();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B90F462C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B90FA578();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B90FA5CC();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B90F46FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_37_8();
  v15 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v16 = a4(0);
  OUTLINED_FUNCTION_178(v6, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1B8D9207C(v6, v5, v4);
  return v18;
}

void sub_1B90F47F4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B90FA124();
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = *v2;
  OUTLINED_FUNCTION_55_4();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.onDeviceContext.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(v8) + 20));
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_179_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4D18, &qword_1B968FA80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_182();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.onDeviceContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D18, &qword_1B968FA80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_141_7();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90FA124();
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_185_3();
  type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Context_ClientConversationContextInfo.onDeviceContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = 0;
    *(v12 + 16) = 1;
    v14 = v12 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D18, &qword_1B968FA80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_246();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.promptContext.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  v11 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(v10) + 20));
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_Context_PromptContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    Apple_Parsec_Siri_Context_PromptContext.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC4D20, &qword_1B968FA88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_182();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.promptContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D20, &qword_1B968FA88);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_141_7();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90FA124();
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_185_3();
  type metadata accessor for Apple_Parsec_Siri_Context_PromptContext(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Context_PromptContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_PromptContext(0);
  v4 = a1 + *(v3 + 56);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 60);
  sub_1B964C130();
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Apple_Parsec_Siri_Context_ClientConversationContextInfo.promptContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_PromptContext(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_114_0();
    v14 = MEMORY[0x1E69E7CC0];
    v12[4] = MEMORY[0x1E69E7CC0];
    v12[5] = v14;
    v12[6] = v14;
    *(v12 + 14) = 0;
    v12[8] = v14;
    v15 = v12 + *(v8 + 56);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v8 + 60);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D20, &qword_1B968FA88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_15();
    OUTLINED_FUNCTION_246();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Context_ClientConversationContextInfo.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0) + 20);
  if (qword_1EBAB5940 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAB5948;
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.responseOptions.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v7) + 36);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_179_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC4D28, &qword_1B968FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_182();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.responseOptions.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC4D28, &qword_1B968FA90);
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_122_0();
  sub_1B90FA524();
  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B90F5384@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a1(0);
  return OUTLINED_FUNCTION_279(v2);
}

void Apple_Parsec_Siri_Context_ClientDisplayHints.responseOptions.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(v9);
  v11 = OUTLINED_FUNCTION_53_6(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  v18 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v17);
  OUTLINED_FUNCTION_64_0(*(v18 + 36));
  OUTLINED_FUNCTION_75(v0);
  if (v19)
  {
    *v13 = MEMORY[0x1E69E7CC0];
    *(v13 + 8) = 0;
    *(v13 + 16) = 1;
    v20 = v13 + *(v1 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v19)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D28, &qword_1B968FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_461();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.hasResponseOptions.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v4);
  OUTLINED_FUNCTION_115(*(v5 + 36));
  OUTLINED_FUNCTION_161_2();
  v6 = type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Context_ClientDisplayHints.clearResponseOptions()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC4D28, &qword_1B968FA90);
  type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Context_ClientDisplayHints.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Context_ClientApplicationContext.resultEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientApplicationContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientApplicationContext(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Context_ResponseOptions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B90F5960@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90F5994(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9104F18();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B90F5A78@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Context_ResponseOptions.ReasonForResponseOption.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.label.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.value.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1B90F5BB0()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B90F5C38()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Context_PegasusSemanticValue.init()()
{
  OUTLINED_FUNCTION_92_0();
  v0 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  return OUTLINED_FUNCTION_279(v0);
}

uint64_t Apple_Parsec_Siri_Context_PegasusDisplayHint.idValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(v9) + 20);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4D30, &qword_1B968FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_182();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_PegasusDisplayHint.idValue.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC4D30, &qword_1B968FA98);
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_122_0();
  sub_1B90FA524();
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Context_PegasusDisplayHint.idValue.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(v9);
  v11 = OUTLINED_FUNCTION_53_6(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  v18 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(v17);
  OUTLINED_FUNCTION_64_0(*(v18 + 20));
  OUTLINED_FUNCTION_75(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_114_0();
    v20 = v13 + *(v1 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v19)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D30, &qword_1B968FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_461();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Context_PegasusDisplayHint.hasIDValue.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(v4);
  OUTLINED_FUNCTION_115(*(v5 + 20));
  OUTLINED_FUNCTION_161_2();
  v6 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Context_PegasusDisplayHint.clearIDValue()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC4D30, &qword_1B968FA98);
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Context_PegasusDisplayHint.displayValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(v9) + 24);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4D30, &qword_1B968FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_182();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_PegasusDisplayHint.displayValue.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC4D30, &qword_1B968FA98);
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_122_0();
  sub_1B90FA524();
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Context_PegasusDisplayHint.displayValue.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(v9);
  v11 = OUTLINED_FUNCTION_53_6(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  v18 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(v17);
  OUTLINED_FUNCTION_64_0(*(v18 + 24));
  OUTLINED_FUNCTION_75(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_114_0();
    v20 = v13 + *(v1 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v19)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D30, &qword_1B968FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_461();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Context_PegasusDisplayHint.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint(0);
  v1 = *(v0 + 20);
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
}

uint64_t Apple_Parsec_Siri_Context_OnDeviceContext.entities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void Apple_Parsec_Siri_Context_OnDeviceContext.musicRankingInfluence.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Context_OnDeviceContext.musicRankingInfluence.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_OnDeviceContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_OnDeviceContext(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Siri_Context_ClientEntity.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.usoGraph.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void Apple_Parsec_Siri_Context_ClientEntity.source.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.source.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.ontologyLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.ontologyLabel.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.sageAppEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(v9) + 52);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    v17 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC4D38, &qword_1B968FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_182();
    return sub_1B90FA524();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.sageAppEntity.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBAC4D38, &qword_1B968FAA0);
  OUTLINED_FUNCTION_4_30();
  OUTLINED_FUNCTION_122_0();
  sub_1B90FA524();
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_Context_SageAppEntity.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(v1);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Context_ClientEntity.sageAppEntity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(v9);
  v11 = OUTLINED_FUNCTION_53_6(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  v18 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(v17);
  OUTLINED_FUNCTION_64_0(*(v18 + 52));
  OUTLINED_FUNCTION_75(v0);
  if (v19)
  {
    type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = v13 + *(v1 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v19)
    {
      sub_1B8D9207C(v0, &qword_1EBAC4D38, &qword_1B968FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_461();
    sub_1B90FA524();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B90F6A04(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    OUTLINED_FUNCTION_128();
    sub_1B90FA578();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B90FA524();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    sub_1B90FA5CC();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B90FA524();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.hasSageAppEntity.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(v4);
  OUTLINED_FUNCTION_115(*(v5 + 52));
  OUTLINED_FUNCTION_161_2();
  v6 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
  OUTLINED_FUNCTION_11(v6);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Context_ClientEntity.clearSageAppEntity()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(0);
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBAC4D38, &qword_1B968FAA0);
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(v0) + 48);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90F6D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9104FC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B90F6DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9105014();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity(0);
  v3 = a1 + *(v2 + 48);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 52);
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t static Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B90F6F30@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B90F6FE4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Context_SageAppEntity.flightEntity.getter()
{
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAC4D40, &qword_1B968FAA8);
LABEL_6:
    OUTLINED_FUNCTION_92_0();
    v9 = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(0);
    OUTLINED_FUNCTION_279(v9);
    v10 = *(v9 + 28);
    sub_1B964C110();
    v11 = OUTLINED_FUNCTION_40_3();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B90FA5CC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_288();
  return sub_1B90FA524();
}

uint64_t Apple_Parsec_Siri_Context_FlightEntity.init()()
{
  OUTLINED_FUNCTION_92_0();
  v0 = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(0);
  OUTLINED_FUNCTION_279(v0);
  v1 = *(v0 + 28);
  sub_1B964C110();
  v2 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Siri_Context_SageAppEntity.flightEntity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 24) = v12;
  OUTLINED_FUNCTION_186();
  sub_1B8D92024();
  v13 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  v14 = OUTLINED_FUNCTION_76_2(v13);
  OUTLINED_FUNCTION_75(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAC4D40, &qword_1B968FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_128();
      sub_1B90FA524();
      goto LABEL_8;
    }

    sub_1B90FA5CC();
  }

  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  v17 = v12 + *(v9 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v9 + 28);
  sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Context_SageAppEntity.sportsEntity.getter()
{
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAC4D40, &qword_1B968FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_34_9();
      OUTLINED_FUNCTION_288();
      return sub_1B90FA524();
    }

    sub_1B90FA5CC();
  }

  OUTLINED_FUNCTION_186_2(MEMORY[0x1E69E7CC0]);
  v10 = *(v0 + 24);
  v11 = sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = *(v0 + 28);
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
}

uint64_t sub_1B90F7500()
{
  sub_1B8D9207C(v0, &qword_1EBAC4D40, &qword_1B968FAA8);
  OUTLINED_FUNCTION_128();
  sub_1B90FA524();
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Apple_Parsec_Siri_Context_SportsEntity.init()()
{
  OUTLINED_FUNCTION_186_2(MEMORY[0x1E69E7CC0]);
  v1 = *(v0 + 24);
  v2 = sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = *(v0 + 28);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
}

void Apple_Parsec_Siri_Context_SageAppEntity.sportsEntity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 24) = v12;
  OUTLINED_FUNCTION_186();
  sub_1B8D92024();
  v13 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  v14 = OUTLINED_FUNCTION_76_2(v13);
  OUTLINED_FUNCTION_75(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAC4D40, &qword_1B968FAA8);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    v17 = v12 + v9[5];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = v9[6];
    v19 = sub_1B964C110();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v9[7];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B90FA5CC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_128();
  sub_1B90FA524();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B90F77C8()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B90FA578();
    sub_1B8D9207C(v5, &qword_1EBAC4D40, &qword_1B968FAA8);
    sub_1B90FA524();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B90FA5CC();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAC4D40, &qword_1B968FAA8);
    sub_1B90FA524();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Apple_Parsec_Siri_Context_SageAppEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = type metadata accessor for Apple_Parsec_Siri_Context_SportsEntity(0);
  v2 = OUTLINED_FUNCTION_183(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity(0);
  v6 = OUTLINED_FUNCTION_183(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity.OneOf_EntityInfo(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC4D48, &unk_1B968FAB0);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_139();
  v19 = *(v18 + 56);
  sub_1B90FA578();
  sub_1B90FA578();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_472();
    sub_1B90FA578();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_34_9();
      sub_1B90FA524();
      OUTLINED_FUNCTION_128();
      static Apple_Parsec_Siri_Context_SportsEntity.== infix(_:_:)();
      sub_1B90FA5CC();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B90FA5CC();
      OUTLINED_FUNCTION_31_16();
      sub_1B90FA5CC();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_14();
    sub_1B90FA578();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_35_10();
      sub_1B90FA524();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Context_FlightEntity.== infix(_:_:)();
      sub_1B90FA5CC();
      goto LABEL_7;
    }
  }

  sub_1B90FA5CC();
  sub_1B8D9207C(v0, &qword_1EBAC4D48, &unk_1B968FAB0);
LABEL_8:
  OUTLINED_FUNCTION_283();
}