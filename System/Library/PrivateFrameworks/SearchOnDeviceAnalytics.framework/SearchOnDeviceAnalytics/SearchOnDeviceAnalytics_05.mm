uint64_t sub_21AFED5B0()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v2 = *(v1(v0) + 32);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_163(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_110();

  return v7(v6);
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v0) + 32);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  OUTLINED_FUNCTION_690(v3);
  v4 = *(v3 + 36);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Feedback_V2_ResultRankingFeedback.result.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 40));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.hiddenResults.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_21AFED97C()
{
  v0 = OUTLINED_FUNCTION_338();
  v2 = *(v1(v0) + 36);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_68();

  return v7(v6);
}

uint64_t sub_21AFEDA00()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v2 = *(v1(v0) + 36);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_163(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_110();

  return v7(v6);
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v0) + 36);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_638(v3);
  v4 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v8) + 24);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 24), &qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ResultFeedback.result.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 24));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFEDDCC()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD434D8, &qword_21B116AB0);
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_13_6();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD434D8, &qword_21B116AB0);
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v0) + 20);
  return OUTLINED_FUNCTION_87();
}

void Apple_Parsec_Feedback_V2_ResultEngagementFeedback.actionTarget.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.actionTarget.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v8) + 48);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 48), &qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 48));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

uint64_t sub_21AFEE340()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_263();
  v8 = *(v1(0) + 48);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v9 = v0(0);
  OUTLINED_FUNCTION_220(v9);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFEE408()
{
  v1 = OUTLINED_FUNCTION_218();
  v3 = *(v2(v1) + 48);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.titleText.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.titleText.setter()
{
  OUTLINED_FUNCTION_99();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v0) + 44);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_585(a1);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_724(1);
  *(v1 + 48) = 0;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  v5 = v1 + *(v4 + 44);
  sub_21B111EB4();
  v6 = *(v4 + 48);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v7 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandType.setter()
{
  OUTLINED_FUNCTION_798();
  v5 = OUTLINED_FUNCTION_275(v4);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(v6);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B04D148(v10);
    OUTLINED_FUNCTION_34_1(v11);
  }

  OUTLINED_FUNCTION_14_4();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandType.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v3);
  OUTLINED_FUNCTION_182(v4);
  OUTLINED_FUNCTION_344();
  v5 = *(v0 + 24);
  OUTLINED_FUNCTION_49_0(*(v0 + 16));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEE6E4()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_159(v4);
  v5 = OUTLINED_FUNCTION_460();
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_425();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v7);
    OUTLINED_FUNCTION_391(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B04D148(v9);
    OUTLINED_FUNCTION_50_0(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  OUTLINED_FUNCTION_114();

  free(v11);
}

void sub_21AFEE788(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.setter();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_281(v5);
  OUTLINED_FUNCTION_371();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  OUTLINED_FUNCTION_354(v1);
  return *(v0 + 48);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v3);
  v5 = OUTLINED_FUNCTION_650(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B04D148(v8);
    OUTLINED_FUNCTION_20_1(v9);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v6 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_225(v5);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 72) = *(v0 + 48);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEE9B0(uint64_t a1)
{
  OUTLINED_FUNCTION_159(a1);
  v5 = OUTLINED_FUNCTION_500();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_279();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v7);
    OUTLINED_FUNCTION_391(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B04D148(v9);
    OUTLINED_FUNCTION_24_1(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  OUTLINED_FUNCTION_405(v1);
  OUTLINED_FUNCTION_13_3();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return OUTLINED_FUNCTION_52();
}

void sub_21AFEEA80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter()
{
  OUTLINED_FUNCTION_798();
  v4 = OUTLINED_FUNCTION_213();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  v6 = OUTLINED_FUNCTION_651(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B04D148(v9);
    OUTLINED_FUNCTION_454(v10);
  }

  OUTLINED_FUNCTION_14_4();
  v11 = *(v7 + 64);
  *(v7 + 56) = v2;
  *(v7 + 64) = v0;

  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_281(v5);
  OUTLINED_FUNCTION_12_4();
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

void sub_21AFEEB9C(uint64_t a1)
{
  OUTLINED_FUNCTION_186(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_716();
    OUTLINED_FUNCTION_84();
    Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_528();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_353();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v10);
      OUTLINED_FUNCTION_391(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_16_1();
      v13 = sub_21B04D148(v12);
      OUTLINED_FUNCTION_24_1(v13);
    }

    OUTLINED_FUNCTION_504();
    v14 = *(v9 + 64);
    *(v9 + 56) = v4;
    *(v9 + 64) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v8);
  OUTLINED_FUNCTION_405(v9);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B04D148(v10);
    OUTLINED_FUNCTION_454(v11);
  }

  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_290(v12);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_469();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_223(v3);
  v4 = OUTLINED_FUNCTION_455();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_222(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_135(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_467(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v15);
  OUTLINED_FUNCTION_405(v16);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.hasResult.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v6);
  OUTLINED_FUNCTION_405(v7);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_36_3(v8);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CommandEngagementFeedback.clearResult()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B04D148(v11);
    OUTLINED_FUNCTION_20_1(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_274(v13);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_225(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_839();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEF228(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CommandEngagementFeedback.resultSectionID.setter();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.resultSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.triggerEvent.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.contactActionType.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didDisplayHandleOptions.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_54_0(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_200(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didSelectFromOptionsMenu.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_54_0(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_200(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFEF784()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_522();
  v5 = OUTLINED_FUNCTION_455();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_73();
  v10 = v3(0);
  OUTLINED_FUNCTION_308(v10);
  OUTLINED_FUNCTION_433();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_26_2(v4);
  if (v11)
  {
    *(v0 + 16) = 0;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 24) = v1;
    v12 = v0 + *(v2 + 40);
    sub_21B111EB4();
    OUTLINED_FUNCTION_26_2(v4);
    if (!v11)
    {
      sub_21AF99BE0(v4, &qword_27CD449E8, &qword_21B118150);
    }
  }

  else
  {
    OUTLINED_FUNCTION_625();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.photosAttributes.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B04D148(v10);
    OUTLINED_FUNCTION_454(v11);
  }

  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_290(v12);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.photosAttributes.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v8);
  OUTLINED_FUNCTION_135(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v14);
  OUTLINED_FUNCTION_405(v15);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD449E8, &qword_21B118150);
    }
  }

  else
  {
    OUTLINED_FUNCTION_209();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.hasPhotosAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v6);
  OUTLINED_FUNCTION_405(v7);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_36_3(v8);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CommandEngagementFeedback.clearPhotosAttributes()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B04D148(v11);
    OUTLINED_FUNCTION_20_1(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_274(v13);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t sub_21AFEFCE8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = OUTLINED_FUNCTION_12_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v10 = OUTLINED_FUNCTION_18_2();
  v11 = *((a1)(v10) + 40);
  OUTLINED_FUNCTION_487();
  sub_21B0AA940();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v12);
  if (v13)
  {
    sub_21B111EB4();
    v14 = *(a1 + 20);
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    result = OUTLINED_FUNCTION_194();
    if (a2 != 1)
    {
      return sub_21AF99BE0(v2, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t sub_21AFEFE1C()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v3 = v2(v1);
  sub_21AF99BE0(v0 + *(v3 + 40), &qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_VisibleResultsFeedback.goTakeoverResult.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 40));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

uint64_t sub_21AFF0004()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_263();
  v8 = *(v1(0) + 40);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v9 = v0(0);
  OUTLINED_FUNCTION_220(v9);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFF00CC()
{
  v1 = OUTLINED_FUNCTION_218();
  v3 = *(v2(v1) + 40);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.uniqueIdentifiersOfVisibleCardSections.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v0) + 36);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_841(MEMORY[0x277D84F90]);
  *(a1 + 24) = 1;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  OUTLINED_FUNCTION_638(v3);
  v4 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_300(a1);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  return OUTLINED_FUNCTION_674(v4);
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  return OUTLINED_FUNCTION_674(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v9 = OUTLINED_FUNCTION_18_2();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v9) + 32);
  OUTLINED_FUNCTION_307();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_33_4();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v1;
    OUTLINED_FUNCTION_827();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v2, &qword_27CD44A58, &qword_21B118160);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 32), &qword_27CD44A58, &qword_21B118160);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 32));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v18 = v11 + *(v9 + 28);
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44A58, &qword_21B118160);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_84();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFF071C()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD44A58, &qword_21B118160);
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_333();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44A58, &qword_21B118160);
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_300(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  OUTLINED_FUNCTION_544(v3);
  v4 = OUTLINED_FUNCTION_658();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSections.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

void Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSectionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSectionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 104) = *result;
  *(v1 + 112) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.buttons.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.leadingSwipeButtonItems.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.trailingSwipeButtonItems.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v0) + 64);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276();
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 96) = MEMORY[0x277D84F90];
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = v2;
  *(a1 + 136) = v3;
  *(a1 + 144) = v3;
  *(a1 + 152) = v3;
  v4 = a1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0) + 64);
  return sub_21B111EB4();
}

