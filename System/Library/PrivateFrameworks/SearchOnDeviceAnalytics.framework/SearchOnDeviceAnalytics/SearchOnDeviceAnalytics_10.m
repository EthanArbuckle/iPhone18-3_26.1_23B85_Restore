uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21B06100C();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112084();
        break;
      case 6:
        OUTLINED_FUNCTION_10_2();
        sub_21B0610C0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B06100C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0) + 36);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  sub_21B099CBC(&qword_27CD44F50, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);
  return sub_21B1120B4();
}

uint64_t sub_21B0610C0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0) + 40);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_423();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B28, &qword_21B118190);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_212();
  v29 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v8);
  v9 = OUTLINED_FUNCTION_4_1(v29);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_67_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B20, &qword_21B118188);
  OUTLINED_FUNCTION_25(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_252();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v16);
  v18 = OUTLINED_FUNCTION_4_1(UnderstandingParse);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  if (!*v1 || (sub_21B112204(), !v0))
  {
    v21 = *(v1 + 8);
    v22 = *(v1 + 16);
    OUTLINED_FUNCTION_10_4();
    if (!v23 || (sub_21B1121E4(), !v0))
    {
      v28 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
      v24 = v28[9];
      OUTLINED_FUNCTION_744();
      OUTLINED_FUNCTION_37_1(v2, 1, UnderstandingParse);
      if (v25)
      {
        sub_21AF99BE0(v2, &unk_27CD44B20, &qword_21B118188);
      }

      else
      {
        OUTLINED_FUNCTION_47_2();
        sub_21B03179C();
        sub_21B099CBC(&qword_27CD44F50, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);
        OUTLINED_FUNCTION_709();
        sub_21B112224();
        OUTLINED_FUNCTION_298();
        sub_21B03183C();
        if (v0)
        {
          goto LABEL_18;
        }
      }

      if (!*(v1 + 24) || (sub_21B1121F4(), !v0))
      {
        if (!*(v1 + 28) || (sub_21B1121F4(), !v0))
        {
          v26 = v28[10];
          OUTLINED_FUNCTION_715();
          OUTLINED_FUNCTION_37_1(v3, 1, v29);
          if (v25)
          {
            sub_21AF99BE0(v3, &qword_27CD44B28, &qword_21B118190);
LABEL_17:
            v27 = v1 + v28[8];
            sub_21B111EA4();
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_46_2();
          sub_21B03179C();
          sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);
          OUTLINED_FUNCTION_709();
          sub_21B112224();
          OUTLINED_FUNCTION_323();
          sub_21B03183C();
          if (!v0)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B061594(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46A00, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B061614(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B061684()
{
  sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B061710()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44340);
  __swift_project_value_buffer(v0, qword_27CD44340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "totalNumberOfAssetsIndexed";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfAssetsInLibrary";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfEmbeddingMatchedAssets";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalNumberOfMetadataMatchedAssets";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "assetEstimationOffAmount";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosRankingInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_10_2();
        sub_21B061A68();
        break;
      case 2:
        OUTLINED_FUNCTION_10_2();
        sub_21B061AD0();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF846AC();
        break;
      case 4:
        OUTLINED_FUNCTION_10_2();
        sub_21B061B38();
        break;
      case 5:
        OUTLINED_FUNCTION_10_2();
        sub_21B061BA0();
        break;
      default:
        continue;
    }
  }
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosRankingInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v3 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v3 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v3 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v3 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v3 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 == v5)
  {
LABEL_6:
    v6 = *(v1 + 16);
    v7 = *(v0 + 16);
    if (*(v0 + 24) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v6 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v6 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v6 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v6 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v6 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v6 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        case 10:
          if (v6 != 10)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v6)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v6 == v7)
    {
LABEL_11:
      v8 = OUTLINED_FUNCTION_492();
      if (sub_21AFB4A88(v8, v9, v10))
      {
        v11 = *(v0 + 56);
        if (sub_21AFB4A88(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
        {
          v12 = OUTLINED_FUNCTION_633();
          if (sub_21AFB4A88(v12, v13, v14))
          {
            v15 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
            OUTLINED_FUNCTION_830(v15);
            OUTLINED_FUNCTION_0_15();
            sub_21B099CBC(v16, v17);
            return OUTLINED_FUNCTION_40_1() & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21B062018(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469F8, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B062098(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B062108()
{
  sub_21B099CBC(&qword_27CD44F48, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return sub_21B112114();
}

uint64_t sub_21B0621A0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44358);
  __swift_project_value_buffer(v0, qword_27CD44358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "code";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "errorCode";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_Error.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_Error.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_26_3();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_10_4();
  if (!v5 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_10_4();
    if (!v9 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      if (*(v2 + 32) == 0.0 || (OUTLINED_FUNCTION_143(), result = sub_21B1121D4(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v1))
        {
          v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_Error(0) + 32);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_Error.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_30_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_726();
  if (!v6)
  {
    return 0;
  }

  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_764(v10);
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v11, v12);
  return OUTLINED_FUNCTION_40_1() & 1;
}

uint64_t sub_21B0626C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469F0, type metadata accessor for Apple_Parsec_Feedback_V2_Error);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B062740(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0627B0()
{
  sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error);

  return sub_21B112114();
}

uint64_t sub_21B06283C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44370);
  __swift_project_value_buffer(v0, qword_27CD44370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
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
  *v12 = "underlyingError";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relatedStartNetworkSearchFeedbackId";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_10_2();
        sub_21B062B44();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21B062BF8();
        break;
      case 4:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B062B44()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0) + 28);
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error);
  return sub_21B1120B4();
}

uint64_t sub_21B062BF8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0) + 32);
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  sub_21B099CBC(&qword_27CD44F78, type metadata accessor for Apple_Parsec_Feedback_V2_Error);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B30, &qword_21B118198);
  v7 = OUTLINED_FUNCTION_25(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_512();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_725();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  if (!*v0 || (sub_21B112204(), !v1))
  {
    v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
    v17 = v16[7];
    sub_21B0AA940();
    OUTLINED_FUNCTION_368(v3);
    if (v18)
    {
      sub_21AF99BE0(v3, &unk_27CD44B30, &qword_21B118198);
    }

    else
    {
      OUTLINED_FUNCTION_11_6();
      sub_21B03179C();
      OUTLINED_FUNCTION_567();
      sub_21B099CBC(v19, v20);
      OUTLINED_FUNCTION_683();
      sub_21B112224();
      OUTLINED_FUNCTION_154();
      sub_21B03183C();
      if (v1)
      {
        goto LABEL_14;
      }
    }

    v21 = v16[8];
    sub_21B0AA940();
    OUTLINED_FUNCTION_368(v2);
    if (v18)
    {
      sub_21AF99BE0(v2, &unk_27CD44B30, &qword_21B118198);
    }

    else
    {
      OUTLINED_FUNCTION_11_6();
      sub_21B03179C();
      OUTLINED_FUNCTION_567();
      sub_21B099CBC(v22, v23);
      OUTLINED_FUNCTION_709();
      OUTLINED_FUNCTION_734();
      sub_21B112224();
      v4 = v1;
      OUTLINED_FUNCTION_154();
      sub_21B03183C();
      if (v1)
      {
        goto LABEL_14;
      }
    }

    v24 = v5[1];
    v25 = v5[2];
    OUTLINED_FUNCTION_10_4();
    if (!v26 || (sub_21B1121E4(), !v4))
    {
      v27 = v5 + v16[6];
      sub_21B111EA4();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B063040(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469E8, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0630C0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B063130()
{
  sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0631BC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44388);
  __swift_project_value_buffer(v0, qword_27CD44388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "jsonFeedback";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feedbackType";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_CustomFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_819();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    v4 = OUTLINED_FUNCTION_34_3();
    if (sub_21AFD45D8(v4, v5) || (OUTLINED_FUNCTION_34_3(), OUTLINED_FUNCTION_60_0(), sub_21B112184(), !v0))
    {
      if (!*(v1 + 24) || (v6 = *(v1 + 32), OUTLINED_FUNCTION_472(), sub_21B09A490(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0) + 28);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_818();
}

uint64_t sub_21B0635E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469E0, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B063668(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0636D8()
{
  sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return sub_21B112114();
}

uint64_t sub_21B063764()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443A0);
  __swift_project_value_buffer(v0, qword_27CD443A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestion";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B06397C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0) + 24);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  sub_21B099CBC(&qword_27CD44F98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_423();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B38, &qword_21B1181A0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_212();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_177();
  if (!*v1 || (OUTLINED_FUNCTION_480(), sub_21B112204(), !v0))
  {
    v12 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0) + 24);
    OUTLINED_FUNCTION_715();
    OUTLINED_FUNCTION_243();
    if (v13)
    {
      sub_21AF99BE0(v2, &qword_27CD44B38, &qword_21B1181A0);
LABEL_7:
      OUTLINED_FUNCTION_741();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_636();
    sub_21B03179C();
    OUTLINED_FUNCTION_566();
    sub_21B099CBC(v14, v15);
    OUTLINED_FUNCTION_595();
    OUTLINED_FUNCTION_734();
    sub_21B112224();
    OUTLINED_FUNCTION_319();
    sub_21B03183C();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B063C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469D8, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B063CCC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B063D3C()
{
  sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B063DD4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443B8);
  __swift_project_value_buffer(v0, qword_27CD443B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cardDisappearEvent";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "card";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B0640A8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0) + 28);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_212();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_177();
  if (!*v0 || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v1))
  {
    v13 = *(v2 + 8);
    if (!v13 || (v14 = *(v2 + 16), OUTLINED_FUNCTION_542(v13), sub_21B09A4E4(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
    {
      v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
      v16 = *(v15 + 28);
      OUTLINED_FUNCTION_715();
      OUTLINED_FUNCTION_243();
      if (v17)
      {
        sub_21AF99BE0(v3, &qword_27CD44940, &qword_21B118128);
LABEL_9:
        v20 = *(v15 + 24);
        OUTLINED_FUNCTION_27_2();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_636();
      sub_21B03179C();
      OUTLINED_FUNCTION_565();
      sub_21B099CBC(v18, v19);
      OUTLINED_FUNCTION_595();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_31_4();
      sub_21B03183C();
      if (!v1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B0643A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469D0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B064428(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B064498()
{
  sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return sub_21B112114();
}

uint64_t sub_21B064524()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443D0);
  __swift_project_value_buffer(v0, qword_27CD443D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "card";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "level";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fbr";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_10_2();
        sub_21B06482C();
        break;
      case 3:
        OUTLINED_FUNCTION_318();
        sub_21B112084();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B06482C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0) + 32);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_CardViewAppearFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_252();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v20 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
    v12 = *(v20 + 32);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v13)
    {
      sub_21AF99BE0(v2, &qword_27CD44940, &qword_21B118128);
    }

    else
    {
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_684();
      sub_21B03179C();
      OUTLINED_FUNCTION_565();
      sub_21B099CBC(v14, v15);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_31_4();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    if (!*(v1 + 8) || (OUTLINED_FUNCTION_36_1(), sub_21B1121F4(), !v0))
    {
      v16 = *(v1 + 16);
      v17 = *(v1 + 24);
      OUTLINED_FUNCTION_10_4();
      if (!v18 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
      {
        v19 = *(v20 + 28);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B064B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B064BA8(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B064C18()
{
  sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return sub_21B112114();
}

uint64_t sub_21B064CB0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD443E8);
  __swift_project_value_buffer(v0, qword_27CD443E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void sub_21B064EF8()
{
  while (1)
  {
    OUTLINED_FUNCTION_546();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_21B068268();
    }

    else if (v1 == 1)
    {
      sub_21B112094();
    }
  }
}

uint64_t sub_21B065064(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469C0, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0650E4(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B065154()
{
  sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0651EC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44400);
  __swift_project_value_buffer(v0, qword_27CD44400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    OUTLINED_FUNCTION_660();
    if (!v1 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v2, v3), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v0))
    {
      v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
      OUTLINED_FUNCTION_184(v4);
      OUTLINED_FUNCTION_652();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B065508(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469B8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B065588(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0655F8()
{
  sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return sub_21B112114();
}

uint64_t sub_21B065684()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44418);
  __swift_project_value_buffer(v0, qword_27CD44418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sections";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    OUTLINED_FUNCTION_660();
    if (!v1 || (type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0), OUTLINED_FUNCTION_334(), sub_21B099CBC(v2, v3), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v0))
    {
      v4 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
      OUTLINED_FUNCTION_184(v4);
      OUTLINED_FUNCTION_652();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B065A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469B0, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B065A9C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B065B0C()
{
  sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return sub_21B112114();
}

uint64_t sub_21B065B98()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44430);
  __swift_project_value_buffer(v0, qword_27CD44430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "triggerEvent";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B065F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469A8, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B065F84(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B065FF4()
{
  sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06608C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44448);
  __swift_project_value_buffer(v0, qword_27CD44448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "section";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B0662F8()
{
  OUTLINED_FUNCTION_699();
  while (1)
  {
    OUTLINED_FUNCTION_0();
    result = sub_21B111F64();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v6 = OUTLINED_FUNCTION_644();
        v0(v6);
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_644();
        v2(v5);
        break;
      case 1:
        OUTLINED_FUNCTION_26();
        sub_21B112094();
        break;
    }
  }

  return result;
}

uint64_t sub_21B066388()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0) + 28);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_SectionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_252();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v12 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
    v13 = *(v12 + 28);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v14)
    {
      sub_21AF99BE0(v2, &unk_27CD434E8, &unk_21B116AC0);
    }

    else
    {
      OUTLINED_FUNCTION_12_8();
      OUTLINED_FUNCTION_684();
      sub_21B03179C();
      OUTLINED_FUNCTION_334();
      sub_21B099CBC(v15, v16);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_156();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_10;
      }
    }

    v17 = *(v1 + 8);
    if (!v17 || (v18 = *(v1 + 16), OUTLINED_FUNCTION_542(v17), sub_21B09A58C(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
    {
      v19 = *(v12 + 24);
      OUTLINED_FUNCTION_27_2();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B0666F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD469A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B066778(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0667E8()
{
  sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return sub_21B112114();
}

uint64_t sub_21B066874()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44460);
  __swift_project_value_buffer(v0, qword_27CD44460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "headerType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sectionId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21B066B24();
        break;
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    if (!*(v1 + 8) || (v2 = *(v1 + 16), OUTLINED_FUNCTION_472(), sub_21B09A5E0(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
    {
      v3 = *(v1 + 24);
      v4 = *(v1 + 32);
      OUTLINED_FUNCTION_10_4();
      if (!v5 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
      {
        v6 = *(type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0) + 28);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B066CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46998, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B066D64(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B066DD4()
{
  sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return sub_21B112114();
}

uint64_t sub_21B066E60()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44478);
  __swift_project_value_buffer(v0, qword_27CD44478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B0670CC()
{
  OUTLINED_FUNCTION_699();
  while (1)
  {
    OUTLINED_FUNCTION_0();
    result = sub_21B111F64();
    if (v1 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v8 = OUTLINED_FUNCTION_644();
        v0(v8);
        break;
      case 2:
        v2(v3 + 8, v5, v4);
        break;
      case 1:
        OUTLINED_FUNCTION_26();
        sub_21B112094();
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v0))
    {
      if (!*(v1 + 24) || (v5 = *(v1 + 32), OUTLINED_FUNCTION_472(), sub_21B099FF8(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
      {
        v6 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0) + 28);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B067320(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46990, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0673A0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B067410()
{
  sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06749C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44490);
  __swift_project_value_buffer(v0, qword_27CD44490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "endpoint";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "triggerEvent";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21B0677A4();
        break;
      case 4:
        OUTLINED_FUNCTION_10_2();
        sub_21B06780C();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v0))
    {
      if (!*(v1 + 24) || (v5 = *(v1 + 32), OUTLINED_FUNCTION_472(), sub_21B09A394(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
      {
        if (!*(v1 + 40) || (v6 = *(v1 + 48), OUTLINED_FUNCTION_472(), sub_21B099FF8(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
        {
          v7 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0) + 32);
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B067A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46988, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B067A80(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B067AF0()
{
  sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B067B7C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444A8);
  __swift_project_value_buffer(v0, qword_27CD444A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    OUTLINED_FUNCTION_660();
    if (!v1 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v2, v3), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v0))
    {
      v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
      OUTLINED_FUNCTION_184(v4);
      OUTLINED_FUNCTION_652();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B067EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46980, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B067F74(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B067FE4()
{
  sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06807C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444C0);
  __swift_project_value_buffer(v0, qword_27CD444C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

void sub_21B068268()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_234();
  v1(v0);
  v2 = OUTLINED_FUNCTION_75();
  sub_21B099CBC(v2, v3);
  OUTLINED_FUNCTION_505();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B0682E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), result = sub_21B112204(), !v4))
  {
    OUTLINED_FUNCTION_660();
    if (!v7 || (type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0), OUTLINED_FUNCTION_566(), sub_21B099CBC(v8, v9), OUTLINED_FUNCTION_477(), OUTLINED_FUNCTION_58_0(), result = sub_21B112214(), !v4))
    {
      v10 = a4(0);
      OUTLINED_FUNCTION_184(v10);
      return OUTLINED_FUNCTION_652();
    }
  }

  return result;
}

uint64_t sub_21B068430(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46978, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0684B0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B068520()
{
  sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0685AC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444D8);
  __swift_project_value_buffer(v0, qword_27CD444D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "grade";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textFeedback";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_10_2();
        sub_21B0688B8();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21B06896C();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0688B8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0) + 32);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ResultGradingFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_252();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v22 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
    v12 = *(v22 + 32);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v13)
    {
      sub_21AF99BE0(v2, &qword_27CD434D8, &qword_21B116AB0);
    }

    else
    {
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_684();
      sub_21B03179C();
      OUTLINED_FUNCTION_9_8();
      sub_21B099CBC(v14, v15);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_13_6();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    v16 = *(v1 + 8);
    if (!v16 || (v17 = *(v1 + 16), OUTLINED_FUNCTION_542(v16), sub_21B09A634(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
    {
      v18 = *(v1 + 24);
      v19 = *(v1 + 32);
      OUTLINED_FUNCTION_10_4();
      if (!v20 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
      {
        v21 = *(v22 + 28);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B068C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46970, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B068CBC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B068D2C()
{
  sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return sub_21B112114();
}

uint64_t sub_21B068DC4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD444F0);
  __swift_project_value_buffer(v0, qword_27CD444F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_Range.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_49_1();
      sub_21B112094();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_Range.traverse<A>(visitor:)()
{
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), result = sub_21B112204(), !v0))
  {
    if (!*(v1 + 8) || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v0))
    {
      v3 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
      OUTLINED_FUNCTION_184(v3);
      return OUTLINED_FUNCTION_652();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_Range.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_282(a1, a2);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  OUTLINED_FUNCTION_713(v5);
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v6, v7);
  return OUTLINED_FUNCTION_40_1() & 1;
}

uint64_t sub_21B0691B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46968, type metadata accessor for Apple_Parsec_Feedback_V2_Range);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B069230(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0692A0()
{
  sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range);

  return sub_21B112114();
}

uint64_t sub_21B06932C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44508);
  __swift_project_value_buffer(v0, qword_27CD44508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hintRange";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "domain";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "discarded";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "grade";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
        OUTLINED_FUNCTION_10_2();
        sub_21B0696CC();
        break;
      case 3:
      case 6:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 5:
        OUTLINED_FUNCTION_10_2();
        sub_21B069780();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0696CC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0) + 40);
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B40, &unk_21B1181A8);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_252();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  if (!OUTLINED_FUNCTION_483() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v23 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
    v12 = *(v23 + 40);
    OUTLINED_FUNCTION_744();
    OUTLINED_FUNCTION_368(v2);
    if (v13)
    {
      sub_21AF99BE0(v2, &qword_27CD44B40, &unk_21B1181A8);
    }

    else
    {
      OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_684();
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45050, type metadata accessor for Apple_Parsec_Feedback_V2_Range);
      OUTLINED_FUNCTION_680();
      OUTLINED_FUNCTION_683();
      OUTLINED_FUNCTION_58_0();
      sub_21B112224();
      OUTLINED_FUNCTION_316();
      sub_21B03183C();
      if (v0)
      {
        goto LABEL_16;
      }
    }

    v14 = *(v1 + 8);
    v15 = *(v1 + 16);
    OUTLINED_FUNCTION_10_4();
    if (!v16 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
    {
      if (*(v1 + 24) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
      {
        v17 = *(v1 + 32);
        if (!v17 || (v18 = *(v1 + 40), OUTLINED_FUNCTION_542(v17), sub_21B09A688(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
        {
          v19 = *(v1 + 48);
          v20 = *(v1 + 56);
          OUTLINED_FUNCTION_10_4();
          if (!v21 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
          {
            v22 = *(v23 + 36);
            OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B069AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46960, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B069B24(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B069B94()
{
  sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return sub_21B112114();
}

uint64_t sub_21B069C60()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_238();
      sub_21B112094();
    }
  }

  return result;
}

void sub_21B069CD8()
{
  OUTLINED_FUNCTION_822();
  v2 = v1;
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v3 = *(v2(0) + 20);
    OUTLINED_FUNCTION_27_2();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_21B069DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46958, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B069E48(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B069EB8()
{
  sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return sub_21B112114();
}

uint64_t sub_21B069F44()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44538);
  __swift_project_value_buffer(v0, qword_27CD44538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B06A350(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46950, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B06A3D0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B06A440()
{
  sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06A4D8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44550);
  __swift_project_value_buffer(v0, qword_27CD44550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryId";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nanosecondInterval";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B112094();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.traverse<A>(visitor:)()
{
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), result = sub_21B112204(), !v0))
  {
    v3 = v1[1];
    v4 = v1[2];
    OUTLINED_FUNCTION_10_4();
    if (!v5 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v0))
    {
      v6 = v1[3];
      v7 = v1[4];
      OUTLINED_FUNCTION_10_4();
      if (!v8 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v0))
      {
        if (!v1[5] || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v0))
        {
          if (!v1[6] || (OUTLINED_FUNCTION_36_1(), result = sub_21B112204(), !v0))
          {
            v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0) + 36);
            return OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B06A990(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46948, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B06AA10(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B06AA80()
{
  sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return sub_21B112114();
}

uint64_t sub_21B06AB18()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44568);
  __swift_project_value_buffer(v0, qword_27CD44568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_21B1180C0;
  v4 = v98 + v3 + v1[14];
  *(v98 + v3) = 1;
  *v4 = "feedback";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v98 + v3 + v2 + v1[14];
  *(v98 + v3 + v2) = 2;
  *v8 = "searchViewAppearFeedback";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v98 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "searchViewDisappearFeedback";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v98 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rankingFeedback";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v98 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sectionRankingFeedback";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v98 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "resultRankingFeedback";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v98 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "resultFeedback";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v98 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "resultEngagementFeedback";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v98 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "visibleResultsFeedback";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v98 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "cardSectionFeedback";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v98 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "mapsCardSectionEngagementFeedback";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v7();
  v27 = (v98 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "storeCardSectionEngagementFeedback";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v7();
  v29 = (v98 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "startSearchFeedback";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v98 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "endSearchFeedback";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v98 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "startNetworkSearchFeedback";
  *(v34 + 1) = 26;
  v34[16] = 2;
  v7();
  v35 = (v98 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "endNetworkSearchFeedback";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v7();
  v37 = (v98 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "startLocalSearchFeedback";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v98 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "endLocalSearchFeedback";
  *(v40 + 1) = 22;
  v40[16] = 2;
  v7();
  v41 = (v98 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "errorFeedback";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v7();
  v43 = (v98 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "customFeedback";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v98 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "suggestionEngagementFeedback";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v7();
  v47 = (v98 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "cardViewDisappearFeedback";
  *(v48 + 1) = 25;
  v48[16] = 2;
  v7();
  v49 = (v98 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "visibleSuggestionsFeedback";
  *(v50 + 1) = 26;
  v50[16] = 2;
  v7();
  v51 = (v98 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "resultsReceivedAfterTimeoutFeedback";
  *(v52 + 1) = 35;
  v52[16] = 2;
  v7();
  v53 = (v98 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "lateSectionsAppendedFeedback";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v98 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "clearInputFeedback";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v98 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "sectionEngagementFeedback";
  *(v58 + 1) = 25;
  v58[16] = 2;
  v7();
  v59 = (v98 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "visibleSectionHeaderFeedback";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  v61 = (v98 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "didGoToSiteFeedback";
  *(v62 + 1) = 19;
  v62[16] = 2;
  v7();
  v63 = (v98 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "didGoToSearchFeedback";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v7();
  v65 = (v98 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "sessionMissingResultsFeedback";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v98 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "sessionMissingSuggestionsFeedback";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v98 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "resultGradingFeedback";
  *(v70 + 1) = 21;
  v70[16] = 2;
  v7();
  v71 = (v98 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "lookupHintRelevancyFeedback";
  *(v72 + 1) = 27;
  v72[16] = 2;
  v7();
  v73 = (v98 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "connectionInvalidatedFeedback";
  *(v74 + 1) = 29;
  v74[16] = 2;
  v7();
  v75 = (v98 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "cardSectionEngagementFeedback";
  *(v76 + 1) = 29;
  v76[16] = 2;
  v7();
  v77 = (v98 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "sessionEndFeedback";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v98 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "cardViewAppearFeedback";
  *(v80 + 1) = 22;
  v80[16] = 2;
  v7();
  v81 = (v98 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "skipSearchFeedback";
  *(v82 + 1) = 18;
  v82[16] = 2;
  v7();
  v83 = (v98 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "cacheHitFeedback";
  *(v84 + 1) = 16;
  v84[16] = 2;
  v7();
  v85 = (v98 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "cbaEngagementFeedback";
  *(v86 + 1) = 21;
  v86[16] = 2;
  v7();
  v87 = (v98 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "clientTimingFeedback";
  *(v88 + 1) = 20;
  v88[16] = 2;
  v7();
  v89 = (v98 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "commandEngagementFeedback";
  *(v90 + 1) = 25;
  v90[16] = 2;
  v7();
  v91 = (v98 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "dynamicButtonVisibilityFeedback";
  *(v92 + 1) = 31;
  v92[16] = 2;
  v7();
  v93 = (v98 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "experimentTriggeredFeedback";
  *(v94 + 1) = 27;
  v94[16] = 2;
  v7();
  v95 = (v98 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 100;
  *v96 = "queryId";
  *(v96 + 1) = 7;
  v96[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_129();
        sub_21B06BAD8(v3, v4, v5, v6);
        break;
      case 2:
        v91 = OUTLINED_FUNCTION_129();
        sub_21B06BFD0(v91, v92, v93, v94);
        break;
      case 3:
        v75 = OUTLINED_FUNCTION_129();
        sub_21B06C4C8(v75, v76, v77, v78);
        break;
      case 4:
        v83 = OUTLINED_FUNCTION_129();
        sub_21B06C9C0(v83, v84, v85, v86);
        break;
      case 5:
        v51 = OUTLINED_FUNCTION_129();
        sub_21B06CEB8(v51, v52, v53, v54);
        break;
      case 6:
        v111 = OUTLINED_FUNCTION_129();
        sub_21B06D3B0(v111, v112, v113, v114);
        break;
      case 7:
        v123 = OUTLINED_FUNCTION_129();
        sub_21B06D8A8(v123, v124, v125, v126);
        break;
      case 8:
        v87 = OUTLINED_FUNCTION_129();
        sub_21B06DDA0(v87, v88, v89, v90);
        break;
      case 9:
        v135 = OUTLINED_FUNCTION_129();
        sub_21B06E298(v135, v136, v137, v138);
        break;
      case 10:
        v63 = OUTLINED_FUNCTION_129();
        sub_21B06E790(v63, v64, v65, v66);
        break;
      case 11:
        v131 = OUTLINED_FUNCTION_129();
        sub_21B06EC88(v131, v132, v133, v134);
        break;
      case 12:
        v47 = OUTLINED_FUNCTION_129();
        sub_21B06F180(v47, v48, v49, v50);
        break;
      case 13:
        v59 = OUTLINED_FUNCTION_129();
        sub_21B06F678(v59, v60, v61, v62);
        break;
      case 14:
        v119 = OUTLINED_FUNCTION_129();
        sub_21B06FB70(v119, v120, v121, v122);
        break;
      case 15:
        v39 = OUTLINED_FUNCTION_129();
        sub_21B070068(v39, v40, v41, v42);
        break;
      case 16:
        v79 = OUTLINED_FUNCTION_129();
        sub_21B070560(v79, v80, v81, v82);
        break;
      case 17:
        v31 = OUTLINED_FUNCTION_129();
        sub_21B070A58(v31, v32, v33, v34);
        break;
      case 18:
        v99 = OUTLINED_FUNCTION_129();
        sub_21B070F50(v99, v100, v101, v102);
        break;
      case 19:
        v127 = OUTLINED_FUNCTION_129();
        sub_21B071448(v127, v128, v129, v130);
        break;
      case 20:
        v161 = OUTLINED_FUNCTION_129();
        sub_21B071940(v161, v162, v163, v164);
        break;
      case 21:
        v107 = OUTLINED_FUNCTION_129();
        sub_21B071E38(v107, v108, v109, v110);
        break;
      case 22:
        v115 = OUTLINED_FUNCTION_129();
        sub_21B072330(v115, v116, v117, v118);
        break;
      case 23:
        v153 = OUTLINED_FUNCTION_129();
        sub_21B072828(v153, v154, v155, v156);
        break;
      case 24:
        v169 = OUTLINED_FUNCTION_129();
        sub_21B072D20(v169, v170, v171, v172);
        break;
      case 25:
        v71 = OUTLINED_FUNCTION_129();
        sub_21B073218(v71, v72, v73, v74);
        break;
      case 26:
        v67 = OUTLINED_FUNCTION_129();
        sub_21B073710(v67, v68, v69, v70);
        break;
      case 27:
        v185 = OUTLINED_FUNCTION_129();
        sub_21B073C08(v185, v186, v187, v188);
        break;
      case 28:
        v23 = OUTLINED_FUNCTION_129();
        sub_21B074100(v23, v24, v25, v26);
        break;
      case 29:
        v173 = OUTLINED_FUNCTION_129();
        sub_21B0745F8(v173, v174, v175, v176);
        break;
      case 30:
        v177 = OUTLINED_FUNCTION_129();
        sub_21B074AF0(v177, v178, v179, v180);
        break;
      case 31:
        v139 = OUTLINED_FUNCTION_129();
        sub_21B074FE8(v139, v140, v141, v142);
        break;
      case 32:
        v95 = OUTLINED_FUNCTION_129();
        sub_21B0754E0(v95, v96, v97, v98);
        break;
      case 33:
        v143 = OUTLINED_FUNCTION_129();
        sub_21B0759D8(v143, v144, v145, v146);
        break;
      case 34:
        v43 = OUTLINED_FUNCTION_129();
        sub_21B075ED0(v43, v44, v45, v46);
        break;
      case 35:
        v27 = OUTLINED_FUNCTION_129();
        sub_21B0763C8(v27, v28, v29, v30);
        break;
      case 36:
        v15 = OUTLINED_FUNCTION_129();
        sub_21B0768C0(v15, v16, v17, v18);
        break;
      case 37:
        v19 = OUTLINED_FUNCTION_129();
        sub_21B076DB8(v19, v20, v21, v22);
        break;
      case 38:
        v11 = OUTLINED_FUNCTION_129();
        sub_21B0772B0(v11, v12, v13, v14);
        break;
      case 39:
        v181 = OUTLINED_FUNCTION_129();
        sub_21B0777A8(v181, v182, v183, v184);
        break;
      case 40:
        v157 = OUTLINED_FUNCTION_129();
        sub_21B077CA0(v157, v158, v159, v160);
        break;
      case 41:
        v55 = OUTLINED_FUNCTION_129();
        sub_21B078198(v55, v56, v57, v58);
        break;
      case 42:
        v103 = OUTLINED_FUNCTION_129();
        sub_21B078690(v103, v104, v105, v106);
        break;
      case 43:
        v165 = OUTLINED_FUNCTION_129();
        sub_21B078B88(v165, v166, v167, v168);
        break;
      case 44:
        v7 = OUTLINED_FUNCTION_129();
        sub_21B079080(v7, v8, v9, v10);
        break;
      case 45:
        v35 = OUTLINED_FUNCTION_129();
        sub_21B079578(v35, v36, v37, v38);
        break;
      case 100:
        v147 = OUTLINED_FUNCTION_10_2();
        sub_21B097100(v147, v148, v149, v150, v151, v152);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B06BAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C28, &qword_21B127BA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21B03183C();
    }

    else
    {
      sub_21AF99BE0(v22, &qword_27CD46C28, &qword_21B127BA8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_21B099CBC(&qword_27CD45AA8, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C28, &qword_21B127BA8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C28, &qword_21B127BA8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C28, &qword_21B127BA8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C28, &qword_21B127BA8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C30, &qword_21B127BB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21AF99BE0(v22, &qword_27CD46C30, &qword_21B127BB0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C30, &qword_21B127BB0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C30, &qword_21B127BB0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C30, &qword_21B127BB0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C30, &qword_21B127BB0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C38, &qword_21B127BB8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21AF99BE0(v22, &qword_27CD46C38, &qword_21B127BB8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C38, &qword_21B127BB8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C38, &qword_21B127BB8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C38, &qword_21B127BB8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C38, &qword_21B127BB8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C40, &qword_21B127BC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21AF99BE0(v22, &qword_27CD46C40, &qword_21B127BC0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45AF0, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C40, &qword_21B127BC0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C40, &qword_21B127BC0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C40, &qword_21B127BC0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C40, &qword_21B127BC0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C48, &qword_21B127BC8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21AF99BE0(v22, &qword_27CD46C48, &qword_21B127BC8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD44DD8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C48, &qword_21B127BC8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C48, &qword_21B127BC8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C48, &qword_21B127BC8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C48, &qword_21B127BC8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06D3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C50, &qword_21B127BD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21AF99BE0(v22, &qword_27CD46C50, &qword_21B127BD0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD44DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C50, &qword_21B127BD0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C50, &qword_21B127BD0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C50, &qword_21B127BD0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C50, &qword_21B127BD0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C58, &qword_21B127BD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_21AF99BE0(v22, &qword_27CD46C58, &qword_21B127BD8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B28, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C58, &qword_21B127BD8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C58, &qword_21B127BD8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C58, &qword_21B127BD8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C58, &qword_21B127BD8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C60, &qword_21B127BE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_21AF99BE0(v22, &qword_27CD46C60, &qword_21B127BE0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C60, &qword_21B127BE0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C60, &qword_21B127BE0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C60, &qword_21B127BE0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C60, &qword_21B127BE0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C68, &qword_21B127BE8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_21AF99BE0(v22, &qword_27CD46C68, &qword_21B127BE8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B70, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C68, &qword_21B127BE8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C68, &qword_21B127BE8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C68, &qword_21B127BE8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C68, &qword_21B127BE8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06E790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C70, &qword_21B127BF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_21AF99BE0(v22, &qword_27CD46C70, &qword_21B127BF0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C10, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C70, &qword_21B127BF0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C70, &qword_21B127BF0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C70, &qword_21B127BF0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C70, &qword_21B127BF0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06EC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C78, &qword_21B127BF8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_21AF99BE0(v22, &qword_27CD46C78, &qword_21B127BF8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C40, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C78, &qword_21B127BF8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C78, &qword_21B127BF8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C78, &qword_21B127BF8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C78, &qword_21B127BF8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C80, &qword_21B127C00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_21AF99BE0(v22, &qword_27CD46C80, &qword_21B127C00);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C58, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C80, &qword_21B127C00);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C80, &qword_21B127C00);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C80, &qword_21B127C00);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C80, &qword_21B127C00);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  v6 = *(*(started - 8) + 64);
  v7 = MEMORY[0x28223BE20](started);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C88, &qword_21B127C08);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, started);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_21AF99BE0(v22, &qword_27CD46C88, &qword_21B127C08);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, started);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C70, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C88, &qword_21B127C08);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, started) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C88, &qword_21B127C08);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C88, &qword_21B127C08);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C88, &qword_21B127C08);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B06FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C90, &qword_21B127C10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_21AF99BE0(v22, &qword_27CD46C90, &qword_21B127C10);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C88, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C90, &qword_21B127C10);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C90, &qword_21B127C10);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C90, &qword_21B127C10);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C90, &qword_21B127C10);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B070068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  v6 = *(*(started - 8) + 64);
  v7 = MEMORY[0x28223BE20](started);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46C98, &qword_21B127C18);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, started);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_21AF99BE0(v22, &qword_27CD46C98, &qword_21B127C18);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, started);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45CA0, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46C98, &qword_21B127C18);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, started) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46C98, &qword_21B127C18);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46C98, &qword_21B127C18);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46C98, &qword_21B127C18);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B070560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CA0, &qword_21B127C20);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_21AF99BE0(v22, &qword_27CD46CA0, &qword_21B127C20);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45CB8, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CA0, &qword_21B127C20);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CA0, &qword_21B127C20);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CA0, &qword_21B127C20);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CA0, &qword_21B127C20);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B070A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  v6 = *(*(started - 8) + 64);
  v7 = MEMORY[0x28223BE20](started);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CA8, &qword_21B127C28);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, started);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_21AF99BE0(v22, &qword_27CD46CA8, &qword_21B127C28);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, started);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D00, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CA8, &qword_21B127C28);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, started) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CA8, &qword_21B127C28);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CA8, &qword_21B127C28);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CA8, &qword_21B127C28);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B070F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CB0, &qword_21B127C30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_21AF99BE0(v22, &qword_27CD46CB0, &qword_21B127C30);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CB0, &qword_21B127C30);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CB0, &qword_21B127C30);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CB0, &qword_21B127C30);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CB0, &qword_21B127C30);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B071448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CB8, &qword_21B127C38);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_21AF99BE0(v22, &qword_27CD46CB8, &qword_21B127C38);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CB8, &qword_21B127C38);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CB8, &qword_21B127C38);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CB8, &qword_21B127C38);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CB8, &qword_21B127C38);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B071940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CC0, &qword_21B127C40);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_21AF99BE0(v22, &qword_27CD46CC0, &qword_21B127C40);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CC0, &qword_21B127C40);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CC0, &qword_21B127C40);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CC0, &qword_21B127C40);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CC0, &qword_21B127C40);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B071E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CC8, &qword_21B127C48);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_21AF99BE0(v22, &qword_27CD46CC8, &qword_21B127C48);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CC8, &qword_21B127C48);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CC8, &qword_21B127C48);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CC8, &qword_21B127C48);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CC8, &qword_21B127C48);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B072330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CD0, &qword_21B127C50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_21AF99BE0(v22, &qword_27CD46CD0, &qword_21B127C50);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CD0, &qword_21B127C50);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CD0, &qword_21B127C50);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CD0, &qword_21B127C50);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CD0, &qword_21B127C50);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B072828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CD8, &qword_21B127C58);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_21AF99BE0(v22, &qword_27CD46CD8, &qword_21B127C58);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CD8, &qword_21B127C58);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CD8, &qword_21B127C58);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CD8, &qword_21B127C58);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CD8, &qword_21B127C58);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B072D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CE0, &qword_21B127C60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_21AF99BE0(v22, &qword_27CD46CE0, &qword_21B127C60);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CE0, &qword_21B127C60);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CE0, &qword_21B127C60);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CE0, &qword_21B127C60);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CE0, &qword_21B127C60);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B073218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CE8, &qword_21B127C68);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_21AF99BE0(v22, &qword_27CD46CE8, &qword_21B127C68);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CE8, &qword_21B127C68);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CE8, &qword_21B127C68);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CE8, &qword_21B127C68);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CE8, &qword_21B127C68);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B073710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CF0, &qword_21B127C70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_21AF99BE0(v22, &qword_27CD46CF0, &qword_21B127C70);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CF0, &qword_21B127C70);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CF0, &qword_21B127C70);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CF0, &qword_21B127C70);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CF0, &qword_21B127C70);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B073C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46CF8, &qword_21B127C78);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_21AF99BE0(v22, &qword_27CD46CF8, &qword_21B127C78);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46CF8, &qword_21B127C78);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46CF8, &qword_21B127C78);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46CF8, &qword_21B127C78);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46CF8, &qword_21B127C78);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B074100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D00, &qword_21B127C80);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_21AF99BE0(v22, &qword_27CD46D00, &qword_21B127C80);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D00, &qword_21B127C80);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D00, &qword_21B127C80);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D00, &qword_21B127C80);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D00, &qword_21B127C80);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B0745F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D08, &qword_21B127C88);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_21AF99BE0(v22, &qword_27CD46D08, &qword_21B127C88);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D08, &qword_21B127C88);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D08, &qword_21B127C88);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D08, &qword_21B127C88);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D08, &qword_21B127C88);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B074AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D10, &qword_21B127C90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_21AF99BE0(v22, &qword_27CD46D10, &qword_21B127C90);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D10, &qword_21B127C90);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D10, &qword_21B127C90);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D10, &qword_21B127C90);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D10, &qword_21B127C90);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B074FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D18, &qword_21B127C98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_21AF99BE0(v22, &qword_27CD46D18, &qword_21B127C98);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D18, &qword_21B127C98);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D18, &qword_21B127C98);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D18, &qword_21B127C98);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D18, &qword_21B127C98);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B0754E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D20, &qword_21B127CA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_21AF99BE0(v22, &qword_27CD46D20, &qword_21B127CA0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D20, &qword_21B127CA0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D20, &qword_21B127CA0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D20, &qword_21B127CA0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D20, &qword_21B127CA0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B0759D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D28, &qword_21B127CA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_21AF99BE0(v22, &qword_27CD46D28, &qword_21B127CA8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D28, &qword_21B127CA8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D28, &qword_21B127CA8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D28, &qword_21B127CA8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D28, &qword_21B127CA8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B075ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D30, &qword_21B127CB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_21AF99BE0(v22, &qword_27CD46D30, &qword_21B127CB0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D30, &qword_21B127CB0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D30, &qword_21B127CB0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D30, &qword_21B127CB0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D30, &qword_21B127CB0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B0763C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D38, &qword_21B127CB8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_21AF99BE0(v22, &qword_27CD46D38, &qword_21B127CB8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D38, &qword_21B127CB8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D38, &qword_21B127CB8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D38, &qword_21B127CB8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D38, &qword_21B127CB8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B0768C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D40, &qword_21B127CC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_21AF99BE0(v22, &qword_27CD46D40, &qword_21B127CC0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45C28, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D40, &qword_21B127CC0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D40, &qword_21B127CC0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D40, &qword_21B127CC0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D40, &qword_21B127CC0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B076DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D48, &qword_21B127CC8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_21AF99BE0(v22, &qword_27CD46D48, &qword_21B127CC8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D48, &qword_21B127CC8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D48, &qword_21B127CC8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D48, &qword_21B127CC8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D48, &qword_21B127CC8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B0772B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D50, &qword_21B127CD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_21AF99BE0(v22, &qword_27CD46D50, &qword_21B127CD0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D50, &qword_21B127CD0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D50, &qword_21B127CD0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D50, &qword_21B127CD0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D50, &qword_21B127CD0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B0777A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D58, &qword_21B127CD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_21AF99BE0(v22, &qword_27CD46D58, &qword_21B127CD8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D58, &qword_21B127CD8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D58, &qword_21B127CD8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D58, &qword_21B127CD8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D58, &qword_21B127CD8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B077CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D60, &qword_21B127CE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_21AF99BE0(v22, &qword_27CD46D60, &qword_21B127CE0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D60, &qword_21B127CE0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D60, &qword_21B127CE0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D60, &qword_21B127CE0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D60, &qword_21B127CE0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B078198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D68, &qword_21B127CE8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_21AF99BE0(v22, &qword_27CD46D68, &qword_21B127CE8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD46008, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D68, &qword_21B127CE8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D68, &qword_21B127CE8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D68, &qword_21B127CE8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D68, &qword_21B127CE8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B078690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D70, &qword_21B127CF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_21AF99BE0(v22, &qword_27CD46D70, &qword_21B127CF0);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D70, &qword_21B127CF0);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D70, &qword_21B127CF0);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D70, &qword_21B127CF0);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D70, &qword_21B127CF0);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B078B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D78, &qword_21B127CF8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_21AF99BE0(v22, &qword_27CD46D78, &qword_21B127CF8);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B58, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D78, &qword_21B127CF8);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D78, &qword_21B127CF8);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D78, &qword_21B127CF8);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D78, &qword_21B127CF8);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B079080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D80, &qword_21B127D00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_21AF99BE0(v22, &qword_27CD46D80, &qword_21B127D00);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45B88, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D80, &qword_21B127D00);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D80, &qword_21B127D00);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D80, &qword_21B127D00);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D80, &qword_21B127D00);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_21B079578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46D88, &qword_21B127D08);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    sub_21B03179C();
    sub_21B03179C();
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_21AF99BE0(v22, &qword_27CD46D88, &qword_21B127D08);
      sub_21B03179C();
      sub_21B03179C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_21B03183C();
    }
  }

  sub_21B099CBC(&qword_27CD45BB0, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
  v23 = v33;
  sub_21B1120B4();
  if (v23)
  {
    v24 = v22;
    return sub_21AF99BE0(v24, &qword_27CD46D88, &qword_21B127D08);
  }

  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_21AF99BE0(v22, &qword_27CD46D88, &qword_21B127D08);
    v24 = v20;
    return sub_21AF99BE0(v24, &qword_27CD46D88, &qword_21B127D08);
  }

  sub_21B03179C();
  if (EnumTagSinglePayload != 1)
  {
    sub_21B111F74();
  }

  v26 = v31;
  sub_21AF99BE0(v22, &qword_27CD46D88, &qword_21B127D08);
  v27 = v29;
  sub_21AF99BE0(v29, &qword_27CD434B8, &unk_21B116A90);
  sub_21B03179C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.traverse<A>(visitor:)()
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_703();
  sub_21B0AA940();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  OUTLINED_FUNCTION_37_1(v0, 1, v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_52();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v98 = OUTLINED_FUNCTION_30_3();
        sub_21B07A000(v98, v99, v100, v101);
        break;
      case 2u:
        v82 = OUTLINED_FUNCTION_30_3();
        sub_21B07A214(v82, v83, v84, v85);
        break;
      case 3u:
        v90 = OUTLINED_FUNCTION_30_3();
        sub_21B07A428(v90, v91, v92, v93);
        break;
      case 4u:
        v58 = OUTLINED_FUNCTION_30_3();
        sub_21B07A63C(v58, v59, v60, v61);
        break;
      case 5u:
        v118 = OUTLINED_FUNCTION_30_3();
        sub_21B07A850(v118, v119, v120, v121);
        break;
      case 6u:
        v130 = OUTLINED_FUNCTION_30_3();
        sub_21B07AA64(v130, v131, v132, v133);
        break;
      case 7u:
        v94 = OUTLINED_FUNCTION_30_3();
        sub_21B07AC78(v94, v95, v96, v97);
        break;
      case 8u:
        v142 = OUTLINED_FUNCTION_30_3();
        sub_21B07AE8C(v142, v143, v144, v145);
        break;
      case 9u:
        v70 = OUTLINED_FUNCTION_30_3();
        sub_21B07B0A0(v70, v71, v72, v73);
        break;
      case 0xAu:
        v138 = OUTLINED_FUNCTION_30_3();
        sub_21B07B2B4(v138, v139, v140, v141);
        break;
      case 0xBu:
        v54 = OUTLINED_FUNCTION_30_3();
        sub_21B07B4C8(v54, v55, v56, v57);
        break;
      case 0xCu:
        v66 = OUTLINED_FUNCTION_30_3();
        sub_21B07B6DC(v66, v67, v68, v69);
        break;
      case 0xDu:
        v126 = OUTLINED_FUNCTION_30_3();
        sub_21B07B8F0(v126, v127, v128, v129);
        break;
      case 0xEu:
        v46 = OUTLINED_FUNCTION_30_3();
        sub_21B07BB04(v46, v47, v48, v49);
        break;
      case 0xFu:
        v86 = OUTLINED_FUNCTION_30_3();
        sub_21B07BD18(v86, v87, v88, v89);
        break;
      case 0x10u:
        v38 = OUTLINED_FUNCTION_30_3();
        sub_21B07BF2C(v38, v39, v40, v41);
        break;
      case 0x11u:
        v106 = OUTLINED_FUNCTION_30_3();
        sub_21B07C140(v106, v107, v108, v109);
        break;
      case 0x12u:
        v134 = OUTLINED_FUNCTION_30_3();
        sub_21B07C354(v134, v135, v136, v137);
        break;
      case 0x13u:
        v162 = OUTLINED_FUNCTION_30_3();
        sub_21B07C568(v162, v163, v164, v165);
        break;
      case 0x14u:
        v114 = OUTLINED_FUNCTION_30_3();
        sub_21B07C77C(v114, v115, v116, v117);
        break;
      case 0x15u:
        v122 = OUTLINED_FUNCTION_30_3();
        sub_21B07C990(v122, v123, v124, v125);
        break;
      case 0x16u:
        v154 = OUTLINED_FUNCTION_30_3();
        sub_21B07CBA4(v154, v155, v156, v157);
        break;
      case 0x17u:
        v170 = OUTLINED_FUNCTION_30_3();
        sub_21B07CDB8(v170, v171, v172, v173);
        break;
      case 0x18u:
        v78 = OUTLINED_FUNCTION_30_3();
        sub_21B07CFCC(v78, v79, v80, v81);
        break;
      case 0x19u:
        v74 = OUTLINED_FUNCTION_30_3();
        sub_21B07D1E0(v74, v75, v76, v77);
        break;
      case 0x1Au:
        v186 = OUTLINED_FUNCTION_30_3();
        sub_21B07D3F4(v186, v187, v188, v189);
        break;
      case 0x1Bu:
        v30 = OUTLINED_FUNCTION_30_3();
        sub_21B07D608(v30, v31, v32, v33);
        break;
      case 0x1Cu:
        v174 = OUTLINED_FUNCTION_30_3();
        sub_21B07D81C(v174, v175, v176, v177);
        break;
      case 0x1Du:
        v178 = OUTLINED_FUNCTION_30_3();
        sub_21B07DA30(v178, v179, v180, v181);
        break;
      case 0x1Eu:
        v146 = OUTLINED_FUNCTION_30_3();
        sub_21B07DC44(v146, v147, v148, v149);
        break;
      case 0x1Fu:
        v102 = OUTLINED_FUNCTION_30_3();
        sub_21B07DE58(v102, v103, v104, v105);
        break;
      case 0x20u:
        v150 = OUTLINED_FUNCTION_30_3();
        sub_21B07E06C(v150, v151, v152, v153);
        break;
      case 0x21u:
        v50 = OUTLINED_FUNCTION_30_3();
        sub_21B07E280(v50, v51, v52, v53);
        break;
      case 0x22u:
        v34 = OUTLINED_FUNCTION_30_3();
        sub_21B07E494(v34, v35, v36, v37);
        break;
      case 0x23u:
        v22 = OUTLINED_FUNCTION_30_3();
        sub_21B07E6A8(v22, v23, v24, v25);
        break;
      case 0x24u:
        v26 = OUTLINED_FUNCTION_30_3();
        sub_21B07E8BC(v26, v27, v28, v29);
        break;
      case 0x25u:
        v18 = OUTLINED_FUNCTION_30_3();
        sub_21B07EAD0(v18, v19, v20, v21);
        break;
      case 0x26u:
        v182 = OUTLINED_FUNCTION_30_3();
        sub_21B07ECE4(v182, v183, v184, v185);
        break;
      case 0x27u:
        v158 = OUTLINED_FUNCTION_30_3();
        sub_21B07EEF8(v158, v159, v160, v161);
        break;
      case 0x28u:
        v62 = OUTLINED_FUNCTION_30_3();
        sub_21B07F10C(v62, v63, v64, v65);
        break;
      case 0x29u:
        v110 = OUTLINED_FUNCTION_30_3();
        sub_21B07F320(v110, v111, v112, v113);
        break;
      case 0x2Au:
        v166 = OUTLINED_FUNCTION_30_3();
        sub_21B07F534(v166, v167, v168, v169);
        break;
      case 0x2Bu:
        v14 = OUTLINED_FUNCTION_30_3();
        sub_21B07F748(v14, v15, v16, v17);
        break;
      case 0x2Cu:
        v42 = OUTLINED_FUNCTION_30_3();
        sub_21B07F95C(v42, v43, v44, v45);
        break;
      default:
        v10 = OUTLINED_FUNCTION_30_3();
        sub_21B079DF0(v10, v11, v12, v13);
        break;
    }

    v3 = v2;
    if (v2)
    {
      OUTLINED_FUNCTION_23_4();
      return sub_21B03183C();
    }

    OUTLINED_FUNCTION_23_4();
    sub_21B03183C();
  }

  v191 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
  if (!*(v1 + *(v191 + 20)) || (OUTLINED_FUNCTION_445(), result = sub_21B112204(), !v3))
  {
    v192 = v1 + *(v191 + 24);
    return sub_21B111EA4();
  }

  return result;
}

