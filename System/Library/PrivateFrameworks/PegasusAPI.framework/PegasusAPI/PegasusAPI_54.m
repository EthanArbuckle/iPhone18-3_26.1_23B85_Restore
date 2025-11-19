uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96A85C8[result];
  }

  return result;
}

uint64_t sub_1B92012B4@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92012E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9202274();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B920143C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.UserIdentificationType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9201480()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8A68);
  __swift_project_value_buffer(v0, qword_1EBAC8A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_identification_classification";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_post_disambiguation";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "shared_user_id";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 1:
        OUTLINED_FUNCTION_288();
        sub_1B920173C();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v3 || (v7 = *(v2 + 8), sub_1B9201878(), result = OUTLINED_FUNCTION_3_45(), (v0 = v1) == 0))
  {
    if (*(v2 + 9) != 1 || (v1 = v0, result = sub_1B964C670(), !v0))
    {
      OUTLINED_FUNCTION_4_37();
      if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v6 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

unint64_t sub_1B9201878()
{
  result = qword_1EBAC8AC8;
  if (!qword_1EBAC8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8AC8);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_MultiUserContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v2)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v2 != v3)
  {
    return 0;
  }

LABEL_6:
  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_72();
  sub_1B8CD2C30(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9201A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C30(&qword_1EBAC8B70, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9201B18(uint64_t a1)
{
  v2 = sub_1B8CD2C30(&qword_1EBAC8B40, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9201B88()
{
  sub_1B8CD2C30(&qword_1EBAC8B40, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9201C08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8A80);
  __swift_project_value_buffer(v0, qword_1EBAC8A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USER_IDENTITY_CLASSIFICATION_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONFIDENT";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KNOWN";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UNSURE_1";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "UNSURE_N";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "UNKNOWN_USER";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9201F08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8A98);
  __swift_project_value_buffer(v0, qword_1EBAC8A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_identification_type";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_288();
      sub_1B9202168();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_29_23();
  if (!v2 || (v6 = *(v1 + 8), sub_1B9202274(), result = OUTLINED_FUNCTION_3_45(), !v0))
  {
    OUTLINED_FUNCTION_4_37();
    if (!v4 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v5 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

unint64_t sub_1B9202274()
{
  result = qword_1EBAC8AD8;
  if (!qword_1EBAC8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8AD8);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1B96A85C8[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    switch(v3)
    {
      case 1:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_8;
      case 2:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_8;
      case 3:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_8;
      case 4:
        if (v2 != 7)
        {
          return 0;
        }

        goto LABEL_8;
      default:
        if (!v2)
        {
          goto LABEL_8;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    v4 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v4 || (sub_1B964C9F0() & 1) != 0)
    {
      v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0) + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_72();
      sub_1B8CD2C30(v6, v7);
      return OUTLINED_FUNCTION_634() & 1;
    }
  }

  return 0;
}

uint64_t sub_1B920242C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2C30(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9202510(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C30(&qword_1EBAC8B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9202590(uint64_t a1)
{
  v2 = sub_1B8CD2C30(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9202600()
{
  sub_1B8CD2C30(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9202680()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8AB0);
  __swift_project_value_buffer(v0, qword_1EBAC8AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USER_IDENTIFICATION_TYPE_UNKNOWN";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "ASK_ONLY";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "NONE";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "PERSONAL_NONE";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "REQUIRE";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B9202928()
{
  result = qword_1EBAC8AE8;
  if (!qword_1EBAC8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8AE8);
  }

  return result;
}

unint64_t sub_1B9202980()
{
  result = qword_1EBAC8AF0;
  if (!qword_1EBAC8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8AF0);
  }

  return result;
}

unint64_t sub_1B92029D8()
{
  result = qword_1EBAC8AF8;
  if (!qword_1EBAC8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8AF8);
  }

  return result;
}

unint64_t sub_1B9202A60()
{
  result = qword_1EBAC8B10;
  if (!qword_1EBAC8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8B10);
  }

  return result;
}

unint64_t sub_1B9202AB8()
{
  result = qword_1EBAC8B18;
  if (!qword_1EBAC8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8B18);
  }

  return result;
}

unint64_t sub_1B9202B10()
{
  result = qword_1EBAC8B20;
  if (!qword_1EBAC8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8B20);
  }

  return result;
}

uint64_t sub_1B9202E00()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9202ECC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_45()
{

  return sub_1B964C680();
}

uint64_t OUTLINED_FUNCTION_4_37()
{
  result = *(v0 + 16);
  *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_32()
{
  v1 = *(v0 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void Apple_Parsec_Siri_V2alpha_SuggestionIntent.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 1000:
      a2 = 1;
      break;
    case 1001:
      a2 = 2;
      break;
    case 1002:
      a2 = 3;
      break;
    case 1003:
    case 1004:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1009:
      break;
    case 1010:
      a2 = 4;
      break;
    case 1011:
      a2 = 5;
      break;
    case 1012:
      a2 = 6;
      break;
    case 1013:
      a2 = 7;
      break;
    case 1014:
      a2 = 8;
      break;
    case 1015:
      a2 = 9;
      break;
    default:
      switch(a2)
      {
        case 3000:
          a2 = 11;
          break;
        case 3001:
          a2 = 12;
          break;
        case 3002:
          a2 = 13;
          break;
        case 3003:
          a2 = 14;
          break;
        case 3004:
          a2 = 15;
          break;
        default:
          if (a2)
          {
            if (a2 == 2000)
            {
              a2 = 10;
            }

            else if (a2 == 4000)
            {
              a2 = 16;
            }
          }

          break;
      }

      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SuggestionIntent.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96A9550[result];
  }

  return result;
}

uint64_t sub_1B9203164@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_SuggestionIntent.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9203198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92060B8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9203298@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SuggestionIntent.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v7);
  OUTLINED_FUNCTION_115(*(v8 + 28));
  sub_1B8D92024();
  Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(Suggestion + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC8C30, &qword_1B96A85F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v9);
  *(v1 + 16) = Suggestion;
  OUTLINED_FUNCTION_59_1(Suggestion);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    v19 = v12 + *(Suggestion + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC8C30, &qword_1B96A85F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.relatedQuestionSuggestion.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC8C38, &qword_1B96A85F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t sub_1B92037B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9203AD4();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.relatedQuestionSuggestion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_3_46();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B92038C8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9203930()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.relatedQuestionSuggestion.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    v19 = v12 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC8C38, &qword_1B96A85F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9203AD4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9203B2C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

BOOL Apple_Parsec_Siri_V2alpha_ServerSuggestion.hasRelatedQuestionSuggestion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v5);
  OUTLINED_FUNCTION_115(*(v6 + 32));
  sub_1B8D92024();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  v8 = __swift_getEnumTagSinglePayload(v0, 1, v7) != 1;
  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &qword_1B96A85F8);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ServerSuggestion.clearRelatedQuestionSuggestion()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAC8C38, &qword_1B96A85F8);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  v3 = v1 + v2[6];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[7];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[8];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  v10 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.speak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.speak.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B9203EA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B9203F5C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  v2 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_42_11();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
  v3 = v1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v7);
  OUTLINED_FUNCTION_115(*(SuggestionCandidate + 28));
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_92_0();
    v11 = a1 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v1);
  sub_1B8D9207C(v0 + *(SuggestionCandidate + 28), &qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_1_61();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v15);
  OUTLINED_FUNCTION_64_0(*(SuggestionCandidate + 28));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_42_11();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

BOOL sub_1B92045A4()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 28);
  sub_1B8D92024();
  v10 = v0(0);
  v11 = __swift_getEnumTagSinglePayload(v2, 1, v10) != 1;
  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return v11;
}

uint64_t sub_1B920469C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType.rawValue.getter()
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

uint64_t sub_1B92047FC@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9204830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9209A34();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0);
  v3 = v1 + *(SuggestionCandidate + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(SuggestionCandidate + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B9204974@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.CandidateType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.candidates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B9204A08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B9204A9C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9204B68@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = a1(v9);
  OUTLINED_FUNCTION_115(*(v10 + 24));
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    v13 = a2 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B9203930();
  }

  return result;
}

uint64_t sub_1B9204C9C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_1_61();
  OUTLINED_FUNCTION_86_7();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.utterance.modify()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_42_11();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
    OUTLINED_FUNCTION_461();
    sub_1B9203930();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9204E1C()
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
    sub_1B9203AD4();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B9203930();
    OUTLINED_FUNCTION_187_1();
    OUTLINED_FUNCTION_177_1();
    sub_1B9203B2C();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B9203930();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v13);
}

BOOL sub_1B9204F14(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(a1(0) + 24);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v9 = __swift_getEnumTagSinglePayload(v1, 1, v8) != 1;
  sub_1B8D9207C(v1, &qword_1EBAB9008, &qword_1B96A8600);
  return v9;
}

uint64_t sub_1B9204FFC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBAB9008, &qword_1B96A8600);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B92051F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4518);
  __swift_project_value_buffer(v0, qword_1EBAB4518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "SUGGESTION_INTENT_UNSPECIFIED";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1000;
  *v8 = "SUGGESTION_INTENT_WEATHER_CURRENT_WEATHER";
  *(v8 + 8) = 41;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 1001;
  *v10 = "SUGGESTION_INTENT_WEATHER_WITH_LOCATION";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 1002;
  *v12 = "SUGGESTION_INTENT_WEATHER_THIS_WEEKEND";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 1010;
  *v14 = "SUGGESTION_INTENT_WEATHER_TEMPERATURE";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 1011;
  *v16 = "SUGGESTION_INTENT_WEATHER_WILL_RAIN";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 1012;
  *v18 = "SUGGESTION_INTENT_WEATHER_WILL_RAIN_STOP";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 1013;
  *v20 = "SUGGESTION_INTENT_WEATHER_AIR_QUALITY";
  *(v20 + 1) = 37;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 1014;
  *v22 = "SUGGESTION_INTENT_WEATHER_VISIBILITY";
  *(v22 + 1) = 36;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 1015;
  *v24 = "SUGGESTION_INTENT_WEATHER_WIND_CHILL";
  *(v24 + 1) = 36;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 2000;
  *v26 = "SUGGESTION_INTENT_CLOCK_WITH_LOCATION";
  *(v26 + 1) = 37;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 3000;
  *v28 = "SUGGESTION_INTENT_MATH_RESULT";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 3001;
  *v30 = "SUGGESTION_INTENT_MATH_DECIMAL_TO_FRACTION";
  *(v30 + 1) = 42;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 3002;
  *v32 = "SUGGESTION_INTENT_MATH_TIP_CALCULATION";
  *(v32 + 1) = 38;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 3003;
  *v34 = "SUGGESTION_INTENT_MATH_PYTHAGOREAN_THEOREM";
  *(v34 + 1) = 42;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 3004;
  *v36 = "SUGGESTION_INTENT_MATH_ARITHMETIC";
  *(v36 + 1) = 33;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 4000;
  *v38 = "SUGGESTION_INTENT_KG_SIMPLE_MATH_CONCEPT";
  *(v38 + 1) = 40;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B92057A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4540);
  __swift_project_value_buffer(v0, qword_1EBAB4540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current_intent";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "candidates";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 10;
  *v13 = "alternate_query_suggestion";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 11;
  *v15 = "related_question_suggestion";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestion.decodeMessage<A>(decoder:)()
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
      case 11:
        OUTLINED_FUNCTION_9();
        sub_1B9205BF8();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9205AA4();
        break;
      case 10:
        OUTLINED_FUNCTION_9();
        sub_1B9205B44();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8D15DE0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9205AA4()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
  sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
  return sub_1B964C570();
}