void Apple_Parsec_Feedback_V2_ButtonFeedback.commandType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.commandType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(v0) + 32);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_336(a1);
  v2 = OUTLINED_FUNCTION_518();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(v2);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  return OUTLINED_FUNCTION_690(v3);
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.cardSections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_21AFF0EC0()
{
  v0 = OUTLINED_FUNCTION_338();
  v2 = *(v1(v0) + 24);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_68();

  return v7(v6);
}

uint64_t sub_21AFF0F44()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_163(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_110();

  return v7(v6);
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.cardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v8) + 32);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &qword_27CD44A60, &qword_21B118168);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.cardSection.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 32), &qword_27CD44A60, &qword_21B118168);
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardSectionFeedback.cardSection.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_294(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v8);
  OUTLINED_FUNCTION_140(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_497(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_93(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v14);
  OUTLINED_FUNCTION_256(*(v15 + 32));
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_241();
    OUTLINED_FUNCTION_608(v17);
    OUTLINED_FUNCTION_369(v18);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD44A60, &qword_21B118168);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFF125C()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD44A60, &qword_21B118168);
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_330();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44A60, &qword_21B118168);
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t sub_21AFF136C()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_263();
  v8 = *(v1(0) + 32);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v9 = v0(0);
  OUTLINED_FUNCTION_220(v9);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFF1434()
{
  v1 = OUTLINED_FUNCTION_218();
  v3 = *(v2(v1) + 32);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_283(a1);
  v2 = OUTLINED_FUNCTION_840(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v2);
  OUTLINED_FUNCTION_544(v3);
  v4 = OUTLINED_FUNCTION_658();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_225(v3);
  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_757();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destination.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B054088(v10);
    OUTLINED_FUNCTION_454(v11);
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_290(v12);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destination.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v14);
  OUTLINED_FUNCTION_405(v15);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_310(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.hasDestination.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v6);
  OUTLINED_FUNCTION_405(v7);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_36_3(v8);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.clearDestination()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B054088(v11);
    OUTLINED_FUNCTION_20_1(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274(v13);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.triggerEvent.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.actionCardType.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSection.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B054088(v10);
    OUTLINED_FUNCTION_454(v11);
  }

  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_290(v12);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSection.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v8);
  OUTLINED_FUNCTION_135(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v14);
  OUTLINED_FUNCTION_405(v15);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_241();
    OUTLINED_FUNCTION_608(v17);
    OUTLINED_FUNCTION_369(v18);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD44A60, &qword_21B118168);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.hasCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v6);
  OUTLINED_FUNCTION_405(v7);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_36_3(v8);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.clearCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B054088(v11);
    OUTLINED_FUNCTION_20_1(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_274(v13);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destinationWasParpunchout.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_54_0(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_200(v3);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF2114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.parPunchoutActionTarget.setter();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.parPunchoutActionTarget.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

void sub_21AFF2270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSectionID.setter();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

void sub_21AFF23CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.resultID.setter();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.resultID.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.actionTarget.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.destination.getter()
{
  v1 = OUTLINED_FUNCTION_111();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_18_2();
  v7 = *(type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v6) + 44);
  OUTLINED_FUNCTION_307();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_532(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_33_4();
    if (!v9)
    {
      return sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.destination.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 44), &qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.destination.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_294(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_140(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_497(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_93(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v14);
  OUTLINED_FUNCTION_256(*(v15 + 44));
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_310(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_21AFF29D4()
{
  v0 = OUTLINED_FUNCTION_338();
  v2 = *(v1(v0) + 40);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_68();

  return v7(v6);
}

uint64_t sub_21AFF2A58()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v2 = *(v1(v0) + 40);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_163(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_110();

  return v7(v6);
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v0) + 40);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_376(a1);
  *(v1 + 24) = 0;
  OUTLINED_FUNCTION_732(v2);
  v3 = OUTLINED_FUNCTION_731(0xE000000000000000);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v3);
  OUTLINED_FUNCTION_723(v4);
  v5 = *(v4 + 44);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v6 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_21AFF2B78()
{
  v1 = OUTLINED_FUNCTION_450();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402(v3);
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 16);
}

void sub_21AFF2BF8()
{
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_451();
  v6 = OUTLINED_FUNCTION_187();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_867(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_391(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_16_1();
    v10 = v3(v12);
    *(v2 + v5) = v10;
  }

  OUTLINED_FUNCTION_14_4();
  *(v10 + 16) = v0;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_225(v3);
  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_757();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF2CFC()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_59_0(v3);
  v5 = *(v4 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 88);
    v12 = *(v0 + 80);
    v13 = v2(0);
    OUTLINED_FUNCTION_391(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_16_1();
    v15 = v1(v14);
    OUTLINED_FUNCTION_758(v15);
  }

  OUTLINED_FUNCTION_15_4();
  *(v10 + 16) = v5;
  OUTLINED_FUNCTION_114();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.destination.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B056D24(v10);
    OUTLINED_FUNCTION_454(v11);
  }

  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_290(v12);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.destination.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v14);
  OUTLINED_FUNCTION_405(v15);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_310(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.hasDestination.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v6);
  OUTLINED_FUNCTION_405(v7);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_36_3(v8);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.clearDestination()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B056D24(v11);
    OUTLINED_FUNCTION_20_1(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274(v13);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.triggerEvent.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.actionCardType.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF3388()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_522();
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_73();
  v8 = v1(0);
  OUTLINED_FUNCTION_308(v8);
  OUTLINED_FUNCTION_433();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_26_2(v2);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()(v0);
    OUTLINED_FUNCTION_26_2(v2);
    if (!v9)
    {
      sub_21AF99BE0(v2, &qword_27CD44A60, &qword_21B118168);
    }
  }

  else
  {
    OUTLINED_FUNCTION_625();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSection.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B056D24(v10);
    OUTLINED_FUNCTION_454(v11);
  }

  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_290(v12);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSection.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v8);
  OUTLINED_FUNCTION_135(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v14);
  OUTLINED_FUNCTION_405(v15);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v16)
  {
    OUTLINED_FUNCTION_241();
    OUTLINED_FUNCTION_608(v17);
    OUTLINED_FUNCTION_369(v18);
    OUTLINED_FUNCTION_27_4();
    if (!v16)
    {
      sub_21AF99BE0(v0, &qword_27CD44A60, &qword_21B118168);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.hasCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v6);
  OUTLINED_FUNCTION_405(v7);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_36_3(v8);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.clearCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_391(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B056D24(v11);
    OUTLINED_FUNCTION_20_1(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_274(v13);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.productPageResult.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_266(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF3948(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSectionID.setter();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

void sub_21AFF3AA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.resultID.setter();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.resultID.modify()
{
  v0 = OUTLINED_FUNCTION_471();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_136(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254(v3);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_521();

  return OUTLINED_FUNCTION_109();
}

void Apple_Parsec_Feedback_V2_StartSearchFeedback.triggerEvent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.triggerEvent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void Apple_Parsec_Feedback_V2_StartSearchFeedback.searchType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.searchType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(v0) + 40);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_283(a1);
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  return OUTLINED_FUNCTION_723(started);
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.uuid.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.uuid.setter()
{
  OUTLINED_FUNCTION_99();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_300(a1);
  *(v1 + 16) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  return OUTLINED_FUNCTION_672(v3);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.headers.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.trigger.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_44_0(a1);
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.getter(void *a1@<X8>)
{
  if (*(v1 + 96) < 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 88);
  }

  *a1 = v2;
  OUTLINED_FUNCTION_671(a1);
}

void (*Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 96);
  if (v2 < 0)
  {
    v3 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = *(v1 + 88);
  }

  *a1 = v3;
  *(a1 + 8) = v2 & 1;
  return sub_21AFF40B4;
}

void sub_21AFF40B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_804(a1[2]);
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.lookupSelectionType.getter(void *a1@<X8>)
{
  if (*(v1 + 96) <= -3)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_671(a1);
}

void (*Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.lookupSelectionType.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 96);
  if (v2 <= -3)
  {
    v3 = *(v1 + 88);
  }

  else
  {
    v3 = 0;
    LOBYTE(v2) = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v2 & 1;
  return sub_21AFF4148;
}

void sub_21AFF4148(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) | 0x80u;
  OUTLINED_FUNCTION_804(a1[2]);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.bodyData.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = OUTLINED_FUNCTION_52();
  sub_21AF99818(v3, v4);
  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.bodyData.setter()
{
  OUTLINED_FUNCTION_99();
  result = sub_21AF99728(*(v1 + 104), *(v1 + 112));
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.experimentID.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.experimentID.setter()
{
  OUTLINED_FUNCTION_99();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.treatmentID.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.treatmentID.setter()
{
  OUTLINED_FUNCTION_99();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 152) = *result;
  *(v1 + 160) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_100();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v0) + 72);
  v2 = sub_21B111EC4();
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_68();

  return v6(v5);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v0) + 72);
  v2 = sub_21B111EC4();
  OUTLINED_FUNCTION_163(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_110();

  return v6(v5);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v0) + 72);
  return OUTLINED_FUNCTION_87();
}

uint64_t static Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      return sub_21AFB4A88(result, v4 & 1, v5);
    }

    return 0;
  }

  if ((v6 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v6)
  {
    v7 = *a2;
    switch(v5)
    {
      case 1:
        if (result != 1)
        {
          return 0;
        }

        break;
      case 2:
        return result == 2;
      case 3:
        return result == 3;
      default:
        return !result;
    }
  }

  else
  {
    return result == v5;
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501(a1);
  v2[2] = 0xE000000000000000;
  v2[3] = 0;
  v2[4] = 0xE000000000000000;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  *(v1 + 64) = sub_21B112334();
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = -2;
  *(v1 + 104) = xmmword_21B117F10;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0xE000000000000000;
  *(v1 + 152) = 0;
  *(v1 + 160) = 1;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  v4 = v1 + *(started + 72);
  return sub_21B111EB4();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.partialClientIp.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.partialClientIp.setter()
{
  OUTLINED_FUNCTION_99();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v8) + 68);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    sub_21B111EB4();
    if (qword_27CD426E8 != -1)
    {
      OUTLINED_FUNCTION_620();
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD44AE8, &qword_21B118170);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 68), &qword_27CD44AE8, &qword_21B118170);
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 68));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD426E8 != -1)
    {
      OUTLINED_FUNCTION_620();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD44AE8, &qword_21B118170);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFF499C()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD44AE8, &qword_21B118170);
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_328();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44AE8, &qword_21B118170);
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.hasTimingData.getter()
{
  v1 = OUTLINED_FUNCTION_109();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  v8 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v7) + 68);
  OUTLINED_FUNCTION_864();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_36_3(v9);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.clearTimingData()()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  sub_21AF99BE0(v0 + *(v1 + 68), &qword_27CD44AE8, &qword_21B118170);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_34_0();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  OUTLINED_FUNCTION_44_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.edge.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.edge.setter()
{
  OUTLINED_FUNCTION_99();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_21AFF4C80()
{
  v0 = OUTLINED_FUNCTION_338();
  v2 = *(v1(v0) + 64);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_68();

  return v7(v6);
}

uint64_t sub_21AFF4D04()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v2 = *(v1(v0) + 64);
  v3 = sub_21B111EC4();
  OUTLINED_FUNCTION_163(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_110();

  return v7(v6);
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v0) + 64);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501(a1);
  *(v2 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0xE000000000000000;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  v4 = v1 + *(v3 + 64);
  sub_21B111EB4();
  v5 = *(v3 + 68);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  v6 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.init()()
{
  OUTLINED_FUNCTION_841(0xE000000000000000);
  OUTLINED_FUNCTION_752();
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  return OUTLINED_FUNCTION_672(CommandForFeedback);
}

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(v0) + 36);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.init()()
{
  v1 = OUTLINED_FUNCTION_100();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(v1);
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return OUTLINED_FUNCTION_694(v2);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_137(v1);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  OUTLINED_FUNCTION_225(started);
  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_757();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.getter()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_52();
}