uint64_t sub_21B079DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45AA8, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45AF0, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD44DD8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD44DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45B28, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07AE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45B70, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45C10, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45C40, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45C58, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  v9 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45C70, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45C88, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07BB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  v9 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45CA0, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45CB8, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07BF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  v9 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45D00, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45D60, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45D78, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45D90, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45DD8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45DF0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45E08, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45E20, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45E38, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45E50, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45E68, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07DA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45E80, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45E98, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07DE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45EB0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45EC8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45EF0, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45F08, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45C28, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45F20, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45DC0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07EEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD46008, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45F38, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45B58, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45B88, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_21B0AA940();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_21AF99BE0(v7, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45BB0, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
      sub_21B112224();
      return sub_21B03183C();
    }

    result = sub_21B03183C();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B07FE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46940, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B07FECC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F50, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B07FF3C()
{
  sub_21B099CBC(&qword_27CD45F50, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return sub_21B112114();
}

uint64_t sub_21B07FFC8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44580);
  __swift_project_value_buffer(v0, qword_27CD44580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "experimentId";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "treatmentId";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "experimentNamespaceId";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF84A5C();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SkipSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v0))
    {
      if (!*(v1 + 24) || (v5 = *(v1 + 32), OUTLINED_FUNCTION_472(), sub_21B09A730(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
      {
        v6 = *(v1 + 40);
        v7 = *(v1 + 48);
        OUTLINED_FUNCTION_10_4();
        if (!v8 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
        {
          v9 = *(v1 + 56);
          v10 = *(v1 + 64);
          OUTLINED_FUNCTION_10_4();
          if (!v11 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
          {
            v12 = *(v1 + 72);
            v13 = *(v1 + 80);
            OUTLINED_FUNCTION_10_4();
            if (!v14 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
            {
              v15 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0) + 40);
              OUTLINED_FUNCTION_27_2();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B08050C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46938, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B08058C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0805FC()
{
  sub_21B099CBC(&qword_27CD45F68, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return sub_21B112114();
}

uint64_t sub_21B080694()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44598);
  __swift_project_value_buffer(v0, qword_27CD44598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uuid";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF84A5C();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CacheHitFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_10_4();
    if (!v4 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v0))
    {
      if (!*(v1 + 24) || (v5 = *(v1 + 32), OUTLINED_FUNCTION_472(), sub_21B09A730(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
      {
        v6 = *(v1 + 40);
        v7 = *(v1 + 48);
        OUTLINED_FUNCTION_10_4();
        if (!v8 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v0))
        {
          v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0) + 32);
          OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_21B080B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46930, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B080B88(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B080BF8()
{
  sub_21B099CBC(&qword_27CD45F80, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return sub_21B112114();
}

uint64_t sub_21B080C84()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD445B0);
  __swift_project_value_buffer(v0, qword_27CD445B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namespaceId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experimentId";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "treatmentId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deploymentId";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FF4();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_26_3();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_10_4();
  if (!v5 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_10_4();
    if (!v9 || (OUTLINED_FUNCTION_60_0(), result = sub_21B1121E4(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_10_4();
      if (!v12 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
      {
        if (!*(v2 + 48) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v1))
        {
          if (!*(v2 + 52) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121A4(), !v1))
          {
            v13 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0) + 36);
            return OUTLINED_FUNCTION_27_2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ExperimentInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_30_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_629();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_21B112D04() & 1) == 0 || *(v3 + 48) != *(v2 + 48) || *(v3 + 52) != *(v2 + 52))
  {
    return 0;
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  OUTLINED_FUNCTION_830(v13);
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v14, v15);
  return OUTLINED_FUNCTION_40_1() & 1;
}

uint64_t sub_21B081218(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46928, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B081298(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45F98, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B081308()
{
  sub_21B099CBC(&qword_27CD45F98, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return sub_21B112114();
}

uint64_t sub_21B081394()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD445C8);
  __swift_project_value_buffer(v0, qword_27CD445C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_21B117F80;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "agent";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "userGuidString";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "resourceVersions";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sessionStart";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "previousSessionEndReason";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "removeTimestamps";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "parsecDeveloperID";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "duEnabled";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 14;
  *v22 = "countryCode";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 15;
  *v24 = "locale";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 16;
  *v26 = "usageSinceLookback";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 17;
  *v28 = "cohortsFeedback";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 18;
  *v30 = "devicePersistentD20";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 19;
  *v32 = "privateRelayStatus";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 20;
  *v34 = "isInternalCarry";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 21;
  *v36 = "experimentInfo";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 22;
  *v38 = "searchOptOut";
  *(v38 + 1) = 12;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 101;
  *v40 = "jsonFeedback";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 200;
  *v42 = "feedback";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B0819D4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_21B112334();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usageSinceLookback;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cohortsFeedback;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20) = 0;
  v7 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo) = v1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback) = xmmword_21B117F10;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback) = v1;
  return v0;
}

uint64_t sub_21B081AF8(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44BB0, &unk_21B118228) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v74 = &v61 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44BA0, &qword_21B118220) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v69 = &v61 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = sub_21B112334();
  *(v1 + 64) = 0;
  v62 = (v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v63 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v64 = (v1 + 96);
  *(v1 + 104) = 0;
  v65 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v66 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usageSinceLookback;
  v67 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usageSinceLookback;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cohortsFeedback;
  v68 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__cohortsFeedback;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v70 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20) = 0;
  v11 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus;
  v71 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus;
  *v11 = 0;
  *(v11 + 8) = 1;
  v72 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry) = 0;
  v73 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo;
  v12 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo) = MEMORY[0x277D84F90];
  v75 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut) = 0;
  v76 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback);
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback) = xmmword_21B117F10;
  v77 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback) = v12;
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
  v19 = *(a1 + 48);
  swift_beginAccess();
  v20 = *(v1 + 48);
  *(v1 + 48) = v19;

  swift_beginAccess();
  v21 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  v22 = *(a1 + 64);
  LOBYTE(v16) = *(a1 + 72);
  v23 = v62;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 72) = v16;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v22;
  swift_beginAccess();
  v25 = *(a1 + 80);
  v24 = *(a1 + 88);
  v26 = v63;
  swift_beginAccess();
  v27 = *(v1 + 88);
  *v26 = v25;
  *(v1 + 88) = v24;

  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 96);
  v28 = v64;
  swift_beginAccess();
  *v28 = v24;
  swift_beginAccess();
  v30 = *(a1 + 104);
  v29 = *(a1 + 112);
  v31 = v65;
  swift_beginAccess();
  v32 = *(v1 + 112);
  *v31 = v30;
  *(v1 + 112) = v29;

  swift_beginAccess();
  v34 = *(a1 + 120);
  v33 = *(a1 + 128);
  v35 = v66;
  swift_beginAccess();
  v36 = *(v1 + 128);
  *v35 = v34;
  *(v1 + 128) = v33;

  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__devicePersistentD20;
  swift_beginAccess();
  LODWORD(v37) = *(a1 + v37);
  v38 = v70;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__privateRelayStatus);
  swift_beginAccess();
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v41 = v71;
  swift_beginAccess();
  *v41 = v40;
  *(v41 + 8) = v39;
  v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInternalCarry;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v72;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__experimentInfo;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = v73;
  swift_beginAccess();
  v47 = *(v1 + v46);
  *(v1 + v46) = v45;

  v48 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__searchOptOut;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v75;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__jsonFeedback);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v76;
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  *v53 = v52;
  v53[1] = v51;
  sub_21AF99818(v52, v51);
  sub_21AF99728(v54, v55);
  v56 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics38Apple_Parsec_Feedback_V2_ClientSessionP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__feedback;
  swift_beginAccess();
  v57 = *(a1 + v56);

  v58 = v77;
  swift_beginAccess();
  v59 = *(v1 + v58);
  *(v1 + v58) = v57;

  return v1;
}