uint64_t sub_1B9205B44()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);
  return sub_1B964C580();
}

uint64_t sub_1B9205BF8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0) + 32);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_ServerSuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v29 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v31 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0);
  v21 = OUTLINED_FUNCTION_59_1(Suggestion);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  if (!*v2 || (OUTLINED_FUNCTION_58_9(*v2), sub_1B92060B8(), v1 = v0, sub_1B964C680(), !v0))
  {
    v30 = v8;
    if (!*(v2[2] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0), sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate), OUTLINED_FUNCTION_57_10(), sub_1B964C730(), !v1))
    {
      v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
      v25 = v24[7];
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v19, 1, Suggestion) == 1)
      {
        sub_1B8D9207C(v19, &qword_1EBAC8C30, &qword_1B96A85F0);
      }

      else
      {
        v29 = v24;
        sub_1B9203930();
        sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);
        OUTLINED_FUNCTION_57_10();
        sub_1B964C740();
        sub_1B9203B2C();
        if (v1)
        {
          goto LABEL_13;
        }

        v24 = v29;
      }

      v26 = v24[8];
      v27 = v32;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v27, 1, v30) == 1)
      {
        sub_1B8D9207C(v27, &qword_1EBAC8C38, &qword_1B96A85F8);
LABEL_12:
        v28 = v2 + v24[6];
        sub_1B964C290();
        goto LABEL_13;
      }

      sub_1B9203930();
      sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion);
      OUTLINED_FUNCTION_57_10();
      sub_1B964C740();
      sub_1B9203B2C();
      if (!v1)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

unint64_t sub_1B92060B8()
{
  result = qword_1ED9CA100;
  if (!qword_1ED9CA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA100);
  }

  return result;
}

uint64_t sub_1B920610C(unint64_t *a1, void (*a2)(uint64_t))
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