void sub_21AFF51A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.setter();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.setter()
{
  OUTLINED_FUNCTION_798();
  v4 = OUTLINED_FUNCTION_213();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_651(started);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B05C248(v8);
    OUTLINED_FUNCTION_454(v9);
  }

  OUTLINED_FUNCTION_14_4();
  v10 = *(v7 + 32);
  *(v7 + 24) = v2;
  *(v7 + 32) = v0;

  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_281(started);
  OUTLINED_FUNCTION_12_4();
  v6 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

void sub_21AFF52B4(uint64_t a1)
{
  OUTLINED_FUNCTION_186(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_716();
    OUTLINED_FUNCTION_84();
    Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_528();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_349();
      v12 = OUTLINED_FUNCTION_16_1();
      v13 = sub_21B05C248(v12);
      OUTLINED_FUNCTION_24_1(v13);
    }

    OUTLINED_FUNCTION_504();
    v14 = *(v9 + 32);
    *(v9 + 24) = v4;
    *(v9 + 32) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.getter()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_52();
}

void sub_21AFF5388(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.setter();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.setter()
{
  OUTLINED_FUNCTION_798();
  v4 = OUTLINED_FUNCTION_213();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_651(started);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B05C248(v8);
    OUTLINED_FUNCTION_454(v9);
  }

  OUTLINED_FUNCTION_14_4();
  v10 = *(v7 + 48);
  *(v7 + 40) = v2;
  *(v7 + 48) = v0;

  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_281(started);
  OUTLINED_FUNCTION_12_4();
  v6 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 40);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

void sub_21AFF5498(uint64_t a1)
{
  OUTLINED_FUNCTION_186(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_716();
    OUTLINED_FUNCTION_84();
    Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_528();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_349();
      v12 = OUTLINED_FUNCTION_16_1();
      v13 = sub_21B05C248(v12);
      OUTLINED_FUNCTION_24_1(v13);
    }

    OUTLINED_FUNCTION_504();
    v14 = *(v9 + 48);
    *(v9 + 40) = v4;
    *(v9 + 48) = v3;
  }

  free(v1);
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.triggerEvent.getter()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_38_0(*(v0 + 56));
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.triggerEvent.setter()
{
  OUTLINED_FUNCTION_798();
  v5 = OUTLINED_FUNCTION_275(v4);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(started);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05C248(v9);
    OUTLINED_FUNCTION_34_1(v10);
  }

  OUTLINED_FUNCTION_14_4();
  *(v8 + 56) = v1;
  *(v8 + 64) = v2;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.triggerEvent.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  OUTLINED_FUNCTION_182(started);
  OUTLINED_FUNCTION_12_4();
  v5 = *(v0 + 64);
  OUTLINED_FUNCTION_49_0(*(v0 + 56));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF5634()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_159(v5);
  v6 = OUTLINED_FUNCTION_460();
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_349();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B05C248(v10);
    OUTLINED_FUNCTION_50_0(v11);
  }

  OUTLINED_FUNCTION_15_4();
  *(v7 + 56) = v2;
  *(v7 + 64) = v3;
  OUTLINED_FUNCTION_114();

  free(v12);
}

uint64_t sub_21AFF56D4()
{
  v1 = OUTLINED_FUNCTION_450();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402(v3);
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 72);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.queryID.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  v5 = OUTLINED_FUNCTION_650(started);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05C248(v7);
    OUTLINED_FUNCTION_20_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v6 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.queryID.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_137(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_225(started);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 72) = *(v0 + 72);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF57D4(uint64_t a1)
{
  OUTLINED_FUNCTION_159(a1);
  v5 = OUTLINED_FUNCTION_500();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_279();
    started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback._StorageClass(v7);
    OUTLINED_FUNCTION_391(started);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05C248(v9);
    OUTLINED_FUNCTION_24_1(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 72) = v3;

  free(v1);
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexType.getter()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_38_0(*(v0 + 80));
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexType.setter()
{
  OUTLINED_FUNCTION_798();
  v5 = OUTLINED_FUNCTION_275(v4);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(started);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05C248(v9);
    OUTLINED_FUNCTION_34_1(v10);
  }

  OUTLINED_FUNCTION_14_4();
  *(v8 + 80) = v1;
  *(v8 + 88) = v2;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexType.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  OUTLINED_FUNCTION_182(started);
  OUTLINED_FUNCTION_12_4();
  v5 = *(v0 + 88);
  OUTLINED_FUNCTION_49_0(*(v0 + 80));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF5964()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_159(v5);
  v6 = OUTLINED_FUNCTION_460();
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_349();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B05C248(v10);
    OUTLINED_FUNCTION_50_0(v11);
  }

  OUTLINED_FUNCTION_15_4();
  *(v7 + 80) = v2;
  *(v7 + 88) = v3;
  OUTLINED_FUNCTION_114();

  free(v12);
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.searchType.getter()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_38_0(*(v0 + 96));
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.searchType.setter()
{
  OUTLINED_FUNCTION_798();
  v5 = OUTLINED_FUNCTION_275(v4);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(started);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05C248(v9);
    OUTLINED_FUNCTION_34_1(v10);
  }

  OUTLINED_FUNCTION_14_4();
  *(v8 + 96) = v1;
  *(v8 + 104) = v2;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.searchType.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  OUTLINED_FUNCTION_182(started);
  OUTLINED_FUNCTION_12_4();
  v5 = *(v0 + 104);
  OUTLINED_FUNCTION_49_0(*(v0 + 96));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF5AF4()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_159(v5);
  v6 = OUTLINED_FUNCTION_460();
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_349();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B05C248(v10);
    OUTLINED_FUNCTION_50_0(v11);
  }

  OUTLINED_FUNCTION_15_4();
  *(v7 + 96) = v2;
  *(v7 + 104) = v3;
  OUTLINED_FUNCTION_114();

  free(v12);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.getter()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_52();
}

void sub_21AFF5BBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.setter();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.setter()
{
  OUTLINED_FUNCTION_798();
  v4 = OUTLINED_FUNCTION_213();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_651(started);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B05C248(v8);
    OUTLINED_FUNCTION_454(v9);
  }

  OUTLINED_FUNCTION_14_4();
  v10 = *(v7 + 120);
  *(v7 + 112) = v2;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_281(started);
  OUTLINED_FUNCTION_12_4();
  v6 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