void static Apple_Parsec_Siri_V2alpha_ServerSuggestion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  v71 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(v6);
  v7 = OUTLINED_FUNCTION_59_1(v71);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C38, &qword_1B96A85F8);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_231_1();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C58, &qword_1B96A8608);
  OUTLINED_FUNCTION_59_1(v70);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_22_3();
  Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(v20);
  v22 = OUTLINED_FUNCTION_59_1(Suggestion);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v27 = (v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C30, &qword_1B96A85F0);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_79();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8C60, &unk_1B96A8610);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_159();
  if (!OUTLINED_FUNCTION_85_5())
  {
    goto LABEL_27;
  }

  v36 = *(v1 + 16);
  v37 = *(v0 + 16);
  sub_1B8D6A6A4();
  if ((v38 & 1) == 0)
  {
    goto LABEL_27;
  }

  v66 = v12;
  v67 = v4;
  v69 = v2;
  v68 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  v39 = v68[7];
  v40 = *(v32 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v5);
  if (v48)
  {
    OUTLINED_FUNCTION_37_0(v5 + v40);
    v41 = v69;
    if (v48)
    {
      sub_1B8D9207C(v5, &qword_1EBAC8C30, &qword_1B96A85F0);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v5 + v40);
  if (v48)
  {
    sub_1B9203B2C();
LABEL_16:
    v49 = &qword_1EBAC8C60;
    v50 = &unk_1B96A8610;
LABEL_17:
    v51 = v5;
LABEL_26:
    sub_1B8D9207C(v51, v49, v50);
LABEL_27:
    v47 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_4_38();
  sub_1B9203930();
  v52 = *v3;
  v53 = *v27;
  sub_1B8D6A254();
  if ((v54 & 1) == 0)
  {
    sub_1B9203B2C();
    sub_1B9203B2C();
    v49 = &qword_1EBAC8C30;
    v50 = &qword_1B96A85F0;
    goto LABEL_17;
  }

  v55 = *(Suggestion + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  sub_1B920610C(v56, v57);
  v58 = sub_1B964C850();
  sub_1B9203B2C();
  sub_1B9203B2C();
  sub_1B8D9207C(v5, &qword_1EBAC8C30, &qword_1B96A85F0);
  v41 = v69;
  if ((v58 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v42 = v68[8];
  v43 = *(v70 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v41, 1, v71) == 1)
  {
    OUTLINED_FUNCTION_37_0(v41 + v43);
    if (!v48)
    {
      goto LABEL_24;
    }

    sub_1B8D9207C(v41, &qword_1EBAC8C38, &qword_1B96A85F8);
  }

  else
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v41 + v43);
    if (v48)
    {
      sub_1B9203B2C();
LABEL_24:
      v49 = &qword_1EBAC8C58;
      v50 = &qword_1B96A8608;
LABEL_25:
      v51 = v41;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_3_46();
    sub_1B9203930();
    v59 = *v67;
    v60 = *v66;
    sub_1B8D62AF8();
    if ((v61 & 1) == 0)
    {
      sub_1B9203B2C();
      sub_1B9203B2C();
      v49 = &qword_1EBAC8C38;
      v50 = &qword_1B96A85F8;
      goto LABEL_25;
    }

    v62 = *(v71 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_73();
    sub_1B920610C(v63, v64);
    v65 = sub_1B964C850();
    sub_1B9203B2C();
    sub_1B9203B2C();
    sub_1B8D9207C(v41, &qword_1EBAC8C38, &qword_1B96A85F8);
    if ((v65 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v44 = v68[6];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  sub_1B920610C(v45, v46);
  v47 = OUTLINED_FUNCTION_199_0();
LABEL_28:
  OUTLINED_FUNCTION_264(v47);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92067B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D90, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9206838(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92068A8()
{
  sub_1B920610C(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B9206934()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8B88);
  __swift_project_value_buffer(v0, qword_1EBAC8B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "print";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speak";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  sub_1B920610C(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9206D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9206DEC(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9206E5C()
{
  sub_1B920610C(&qword_1EBAC8C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);

  return sub_1B964C5D0();
}

uint64_t sub_1B9206EE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8BA0);
  __swift_project_value_buffer(v0, qword_1EBAC8BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.decodeMessage<A>(decoder:)()
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
      sub_1B9208BA4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8D15DE0();
    }
  }

  return result;
}

void Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  if (!*v1 || (OUTLINED_FUNCTION_58_9(*v1), sub_1B92060B8(), sub_1B964C680(), !v0))
  {
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
    v12 = *(v11 + 24);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_6:
      v15 = v1 + *(v11 + 20);
      sub_1B964C290();
      goto LABEL_7;
    }

    sub_1B9203930();
    OUTLINED_FUNCTION_2_45();
    sub_1B920610C(v13, v14);
    sub_1B964C740();
    sub_1B9203B2C();
    if (!v0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_112();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  if (!OUTLINED_FUNCTION_85_5())
  {
    goto LABEL_12;
  }

  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate(0);
  v19 = *(v35 + 24);
  v20 = *(v13 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_37_0(&v18[v20]);
    if (v21)
    {
      sub_1B8D9207C(v18, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_25:
      v31 = *(v35 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_73();
      sub_1B920610C(v32, v33);
      v24 = OUTLINED_FUNCTION_199_0();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v18[v20]);
  if (v21)
  {
    OUTLINED_FUNCTION_13_25();
    sub_1B9203B2C();
LABEL_10:
    v22 = &qword_1EBAB9010;
    v23 = &unk_1B964D800;
LABEL_11:
    sub_1B8D9207C(v18, v22, v23);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_61();
  sub_1B9203930();
  v25 = *v0 == *v8 && v0[1] == v8[1];
  if (!v25 && (sub_1B964C9F0() & 1) == 0 || (v0[2] == v8[2] ? (v26 = v0[3] == v8[3]) : (v26 = 0), !v26 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_14_23();
    sub_1B9203B2C();
    sub_1B9203B2C();
    v22 = &qword_1EBAB9008;
    v23 = &qword_1B96A8600;
    goto LABEL_11;
  }

  v27 = *(v2 + 24);
  v28 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  sub_1B920610C(v29, v30);
  sub_1B964C850();
  OUTLINED_FUNCTION_11_34();
  sub_1B9203B2C();
  sub_1B9203B2C();
  sub_1B8D9207C(v18, &qword_1EBAB9008, &qword_1B96A8600);
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_12:
  v24 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v24);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92076F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9207770(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92077E0()
{
  sub_1B920610C(&qword_1EBAC8C40, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B9207878()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8BB8);
  __swift_project_value_buffer(v0, qword_1EBAC8BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "source";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9207BD8();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9207B24();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9207B24()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  sub_1B920610C(&qword_1EBAC8C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0);
  v13 = *(SuggestionCandidate + 28);
  OUTLINED_FUNCTION_82_5();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
  }

  else
  {
    OUTLINED_FUNCTION_30_23();
    sub_1B9203930();
    OUTLINED_FUNCTION_2_45();
    sub_1B920610C(v14, v15);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    sub_1B9203B2C();
    if (v0)
    {
      goto LABEL_9;
    }
  }

  if (!*v1 || (OUTLINED_FUNCTION_58_9(*v1), sub_1B9209A34(), sub_1B964C680(), !v0))
  {
    v16 = v1[2];
    v17 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (sub_1B964C700(), !v0))
    {
      v19 = v1 + *(SuggestionCandidate + 24);
      sub_1B964C290();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v38 - v15);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_79();
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0);
  v20 = *(SuggestionCandidate + 28);
  v21 = v17[14];
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v22)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v21);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_61();
      sub_1B9203930();
      v26 = *v16 == *v10 && v16[1] == v10[1];
      if (v26 || (sub_1B964C9F0() & 1) != 0)
      {
        v27 = v16[2] == v10[2] && v16[3] == v10[3];
        if (v27 || (sub_1B964C9F0() & 1) != 0)
        {
          v28 = *(v4 + 24);
          v29 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_73();
          sub_1B920610C(v30, v31);
          sub_1B964C850();
          OUTLINED_FUNCTION_11_34();
          sub_1B9203B2C();
          OUTLINED_FUNCTION_686();
          sub_1B9203B2C();
          sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
          if ((v29 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_14_23();
      sub_1B9203B2C();
      sub_1B9203B2C();
      v23 = &qword_1EBAB9008;
      v24 = &qword_1B96A8600;
LABEL_10:
      sub_1B8D9207C(v2, v23, v24);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_13_25();
    sub_1B9203B2C();
LABEL_9:
    v23 = &qword_1EBAB9010;
    v24 = &unk_1B964D800;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v21);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_24:
  v32 = *v1;
  v33 = *v0;
  if (*(v1 + 8))
  {
    v32 = *v1 != 0;
  }

  if (*(v0 + 8) == 1)
  {
    if (v33)
    {
      if (v32 != 1)
      {
        goto LABEL_11;
      }
    }

    else if (v32)
    {
      goto LABEL_11;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_11;
  }

  v34 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v34 || (sub_1B964C9F0() & 1) != 0)
  {
    v35 = *(SuggestionCandidate + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_73();
    sub_1B920610C(v36, v37);
    v25 = OUTLINED_FUNCTION_199_0();
    goto LABEL_12;
  }

LABEL_11:
  v25 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9208238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92082B8(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9208328()
{
  sub_1B920610C(&qword_1EBAC8C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B92083A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8BD0);
  __swift_project_value_buffer(v0, qword_1EBAC8BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CANDIDATE_TYPE_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CANDIDATE_TYPE_ASR";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate(0), sub_1B920610C(&qword_1EBAC8C98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate), result = OUTLINED_FUNCTION_48_10(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B92087B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D70, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9208834(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92088A4()
{
  sub_1B920610C(&qword_1EBAC8C50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B920893C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8C00);
  __swift_project_value_buffer(v0, qword_1EBAC8C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
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

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_9();
      sub_1B9208BA4();
    }
  }

  return result;
}

uint64_t sub_1B9208BA4()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  OUTLINED_FUNCTION_2_45();
  sub_1B920610C(v2, v3);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(0);
  v14 = *(v13 + 24);
  OUTLINED_FUNCTION_82_5();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9008, &qword_1B96A8600);
  }

  else
  {
    OUTLINED_FUNCTION_30_23();
    sub_1B9203930();
    OUTLINED_FUNCTION_2_45();
    sub_1B920610C(v15, v16);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    sub_1B9203B2C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  if (*v1 == 0.0 || (sub_1B964C6B0(), !v0))
  {
    v17 = v1 + *(v13 + 20);
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance(0);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_137();
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9010, &unk_1B964D800) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_22_3();
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(v20);
  v21 = *(v36 + 24);
  v22 = v17[14];
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v0);
  if (!v23)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_61();
      sub_1B9203930();
      v27 = *v1 == *v12 && v1[1] == v12[1];
      if (v27 || (sub_1B964C9F0() & 1) != 0)
      {
        v28 = v1[2] == v12[2] && v1[3] == v12[3];
        if (v28 || (sub_1B964C9F0() & 1) != 0)
        {
          v29 = *(v6 + 24);
          v30 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_73();
          sub_1B920610C(v31, v32);
          sub_1B964C850();
          OUTLINED_FUNCTION_11_34();
          sub_1B9203B2C();
          sub_1B9203B2C();
          sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
          if ((v30 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_14_23();
      sub_1B9203B2C();
      sub_1B9203B2C();
      v24 = &qword_1EBAB9008;
      v25 = &qword_1B96A8600;
LABEL_10:
      sub_1B8D9207C(v0, v24, v25);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_13_25();
    sub_1B9203B2C();
LABEL_9:
    v24 = &qword_1EBAB9010;
    v25 = &unk_1B964D800;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBAB9008, &qword_1B96A8600);
LABEL_23:
  if (*v5 == *v3)
  {
    v33 = *(v36 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_73();
    sub_1B920610C(v34, v35);
    v26 = sub_1B964C850();
    goto LABEL_25;
  }

LABEL_11:
  v26 = 0;
LABEL_25:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92091B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D68, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9209234(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92092A4()
{
  sub_1B920610C(&qword_1EBAC8CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B920933C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B964D050;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "candidates";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v10);
  (*(v11 + 104))(v8, v9);
  return sub_1B964C760();
}

void sub_1B920951C()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1B92095B4();
    }
  }
}

void sub_1B92095B4()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v4(0);
  sub_1B920610C(v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate(0), sub_1B920610C(&qword_1EBAC8CB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestionCandidate), result = OUTLINED_FUNCTION_48_10(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9209714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_73();
  sub_1B920610C(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B92097EC()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B920610C(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92098C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920610C(&qword_1EBAC8D60, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9209944(uint64_t a1)
{
  v2 = sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92099B4()
{
  sub_1B920610C(&qword_1EBAC8C48, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion);

  return sub_1B964C5D0();
}

unint64_t sub_1B9209A34()
{
  result = qword_1EBAC8C88;
  if (!qword_1EBAC8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8C88);
  }

  return result;
}

unint64_t sub_1B9209A8C()
{
  result = qword_1ED9CA0F8;
  if (!qword_1ED9CA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA0F8);
  }

  return result;
}

unint64_t sub_1B9209AE4()
{
  result = qword_1ED9CA0E8;
  if (!qword_1ED9CA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA0E8);
  }

  return result;
}

unint64_t sub_1B9209B3C()
{
  result = qword_1ED9CA0F0;
  if (!qword_1ED9CA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA0F0);
  }

  return result;
}

unint64_t sub_1B9209BC4()
{
  result = qword_1EBAC8CD0;
  if (!qword_1EBAC8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8CD0);
  }

  return result;
}

unint64_t sub_1B9209C1C()
{
  result = qword_1EBAC8CD8;
  if (!qword_1EBAC8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8CD8);
  }

  return result;
}

unint64_t sub_1B9209C74()
{
  result = qword_1EBAC8CE0;
  if (!qword_1EBAC8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8CE0);
  }

  return result;
}

void sub_1B920A510()
{
  sub_1B920A664(319, &qword_1ED9D3988, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B920A664(319, qword_1ED9D52E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B920A664(319, qword_1ED9D4F58, type metadata accessor for Apple_Parsec_Siri_V2alpha_RelatedQuestionSuggestion, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B920A664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B920A74C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B920A664(319, &qword_1ED9D4ED8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_31Tm_0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t __swift_store_extra_inhabitant_index_32Tm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 20);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9008, &qword_1B96A8600);
    v12 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

void sub_1B920A9EC()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B920A664(319, &qword_1ED9D4ED8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_56Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_1B920AB60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B920A664(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_42_11()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v3 = v0 + *(v1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_48_10()
{

  return sub_1B964C730();
}

void OUTLINED_FUNCTION_58_9(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *(v2 - 96) = a1;
  *(v2 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_82_5()
{

  return sub_1B8D92024();
}

BOOL OUTLINED_FUNCTION_85_5()
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *v0;
  v6 = *(v0 + 8);

  return sub_1B8D58018(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_86_7()
{

  return sub_1B9203930();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus.rawValue.getter()
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

uint64_t sub_1B920AE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920D9A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920AF18@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B920AF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920D9F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B02C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B920B094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920F484();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B174@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B920B1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920F4D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B2A4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioEntitySource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B920B2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B920F52C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B920B3D4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.xpAbCookie.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.xpAbCookie.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.eligibleOffers.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.itfeCookie.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.itfeCookie.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0) + 60);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(v2) + 60);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_AmpUserState.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(v0) + 60);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 80) = 0;
  *(v1 + 88) = v3;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v4 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0) + 60);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.source.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.source.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  sub_1B920BC40(v1 + *(v9 + 44), v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (!v13)
  {
    return sub_1B920BCD0(v8, a1);
  }

  OUTLINED_FUNCTION_27_12();
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = v14;
  v15 = a1 + *(v10 + 36);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v16 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v16, v17, v10);
  if (!v13)
  {
    return sub_1B8D9207C(v8, &qword_1EBAC8DD8, &qword_1B96A95E0);
  }

  return result;
}

uint64_t sub_1B920BAD8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B920BF80(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v2) + 44);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC8DD8, &qword_1B96A95E0);
  sub_1B920BCD0(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_27_12();
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B920BC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B920BCD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0) + 44);
  *(v3 + 10) = v11;
  sub_1B920BC40(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    *(v10 + 56) = 1;
    v10[8] = 0;
    v10[9] = 0xE000000000000000;
    v15 = v10 + *(v7 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC8DD8, &qword_1B96A95E0);
    }
  }

  else
  {
    sub_1B920BCD0(v6, v10);
  }

  return sub_1B920BEA0;
}

void sub_1B920BEA0(uint64_t **a1, char a2)
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
    sub_1B920BF80((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAC8DD8, &qword_1B96A95E0);
    sub_1B920BCD0(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B920BFE4(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAC8DD8, &qword_1B96A95E0);
    sub_1B920BCD0(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B920BF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B920BFE4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.hasAudioQueueStateItem.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  sub_1B920BC40(v0 + *(v7 + 44), v6);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
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

  sub_1B8D9207C(v6, &qword_1EBAC8DD8, &qword_1B96A95E0);
  return v12;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.clearAudioQueueStateItem()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0) + 44);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC8DD8, &qword_1B96A95E0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.currentListeningToContainer.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0) + 40);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v2) + 40);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v0) + 40);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = sub_1B964C7B0();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  v4 = v1 + *(v3 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 44);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);

  return __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.artist.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.artist.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0) + 36);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(v2) + 36);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(v0) + 36);
  return nullsub_1;
}

uint64_t sub_1B920C570()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4068);
  __swift_project_value_buffer(v0, qword_1EBAB4068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AMP_SUBSCRIPTION_STATUS_UNKNOWN";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AMP_SUBSCRIPTION_STATUS_ACTIVE";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920C760()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8DC0);
  __swift_project_value_buffer(v0, qword_1EBAC8DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ITUNES_MATCH_SUBSCRIPTION_STATUS_UNKNOWN";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ITUNES_MATCH_SUBSCRIPTION_STATUS_ACTIVE";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920C950()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4AC8);
  __swift_project_value_buffer(v0, qword_1EBAB4AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_STATE_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_STATE_PLAYING";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_STATE_PAUSED";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_STATE_STOPPED";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_STATE_INTERRUPTED";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_STATE_MUTED";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920CC34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB44B8);
  __swift_project_value_buffer(v0, qword_1EBAB44B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_ENTITY_SOURCE_UNSPECIFIED";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_ENTITY_SOURCE_LOCALE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_ENTITY_SOURCE_RADIO";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_ENTITY_SOURCE_LOCAL";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920CE98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3E98);
  __swift_project_value_buffer(v0, qword_1EBAB3E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_QUEUE_STATE_ITEM_TYPE_UNSPECIFIED";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_QUEUE_STATE_ITEM_TYPE_ADVERTISEMENT";
  *(v10 + 8) = 41;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_QUEUE_STATE_ITEM_TYPE_AUDIOBOOK";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_QUEUE_STATE_ITEM_TYPE_EPISODE";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_QUEUE_STATE_ITEM_TYPE_MUSIC_MOVIE";
  *(v16 + 1) = 39;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_QUEUE_STATE_ITEM_TYPE_PODCAST";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_QUEUE_STATE_ITEM_TYPE_SONG";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B920D1D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB47D8);
  __swift_project_value_buffer(v0, qword_1EBAB47D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "amp_subscription_status";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user_token";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "shared_user_id";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "itunes_subscription_status";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_user_history_modifiable";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "xp_ab_cookie";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_default_user";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "eligible_offers";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "is_subscribed_to_glide";
  *(v23 + 1) = 22;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "itfe_cookie";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "token_error_code";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.decodeMessage<A>(decoder:)()
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
        sub_1B920D6E0();
        break;
      case 2:
      case 3:
      case 6:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B920D748();
        break;
      case 5:
      case 7:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AmpUserState.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v17 = *v0, v19 = *(v2 + 8), sub_1B920D9A0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        if (!*(v2 + 48) || (v18 = *(v2 + 48), v20 = *(v2 + 56), sub_1B920D9F4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          if (*(v2 + 57) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            v10 = *(v2 + 64);
            v11 = *(v2 + 72);
            OUTLINED_FUNCTION_1();
            if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
            {
              if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
              {
                if (!*(*(v2 + 88) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
                {
                  if (*(v2 + 96) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                  {
                    v13 = *(v2 + 104);
                    v14 = *(v2 + 112);
                    OUTLINED_FUNCTION_1();
                    if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
                    {
                      if (!*(v2 + 120) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                      {
                        v16 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0) + 60);
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
      }
    }
  }

  return result;
}

unint64_t sub_1B920D9A0()
{
  result = qword_1EBAB4058;
  if (!qword_1EBAB4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4058);
  }

  return result;
}

unint64_t sub_1B920D9F4()
{
  result = qword_1EBAC8DE0;
  if (!qword_1EBAC8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8DE0);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AmpUserState.== infix(_:_:)()
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

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 48);
  v11 = *(v0 + 48);
  if (*(v1 + 56))
  {
    v10 = v10 != 0;
  }

  if (*(v0 + 56) == 1)
  {
    if (v11)
    {
      if (v10 != 1)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  if (*(v1 + 57) == *(v0 + 57))
  {
    v12 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
    if (v12 || (sub_1B964C9F0()) && *(v1 + 80) == *(v0 + 80) && (sub_1B8D6123C(*(v1 + 88), *(v0 + 88)) & 1) != 0 && *(v1 + 96) == *(v0 + 96))
    {
      v13 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
      if (v13 || (sub_1B964C9F0()) && *(v1 + 120) == *(v0 + 120))
      {
        v14 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState(0) + 60);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_47();
        sub_1B8CD2C78(v15, v16);
        return OUTLINED_FUNCTION_634() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B920DCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C78(&qword_1EBAC8E98, type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B920DD38(uint64_t a1)
{
  v2 = sub_1B8CD2C78(&qword_1EBAB47C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B920DDA8()
{
  sub_1B8CD2C78(&qword_1EBAB47C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState);

  return sub_1B964C5D0();
}

uint64_t sub_1B920DE34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB42A8);
  __swift_project_value_buffer(v0, qword_1EBAB42A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "state";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "application_identifier";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "now_playing_queue_index";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "now_playing_queue_count";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "audio_queue_state_item";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "current_listening_to_container";
  *(v21 + 1) = 30;
  v21[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.decodeMessage<A>(decoder:)()
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
        sub_1B920E234();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B920E29C();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B920E304();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B9065268();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B920E304()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0) + 44);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v1 || (v16 = *(v3 + 8), v23 = *v1, v24 = v16, sub_1B920F484(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
  {
    if (!*(v3 + 16) || (v18 = *(v3 + 24), v23 = *(v3 + 16), v24 = v18, sub_1B920F4D8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
    {
      v19 = *(v3 + 32);
      v20 = *(v3 + 40);
      OUTLINED_FUNCTION_1();
      if (!v21 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
      {
        if (!*(v3 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v2) == 0))
        {
          if (!*(v3 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v2) == 0))
          {
            v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
            sub_1B920BC40(v3 + *(v25 + 44), v9);
            if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
            {
              sub_1B8D9207C(v9, &qword_1EBAC8DD8, &qword_1B96A95E0);
            }

            else
            {
              sub_1B920BCD0(v9, v15);
              sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);
              OUTLINED_FUNCTION_687();
              sub_1B964C740();
              v0 = v2;
              result = sub_1B920BFE4(v15);
              if (v2)
              {
                return result;
              }
            }

            if (!*(*(v3 + 56) + 16) || (sub_1B964C280(), result = sub_1B964C5F0(), !v0))
            {
              v22 = v3 + *(v25 + 40);
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DD8, &qword_1B96A95E0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8DF0, &qword_1B96A95E8);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = *v1;
  v21 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v21)
    {
      case 1:
        if (v20 != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 2:
        if (v20 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 3:
        if (v20 != 3)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 4:
        if (v20 != 4)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      case 5:
        if (v20 != 5)
        {
          goto LABEL_46;
        }

        goto LABEL_6;
      default:
        if (!v20)
        {
          goto LABEL_6;
        }

        goto LABEL_46;
    }
  }

  if (v20 != v21)
  {
    goto LABEL_46;
  }

LABEL_6:
  v22 = v1[2];
  v23 = v0[2];
  if (*(v0 + 24) == 1)
  {
    switch(v23)
    {
      case 1:
        if (v22 != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_11;
      case 2:
        if (v22 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_11;
      case 3:
        if (v22 != 3)
        {
          goto LABEL_46;
        }

        goto LABEL_11;
      default:
        if (!v22)
        {
          goto LABEL_11;
        }

        goto LABEL_46;
    }
  }

  if (v22 != v23)
  {
LABEL_46:
    v36 = 0;
    return v36 & 1;
  }

LABEL_11:
  OUTLINED_FUNCTION_40_5();
  v26 = v26 && v24 == v25;
  if (!v26 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 12) != *(v0 + 12) || *(v1 + 13) != *(v0 + 13))
  {
    goto LABEL_46;
  }

  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  v28 = *(v27 + 44);
  v29 = *(v14 + 48);
  sub_1B920BC40(v1 + v28, v19);
  sub_1B920BC40(v0 + v28, &v19[v29]);
  OUTLINED_FUNCTION_178(v19, 1, v2);
  if (v26)
  {
    OUTLINED_FUNCTION_178(&v19[v29], 1, v2);
    if (v26)
    {
      sub_1B8D9207C(v19, &qword_1EBAC8DD8, &qword_1B96A95E0);
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  sub_1B920BC40(v19, v13);
  OUTLINED_FUNCTION_178(&v19[v29], 1, v2);
  if (v30)
  {
    sub_1B920BFE4(v13);
LABEL_42:
    sub_1B8D9207C(v19, &qword_1EBAC8DF0, &qword_1B96A95E8);
    goto LABEL_46;
  }

  sub_1B920BCD0(&v19[v29], v7);
  v31 = static Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.== infix(_:_:)();
  sub_1B920BFE4(v7);
  sub_1B920BFE4(v13);
  sub_1B8D9207C(v19, &qword_1EBAC8DD8, &qword_1B96A95E0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_44:
  sub_1B8DB02F8(v1[7], v0[7]);
  if ((v32 & 1) == 0)
  {
    goto LABEL_46;
  }

  v33 = *(v27 + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_47();
  sub_1B8CD2C78(v34, v35);
  v36 = OUTLINED_FUNCTION_634();
  return v36 & 1;
}

uint64_t sub_1B920EAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C78(&qword_1EBAC8E90, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B920EB28(uint64_t a1)
{
  v2 = sub_1B8CD2C78(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B920EB98()
{
  sub_1B8CD2C78(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B920EC24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4278);
  __swift_project_value_buffer(v0, qword_1EBAB4278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "artist";
  *(v6 + 8) = 6;
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
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "audio_queue_state_item_type";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "album";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.decodeMessage<A>(decoder:)()
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
      case 3:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B920EF6C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        if (!*(v2 + 48) || (v17 = *(v2 + 48), v18 = *(v2 + 56), sub_1B920F52C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          v13 = *(v2 + 64);
          v14 = *(v2 + 72);
          OUTLINED_FUNCTION_1();
          if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v16 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0) + 36);
            OUTLINED_FUNCTION_12();
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v7 = v3 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v0 + 56);
  if (!sub_1B8D92198(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
  {
    return 0;
  }

  v9 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_47();
  sub_1B8CD2C78(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B920F230(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2C78(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B920F314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2C78(&qword_1EBAC8E88, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B920F394(uint64_t a1)
{
  v2 = sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B920F404()
{
  sub_1B8CD2C78(&qword_1EBAB4268, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem);

  return sub_1B964C5D0();
}

unint64_t sub_1B920F484()
{
  result = qword_1EBAB4AB8;
  if (!qword_1EBAB4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4AB8);
  }

  return result;
}

unint64_t sub_1B920F4D8()
{
  result = qword_1EBAB44A8;
  if (!qword_1EBAB44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB44A8);
  }

  return result;
}

unint64_t sub_1B920F52C()
{
  result = qword_1EBAB3E88;
  if (!qword_1EBAB3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3E88);
  }

  return result;
}

unint64_t sub_1B920F584()
{
  result = qword_1EBAB4050;
  if (!qword_1EBAB4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4050);
  }

  return result;
}

unint64_t sub_1B920F5DC()
{
  result = qword_1EBAB4040;
  if (!qword_1EBAB4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4040);
  }

  return result;
}

unint64_t sub_1B920F634()
{
  result = qword_1EBAB4048;
  if (!qword_1EBAB4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4048);
  }

  return result;
}

unint64_t sub_1B920F6BC()
{
  result = qword_1EBAC8E18;
  if (!qword_1EBAC8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8E18);
  }

  return result;
}

unint64_t sub_1B920F714()
{
  result = qword_1EBAC8E20;
  if (!qword_1EBAC8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8E20);
  }

  return result;
}

unint64_t sub_1B920F76C()
{
  result = qword_1EBAC8E28;
  if (!qword_1EBAC8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC8E28);
  }

  return result;
}

unint64_t sub_1B920F7F4()
{
  result = qword_1EBAB4AB0;
  if (!qword_1EBAB4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4AB0);
  }

  return result;
}

unint64_t sub_1B920F84C()
{
  result = qword_1EBAB4AA0;
  if (!qword_1EBAB4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4AA0);
  }

  return result;
}

unint64_t sub_1B920F8A4()
{
  result = qword_1EBAB4AA8;
  if (!qword_1EBAB4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4AA8);
  }

  return result;
}

unint64_t sub_1B920F92C()
{
  result = qword_1EBAB44A0;
  if (!qword_1EBAB44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB44A0);
  }

  return result;
}

unint64_t sub_1B920F984()
{
  result = qword_1EBAB4490;
  if (!qword_1EBAB4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4490);
  }

  return result;
}

unint64_t sub_1B920F9DC()
{
  result = qword_1EBAB4498;
  if (!qword_1EBAB4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4498);
  }

  return result;
}

unint64_t sub_1B920FA64()
{
  result = qword_1EBAB3E80;
  if (!qword_1EBAB3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3E80);
  }

  return result;
}

unint64_t sub_1B920FABC()
{
  result = qword_1EBAB3E70;
  if (!qword_1EBAB3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3E70);
  }

  return result;
}

unint64_t sub_1B920FB14()
{
  result = qword_1EBAB3E78;
  if (!qword_1EBAB3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3E78);
  }

  return result;
}

void sub_1B920FF70()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B921006C()
{
  sub_1B901FE74();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B921013C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B921013C()
{
  if (!qword_1ED9EBD28)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9EBD28);
    }
  }
}

uint64_t sub_1B92101BC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_27_12()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.notes.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  sub_1B92104F8(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v10 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    return sub_1B9210568(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(v9 + 20);
  if (qword_1EBAB7978 != -1)
  {
    OUTLINED_FUNCTION_3_44();
  }

  *(a1 + v12) = qword_1EBAC8618;
  v13 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v9);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation()
{
  result = qword_1EBAC8ED8;
  if (!qword_1EBAC8ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B92104F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9210568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92105CC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9210948(a1, v5);
  return Apple_Parsec_Siri_V2alpha_ParkingLocation.location.setter(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation() + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9018, &unk_1B96A6290);
  sub_1B9210568(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Siri_V2alpha_ParkingLocation.location.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation() + 24);
  *(v3 + 10) = v11;
  sub_1B92104F8(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EBAB7978 != -1)
    {
      OUTLINED_FUNCTION_3_44();
    }

    *&v10[v12] = qword_1EBAC8618;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9018, &unk_1B96A6290);
    }
  }

  else
  {
    sub_1B9210568(v6, v10);
  }

  return sub_1B9210868;
}

void sub_1B9210868(uint64_t **a1, char a2)
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
    sub_1B9210948((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAB9018, &unk_1B96A6290);
    sub_1B9210568(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B92109AC(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAB9018, &unk_1B96A6290);
    sub_1B9210568(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B9210948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92109AC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Parsec_Siri_V2alpha_ParkingLocation.hasLocation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  sub_1B92104F8(v0 + *(v6 + 24), v1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBAB9018, &unk_1B96A6290);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ParkingLocation.clearLocation()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation() + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB9018, &unk_1B96A6290);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation() + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation() + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1B9210CDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8EA0);
  __swift_project_value_buffer(v0, qword_1EBAC8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notes";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_ParkingLocation._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7A60 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC8EA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1B9210FD4();
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9210FD4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation() + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  sub_1B9211A34(&qword_1EBAC8788, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v18 = v3[1];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || (result = sub_1B964C700(), !v2))
  {
    v23[1] = a1;
    v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
    sub_1B92104F8(v3 + *(v21 + 24), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB9018, &unk_1B96A6290);
    }

    else
    {
      sub_1B9210568(v10, v16);
      sub_1B9211A34(&qword_1EBAC8788, type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
      sub_1B964C740();
      result = sub_1B92109AC(v16);
      if (v2)
      {
        return result;
      }
    }

    v22 = v3 + *(v21 + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ParkingLocation.== infix(_:_:)(void *a1, void *a2)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9018, &unk_1B96A6290);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9020, &unk_1B964D810);
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_88();
  v21 = *a1 == *a2 && a1[1] == a2[1];
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v23 = *(v22 + 24);
  v24 = *(v17 + 48);
  sub_1B92104F8(a1 + v23, v2);
  sub_1B92104F8(a2 + v23, v2 + v24);
  v25 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v25, v26, v5) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v2 + v24, 1, v5) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
LABEL_17:
      v36 = *(v22 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_62();
      sub_1B9211A34(v37, v38);
      v29 = sub_1B964C850();
      return v29 & 1;
    }

    goto LABEL_11;
  }

  sub_1B92104F8(v2, v16);
  if (__swift_getEnumTagSinglePayload(v2 + v24, 1, v5) == 1)
  {
    sub_1B92109AC(v16);
LABEL_11:
    v27 = &qword_1EBAB9020;
    v28 = &unk_1B964D810;
LABEL_12:
    sub_1B8D9207C(v2, v27, v28);
    goto LABEL_13;
  }

  sub_1B9210568(v2 + v24, v10);
  v30 = *(v5 + 20);
  if (*&v16[v30] != *&v10[v30])
  {
    v31 = *&v16[v30];

    v32 = sub_1B91F6CF8();

    if (!v32)
    {
      sub_1B92109AC(v10);
      sub_1B92109AC(v16);
      v27 = &qword_1EBAB9018;
      v28 = &unk_1B96A6290;
      goto LABEL_12;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_62();
  sub_1B9211A34(v33, v34);
  v35 = sub_1B964C850();
  sub_1B92109AC(v10);
  sub_1B92109AC(v16);
  sub_1B8D9207C(v2, &qword_1EBAB9018, &unk_1B96A6290);
  if (v35)
  {
    goto LABEL_17;
  }

LABEL_13:
  v29 = 0;
  return v29 & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ParkingLocation.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  sub_1B9211A34(&qword_1EBAC8EB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9211690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9211A34(&qword_1EBAC8EE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9211710(uint64_t a1)
{
  v2 = sub_1B9211A34(&qword_1EBAC8EC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9211780()
{
  sub_1B9211A34(&qword_1EBAC8EC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation);

  return sub_1B964C5D0();
}

void sub_1B9211948()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B92119DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92119DC()
{
  if (!qword_1ED9EB878)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9EB878);
    }
  }
}

uint64_t sub_1B9211A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.originalWaypointRoute.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.originalWaypointRoute.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.sessionState.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.sessionState.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.routeID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.routeID.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.etaFilter.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.etaFilter.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.evChargingMetadata.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.evChargingMetadata.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo()
{
  result = qword_1EBAC8F28;
  if (!qword_1EBAC8F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  a1[1] = xmmword_1B9652FE0;
  a1[2] = xmmword_1B9652FE0;
  a1[3] = xmmword_1B9652FE0;
  a1[4] = xmmword_1B9652FE0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo() + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9211F04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC8EF0);
  __swift_project_value_buffer(v0, qword_1EBAC8EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "original_waypoint_route";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "session_state";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "route_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "eta_filter";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ev_charging_metadata";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_RouteInfo._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7A68 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC8EF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 4:
      case 5:
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = *v0;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_616();
  if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(), !v1))
  {
    v8 = v2[2];
    v9 = v2[3];
    v10 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v10, v11) || (OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(), !v1))
    {
      v12 = v2[4];
      v13 = v2[5];
      v14 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v14, v15) || (OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(), !v1))
      {
        v16 = v2[6];
        v17 = v2[7];
        v18 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v18, v19) || (OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(), !v1))
        {
          v20 = v2[8];
          v21 = v2[9];
          v22 = OUTLINED_FUNCTION_616();
          if (sub_1B8D99EA8(v22, v23) || (OUTLINED_FUNCTION_616(), result = OUTLINED_FUNCTION_0_74(), !v1))
          {
            v24 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo() + 36);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_RouteInfo.== infix(_:_:)(void *a1, void *a2)
{
  if ((MEMORY[0x1BFADC060](*a1, a1[1], *a2, a2[1]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[4], a1[5], a2[4], a2[5]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[6], a1[7], a2[6], a2[7]) & 1) == 0 || (MEMORY[0x1BFADC060](a1[8], a1[9], a2[8], a2[9]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo() + 36);
  sub_1B964C2B0();
  sub_1B8CD2CC0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_RouteInfo.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo();
  sub_1B8CD2CC0(&qword_1EBAC8F08, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92125D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2CC0(&qword_1EBAC8F38, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9212658(uint64_t a1)
{
  v2 = sub_1B8CD2CC0(&qword_1EBAC8F18, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92126C8()
{
  sub_1B8CD2CC0(&qword_1EBAC8F18, type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9212890()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return sub_1B964C6A0();
}

uint64_t sub_1B9212978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9284470();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212A58@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriEnvironment.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_RestrictionCategory.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 6:
      a2 = 5;
      break;
    case 7:
      a2 = 6;
      break;
    case 8:
      a2 = 7;
      break;
    case 9:
      a2 = 8;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_RestrictionCategory.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96B24D0[result];
  }

  return result;
}

uint64_t sub_1B9212B10@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_RestrictionCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9212B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927ACC4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212C3C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RestrictionCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9212C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927AD18();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212D6C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RestrictionReason.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_RequestType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 4:
      a2 = 3;
      break;
    case 5:
      a2 = 4;
      break;
    case 6:
      a2 = 5;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_RequestType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96B24A0[result];
  }

  return result;
}

uint64_t sub_1B9212E18@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_RequestType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9212E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B928441C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9212F48@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RequestType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9212F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92843C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B921305C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ResponseType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92130AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927ADC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B921318C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_UIItemType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92131C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9284374();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92132A0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_DialogIntent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92132E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B927AE68();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92133C4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AppEntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ConversationContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Apple_Parsec_Siri_V2alpha_DeviceState.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC93F0, &qword_1B96AA6B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F0, &qword_1B96AA6B0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_219_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  OUTLINED_FUNCTION_248_2(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_114_0();
    *(v12 + 32) = 0;
    *(v12 + 40) = v18;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = v18;
    v19 = v12 + *(v0 + 72);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = *(v0 + 76);
    v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
    OUTLINED_FUNCTION_6_19(v21);
    if (!v17)
    {
      sub_1B8D9207C(v1, &qword_1EBAC93F0, &qword_1B96AA6B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasDeviceState.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearDeviceState()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F0, &qword_1B96AA6B0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isNavigationMode.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9213BA4(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_77_0(v6);
  v7 = *a2;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v7);
}

void sub_1B9213C34()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  OUTLINED_FUNCTION_134_2();
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v0 + v3);
  if ((v10 & 1) == 0)
  {
    v12 = v2(0);
    OUTLINED_FUNCTION_57_0(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v14 = v1(v13);
    OUTLINED_FUNCTION_192_2(v14);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v11 + v5) = v7 & 1;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.treatRandomAsFirst.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9213D54()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  OUTLINED_FUNCTION_134_2();
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 72);
  v8 = *(*v4 + 84);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v5 + 80);
    v13 = *(v5 + 72);
    v14 = v1(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = v0(v15);
    *(v13 + v12) = v11;
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v11 + v3) = v8;
  OUTLINED_FUNCTION_283();

  free(v16);
}

void sub_1B9213E2C(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.dialogState.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.dialogState.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9213F74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.assistantID.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.assistantID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_590_0(v12);
    a1[8] = 0;
    a1[9] = v13;
    a1[10] = MEMORY[0x1E69E7CC0];
    a1[11] = 0;
    a1[12] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC93F8, &qword_1B96AA6B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_199_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t sub_1B92141A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_167_3();
  v10 = v9(0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9239DFC();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F8, &qword_1B96AA6B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_199_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  OUTLINED_FUNCTION_248_2(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_593_1(v18);
    v12[8] = 0;
    v12[9] = v19;
    v12[10] = MEMORY[0x1E69E7CC0];
    v12[11] = 0;
    v12[12] = v19;
    v20 = v12 + *(v0 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v1, &qword_1EBAC93F8, &qword_1B96AA6B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_199_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9214484()
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
    sub_1B9239DFC();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B9239E50();
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

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasPerson.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearPerson()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC93F8, &qword_1B96AA6B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B92146A8(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = (*(v2 + *(v5(v4) + 20)) + *a2);
  OUTLINED_FUNCTION_6_2();
  v8 = *v6;
  v7 = v6[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B9214700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.interactionID.setter();
}

void sub_1B9214788()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v10 = OUTLINED_FUNCTION_112();
  v12 = *(v11(v10) + 20);
  v13 = *(v1 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = v8(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v15 = v6(v17);
    *(v9 + v12) = v15;
  }

  v18 = (v15 + *v4);
  OUTLINED_FUNCTION_18();
  v19 = v18[1];
  *v18 = v2;
  v18[1] = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.interactionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9214900(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_77_0(v6);
  v7 = *a2;
  OUTLINED_FUNCTION_10_4();
  v8 = *(v2 + v7);
}

void sub_1B921494C(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.setter();
}

void sub_1B92149C0()
{
  OUTLINED_FUNCTION_184_0();
  v6 = v5;
  OUTLINED_FUNCTION_134_2();
  v7 = OUTLINED_FUNCTION_313();
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v1 + v4);
  if ((v10 & 1) == 0)
  {
    v12 = v3(0);
    OUTLINED_FUNCTION_57_0(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v14 = v2(v13);
    OUTLINED_FUNCTION_192_2(v14);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  v15 = *(v11 + v6);
  *(v11 + v6) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    v12 = a1 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9400, &qword_1B96AA6C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_198_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9400, &qword_1B96AA6C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_198_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.multiUserContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  OUTLINED_FUNCTION_248_2(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    v18 = v12 + *(v0 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v1, &qword_1EBAC9400, &qword_1B96AA6C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_198_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasMultiUserContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearMultiUserContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9400, &qword_1B96AA6C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9408, &qword_1B96AA6C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_197_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9408, &qword_1B96AA6C8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_197_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  OUTLINED_FUNCTION_248_2(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v18 = v12 + *(v0 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v1, &qword_1EBAC9408, &qword_1B96AA6C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_197_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasContentRatingRestrictions.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearContentRatingRestrictions()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9408, &qword_1B96AA6C8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPushOffRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.userGroundingNeeded.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9215674(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.resultCandidateID.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.resultCandidateID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isPhoneCallActive.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B92158D0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + *(a1(0) + 20)) + *a2;
  result = OUTLINED_FUNCTION_6_2();
  v7 = *(v5 + 8);
  *a3 = *v5;
  *(a3 + 8) = v7;
  return result;
}

void sub_1B9215980()
{
  OUTLINED_FUNCTION_184_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v11(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = v6(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v15 = v4(v17);
    *(v7 + v12) = v15;
  }

  v18 = v15 + *v2;
  OUTLINED_FUNCTION_18();
  *v18 = v9;
  *(v18 + 8) = v10;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriResponseMode.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9215AC0()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_238(v5);
  v7 = *(v6 + 72);
  v8 = *(v0 + 84);
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v11 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v0 + 84);
    v15 = *(v0 + 88);
    v16 = v2(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v13 = v1(v17);
    *(v15 + v14) = v13;
  }

  v18 = v13 + *v4;
  OUTLINED_FUNCTION_18();
  *v18 = v7;
  *(v18 + 8) = v10;
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isSaeRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.conversationContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_520_1();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9410, &unk_1B96AA6D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_196_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.conversationContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9410, &unk_1B96AA6D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_196_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusContext.conversationContext.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_491();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_306_1(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  OUTLINED_FUNCTION_248_2(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_576_1();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC9410, &unk_1B96AA6D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_196_4();
    OUTLINED_FUNCTION_461();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.hasConversationContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_248_2(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusContext.clearConversationContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9410, &unk_1B96AA6D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9239418(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType.rawValue.getter()
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

uint64_t sub_1B9216174@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92161A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9284320();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B92162C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_Restriction.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_Restriction.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Restriction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_Restriction.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9216504()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9216588()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_POMMESRequestContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_VisualSearchContext.visualQuery.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v9) + 20);
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = xmmword_1B9652FE0;
    v13 = a1 + *(Lite + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_584_0();
    v15 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v14);
    OUTLINED_FUNCTION_249_3(v15);
    v16 = OUTLINED_FUNCTION_245_2();
    v17 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v16);
    result = OUTLINED_FUNCTION_11_31(v17);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9418, &unk_1B96B5780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_472();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VisualSearchContext.visualQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC9418, &unk_1B96B5780);
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_122_0();
  sub_1B9239DA8();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_VisualSearchContext.visualQuery.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v9);
  *(v1 + 16) = Lite;
  OUTLINED_FUNCTION_59_1(Lite);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v16);
  OUTLINED_FUNCTION_116_0(*(v17 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    *v12 = xmmword_1B9652FE0;
    OUTLINED_FUNCTION_282_2();
    v19 = OUTLINED_FUNCTION_526_0();
    type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v19);
    v20 = OUTLINED_FUNCTION_87_5();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_233_0();
    v25 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v24);
    OUTLINED_FUNCTION_6_19(v25);
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9418, &unk_1B96B5780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B92168F0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9239DFC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC9418, &unk_1B96B5780);
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_505_1();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_194_4();
    sub_1B9239E50();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC9418, &unk_1B96B5780);
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_506_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9216B48()
{
  OUTLINED_FUNCTION_92_0();
  v1 = v0(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(0) + 20));
  OUTLINED_FUNCTION_10_4();
  v2 = *(v1 + 16);
}

uint64_t sub_1B9216BC4(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_433_1(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B923FB18(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 16);
  *(v5 + 16) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9216CC0(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 56);
      OUTLINED_FUNCTION_241_3();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B923FB18(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_59_3();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_193_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_193_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.query.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    v15[8] = 0;
    v17 = MEMORY[0x1E69E7CC0];
    *(v15 + 5) = 0;
    *(v15 + 6) = v17;
    v15[14] = 0;
    *(v15 + 8) = v17;
    *(v15 + 9) = v17;
    v18 = v15 + *(v0 + 48);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v0 + 52);
    v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
    OUTLINED_FUNCTION_6_19(v20);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_193_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasQuery.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearQuery()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_29_14(Context);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_192_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v10);
  OUTLINED_FUNCTION_135_0(Context);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_192_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasQueryContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_11(Context);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearQueryContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_274_1(Context);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.userDataShareOptIn.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92177B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5B98 != -1)
    {
      OUTLINED_FUNCTION_431_0();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &unk_1EBAC9420, &qword_1B96AA6E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_191_4();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9420, &qword_1B96AA6E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_191_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5B98 != -1)
    {
      OUTLINED_FUNCTION_431_0();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &unk_1EBAC9420, &qword_1B96AA6E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_191_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasSiriPegasusContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearSiriPegasusContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9420, &qword_1B96AA6E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriEnvironment.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isSiriInternalRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.isDataOnlyRequest.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92180C4(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.trialIdentifiers.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.trialIdentifiers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5940 != -1)
    {
      OUTLINED_FUNCTION_430_0();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9428, &qword_1B96AA6E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9428, &qword_1B96AA6E8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_189_2();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5940 != -1)
    {
      OUTLINED_FUNCTION_430_0();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC9428, &qword_1B96AA6E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasClientConversationContextInfo.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearClientConversationContextInfo()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9428, &qword_1B96AA6E8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.requestType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &unk_1EBAC9430, &qword_1B96AA6F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_187_3();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9430, &qword_1B96AA6F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_187_3();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &unk_1EBAC9430, &qword_1B96AA6F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_187_3();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasPommesRequestContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearPommesRequestContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9430, &qword_1B96AA6F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.visualSearchContext.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_165_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  OUTLINED_FUNCTION_57(v0);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
    result = OUTLINED_FUNCTION_11_31(Lite);
    if (!v9)
    {
      return sub_1B8D9207C(v0, &unk_1EBAC9438, &qword_1B96AA6F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_7();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.visualSearchContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9438, &qword_1B96AA6F8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_186_4();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.visualSearchContext.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
    OUTLINED_FUNCTION_6_19(Lite);
    if (!v15)
    {
      sub_1B8D9207C(v1, &unk_1EBAC9438, &qword_1B96AA6F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_186_4();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasVisualSearchContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearVisualSearchContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9438, &qword_1B96AA6F8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC9440, &qword_1B96AA700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_185_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9440, &qword_1B96AA700);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_185_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.asrContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9440, &qword_1B96AA700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_185_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasAsrContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearAsrContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9440, &qword_1B96AA700);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.searchConversationContext.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_455_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_105_6();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.searchConversationContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_94_10();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_490_1(MEMORY[0x1E69E7CC0]);
    v15 = OUTLINED_FUNCTION_526_0();
    v16 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v15);
    OUTLINED_FUNCTION_6_19(v16);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9448, &qword_1B96AA708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_6();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.hasSearchConversationContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_165_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearSearchConversationContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_433_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_241_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B923FB18(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B9219A24@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_103_3();
  result = OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92452BC(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v4) + 20);
  *(v1 + 84) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0();
  v7 = *(v6 + 24);
  *(v1 + 72) = *(v6 + 16);
  *(v1 + 80) = v7;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9219BD8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_245_3();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92452BC(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_11_4();
  *(v9 + 16) = v3;
  *(v9 + 24) = v6;
  OUTLINED_FUNCTION_242();

  free(v13);
}

void sub_1B9219C94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryID.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    OUTLINED_FUNCTION_520_1();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9450, &qword_1B96AA710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_5();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9450, &qword_1B96AA710);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B92452BC(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_184_5();
  OUTLINED_FUNCTION_470_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  v12 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_102_7(v1);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_103_3();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v14 = 0;
    v14[1] = 0;
    *(v14 + 16) = -1;
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9450, &qword_1B96AA710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_5();
    OUTLINED_FUNCTION_246();
    sub_1B9239DA8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasError.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.clearError()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9450, &qword_1B96AA710);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B92452BC(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

double Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0) + 20));
  v2 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  OUTLINED_FUNCTION_10_4();
  return *(v1 + v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.setter(double a1)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_245_3();
    v6 = sub_1B92452BC(v6);
    *(v1 + v2) = v6;
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  result = OUTLINED_FUNCTION_9_3();
  *(v6 + v7) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[10] = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0) + 20);
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  OUTLINED_FUNCTION_68_0();
  v3[9] = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B921A3A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 88);
    v10 = *(v1 + 80);
    OUTLINED_FUNCTION_245_3();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92452BC(v11);
    *(v10 + v9) = v8;
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  OUTLINED_FUNCTION_11_4();
  *(v8 + v12) = v3;

  free(v1);
}

void sub_1B921A470(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_231_4(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5B28 != -1)
    {
      OUTLINED_FUNCTION_429_0();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC9458, &qword_1B96AA718);
    }
  }

  else
  {
    OUTLINED_FUNCTION_183_6();
    OUTLINED_FUNCTION_182();
    return sub_1B9239DA8();
  }

  return result;
}