void sub_21AFF5CCC(uint64_t a1)
{
  OUTLINED_FUNCTION_186(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_716();
    OUTLINED_FUNCTION_84();
    Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_528();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_349();
      v12 = OUTLINED_FUNCTION_16_1();
      v13 = sub_21B05C248(v12);
      OUTLINED_FUNCTION_24_1(v13);
    }

    OUTLINED_FUNCTION_504();
    v14 = *(v9 + 120);
    *(v9 + 112) = v4;
    *(v9 + 120) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.entityQueryCommand.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v9 = OUTLINED_FUNCTION_18_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v9);
  OUTLINED_FUNCTION_405(started);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_33_4();
  if (v11)
  {
    OUTLINED_FUNCTION_841(0xE000000000000000);
    *(a1 + 24) = v1;
    OUTLINED_FUNCTION_761();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v2, &qword_27CD44AF0, &qword_21B118178);
    }
  }

  else
  {
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.entityQueryCommand.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AF0, &qword_21B118178);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(started);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05C248(v9);
    OUTLINED_FUNCTION_454(v10);
  }

  OUTLINED_FUNCTION_327();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_290(CommandForFeedback);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.entityQueryCommand.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_469();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_223(v2);
  v3 = OUTLINED_FUNCTION_455();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_222(v7);
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(v8);
  OUTLINED_FUNCTION_135(CommandForFeedback);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_467(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224(v14);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v15);
  OUTLINED_FUNCTION_405(started);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    OUTLINED_FUNCTION_760();
    OUTLINED_FUNCTION_27_4();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44AF0, &qword_21B118178);
    }
  }

  else
  {
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.hasEntityQueryCommand.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v6);
  OUTLINED_FUNCTION_405(started);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_36_3(CommandForFeedback);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.clearEntityQueryCommand()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AF0, &qword_21B118178);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(started);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B05C248(v10);
    OUTLINED_FUNCTION_20_1(v11);
  }

  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_274(CommandForFeedback);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v8);
  OUTLINED_FUNCTION_405(started);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_21B111EB4();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &qword_27CD44B00, &qword_21B118180);
    }
  }

  else
  {
    OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexState.setter()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B00, &qword_21B118180);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_64_0();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v5);
  v7 = OUTLINED_FUNCTION_651(started);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05C248(v9);
    OUTLINED_FUNCTION_454(v10);
  }

  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_459();
  sub_21B03179C();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_290(v11);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexState.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_469();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_223(v3);
  v4 = OUTLINED_FUNCTION_455();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_222(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(v9);
  OUTLINED_FUNCTION_135(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_467(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224(v15);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v16);
  OUTLINED_FUNCTION_405(started);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v18)
  {
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    v19 = v12 + *(v0 + 36);
    sub_21B111EB4();
    OUTLINED_FUNCTION_27_4();
    if (!v18)
    {
      sub_21AF99BE0(v1, &qword_27CD44B00, &qword_21B118180);
    }
  }

  else
  {
    OUTLINED_FUNCTION_326();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.hasIndexState.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_18_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v6);
  OUTLINED_FUNCTION_405(started);
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_36_3(v8);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.clearIndexState()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B00, &qword_21B118180);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64_0();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v6);
  v8 = OUTLINED_FUNCTION_650(started);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_349();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21B05C248(v10);
    OUTLINED_FUNCTION_20_1(v11);
  }

  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_274(v12);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.coreSpotlightIndexTypeUsed.modify()
{
  v0 = OUTLINED_FUNCTION_45_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_147(v1);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  OUTLINED_FUNCTION_266(started);
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_178();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.isPhotosScopedSearch.modify()
{
  v0 = OUTLINED_FUNCTION_22_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_54_0(v1);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  OUTLINED_FUNCTION_200(started);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_475();
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF68BC()
{
  v1 = OUTLINED_FUNCTION_338();
  v3 = v2(v1);
  OUTLINED_FUNCTION_405(v3);
  OUTLINED_FUNCTION_13_3();
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_38_0(*(v0 + 16));
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.queryIntentType.setter()
{
  OUTLINED_FUNCTION_798();
  v5 = OUTLINED_FUNCTION_275(v4);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v5);
  v7 = OUTLINED_FUNCTION_651(UnderstandingParse);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05EAA8(v9);
    OUTLINED_FUNCTION_34_1(v10);
  }

  OUTLINED_FUNCTION_14_4();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.queryIntentType.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v3);
  OUTLINED_FUNCTION_182(UnderstandingParse);
  OUTLINED_FUNCTION_344();
  v5 = *(v0 + 24);
  OUTLINED_FUNCTION_49_0(*(v0 + 16));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF69D4()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_159(v4);
  v5 = OUTLINED_FUNCTION_460();
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_425();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_50_0(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  OUTLINED_FUNCTION_114();

  free(v9);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 25);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 25) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 25);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF6B58(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 25) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 26);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 26) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 26);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF6CD4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 26) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 27);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 27) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 27);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF6E50(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 27) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 28);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 28) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 28);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF6FCC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 28) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 29);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 29) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 29);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF7148(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 29) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 30);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 30) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 30);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF72C4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 30) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 31);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 31) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 31);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF7440(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 31) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 32);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 32) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_371();
  *(v1 + 84) = *(v0 + 32);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF75B8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 32) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 33);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 33) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 33);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF7734(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 33) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 34);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 34) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 34);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF78B0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 34) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 35);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 35) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 35);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF7A2C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 35) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 36);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 36) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 36);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF7BA8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 36) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 37);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 37) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 37);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF7D24(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 37) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 38);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 38) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 38);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF7EA0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 38) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 39);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 39) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 39);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF801C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 39) = v3;

  free(v1);
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.spotlightQueryIntent.getter()
{
  v1 = OUTLINED_FUNCTION_100();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v1);
  OUTLINED_FUNCTION_405(UnderstandingParse);
  OUTLINED_FUNCTION_13_3();
  v3 = *(v0 + 48);
  OUTLINED_FUNCTION_38_0(*(v0 + 40));
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.spotlightQueryIntent.setter()
{
  OUTLINED_FUNCTION_798();
  v5 = OUTLINED_FUNCTION_275(v4);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v5);
  v7 = OUTLINED_FUNCTION_651(UnderstandingParse);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21B05EAA8(v9);
    OUTLINED_FUNCTION_34_1(v10);
  }

  OUTLINED_FUNCTION_14_4();
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.spotlightQueryIntent.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_147(v2);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v3);
  OUTLINED_FUNCTION_182(UnderstandingParse);
  OUTLINED_FUNCTION_12_4();
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_49_0(*(v0 + 40));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF81B8()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_159(v4);
  v5 = OUTLINED_FUNCTION_460();
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_425();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_50_0(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  OUTLINED_FUNCTION_114();

  free(v9);
}

uint64_t sub_21AFF825C()
{
  v1 = OUTLINED_FUNCTION_450();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402(v3);
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 49);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isUnsafeQuery.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 49) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isUnsafeQuery.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 49);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF8360(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 49) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.getter()
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_13_3();
  return *(v0 + 50);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = OUTLINED_FUNCTION_508(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B05EAA8(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v5 + 50) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_4(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v0 + 50);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFF84DC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B05EAA8(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 50) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.quParse.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v8) + 36);
  OUTLINED_FUNCTION_307();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_29_4(UnderstandingParse);
  if (v11)
  {
    sub_21B111EB4();
    if (qword_27CD42860 != -1)
    {
      OUTLINED_FUNCTION_614();
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &unk_27CD44B20, &qword_21B118188);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.quParse.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 36), &unk_27CD44B20, &qword_21B118188);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.quParse.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v9);
  OUTLINED_FUNCTION_140(UnderstandingParse);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 36));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD42860 != -1)
    {
      OUTLINED_FUNCTION_614();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &unk_27CD44B20, &qword_21B118188);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

void sub_21AFF8890()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &unk_27CD44B20, &qword_21B118188);
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_298();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &unk_27CD44B20, &qword_21B118188);
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t sub_21AFF899C()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_263();
  v8 = *(v1(0) + 36);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v9 = v0(0);
  OUTLINED_FUNCTION_220(v9);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFF8A64()
{
  v1 = OUTLINED_FUNCTION_218();
  v3 = *(v2(v1) + 36);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.photosRankingInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v9 = OUTLINED_FUNCTION_18_2();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v9) + 40);
  OUTLINED_FUNCTION_307();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_33_4();
  if (v11)
  {
    OUTLINED_FUNCTION_704();
    *(a1 + 48) = 0;
    *(a1 + 56) = v1;
    *(a1 + 64) = 0;
    *(a1 + 72) = v1;
    sub_21B111EB4();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v2, &qword_27CD44B28, &qword_21B118190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.photosRankingInfo.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 40), &qword_27CD44B28, &qword_21B118190);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_PhotosRankingInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_336(a1);
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_724(v2);
  *(v1 + 48) = 0;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = v3;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  return OUTLINED_FUNCTION_694(v4);
}

void Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.photosRankingInfo.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 40));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    OUTLINED_FUNCTION_702();
    *(v11 + 48) = 0;
    *(v11 + 56) = 1;
    *(v11 + 64) = 0;
    *(v11 + 72) = 1;
    v18 = v11 + *(v9 + 36);
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44B28, &qword_21B118190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_84();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFF8DE0()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD44B28, &qword_21B118190);
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_323();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44B28, &qword_21B118190);
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v0) + 32);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  OUTLINED_FUNCTION_690(v1);
  v2 = *(v1 + 36);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v7);
  v8 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Apple_Parsec_Feedback_V2_PhotosRankingInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v0) + 36);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_Error.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_Error(v0) + 32);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_Error.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_2();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return OUTLINED_FUNCTION_690(v2);
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v8) + 28);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_29_2();
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    OUTLINED_FUNCTION_762();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &unk_27CD44B30, &qword_21B118198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.error.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 28), &unk_27CD44B30, &qword_21B118198);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.error.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 28));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    OUTLINED_FUNCTION_92();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    v18 = v11 + *(v9 + 32);
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &unk_27CD44B30, &qword_21B118198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_84();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v8) + 32);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_29_2();
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    OUTLINED_FUNCTION_762();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &unk_27CD44B30, &qword_21B118198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 32), &unk_27CD44B30, &qword_21B118198);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 32));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    OUTLINED_FUNCTION_92();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    v18 = v11 + *(v9 + 32);
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &unk_27CD44B30, &qword_21B118198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_84();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFF9754()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &unk_27CD44B30, &qword_21B118198);
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_154();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &unk_27CD44B30, &qword_21B118198);
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_300(a1);
  *(v1 + 16) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  OUTLINED_FUNCTION_672(v3);
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = *(v3 + 32);
  OUTLINED_FUNCTION_34_0();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.jsonFeedback.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_52();
  sub_21AF99818(v3, v4);
  return OUTLINED_FUNCTION_52();
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.jsonFeedback.setter()
{
  OUTLINED_FUNCTION_99();
  result = sub_21AF99728(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501(a1);
  *(v1 + 16) = xmmword_21B117F20;
  v2 = OUTLINED_FUNCTION_617();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v2);
  return OUTLINED_FUNCTION_674(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_111();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v9 = OUTLINED_FUNCTION_18_2();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v9) + 24);
  OUTLINED_FUNCTION_307();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  OUTLINED_FUNCTION_635();
  OUTLINED_FUNCTION_33_4();
  if (v11)
  {
    OUTLINED_FUNCTION_276();
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v1;
    *(a1 + 72) = 0;
    *(a1 + 80) = v12;
    *(a1 + 88) = 0;
    *(a1 + 96) = v12;
    sub_21B111EB4();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v2, &qword_27CD44B38, &qword_21B1181A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 24), &qword_27CD44B38, &qword_21B1181A0);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_497(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_93(v15);
  v17 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v16);
  OUTLINED_FUNCTION_256(*(v17 + 24));
  OUTLINED_FUNCTION_27_4();
  if (v18)
  {
    OUTLINED_FUNCTION_92();
    *(v12 + 32) = 0;
    *(v12 + 40) = v19;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 1;
    *(v12 + 72) = 0;
    *(v12 + 80) = v19;
    *(v12 + 88) = 0;
    *(v12 + 96) = v19;
    v20 = v12 + *(v0 + 44);
    sub_21B111EB4();
    OUTLINED_FUNCTION_27_4();
    if (!v18)
    {
      sub_21AF99BE0(v1, &qword_27CD44B38, &qword_21B1181A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFF9D94()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD44B38, &qword_21B1181A0);
    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_319();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44B38, &qword_21B1181A0);
    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t sub_21AFF9EA4()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_263();
  v8 = *(v1(0) + 24);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v9 = v0(0);
  OUTLINED_FUNCTION_220(v9);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFF9F6C()
{
  v1 = OUTLINED_FUNCTION_218();
  v3 = *(v2(v1) + 24);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v0) + 20);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFFA070@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v5 = a1(0);
  v6 = a3 + *(v5 + 20);
  sub_21B111EB4();
  v7 = *(v5 + 24);
  a2(0);
  v8 = OUTLINED_FUNCTION_161();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v8) + 28);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    *a1 = MEMORY[0x277D84F90];
    a1[1] = 0;
    OUTLINED_FUNCTION_593();
    OUTLINED_FUNCTION_761();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 28), &qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 28));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    OUTLINED_FUNCTION_513(MEMORY[0x277D84F90]);
    v18 = v11 + *(v9 + 24);
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_84();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_21AFFA3B4()
{
  OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_263();
  v8 = *(v1(0) + 28);
  OUTLINED_FUNCTION_259();
  sub_21B0AA940();
  v9 = v0(0);
  OUTLINED_FUNCTION_220(v9);
  return OUTLINED_FUNCTION_682();
}

uint64_t sub_21AFFA47C()
{
  v1 = OUTLINED_FUNCTION_218();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_452();
  sub_21AF99BE0(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_277();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v8) + 32);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    *a1 = MEMORY[0x277D84F90];
    a1[1] = 0;
    OUTLINED_FUNCTION_593();
    OUTLINED_FUNCTION_761();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 32), &qword_27CD44940, &qword_21B118128);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 32));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    OUTLINED_FUNCTION_513(MEMORY[0x277D84F90]);
    v18 = v11 + *(v9 + 24);
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44940, &qword_21B118128);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_84();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFFA7FC()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_31_4();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_585(a1);
  *(v1 + 8) = 0;
  v2 = OUTLINED_FUNCTION_518();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v2);
  OUTLINED_FUNCTION_544(v3);
  v4 = OUTLINED_FUNCTION_658();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFFABC4()
{
  v0 = OUTLINED_FUNCTION_701(MEMORY[0x277D84F90]);
  v2 = v1(v0);
  return OUTLINED_FUNCTION_672(v2);
}

uint64_t Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ClearInputFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFFAD80@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_376(a1);
  v2 = v1(0);
  return OUTLINED_FUNCTION_672(v2);
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v8) + 28);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &unk_27CD434E8, &unk_21B116AC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 28), &unk_27CD434E8, &unk_21B116AC0);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 28));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    OUTLINED_FUNCTION_609(MEMORY[0x277D84F90]);
    v18 = *(v0 + 48);
    type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
    OUTLINED_FUNCTION_755();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_27_4();
    if (!v17)
    {
      sub_21AF99BE0(v1, &unk_27CD434E8, &unk_21B116AC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFFB15C@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = a1(0);
  v6 = a3 + *(v5 + 24);
  sub_21B111EB4();
  v7 = *(v5 + 28);
  a2(0);
  v8 = OUTLINED_FUNCTION_161();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501(a1);
  v1 = OUTLINED_FUNCTION_364();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v1);
  return OUTLINED_FUNCTION_674(v2);
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_283(a1);
  v1 = OUTLINED_FUNCTION_617();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v1);
  return OUTLINED_FUNCTION_674(v2);
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(v0) + 32);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_283(a1);
  OUTLINED_FUNCTION_732(1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  return OUTLINED_FUNCTION_690(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v8) + 32);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    sub_21B111EB4();
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 32), &qword_27CD434D8, &qword_21B116AB0);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_499();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_294(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v15);
  OUTLINED_FUNCTION_256(*(v16 + 32));
  OUTLINED_FUNCTION_27_4();
  if (v17)
  {
    sub_21B111EB4();
    v18 = *(v0 + 20);
    if (qword_27CD42718 != -1)
    {
      OUTLINED_FUNCTION_41_2();
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD434D8, &qword_21B116AB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_440();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_114();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v0) + 28);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501(a1);
  v1 = OUTLINED_FUNCTION_364();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v1);
  OUTLINED_FUNCTION_544(v2);
  v3 = OUTLINED_FUNCTION_658();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  v4 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_Range.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_Range(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_Range.init()()
{
  v1 = OUTLINED_FUNCTION_100();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(v1);
  *v0 = 0;
  v0[1] = 0;
  return OUTLINED_FUNCTION_672(v2);
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_18_2();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v8) + 40);
  OUTLINED_FUNCTION_307();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  OUTLINED_FUNCTION_29_4(v10);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0;
    OUTLINED_FUNCTION_761();
    result = OUTLINED_FUNCTION_33_4();
    if (!v11)
    {
      return sub_21AF99BE0(v1, &qword_27CD44B40, &unk_21B1181A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_60();
    return sub_21B03179C();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.setter()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v1);
  sub_21AF99BE0(v0 + *(v2 + 40), &qword_27CD44B40, &unk_21B1181A8);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_415();
  sub_21B03179C();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  v3 = OUTLINED_FUNCTION_158();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_499();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(v8);
  OUTLINED_FUNCTION_150(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_497(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_93(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v15);
  OUTLINED_FUNCTION_299(*(v16 + 40));
  OUTLINED_FUNCTION_12_5();
  if (v17)
  {
    *v11 = 0;
    v11[1] = 0;
    v18 = v11 + *(v9 + 24);
    sub_21B111EB4();
    OUTLINED_FUNCTION_12_5();
    if (!v17)
    {
      sub_21AF99BE0(v0, &qword_27CD44B40, &unk_21B1181A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_84();
    sub_21B03179C();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_114();
}

void sub_21AFFBD98()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_47_1(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    sub_21B0317EC();
    sub_21AF99BE0(v4 + v3, &qword_27CD44B40, &unk_21B1181A8);
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_692();
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_316();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v4 + v3, &qword_27CD44B40, &unk_21B1181A8);
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_691();
    OUTLINED_FUNCTION_38_1();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_114();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v0) + 36);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_300(a1);
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  OUTLINED_FUNCTION_638(v3);
  v4 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v4);
  v5 = OUTLINED_FUNCTION_141();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(v0) + 20);
  return OUTLINED_FUNCTION_87();
}

uint64_t sub_21AFFC0CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a2(0);
  return OUTLINED_FUNCTION_747(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SessionEndFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(v0) + 24);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_36_0();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v0) + 36);
  return OUTLINED_FUNCTION_87();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_283(a1);
  v3 = OUTLINED_FUNCTION_840(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v3);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return OUTLINED_FUNCTION_694(v4);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.getter()
{
  OUTLINED_FUNCTION_442();
  v1 = OUTLINED_FUNCTION_90();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v6)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_6:
    v8 = OUTLINED_FUNCTION_751();
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v8);
    return OUTLINED_FUNCTION_747(v9);
  }

  OUTLINED_FUNCTION_105();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21B03183C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_7();
  return sub_21B03179C();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_443(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_148(v13);
  OUTLINED_FUNCTION_3_17();
  if (v14)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_75();
      sub_21B03179C();
      goto LABEL_7;
    }

    sub_21B03183C();
  }

  OUTLINED_FUNCTION_700();
LABEL_7:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFC5C8(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_114_0();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  return Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_350();
    *(v12 + 17) = 0;
    *(v12 + 19) = 0;
    OUTLINED_FUNCTION_843();
    *(v12 + 40) = 0;
    *(v12 + 48) = v18;
    *(v12 + 56) = 0;
    v19 = v12 + *(v0 + 48);
    sub_21B111EB4();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFC93C(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v1 = OUTLINED_FUNCTION_90();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v6)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_112_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  v9 = OUTLINED_FUNCTION_372();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v9);
  return OUTLINED_FUNCTION_672(v10);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_443(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_148(v13);
  OUTLINED_FUNCTION_3_17();
  if (v14)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_350();
    OUTLINED_FUNCTION_689();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFCCA4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_356();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_111_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  v10 = MEMORY[0x277D84F90];
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = v10;
  *(v0 + 24) = v10;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  return OUTLINED_FUNCTION_694(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    *v11 = 0;
    *(v11 + 8) = 0;
    v17 = MEMORY[0x277D84F90];
    *(v11 + 16) = MEMORY[0x277D84F90];
    *(v11 + 24) = v17;
    *(v11 + 32) = 0;
    *(v11 + 40) = 1;
    OUTLINED_FUNCTION_675();
    sub_21B111EB4();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFD030(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_109_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  v10 = MEMORY[0x277D84F90];
  *v0 = 0;
  *(v0 + 8) = v10;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  OUTLINED_FUNCTION_690(v11);
  v12 = *(v11 + 36);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v13 = OUTLINED_FUNCTION_141();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    v18 = MEMORY[0x277D84F90];
    *v12 = 0;
    *(v12 + 8) = v18;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    OUTLINED_FUNCTION_825();
    v19 = *(v0 + 36);
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
    v20 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFD3E8(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  v10 = MEMORY[0x277D84F90];
  *v0 = 0;
  *(v0 + 8) = v10;
  *(v0 + 16) = v10;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_638(v11);
  v12 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v12);
  v13 = OUTLINED_FUNCTION_141();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    v17 = MEMORY[0x277D84F90];
    *v11 = 0;
    *(v11 + 8) = v17;
    *(v11 + 16) = v17;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    OUTLINED_FUNCTION_675();
    sub_21B111EB4();
    v18 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v18);
    v19 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFD7A0(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v1 = OUTLINED_FUNCTION_90();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v6)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  v9 = OUTLINED_FUNCTION_751();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v9);
  OUTLINED_FUNCTION_747(v10);
  v11 = *(v10 + 24);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v12 = OUTLINED_FUNCTION_141();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_700();
    v17 = *(v0 + 24);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
    v18 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFDB30(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_107_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_107_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  return Apple_Parsec_Feedback_V2_ResultEngagementFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    *(v12 + 32) = 0;
    *(v12 + 40) = 1;
    *(v12 + 48) = 0;
    *(v12 + 56) = 1;
    *(v12 + 64) = 0;
    *(v12 + 72) = 0xE000000000000000;
    *(v12 + 80) = 0;
    v18 = v12 + *(v0 + 44);
    sub_21B111EB4();
    v19 = *(v0 + 48);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
    v20 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFDEDC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_105_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  OUTLINED_FUNCTION_841(MEMORY[0x277D84F90]);
  *(v0 + 24) = 1;
  *(v0 + 32) = v10;
  *(v0 + 40) = v10;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  OUTLINED_FUNCTION_638(v11);
  v12 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v12);
  v13 = OUTLINED_FUNCTION_141();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    v17 = MEMORY[0x277D84F90];
    *v11 = 0;
    *(v11 + 8) = v17;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    *(v11 + 32) = v17;
    *(v11 + 40) = v17;
    OUTLINED_FUNCTION_675();
    sub_21B111EB4();
    v18 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v18);
    v19 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFE298(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v1 = OUTLINED_FUNCTION_90();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v6)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  OUTLINED_FUNCTION_426();
  v10 = OUTLINED_FUNCTION_840(v9);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v10);
  OUTLINED_FUNCTION_544(v11);
  v12 = OUTLINED_FUNCTION_658();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v12);
  v13 = OUTLINED_FUNCTION_141();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_424();
    *(v11 + 32) = v17;
    OUTLINED_FUNCTION_745();
    v18 = OUTLINED_FUNCTION_836();
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v18);
    v19 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFE628(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  return Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_350();
    *(v12 + 24) = 0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    *(v12 + 48) = v18;
    OUTLINED_FUNCTION_862(0xE000000000000000);
    v19 = *(v0 + 44);
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    v20 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFE9B4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  sub_21B111EB4();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0) + 20);
  if (qword_27CD42810 != -1)
  {
    OUTLINED_FUNCTION_606();
  }

  *(v0 + v10) = qword_27CD44250;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_75();
      sub_21B03179C();
      goto LABEL_10;
    }

    sub_21B03183C();
  }

  sub_21B111EB4();
  v18 = *(v0 + 20);
  if (qword_27CD42810 != -1)
  {
    OUTLINED_FUNCTION_606();
  }

  *(v12 + v18) = qword_27CD44250;

LABEL_10:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFED88(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_102_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_102_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_101_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  OUTLINED_FUNCTION_426();
  *(v0 + 32) = v10;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  return OUTLINED_FUNCTION_723(started);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(v9);
  OUTLINED_FUNCTION_126(started);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_424();
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 1;
    v19 = v12 + *(v0 + 40);
    sub_21B111EB4();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFF124(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_101_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_101_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_100_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  *v0 = 0;
  v0[1] = 0;
  v10 = OUTLINED_FUNCTION_517();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v10);
  return OUTLINED_FUNCTION_672(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_534();
    *(v11 + 16) = v17;
    OUTLINED_FUNCTION_689();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFF494(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_99_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  return Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v9);
  OUTLINED_FUNCTION_126(started);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0xE000000000000000;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
    *(v12 + 64) = sub_21B112334();
    *(v12 + 72) = 0;
    *(v12 + 80) = 1;
    *(v12 + 88) = 0;
    *(v12 + 96) = -2;
    *(v12 + 104) = xmmword_21B117F10;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0xE000000000000000;
    *(v12 + 136) = 0;
    *(v12 + 144) = 0xE000000000000000;
    *(v12 + 152) = 0;
    *(v12 + 160) = 1;
    *(v12 + 168) = 0;
    *(v12 + 176) = 0;
    v18 = v12 + *(v0 + 72);
    sub_21B111EB4();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFF868(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  return Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    OUTLINED_FUNCTION_843();
    *(v12 + 40) = 0;
    *(v12 + 48) = v18;
    *(v12 + 56) = 0;
    *(v12 + 64) = v18;
    *(v12 + 72) = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = v18;
    *(v12 + 96) = 0;
    *(v12 + 104) = 1;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v12 + 136) = v18;
    v19 = v12 + *(v0 + 64);
    sub_21B111EB4();
    v20 = *(v0 + 68);
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
    v21 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFFC10(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  sub_21B111EB4();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0) + 20);
  if (qword_27CD42850 != -1)
  {
    OUTLINED_FUNCTION_604();
  }

  *(v0 + v10) = qword_27CD44300;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v9);
  OUTLINED_FUNCTION_126(started);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_75();
      sub_21B03179C();
      goto LABEL_10;
    }

    sub_21B03183C();
  }

  sub_21B111EB4();
  v18 = *(v0 + 20);
  if (qword_27CD42850 != -1)
  {
    OUTLINED_FUNCTION_604();
  }

  *(v12 + v18) = qword_27CD44300;

LABEL_10:
  OUTLINED_FUNCTION_114();
}

void sub_21AFFFFE4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  *v0 = 0u;
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  OUTLINED_FUNCTION_690(v10);
  v11 = *(v10 + 36);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_659();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v16);
  v17 = OUTLINED_FUNCTION_141();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    *v12 = 0u;
    *(v12 + 16) = 0xE000000000000000;
    *(v12 + 24) = 0;
    OUTLINED_FUNCTION_825();
    v18 = *(v0 + 36);
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v23);
    v24 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21B0003CC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  *v0 = 0;
  v0[1] = 0;
  v10 = OUTLINED_FUNCTION_517();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v10);
  OUTLINED_FUNCTION_672(v11);
  v12 = *(v11 + 28);
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = *(v11 + 32);
  OUTLINED_FUNCTION_34_0();
  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_443(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_148(v15);
  OUTLINED_FUNCTION_3_17();
  if (v16)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_534();
    *(v12 + 16) = v18;
    OUTLINED_FUNCTION_689();
    v19 = *(v0 + 28);
    v20 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
    v24 = *(v0 + 32);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21B0007A8(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v2 = OUTLINED_FUNCTION_90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v7)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 19)
    {
      OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = xmmword_21B117F20;
  v10 = OUTLINED_FUNCTION_617();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v10);
  return OUTLINED_FUNCTION_674(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_201();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_44_1(v2);
  v3 = OUTLINED_FUNCTION_79();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v8);
  OUTLINED_FUNCTION_126(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = xmmword_21B117F20;
    *(v11 + 32) = 1;
    OUTLINED_FUNCTION_745();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21B000B34(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_442();
  v1 = OUTLINED_FUNCTION_90();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_8();
  if (v6)
  {
    sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 20)
    {
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_7();
      return sub_21B03179C();
    }

    sub_21B03183C();
  }

  v9 = OUTLINED_FUNCTION_751();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v9);
  OUTLINED_FUNCTION_747(v10);
  v11 = *(v10 + 24);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  v12 = OUTLINED_FUNCTION_141();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.setter()
{
  sub_21AF99BE0(v0, &qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_52();
  sub_21B03179C();
  OUTLINED_FUNCTION_39_1();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_201();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_44_1(v3);
  v4 = OUTLINED_FUNCTION_79();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_443(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_148(v14);
  OUTLINED_FUNCTION_3_17();
  if (v15)
  {
    sub_21AF99BE0(v1, &qword_27CD434B8, &unk_21B116A90);
LABEL_7:
    OUTLINED_FUNCTION_700();
    v17 = *(v0 + 24);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
    v18 = OUTLINED_FUNCTION_161();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 20)
  {
    sub_21B03183C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_75();
  sub_21B03179C();
LABEL_8:
  OUTLINED_FUNCTION_114();
}

void sub_21B000EC4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_84();
    sub_21B0317EC();
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_439();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_416();
    sub_21B03183C();
  }

  else
  {
    sub_21AF99BE0(v5, &qword_27CD434B8, &unk_21B116A90);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_430();
    sub_21B03179C();
    OUTLINED_FUNCTION_30_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}