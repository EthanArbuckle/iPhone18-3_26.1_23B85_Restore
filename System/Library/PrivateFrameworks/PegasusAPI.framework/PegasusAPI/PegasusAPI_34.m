uint64_t sub_1B8FEDECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2010, &qword_1B967F4B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2010, &qword_1B967F4B8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1870, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2010, &qword_1B967F4B8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2010, &qword_1B967F4B8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2010, &qword_1B967F4B8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2010, &qword_1B967F4B8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FEE3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2018, &qword_1B967F4C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2018, &qword_1B967F4C0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1888, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2018, &qword_1B967F4C0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2018, &qword_1B967F4C0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2018, &qword_1B967F4C0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2018, &qword_1B967F4C0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FEE8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2020, &qword_1B967F4C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2020, &qword_1B967F4C8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2020, &qword_1B967F4C8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2020, &qword_1B967F4C8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2020, &qword_1B967F4C8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2020, &qword_1B967F4C8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FEEDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2028, &qword_1B967F4D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2028, &qword_1B967F4D0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18B8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2028, &qword_1B967F4D0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2028, &qword_1B967F4D0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2028, &qword_1B967F4D0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2028, &qword_1B967F4D0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FEF2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2030, &qword_1B967F4D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2030, &qword_1B967F4D8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18D0, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2030, &qword_1B967F4D8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2030, &qword_1B967F4D8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2030, &qword_1B967F4D8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2030, &qword_1B967F4D8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FEF7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2038, &qword_1B967F4E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2038, &qword_1B967F4E0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18E8, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2038, &qword_1B967F4E0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2038, &qword_1B967F4E0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2038, &qword_1B967F4E0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2038, &qword_1B967F4E0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FEFC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2040, &qword_1B967F4E8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2040, &qword_1B967F4E8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1900, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2040, &qword_1B967F4E8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2040, &qword_1B967F4E8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2040, &qword_1B967F4E8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2040, &qword_1B967F4E8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF0194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2048, &qword_1B967F4F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2048, &qword_1B967F4F0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1918, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2048, &qword_1B967F4F0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2048, &qword_1B967F4F0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2048, &qword_1B967F4F0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2048, &qword_1B967F4F0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2050, &qword_1B967F4F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2050, &qword_1B967F4F8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1930, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2050, &qword_1B967F4F8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2050, &qword_1B967F4F8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2050, &qword_1B967F4F8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2050, &qword_1B967F4F8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF0B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2058, &qword_1B967F500);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2058, &qword_1B967F500);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1958, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2058, &qword_1B967F500);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2058, &qword_1B967F500);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2058, &qword_1B967F500);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2058, &qword_1B967F500);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2060, &qword_1B967F508);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2060, &qword_1B967F508);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1970, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2060, &qword_1B967F508);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2060, &qword_1B967F508);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2060, &qword_1B967F508);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2060, &qword_1B967F508);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF1574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2068, &qword_1B967F510);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2068, &qword_1B967F510);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC16C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2068, &qword_1B967F510);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2068, &qword_1B967F510);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2068, &qword_1B967F510);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2068, &qword_1B967F510);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF1A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2070, &qword_1B967F518);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2070, &qword_1B967F518);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1988, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2070, &qword_1B967F518);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2070, &qword_1B967F518);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2070, &qword_1B967F518);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2070, &qword_1B967F518);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2078, &qword_1B967F520);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2078, &qword_1B967F520);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1828, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2078, &qword_1B967F520);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2078, &qword_1B967F520);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2078, &qword_1B967F520);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2078, &qword_1B967F520);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2080, &qword_1B967F528);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2080, &qword_1B967F528);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2080, &qword_1B967F528);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2080, &qword_1B967F528);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2080, &qword_1B967F528);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2080, &qword_1B967F528);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF2954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2088, &qword_1B967F530);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2088, &qword_1B967F530);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2088, &qword_1B967F530);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2088, &qword_1B967F530);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2088, &qword_1B967F530);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2088, &qword_1B967F530);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2090, &qword_1B967F538);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2090, &qword_1B967F538);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2090, &qword_1B967F538);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2090, &qword_1B967F538);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2090, &qword_1B967F538);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2090, &qword_1B967F538);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF3344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2098, &qword_1B967F540);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2098, &qword_1B967F540);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC19A0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2098, &qword_1B967F540);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2098, &qword_1B967F540);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2098, &qword_1B967F540);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2098, &qword_1B967F540);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20A0, &qword_1B967F548);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1B8D9207C(v22, &qword_1EBAC20A0, &qword_1B967F548);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC15F8, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC20A0, &qword_1B967F548);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC20A0, &qword_1B967F548);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC20A0, &qword_1B967F548);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC20A0, &qword_1B967F548);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF3D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20A8, &qword_1B967F550);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_1B8D9207C(v22, &qword_1EBAC20A8, &qword_1B967F550);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1628, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC20A8, &qword_1B967F550);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC20A8, &qword_1B967F550);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC20A8, &qword_1B967F550);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC20A8, &qword_1B967F550);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8FF422C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20B0, &qword_1B967F558);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_1B8D9207C(v22, &qword_1EBAC20B0, &qword_1B967F558);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1650, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC20B0, &qword_1B967F558);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC20B0, &qword_1B967F558);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC20B0, &qword_1B967F558);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC20B0, &qword_1B967F558);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.traverse<A>(visitor:)()
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_197();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  OUTLINED_FUNCTION_178(v0, 1, v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_432();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v98 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF4CB4(v98, v99, v100, v101);
        break;
      case 2u:
        v82 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF4EC8(v82, v83, v84, v85);
        break;
      case 3u:
        v90 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF50DC(v90, v91, v92, v93);
        break;
      case 4u:
        v58 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF52F0(v58, v59, v60, v61);
        break;
      case 5u:
        v118 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5504(v118, v119, v120, v121);
        break;
      case 6u:
        v130 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5718(v130, v131, v132, v133);
        break;
      case 7u:
        v94 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF592C(v94, v95, v96, v97);
        break;
      case 8u:
        v142 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5B40(v142, v143, v144, v145);
        break;
      case 9u:
        v70 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5D54(v70, v71, v72, v73);
        break;
      case 0xAu:
        v138 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5F68(v138, v139, v140, v141);
        break;
      case 0xBu:
        v54 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF617C(v54, v55, v56, v57);
        break;
      case 0xCu:
        v66 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF6390(v66, v67, v68, v69);
        break;
      case 0xDu:
        v126 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF65A4(v126, v127, v128, v129);
        break;
      case 0xEu:
        v46 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF67B8(v46, v47, v48, v49);
        break;
      case 0xFu:
        v86 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF69CC(v86, v87, v88, v89);
        break;
      case 0x10u:
        v38 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF6BE0(v38, v39, v40, v41);
        break;
      case 0x11u:
        v106 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF6DF4(v106, v107, v108, v109);
        break;
      case 0x12u:
        v134 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7008(v134, v135, v136, v137);
        break;
      case 0x13u:
        v162 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF721C(v162, v163, v164, v165);
        break;
      case 0x14u:
        v114 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7430(v114, v115, v116, v117);
        break;
      case 0x15u:
        v122 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7644(v122, v123, v124, v125);
        break;
      case 0x16u:
        v154 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7858(v154, v155, v156, v157);
        break;
      case 0x17u:
        v170 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7A6C(v170, v171, v172, v173);
        break;
      case 0x18u:
        v78 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7C80(v78, v79, v80, v81);
        break;
      case 0x19u:
        v74 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7E94(v74, v75, v76, v77);
        break;
      case 0x1Au:
        v186 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF80A8(v186, v187, v188, v189);
        break;
      case 0x1Bu:
        v30 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF82BC(v30, v31, v32, v33);
        break;
      case 0x1Cu:
        v174 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF84D0(v174, v175, v176, v177);
        break;
      case 0x1Du:
        v178 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF86E4(v178, v179, v180, v181);
        break;
      case 0x1Eu:
        v146 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF88F8(v146, v147, v148, v149);
        break;
      case 0x1Fu:
        v102 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF8B0C(v102, v103, v104, v105);
        break;
      case 0x20u:
        v150 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF8D20(v150, v151, v152, v153);
        break;
      case 0x21u:
        v50 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF8F34(v50, v51, v52, v53);
        break;
      case 0x22u:
        v34 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9148(v34, v35, v36, v37);
        break;
      case 0x23u:
        v22 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF935C(v22, v23, v24, v25);
        break;
      case 0x24u:
        v26 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9570(v26, v27, v28, v29);
        break;
      case 0x25u:
        v18 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9784(v18, v19, v20, v21);
        break;
      case 0x26u:
        v182 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9998(v182, v183, v184, v185);
        break;
      case 0x27u:
        v158 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9BAC(v158, v159, v160, v161);
        break;
      case 0x28u:
        v62 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9DC0(v62, v63, v64, v65);
        break;
      case 0x29u:
        v110 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9FD4(v110, v111, v112, v113);
        break;
      case 0x2Au:
        v166 = OUTLINED_FUNCTION_30_15();
        sub_1B8FFA1E8(v166, v167, v168, v169);
        break;
      case 0x2Bu:
        v14 = OUTLINED_FUNCTION_30_15();
        sub_1B8FFA3FC(v14, v15, v16, v17);
        break;
      case 0x2Cu:
        v42 = OUTLINED_FUNCTION_30_15();
        sub_1B8FFA610(v42, v43, v44, v45);
        break;
      default:
        v10 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF4AA4(v10, v11, v12, v13);
        break;
    }

    v3 = v2;
    if (v2)
    {
      OUTLINED_FUNCTION_23_10();
      return sub_1B8FAC5C8();
    }

    OUTLINED_FUNCTION_23_10();
    sub_1B8FAC5C8();
  }

  v191 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
  if (!*(v1 + *(v191 + 20)) || (OUTLINED_FUNCTION_445_0(), result = sub_1B964C720(), !v3))
  {
    v192 = v1 + *(v191 + 24);
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8FF4AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1548, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF4CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1560, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1578, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF50DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1590, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0900, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0918, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC15C8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC15E0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1610, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16B0, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16E0, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16F8, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  v9 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1710, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF65A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1728, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF67B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  v9 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAB5958, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF69CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAB5978, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF6BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  v9 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1780, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC17A8, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAB59E8, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC17E0, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC17F8, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1810, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1840, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1858, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1870, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1888, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF80A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18B8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF84D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18D0, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF86E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18E8, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF88F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1900, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1918, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF8D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1930, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF8F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1958, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1970, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF935C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1988, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1828, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC19A0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FFA1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC15F8, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FFA3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1628, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FFA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1650, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FFAB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C68, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFAB80(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFABF0()
{
  sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFAC7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC04F8);
  __swift_project_value_buffer(v0, qword_1EBAC04F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8CF0394();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SkipSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v0))
    {
      if (!*(v1 + 24) || (v5 = *(v1 + 32), OUTLINED_FUNCTION_94_4(), sub_1B90140B4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        v6 = *(v1 + 40);
        v7 = *(v1 + 48);
        OUTLINED_FUNCTION_1();
        if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
        {
          v9 = *(v1 + 56);
          v10 = *(v1 + 64);
          OUTLINED_FUNCTION_1();
          if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
          {
            v12 = *(v1 + 72);
            v13 = *(v1 + 80);
            OUTLINED_FUNCTION_1();
            if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
            {
              v15 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0) + 40);
              OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FFB1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C60, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFB240(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFB2B0()
{
  sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFB348()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0510);
  __swift_project_value_buffer(v0, qword_1EBAC0510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8CF0394();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CacheHitFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v0))
    {
      if (!*(v1 + 24) || (v5 = *(v1 + 32), OUTLINED_FUNCTION_94_4(), sub_1B90140B4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        v6 = *(v1 + 40);
        v7 = *(v1 + 48);
        OUTLINED_FUNCTION_1();
        if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
        {
          v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0) + 32);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FFB7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C58, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFB83C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFB8AC()
{
  sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFB938()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0528);
  __swift_project_value_buffer(v0, qword_1EBAC0528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namespaceId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (!*(v2 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
          {
            v13 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ExperimentInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 48) != *(v2 + 48) || *(v3 + 52) != *(v2 + 52))
  {
    return 0;
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  OUTLINED_FUNCTION_830(v13);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8FFBECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C50, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFBF4C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFBFBC()
{
  sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFC048()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0540);
  __swift_project_value_buffer(v0, qword_1EBAC0540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "agent";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
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
  return sub_1B964C760();
}

uint64_t sub_1B8FFC688()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B964C7B0();
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
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20) = 0;
  v7 = v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback) = v1;
  return v0;
}

uint64_t sub_1B8FFC7AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v63 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = sub_1B964C7B0();
  *(v1 + 64) = 0;
  v64 = (v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v65 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v66 = (v1 + 96);
  *(v1 + 104) = 0;
  v67 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v68 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback;
  v69 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback;
  v70 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v72 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20) = 0;
  v13 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  v73 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  *v13 = 0;
  *(v13 + 8) = 1;
  v74 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry) = 0;
  v75 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo) = MEMORY[0x1E69E7CC0];
  v77 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut) = 0;
  v78 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback) = xmmword_1B9652FE0;
  v79 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback) = v14;
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(v1 + 24);
  *(v1 + 16) = v15;
  *(v1 + 24) = v16;

  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  v20 = *(v1 + 40);
  *(v1 + 32) = v18;
  *(v1 + 40) = v19;

  swift_beginAccess();
  v21 = *(a1 + 48);
  swift_beginAccess();
  v22 = *(v1 + 48);
  *(v1 + 48) = v21;

  swift_beginAccess();
  v23 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v23;
  swift_beginAccess();
  v24 = *(a1 + 64);
  LOBYTE(v18) = *(a1 + 72);
  v25 = v64;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 72) = v18;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v24;
  swift_beginAccess();
  v27 = *(a1 + 80);
  v26 = *(a1 + 88);
  v28 = v65;
  swift_beginAccess();
  v29 = *(v1 + 88);
  *v28 = v27;
  *(v1 + 88) = v26;

  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 96);
  v30 = v66;
  swift_beginAccess();
  *v30 = v26;
  swift_beginAccess();
  v32 = *(a1 + 104);
  v31 = *(a1 + 112);
  v33 = v67;
  swift_beginAccess();
  v34 = *(v1 + 112);
  *v33 = v32;
  *(v1 + 112) = v31;

  swift_beginAccess();
  v36 = *(a1 + 120);
  v35 = *(a1 + 128);
  v37 = v68;
  swift_beginAccess();
  v38 = *(v1 + 128);
  *v37 = v36;
  *(v1 + 128) = v35;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  swift_beginAccess();
  LODWORD(v39) = *(a1 + v39);
  v40 = v72;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v73;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v74;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v75;
  swift_beginAccess();
  v49 = *(v1 + v48);
  *(v1 + v48) = v47;

  v50 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);
  v51 = v77;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  v55 = v78;
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  *v55 = v54;
  v55[1] = v53;
  sub_1B8D91FCC(v54, v53);
  sub_1B8D538A0(v56, v57);
  v58 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  swift_beginAccess();
  v59 = *(a1 + v58);

  v60 = v79;
  swift_beginAccess();
  v61 = *(v1 + v60);
  *(v1 + v60) = v59;

  return v1;
}

void *sub_1B8FFCF90()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[11];

  v5 = v0[14];

  v6 = v0[16];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback, &qword_1EBAC07D0, &qword_1B966FA70);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback, &qword_1EBAC07D8, &unk_1B966FA78);
  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo);

  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback), *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback + 8));
  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback);

  return v0;
}

void sub_1B8FFD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8FFD418();
        break;
      case 2:
        sub_1B8FFD46C();
        break;
      case 3:
        sub_1B8FFD4C4();
        break;
      case 4:
        sub_1B8FFD568();
        break;
      case 5:
        sub_1B8FFD5C0();
        break;
      case 6:
      case 7:
      case 9:
      case 10:
      case 11:
        continue;
      case 8:
        sub_1B8FFD654();
        break;
      case 12:
        sub_1B8E16B50();
        break;
      case 13:
        sub_1B8ED5CB4();
        break;
      case 14:
        sub_1B8EC1004();
        break;
      case 15:
        sub_1B8E16CDC();
        break;
      case 16:
        sub_1B8FFD6A8();
        break;
      case 17:
        sub_1B8FFD784();
        break;
      case 18:
        sub_1B900C4C4();
        break;
      case 19:
        sub_1B9003F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus, sub_1B9023BE8);
        break;
      case 20:
      case 22:
        sub_1B900709C();
        break;
      case 21:
        sub_1B8FFD860();
        break;
      default:
        if (v9 == 101)
        {
          sub_1B9003EAC();
        }

        else if (v9 == 200)
        {
          sub_1B8FFD93C();
        }

        break;
    }
  }
}

void sub_1B8FFD418()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B8FFD46C()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B8FFD4C4()
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C3B0();
  return swift_endAccess();
}

void sub_1B8FFD568()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B8FFD5C0()
{
  swift_beginAccess();
  sub_1B9014060();
  sub_1B964C420();
  return swift_endAccess();
}

void sub_1B8FFD654()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C400();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B8FFD6A8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FFD784()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FFD860()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8FFD93C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
  sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8FFDA58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v43 - v5;
  v49 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v43[1] = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v43 - v10;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v43[2] = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a1 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v18 = *(a1 + 40);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = *(a1 + 40);

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_11;
    }
  }

LABEL_11:
  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    sub_1B964C280();

    sub_1B964C5F0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) == 0.0 || (result = sub_1B964C6F0(), !v1))
  {
    swift_beginAccess();
    if (!*(a1 + 64) || (v22 = *(a1 + 72), v47 = *(a1 + 64), v48 = v22, sub_1B9014060(), result = sub_1B964C680(), !v1))
    {
      swift_beginAccess();
      if (*(a1 + 73) != 1 || (result = sub_1B964C670(), !v1))
      {
        swift_beginAccess();
        v23 = *(a1 + 88);
        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          v25 = *(a1 + 88);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        if (*(a1 + 96) != 1 || (result = sub_1B964C670(), !v1))
        {
          swift_beginAccess();
          v26 = *(a1 + 112);
          v27 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v27 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            v28 = *(a1 + 112);

            sub_1B964C700();
            if (v1)
            {
            }
          }

          swift_beginAccess();
          v29 = *(a1 + 128);
          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            v31 = *(a1 + 128);

            sub_1B964C700();
            if (v1)
            {
            }
          }

          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
          {
            sub_1B8D9207C(v11, &qword_1EBAC07D0, &qword_1B966FA70);
          }

          else
          {
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
            sub_1B964C740();
            if (v1)
            {
              return sub_1B8FAC5C8();
            }

            sub_1B8FAC5C8();
          }

          swift_beginAccess();
          v32 = v44;
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v32, 1, v49) == 1)
          {
            sub_1B8D9207C(v32, &qword_1EBAC07D8, &unk_1B966FA78);
          }

          else
          {
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope);
            sub_1B964C740();
            result = sub_1B8FAC5C8();
            if (v1)
            {
              return result;
            }
          }

          v33 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
          swift_beginAccess();
          if (!*(a1 + v33) || (result = sub_1B964C710(), !v1))
          {
            v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus);
            swift_beginAccess();
            if (!*v34 || (v35 = *(v34 + 8), v45 = *v34, v46 = v35, sub_1B9023BE8(), result = sub_1B964C680(), !v1))
            {
              v36 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
              swift_beginAccess();
              if (*(a1 + v36) != 1 || (result = sub_1B964C670(), !v1))
              {
                v37 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
                swift_beginAccess();
                if (!*(*(a1 + v37) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0), sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo), , sub_1B964C730(), result = , !v1))
                {
                  v38 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
                  swift_beginAccess();
                  if (*(a1 + v38) != 1 || (result = sub_1B964C670(), !v1))
                  {
                    v39 = a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback;
                    swift_beginAccess();
                    if (sub_1B8D99EA8(*v39, *(v39 + 8)) || (v41 = *v39, v40 = *(v39 + 8), sub_1B8D91FCC(v41, v40), sub_1B964C6A0(), result = sub_1B8D538A0(v41, v40), !v1))
                    {
                      v42 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
                      result = swift_beginAccess();
                      if (*(*(a1 + v42) + 16))
                      {
                        type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
                        sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);

                        sub_1B964C730();
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

uint64_t sub_1B8FFE4B0(uint64_t a1, uint64_t a2)
{
  v106 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  v4 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F40, &qword_1B967F3E8);
  v6 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v8 = &v100 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v100 - v13;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F48, &qword_1B967F3F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v100 - v25;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  swift_beginAccess();
  v29 = v28 == *(a2 + 16) && v27 == *(a2 + 24);
  if (!v29 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_57;
  }

  swift_beginAccess();
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  swift_beginAccess();
  v32 = v30 == *(a2 + 32) && v31 == *(a2 + 40);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_57;
  }

  v101 = v8;
  swift_beginAccess();
  v33 = *(a1 + 48);
  swift_beginAccess();
  v34 = *(a2 + 48);

  sub_1B8DB02F8(v33, v34);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v37 = *(a1 + 56);
  swift_beginAccess();
  if (v37 != *(a2 + 56))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v38 = *(a1 + 64);
  v39 = *(a1 + 72);
  swift_beginAccess();
  v40 = *(a2 + 72);
  if (!sub_1B8D92198(v38, v39, *(a2 + 64)))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v41 = *(a1 + 73);
  swift_beginAccess();
  if (v41 != *(a2 + 73))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v42 = *(a1 + 80);
  v43 = *(a1 + 88);
  swift_beginAccess();
  v44 = v42 == *(a2 + 80) && v43 == *(a2 + 88);
  if (!v44 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v45 = *(a1 + 96);
  swift_beginAccess();
  if (v45 != *(a2 + 96))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v46 = *(a1 + 104);
  v47 = *(a1 + 112);
  swift_beginAccess();
  v48 = v46 == *(a2 + 104) && v47 == *(a2 + 112);
  if (!v48 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v49 = *(a1 + 120);
  v50 = *(a1 + 128);
  swift_beginAccess();
  v51 = v49 == *(a2 + 120) && v50 == *(a2 + 128);
  if (!v51 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v52 = *(v17 + 48);
  v53 = v108;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v53, 1, v14) == 1)
  {
    sub_1B8D9207C(v26, &qword_1EBAC07D0, &qword_1B966FA70);
    if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v14) == 1)
    {
      sub_1B8D9207C(v53, &qword_1EBAC07D0, &qword_1B966FA70);
      goto LABEL_40;
    }

LABEL_36:
    v54 = &qword_1EBAC1F48;
    v55 = &qword_1B967F3F0;
    v56 = v53;
LABEL_55:
    sub_1B8D9207C(v56, v54, v55);
    goto LABEL_56;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v14) == 1)
  {
    sub_1B8D9207C(v26, &qword_1EBAC07D0, &qword_1B966FA70);
    sub_1B8FAC5C8();
    goto LABEL_36;
  }

  v57 = v104;
  sub_1B8FAC528();
  v58 = *(v14 + 20);
  v59 = *&v24[v58];
  v60 = *&v57[v58];
  if (v59 != v60)
  {
    v61 = *&v24[v58];

    v62 = sub_1B90076F8(v59, v60);

    if (!v62)
    {
      sub_1B8FAC5C8();
      sub_1B8D9207C(v26, &qword_1EBAC07D0, &qword_1B966FA70);
      sub_1B8FAC5C8();
      v56 = v53;
      v54 = &qword_1EBAC07D0;
      v55 = &qword_1B966FA70;
      goto LABEL_55;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v63 = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v26, &qword_1EBAC07D0, &qword_1B966FA70);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v53, &qword_1EBAC07D0, &qword_1B966FA70);
  if ((v63 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_40:
  swift_beginAccess();
  v64 = v107;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v65 = *(v105 + 48);
  v66 = v101;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v67 = v106;
  if (__swift_getEnumTagSinglePayload(v66, 1, v106) != 1)
  {
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v67) == 1)
    {
      sub_1B8D9207C(v107, &qword_1EBAC07D8, &unk_1B966FA78);
      sub_1B8FAC5C8();
      goto LABEL_45;
    }

    sub_1B8FAC528();
    static Apple_Parsec_Feedback_V2_UsageEnvelope.== infix(_:_:)();
    v69 = v68;
    sub_1B8FAC5C8();
    sub_1B8D9207C(v107, &qword_1EBAC07D8, &unk_1B966FA78);
    sub_1B8FAC5C8();
    sub_1B8D9207C(v66, &qword_1EBAC07D8, &unk_1B966FA78);
    if (v69)
    {
      goto LABEL_47;
    }

LABEL_56:

LABEL_57:
    v98 = 0;
    return v98 & 1;
  }

  sub_1B8D9207C(v64, &qword_1EBAC07D8, &unk_1B966FA78);
  if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v67) != 1)
  {
LABEL_45:
    v54 = &qword_1EBAC1F40;
    v55 = &qword_1B967F3E8;
    v56 = v66;
    goto LABEL_55;
  }

  sub_1B8D9207C(v66, &qword_1EBAC07D8, &unk_1B966FA78);
LABEL_47:
  v70 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  swift_beginAccess();
  LODWORD(v70) = *(a1 + v70);
  v71 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  swift_beginAccess();
  if (v70 != *(a2 + v71))
  {
    goto LABEL_56;
  }

  v72 = a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  swift_beginAccess();
  v73 = *v72;
  v74 = *(v72 + 8);
  v75 = a2 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  swift_beginAccess();
  v76 = *(v75 + 8);
  if (!sub_1B8D92198(v73, v74, *v75))
  {
    goto LABEL_56;
  }

  v77 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  swift_beginAccess();
  LODWORD(v77) = *(a1 + v77);
  v78 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  swift_beginAccess();
  if (v77 != *(a2 + v78))
  {
    goto LABEL_56;
  }

  v79 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  swift_beginAccess();
  v80 = *(a1 + v79);
  v81 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  swift_beginAccess();
  v82 = *(a2 + v81);

  sub_1B8D8BC70();
  v84 = v83;

  if ((v84 & 1) == 0)
  {
    goto LABEL_56;
  }

  v85 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  swift_beginAccess();
  LODWORD(v85) = *(a1 + v85);
  v86 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  swift_beginAccess();
  if (v85 != *(a2 + v86))
  {
    goto LABEL_56;
  }

  v87 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  swift_beginAccess();
  v89 = *v87;
  v88 = v87[1];
  v90 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  sub_1B8D91FCC(v89, v88);
  sub_1B8D91FCC(v92, v91);
  v93 = MEMORY[0x1BFADC060](v89, v88, v92, v91);
  sub_1B8D538A0(v92, v91);
  sub_1B8D538A0(v89, v88);
  if ((v93 & 1) == 0)
  {
    goto LABEL_56;
  }

  v94 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  swift_beginAccess();
  v95 = *(a1 + v94);
  v96 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  swift_beginAccess();
  v97 = *(a2 + v96);

  v98 = sub_1B8D8BE68(v95, v97);

  return v98 & 1;
}

uint64_t sub_1B8FFF294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C48, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFF314(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A10, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFF384()
{
  sub_1B8CD2450(&qword_1EBAC1A10, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFF41C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0560);
  __swift_project_value_buffer(v0, qword_1EBAC0560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stringKeyFields";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intKeyFields";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_Struct.decodeMessage<A>(decoder:)()
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
      sub_1B8FFF764();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8FFF66C();
    }
  }

  return result;
}

uint64_t sub_1B8FFF66C()
{
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value);
  sub_1B8CD2450(&qword_1EBAC0BB8, type metadata accessor for Apple_Parsec_Feedback_V2_Value);
  return sub_1B964C3A0();
}

uint64_t sub_1B8FFF764()
{
  sub_1B964C250();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value);
  sub_1B8CD2450(&qword_1EBAC0BB8, type metadata accessor for Apple_Parsec_Feedback_V2_Value);
  return sub_1B964C3A0();
}

void Apple_Parsec_Feedback_V2_Struct.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_859();
  OUTLINED_FUNCTION_423_0();
  OUTLINED_FUNCTION_835();
  if (!v1 || (sub_1B964C280(), type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_550_0(), sub_1B8CD2450(v2, type metadata accessor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_85_1(), sub_1B964C5E0(), !v0))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v3 || (sub_1B964C250(), type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_550_0(), sub_1B8CD2450(v4, type metadata accessor for Apple_Parsec_Feedback_V2_Value), sub_1B964C5E0(), !v0))
    {
      v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
      OUTLINED_FUNCTION_184_2(v5);
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_747();
}

uint64_t sub_1B8FFFAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C40, type metadata accessor for Apple_Parsec_Feedback_V2_Struct);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFFB58(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFFBC8()
{
  sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFFC60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0578);
  __swift_project_value_buffer(v0, qword_1EBAC0578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null_value";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "number_value";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "string_value";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "BOOL_value";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "struct_value";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "list_value";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "bytes_value";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_Value.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9000044(v3, v4);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_9();
        sub_1B9000200(v13, v14);
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_9();
        sub_1B9000398(v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B900053C(v11, v12);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_17_3();
        sub_1B90006C8(v5, v6, v7, v8);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B9000BC0(v15, v16, v17, v18);
        break;
      case 7:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B90010B8(v19, v20);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9000044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v13 = 0;
  v14 = 256;
  sub_1B9023B94();
  result = sub_1B964C410();
  if (!v2 && (v14 & 0x100) == 0)
  {
    v15 = v13;
    v12 = v14;
    sub_1B8F1B8B8();
    v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
    *a2 = v15;
    *(a2 + 8) = v12 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1B9000200(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 1;
  result = sub_1B964C500();
  if (!v2 && (v13 & 1) == 0)
  {
    v9 = v12;
    sub_1B8F1B8B8();
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1B9000398(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0;
  result = sub_1B964C520();
  if (v2)
  {
  }

  v9 = v13;
  if (v13)
  {
    v14 = v12;
    sub_1B8F1B8B8();
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
    *a2 = v14;
    a2[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1B900053C(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v13 = 2;
  result = sub_1B964C3F0();
  if (!v2)
  {
    v9 = v13;
    if (v13 != 2)
    {
      sub_1B8F1B8B8();
      v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
      sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
      if (EnumTagSinglePayload != 1)
      {
        sub_1B964C3D0();
      }

      sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_1B90006C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBAC06E8, &qword_1B966F970);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC06E8, &qword_1B966F970);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC06E8, &qword_1B966F970);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC06E8, &qword_1B966F970);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC06E8, &qword_1B966F970);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9158, &qword_1B964D940);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9000BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F38, &qword_1B967F3E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v22, &qword_1EBAC1F38, &qword_1B967F3E0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC1F38, &qword_1B967F3E0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC1F38, &qword_1B967F3E0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC1F38, &qword_1B967F3E0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC1F38, &qword_1B967F3E0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9158, &qword_1B964D940);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B90010B8(uint64_t a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v12 = xmmword_1B96556C0;
  sub_1B964C460();
  v8 = v12;
  if (v2 || *(&v12 + 1) >> 60 == 15)
  {
    return sub_1B8DF2920(v12, *(&v12 + 1));
  }

  sub_1B8F1B8B8();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v13);
  sub_1B8D91FCC(v8, *(&v8 + 1));
  sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8DF2920(v8, *(&v8 + 1));
  sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
  *a2 = v8;
  v11 = v13;
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
}

uint64_t Apple_Parsec_Feedback_V2_Value.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
  v2 = OUTLINED_FUNCTION_190_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v9 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (!v11)
  {
    OUTLINED_FUNCTION_686();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_7_6();
        result = sub_1B900156C();
        goto LABEL_12;
      case 2u:
        OUTLINED_FUNCTION_32_9();
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_7_6();
        result = sub_1B90016AC();
        goto LABEL_12;
      case 3u:
        OUTLINED_FUNCTION_7_6();
        result = sub_1B9001800();
        goto LABEL_12;
      case 4u:
        v13 = OUTLINED_FUNCTION_7_6();
        sub_1B9001940(v13, v14, v15, v16);
        goto LABEL_9;
      case 5u:
        v17 = OUTLINED_FUNCTION_7_6();
        sub_1B9001B54(v17, v18, v19, v20);
LABEL_9:
        OUTLINED_FUNCTION_32_9();
        result = sub_1B8FAC5C8();
        if (!v1)
        {
          break;
        }

        return result;
      case 6u:
        OUTLINED_FUNCTION_32_9();
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_7_6();
        result = sub_1B9001D68();
        goto LABEL_12;
      default:
        OUTLINED_FUNCTION_7_6();
        result = sub_1B900140C();
LABEL_12:
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v21 = v0 + *(type metadata accessor for Apple_Parsec_Feedback_V2_Value(0) + 20);
  OUTLINED_FUNCTION_12();
  return sub_1B964C290();
}

uint64_t sub_1B900140C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1B8F1B8B8();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_1B9023B94();
      return sub_1B964C680();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B900156C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  sub_1B8F1B8B8();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *v3;
      return sub_1B964C6F0();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90016AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1B8F1B8B8();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1B964C700();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001800()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1B8F1B8B8();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v5 = *v3;
      return sub_1B964C670();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001D68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1B8F1B8B8();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_1B964C6A0();
      return sub_1B8D538A0(v6, v5);
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Feedback_V2_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9160, &qword_1B964D948);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_861();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
LABEL_12:
      v22 = type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
      OUTLINED_FUNCTION_871(v22);
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v23, v24);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_32_9();
    sub_1B8FAC5C8();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9160, &qword_1B964D948);
    goto LABEL_10;
  }

  sub_1B8FAC528();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)();
  v21 = v20;
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_467();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9002188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C38, type metadata accessor for Apple_Parsec_Feedback_V2_Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9002208(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9002278()
{
  sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value);

  return sub_1B964C5D0();
}

void sub_1B900232C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_202();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B964D050;
  v15 = v14 + v13 + v11[14];
  *(v14 + v13) = v5;
  *v15 = v3;
  *(v15 + 8) = v1;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_21_7(v17);
  (*(v18 + 104))(v15, v16);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Feedback_V2_ListValue.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9002548();
    }
  }
}

void sub_1B9002548()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD2450(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Feedback_V2_ListValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B90026E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C30, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9002768(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90027D8()
{
  sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B9002864()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05A8);
  __swift_project_value_buffer(v0, qword_1EBAC05A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryId";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cbaType";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.decodeMessage<A>(decoder:)()
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
        sub_1B964C560();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9002B68();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CBAEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    if (!*(v1 + 8) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v0))
    {
      if (!*(v1 + 16) || (v2 = *(v1 + 24), OUTLINED_FUNCTION_94_4(), sub_1B9014108(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        v3 = *(v1 + 32);
        v4 = *(v1 + 40);
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
        {
          v6 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0) + 32);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B9002D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C28, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9002DC4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9002E34()
{
  sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B9002EC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05C0);
  __swift_project_value_buffer(v0, qword_1EBAC05C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "result";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "userSelection";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "cardSection";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "uuidBytes";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sections";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "uploadedDataIdentifier";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "reportType";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B9003260()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userSelection;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections) = MEMORY[0x1E69E7CC0];
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
  *v8 = 0;
  *(v8 + 8) = 1;
  return v0;
}

uint64_t sub_1B900334C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38[2] = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v1 + 16) = 0;
  v11 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userSelection;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v38[1] = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes) = xmmword_1B9652FE0;
  v39 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections) = MEMORY[0x1E69E7CC0];
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
  v41 = v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
  *v19 = 0;
  *(v19 + 8) = 1;
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v20;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];
  swift_beginAccess();
  v24 = *v17;
  v25 = v17[1];
  *v17 = v23;
  v17[1] = v22;
  sub_1B8D91FCC(v23, v22);
  sub_1B8D538A0(v24, v25);
  v26 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v39;
  swift_beginAccess();
  v29 = *(v1 + v28);
  *(v1 + v28) = v27;

  v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  swift_beginAccess();
  v33 = v18[1];
  *v18 = v31;
  v18[1] = v32;

  v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);

  v36 = v41;
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  return v1;
}

uint64_t sub_1B9003834()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result, &qword_1EBAB9168, &qword_1B964D950);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userSelection, &qword_1EBAC06D8, &qword_1B966F960);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection, &qword_1EBAC0730, &qword_1B966F9B8);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes), *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes + 8));
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier + 8);

  return v0;
}

void sub_1B9003964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9006E98();
        break;
      case 2:
        sub_1B9003B3C();
        break;
      case 3:
        sub_1B9003C18();
        break;
      case 4:
        sub_1B9003CF4();
        break;
      case 5:
      case 7:
        sub_1B9003EAC();
        break;
      case 6:
        sub_1B9003DD0();
        break;
      case 8:
        sub_1B9003F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType, sub_1B9023AEC);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9003B3C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9003C18()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9003CF4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9003DD0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  sub_1B964C570();
  return swift_endAccess();
}

void sub_1B9003EAC()
{
  OUTLINED_FUNCTION_819();
  v1 = v0;
  OUTLINED_FUNCTION_132_5();
  v3 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v1();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B9003F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_122_1();
  v8 = *v7;
  OUTLINED_FUNCTION_131();
  v9 = swift_beginAccess();
  a6(v9);
  OUTLINED_FUNCTION_601_0();
  sub_1B964C420();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9003FD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v40 - v5;
  v41 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40[1] = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = v40 - v10;
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v11 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v40[2] = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v40 - v15;
  v17 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  v19 = a1;
  if (!*(a1 + 16) || (result = sub_1B964C720(), !v1))
  {
    v47 = v1;
    swift_beginAccess();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1B8D9207C(v16, &qword_1EBAB9168, &qword_1B964D950);
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
      v21 = v47;
      sub_1B964C740();
      result = sub_1B8FAC5C8();
      if (v21)
      {
        return result;
      }

      v47 = 0;
    }

    swift_beginAccess();
    v22 = v42;
    sub_1B8F1B8B8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v43);
    v24 = v44;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC06D8, &qword_1B966F960);
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
      v25 = v47;
      sub_1B964C740();
      result = sub_1B8FAC5C8();
      if (v25)
      {
        return result;
      }

      v47 = 0;
    }

    swift_beginAccess();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v24, 1, v41) == 1)
    {
      sub_1B8D9207C(v24, &qword_1EBAC0730, &qword_1B966F9B8);
      v26 = v47;
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
      v27 = v47;
      sub_1B964C740();
      v26 = v27;
      result = sub_1B8FAC5C8();
      if (v27)
      {
        return result;
      }
    }

    v28 = v19 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes;
    swift_beginAccess();
    if (sub_1B8D99EA8(*v28, *(v28 + 8)) || (v30 = *v28, v29 = *(v28 + 8), sub_1B8D91FCC(v30, v29), sub_1B964C6A0(), result = sub_1B8D538A0(v30, v29), !v26))
    {
      v31 = v26;
      v32 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
      swift_beginAccess();
      if (*(*(v19 + v32) + 16))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
        sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

        sub_1B964C730();
        v33 = v31;

        if (v31)
        {
          return result;
        }
      }

      else
      {
        v33 = v31;
      }

      v34 = (v19 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
      swift_beginAccess();
      v35 = *v34;
      v36 = v34[1];
      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v37 || (, sub_1B964C700(), result = , !v33))
      {
        v38 = (v19 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType);
        result = swift_beginAccess();
        if (*v38)
        {
          v39 = *(v38 + 8);
          v45 = *v38;
          v46 = v39;
          sub_1B9023AEC();
          return sub_1B964C680();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B90047CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_177_1();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v13, v14);
  OUTLINED_FUNCTION_288();
  return OUTLINED_FUNCTION_656_0() & 1;
}

BOOL sub_1B9004898(uint64_t a1, uint64_t a2)
{
  v95 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  v4 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0780, &qword_1B966FA20);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v9 = &v90 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v90 - v14;
  v100 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v15 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v93 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28);
  v17 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v96 = (&v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v90 - v23;
  v24 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v90 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v102 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v90 - v35;
  swift_beginAccess();
  v37 = *(a1 + 16);
  swift_beginAccess();
  if (v37 != *(a2 + 16))
  {
    return 0;
  }

  v90 = v6;
  v91 = v9;
  v97 = a2;
  swift_beginAccess();
  v38 = v97;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v39 = *(v27 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v30, 1, v24) == 1)
  {

    sub_1B8D9207C(v36, &qword_1EBAB9168, &qword_1B964D950);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v30[v39], 1, v24);
    v41 = v104;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v30, &qword_1EBAB9168, &qword_1B964D950);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v42 = v102;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v30[v39], 1, v24) == 1)
  {

    sub_1B8D9207C(v36, &qword_1EBAB9168, &qword_1B964D950);
    sub_1B8FAC5C8();
LABEL_7:
    v43 = &qword_1EBAB9170;
    v44 = &qword_1B964D958;
    v45 = v30;
LABEL_26:
    sub_1B8D9207C(v45, v43, v44);
    goto LABEL_27;
  }

  v46 = v98;
  sub_1B8FAC528();
  v47 = *(v24 + 20);
  v48 = *&v42[v47];
  v49 = *&v46[v47];

  if (v48 != v49)
  {

    v50 = sub_1B8FB7DA4(v48, v49);

    if (!v50)
    {
      sub_1B8FAC5C8();
      sub_1B8D9207C(v36, &qword_1EBAB9168, &qword_1B964D950);
      sub_1B8FAC5C8();
      v45 = v30;
      v43 = &qword_1EBAB9168;
      v44 = &qword_1B964D950;
      goto LABEL_26;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v51 = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v36, &qword_1EBAB9168, &qword_1B964D950);
  sub_1B8FAC5C8();
  v38 = v97;
  sub_1B8D9207C(v30, &qword_1EBAB9168, &qword_1B964D950);
  v41 = v104;
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  swift_beginAccess();
  v52 = v103;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v53 = *(v99 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v54 = v100;
  if (__swift_getEnumTagSinglePayload(v41, 1, v100) != 1)
  {
    v57 = v96;
    sub_1B8F1B8B8();
    v58 = __swift_getEnumTagSinglePayload(v41 + v53, 1, v54);
    v56 = v101;
    if (v58 != 1)
    {
      v59 = v93;
      sub_1B8FAC528();
      v60 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v57, v59);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v103, &qword_1EBAC06D8, &qword_1B966F960);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v41, &qword_1EBAC06D8, &qword_1B966F960);
      if ((v60 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    sub_1B8D9207C(v103, &qword_1EBAC06D8, &qword_1B966F960);
    sub_1B8FAC5C8();
LABEL_16:
    v43 = &qword_1EBAC0788;
    v44 = &qword_1B966FA28;
LABEL_25:
    v45 = v41;
    goto LABEL_26;
  }

  sub_1B8D9207C(v52, &qword_1EBAC06D8, &qword_1B966F960);
  v55 = __swift_getEnumTagSinglePayload(v41 + v53, 1, v54);
  v56 = v101;
  if (v55 != 1)
  {
    goto LABEL_16;
  }

  sub_1B8D9207C(v41, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_18:
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v61 = *(v94 + 48);
  v41 = v91;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v62 = v95;
  if (__swift_getEnumTagSinglePayload(v41, 1, v95) == 1)
  {
    sub_1B8D9207C(v56, &qword_1EBAC0730, &qword_1B966F9B8);
    if (__swift_getEnumTagSinglePayload(v41 + v61, 1, v62) == 1)
    {
      sub_1B8D9207C(v41, &qword_1EBAC0730, &qword_1B966F9B8);
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v41 + v61, 1, v62) == 1)
  {
    sub_1B8D9207C(v56, &qword_1EBAC0730, &qword_1B966F9B8);
    sub_1B8FAC5C8();
LABEL_24:
    v43 = &qword_1EBAC0780;
    v44 = &qword_1B966FA20;
    goto LABEL_25;
  }

  sub_1B8FAC528();
  v65 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v56, &qword_1EBAC0730, &qword_1B966F9B8);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v41, &qword_1EBAC0730, &qword_1B966F9B8);
  if (v65)
  {
LABEL_31:
    v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
    swift_beginAccess();
    v68 = *v66;
    v67 = v66[1];
    v69 = (v38 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
    swift_beginAccess();
    v71 = *v69;
    v70 = v69[1];
    sub_1B8D91FCC(v68, v67);
    sub_1B8D91FCC(v71, v70);
    v72 = MEMORY[0x1BFADC060](v68, v67, v71, v70);
    sub_1B8D538A0(v71, v70);
    sub_1B8D538A0(v68, v67);
    if (v72)
    {
      v73 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
      swift_beginAccess();
      v74 = *(a1 + v73);
      v75 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
      swift_beginAccess();
      v76 = *(v38 + v75);

      sub_1B8D7FB3C();
      v78 = v77;

      if (v78)
      {
        v79 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
        swift_beginAccess();
        v80 = *v79;
        v81 = v79[1];
        v82 = (v38 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
        swift_beginAccess();
        v83 = v80 == *v82 && v81 == v82[1];
        if (v83 || (sub_1B964C9F0() & 1) != 0)
        {
          v84 = a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
          swift_beginAccess();
          v85 = *v84;
          v86 = *(v84 + 8);

          v87 = v38 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
          swift_beginAccess();
          v88 = *v87;
          v89 = *(v87 + 8);

          return sub_1B8D92198(v85, v86, v88);
        }
      }
    }
  }

LABEL_27:

  return 0;
}

uint64_t sub_1B9005654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C20, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90056D4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A80, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9005744()
{
  sub_1B8CD2450(&qword_1EBAC1A80, type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B90057D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05E0);
  __swift_project_value_buffer(v0, qword_1EBAC05E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
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
  *v10 = "deviceModel";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "locale";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "osVersion";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.decodeMessage<A>(decoder:)()
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
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          v16 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  OUTLINED_FUNCTION_850();
  v16 = v5 && v14 == v15;
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_764(v17);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v18, v19);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9005CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C18, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9005D78(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9005DE8()
{
  sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9005E74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05F8);
  __swift_project_value_buffer(v0, qword_1EBAC05F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "collectionStartTimestamp";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "collectionEndTimestamp";
  *(v9 + 8) = 22;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "client";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "totalUsagesInCollectionPeriod";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "context";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "configuredLookbackTimeInDays";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "activeDaysInCollectionPeriod";
  *(v19 + 1) = 28;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "totalEngagements";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "isDiagnosticsAndUsageEnabled";
  *(v23 + 1) = 28;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "invokedDays";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "zkwEngagedDays";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "searchedDays";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "suggestionOrAppleResultEngagedDays";
  *(v31 + 1) = 34;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "webEngagedDays";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "voiceSearchDays";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "numSearchEngagements";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B90063E8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 44) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__context;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements) = 0;
  return v0;
}

uint64_t sub_1B90064C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35[1] = v35 - v5;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 44) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__context;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays) = 0;
  v36 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod) = 0;
  v37 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements) = 0;
  v38 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled) = 0;
  v39 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays) = 0;
  v40 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays) = 0;
  v41 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays) = 0;
  v42 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays) = 0;
  v43 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays) = 0;
  v44 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays) = 0;
  v45 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements) = 0;
  swift_beginAccess();
  v9 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v9;
  swift_beginAccess();
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v10;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  swift_beginAccess();
  LODWORD(v11) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v11;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + v13);
  swift_beginAccess();
  *(v1 + v8) = v13;
  v14 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
  swift_beginAccess();
  LODWORD(v14) = *(a1 + v14);
  v15 = v36;
  swift_beginAccess();
  *(v1 + v15) = v14;
  v16 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
  swift_beginAccess();
  LODWORD(v16) = *(a1 + v16);
  v17 = v37;
  swift_beginAccess();
  *(v1 + v17) = v16;
  v18 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + v18);
  v19 = v38;
  swift_beginAccess();
  *(v1 + v19) = v18;
  v20 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
  swift_beginAccess();
  LODWORD(v20) = *(a1 + v20);
  v21 = v39;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
  swift_beginAccess();
  LODWORD(v22) = *(a1 + v22);
  v23 = v40;
  swift_beginAccess();
  *(v1 + v23) = v22;
  v24 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
  swift_beginAccess();
  LODWORD(v24) = *(a1 + v24);
  v25 = v41;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
  swift_beginAccess();
  LODWORD(v26) = *(a1 + v26);
  v27 = v42;
  swift_beginAccess();
  *(v1 + v27) = v26;
  v28 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
  swift_beginAccess();
  LODWORD(v28) = *(a1 + v28);
  v29 = v43;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + v30);
  v31 = v44;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
  swift_beginAccess();
  LODWORD(v32) = *(a1 + v32);

  v33 = v45;
  swift_beginAccess();
  *(v1 + v33) = v32;
  return v1;
}

uint64_t sub_1B9006A30()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__context, &qword_1EBAC07F0, &qword_1B966FA90);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B9006B0C()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B9006E98();
        break;
      case 2:
        sub_1B9006EF0();
        break;
      case 3:
        sub_1B9006F48();
        break;
      case 4:
        sub_1B900C204();
        break;
      case 5:
        sub_1B9006FC0();
        break;
      case 6:
      case 7:
      case 8:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
        sub_1B900C4C4();
        break;
      case 9:
        sub_1B900709C();
        break;
      default:
        continue;
    }
  }
}

void sub_1B9006E98()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

void sub_1B9006EF0()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

void sub_1B9006F48()
{
  OUTLINED_FUNCTION_819();
  v1 = v0;
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  v2 = swift_beginAccess();
  v1(v2);
  OUTLINED_FUNCTION_601_0();
  sub_1B964C420();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B9006FC0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B900709C()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C400();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B9007134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v26 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B964C6D0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_1B964C6D0(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (v14 = *(a1 + 40), v26[37] = *(a1 + 32), v27 = v14, sub_1B9023A98(), result = sub_1B964C680(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 44) || (result = sub_1B964C6C0(), !v4))
        {
          v28 = a4;
          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
          {
            sub_1B8D9207C(v10, &qword_1EBAC07F0, &qword_1B966FA90);
          }

          else
          {
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext);
            sub_1B964C740();
            result = sub_1B8FAC5C8();
            if (v4)
            {
              return result;
            }
          }

          v15 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
          swift_beginAccess();
          if (!*(a1 + v15) || (result = sub_1B964C6C0(), !v4))
          {
            v16 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
            swift_beginAccess();
            if (!*(a1 + v16) || (result = sub_1B964C6C0(), !v4))
            {
              v17 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
              swift_beginAccess();
              if (!*(a1 + v17) || (result = sub_1B964C6C0(), !v4))
              {
                v18 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
                swift_beginAccess();
                if (*(a1 + v18) != 1 || (result = sub_1B964C670(), !v4))
                {
                  v19 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
                  swift_beginAccess();
                  if (!*(a1 + v19) || (result = sub_1B964C6C0(), !v4))
                  {
                    v20 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
                    swift_beginAccess();
                    if (!*(a1 + v20) || (result = sub_1B964C6C0(), !v4))
                    {
                      v21 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
                      swift_beginAccess();
                      if (!*(a1 + v21) || (result = sub_1B964C6C0(), !v4))
                      {
                        v22 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
                        swift_beginAccess();
                        if (!*(a1 + v22) || (result = sub_1B964C6C0(), !v4))
                        {
                          v23 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
                          swift_beginAccess();
                          if (!*(a1 + v23) || (result = sub_1B964C6C0(), !v4))
                          {
                            v24 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
                            swift_beginAccess();
                            if (!*(a1 + v24) || (result = sub_1B964C6C0(), !v4))
                            {
                              v25 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
                              swift_beginAccess();
                              result = *(a1 + v25);
                              if (result)
                              {
                                return sub_1B964C6C0();
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

BOOL sub_1B90076F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0C30, &qword_1B966FAD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = (v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v51 - v17;
  swift_beginAccess();
  v19 = *(a1 + 16);
  swift_beginAccess();
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 24);
  swift_beginAccess();
  if (v20 != *(a2 + 24))
  {
    return 0;
  }

  v51[0] = v11;
  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = *(a2 + 40);
  if (!sub_1B8D92198(v21, v22, *(a2 + 32)))
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 44);
  swift_beginAccess();
  if (v24 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v25 = *(v8 + 48);
  v26 = v51[0];
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v26, 1, v4) == 1)
  {

    sub_1B8D9207C(v18, &qword_1EBAC07F0, &qword_1B966FA90);
    if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v4) == 1)
    {
      sub_1B8D9207C(v26, &qword_1EBAC07F0, &qword_1B966FA90);
LABEL_12:
      v28 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
      swift_beginAccess();
      LODWORD(v28) = *(a1 + v28);
      v29 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__configuredLookbackTimeInDays;
      swift_beginAccess();
      if (v28 == *(a2 + v29))
      {
        v30 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
        swift_beginAccess();
        LODWORD(v30) = *(a1 + v30);
        v31 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__activeDaysInCollectionPeriod;
        swift_beginAccess();
        if (v30 == *(a2 + v31))
        {
          v32 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
          swift_beginAccess();
          LODWORD(v32) = *(a1 + v32);
          v33 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalEngagements;
          swift_beginAccess();
          if (v32 == *(a2 + v33))
          {
            v34 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
            swift_beginAccess();
            LODWORD(v34) = *(a1 + v34);
            v35 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isDiagnosticsAndUsageEnabled;
            swift_beginAccess();
            if (v34 == *(a2 + v35))
            {
              v36 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
              swift_beginAccess();
              LODWORD(v36) = *(a1 + v36);
              v37 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__invokedDays;
              swift_beginAccess();
              if (v36 == *(a2 + v37))
              {
                v38 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
                swift_beginAccess();
                LODWORD(v38) = *(a1 + v38);
                v39 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__zkwEngagedDays;
                swift_beginAccess();
                if (v38 == *(a2 + v39))
                {
                  v40 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
                  swift_beginAccess();
                  LODWORD(v40) = *(a1 + v40);
                  v41 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchedDays;
                  swift_beginAccess();
                  if (v40 == *(a2 + v41))
                  {
                    v42 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
                    swift_beginAccess();
                    LODWORD(v42) = *(a1 + v42);
                    v43 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__suggestionOrAppleResultEngagedDays;
                    swift_beginAccess();
                    if (v42 == *(a2 + v43))
                    {
                      v44 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
                      swift_beginAccess();
                      LODWORD(v44) = *(a1 + v44);
                      v45 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__webEngagedDays;
                      swift_beginAccess();
                      if (v44 == *(a2 + v45))
                      {
                        v46 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
                        swift_beginAccess();
                        LODWORD(v46) = *(a1 + v46);
                        v47 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__voiceSearchDays;
                        swift_beginAccess();
                        if (v46 == *(a2 + v47))
                        {
                          v48 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
                          swift_beginAccess();
                          LODWORD(v48) = *(a1 + v48);

                          v49 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UsageSinceLookbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__numSearchEngagements;
                          swift_beginAccess();
                          LODWORD(v49) = *(a2 + v49);

                          return v48 == v49;
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

      goto LABEL_23;
    }

    goto LABEL_10;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v4) == 1)
  {

    sub_1B8D9207C(v18, &qword_1EBAC07F0, &qword_1B966FA90);
    sub_1B8FAC5C8();
LABEL_10:
    sub_1B8D9207C(v26, &qword_1EBAC0C30, &qword_1B966FAD0);
    goto LABEL_23;
  }

  sub_1B8FAC528();

  v27 = static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(v16, v7);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v18, &qword_1EBAC07F0, &qword_1B966FA90);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v26, &qword_1EBAC07F0, &qword_1B966FA90);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_23:

  return 0;
}

uint64_t sub_1B9007F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C10, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9007FB4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9008024()
{
  sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback);

  return sub_1B964C5D0();
}

uint64_t sub_1B90080B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0618);
  __swift_project_value_buffer(v0, qword_1EBAC0618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B9652FF0;
  v4 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v4 = "localGoto";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v48 + v3 + v2 + v1[14];
  *(v48 + v3 + v2) = 2;
  *v8 = "localTap";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v48 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "parsecGoto";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v48 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "parsecTap";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v48 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "thirdPartyGoto";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v48 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thirdPartyTap";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v48 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "thirdPartyCompletionOrRecentSearch";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v7();
  v19 = (v48 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "goToSite";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v48 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "other";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v48 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "parsecWeb";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v48 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "parsecAppStore";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v48 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "parsecMaps";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v7();
  v29 = (v48 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "parsecWiki";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v48 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "parsecNews";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v7();
  v33 = (v48 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "parsecStocks";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v48 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "parsecWeather";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v48 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "parsecOther";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v48 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 10;
  *v40 = "totalEngagements";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v48 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "topHitTriggerRatio";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v7();
  v43 = (v48 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "totalTopHitEngagements";
  *(v44 + 1) = 22;
  v44[16] = 2;
  v7();
  v45 = (v48 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "engagementShareRatio";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9008758()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v3 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B90087DC(_DWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34[1] = v34 - v8;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v9 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v35 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v11 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  v13 = a1[4];
  swift_beginAccess();
  *(v1 + 16) = v13;
  swift_beginAccess();
  v14 = a1[5];
  swift_beginAccess();
  *(v1 + 20) = v14;
  swift_beginAccess();
  v15 = a1[6];
  swift_beginAccess();
  *(v1 + 24) = v15;
  swift_beginAccess();
  v16 = a1[7];
  swift_beginAccess();
  *(v1 + 28) = v16;
  swift_beginAccess();
  v17 = a1[8];
  swift_beginAccess();
  *(v1 + 32) = v17;
  swift_beginAccess();
  v18 = a1[9];
  swift_beginAccess();
  *(v1 + 36) = v18;
  swift_beginAccess();
  v19 = a1[10];
  swift_beginAccess();
  *(v1 + 40) = v19;
  swift_beginAccess();
  v20 = a1[11];
  swift_beginAccess();
  *(v1 + 44) = v20;
  swift_beginAccess();
  v21 = a1[12];
  swift_beginAccess();
  *(v1 + 48) = v21;
  swift_beginAccess();
  v22 = a1[13];
  swift_beginAccess();
  *(v1 + 52) = v22;
  swift_beginAccess();
  v23 = a1[14];
  swift_beginAccess();
  *(v1 + 56) = v23;
  swift_beginAccess();
  v24 = a1[15];
  swift_beginAccess();
  *(v1 + 60) = v24;
  swift_beginAccess();
  v25 = a1[16];
  swift_beginAccess();
  *(v1 + 64) = v25;
  swift_beginAccess();
  v26 = a1[17];
  swift_beginAccess();
  *(v1 + 68) = v26;
  swift_beginAccess();
  v27 = a1[18];
  swift_beginAccess();
  *(v1 + 72) = v27;
  swift_beginAccess();
  v28 = a1[19];
  swift_beginAccess();
  *(v1 + 76) = v28;
  swift_beginAccess();
  v29 = a1[20];
  swift_beginAccess();
  *(v1 + 80) = v29;
  swift_beginAccess();
  v30 = a1[21];
  swift_beginAccess();
  *(v1 + 84) = v30;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v31) = *(a1 + v31);
  v32 = v35;
  swift_beginAccess();
  *(v1 + v32) = v31;
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B9008DE4()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio, &qword_1EBAC0800, &qword_1B966FAA0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B9008EE0()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B900BFB0();
        break;
      case 2:
        sub_1B900C008();
        break;
      case 3:
        sub_1B900C05C();
        break;
      case 4:
        sub_1B900C0B0();
        break;
      case 5:
        sub_1B900C104();
        break;
      case 6:
        sub_1B900C158();
        break;
      case 7:
        sub_1B900C1AC();
        break;
      case 8:
        sub_1B900C204();
        break;
      case 9:
        sub_1B900C25C();
        break;
      case 10:
        sub_1B900C770();
        break;
      case 11:
        sub_1B900C2B4();
        break;
      case 12:
        sub_1B900C524();
        break;
      case 13:
        sub_1B900C578();
        break;
      case 14:
        sub_1B900C5CC();
        break;
      case 15:
        sub_1B900C620();
        break;
      case 16:
        sub_1B900C674();
        break;
      case 17:
        sub_1B900C6C8();
        break;
      case 18:
        sub_1B900C71C();
        break;
      case 19:
        sub_1B900923C();
        break;
      case 20:
        sub_1B900C4C4();
        break;
      case 21:
        sub_1B9009318();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B900923C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9009318()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9009434(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18 = v17 - v5;
  v19 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  v6 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v17[2] = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0 || (result = sub_1B964C6B0(), !v1))
  {
    swift_beginAccess();
    if (*(a1 + 20) == 0.0 || (result = sub_1B964C6B0(), !v1))
    {
      swift_beginAccess();
      if (*(a1 + 24) == 0.0 || (result = sub_1B964C6B0(), !v1))
      {
        swift_beginAccess();
        if (*(a1 + 28) == 0.0 || (result = sub_1B964C6B0(), !v1))
        {
          swift_beginAccess();
          if (*(a1 + 32) == 0.0 || (result = sub_1B964C6B0(), !v1))
          {
            swift_beginAccess();
            if (*(a1 + 36) == 0.0 || (result = sub_1B964C6B0(), !v1))
            {
              swift_beginAccess();
              if (*(a1 + 40) == 0.0 || (result = sub_1B964C6B0(), !v1))
              {
                swift_beginAccess();
                if (*(a1 + 44) == 0.0 || (result = sub_1B964C6B0(), !v1))
                {
                  swift_beginAccess();
                  if (*(a1 + 48) == 0.0 || (result = sub_1B964C6B0(), !v1))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 84) || (result = sub_1B964C6C0(), !v1))
                    {
                      swift_beginAccess();
                      if (*(a1 + 52) == 0.0 || (result = sub_1B964C6B0(), !v1))
                      {
                        swift_beginAccess();
                        if (*(a1 + 56) == 0.0 || (result = sub_1B964C6B0(), !v1))
                        {
                          swift_beginAccess();
                          if (*(a1 + 60) == 0.0 || (result = sub_1B964C6B0(), !v1))
                          {
                            swift_beginAccess();
                            if (*(a1 + 64) == 0.0 || (result = sub_1B964C6B0(), !v1))
                            {
                              swift_beginAccess();
                              if (*(a1 + 68) == 0.0 || (result = sub_1B964C6B0(), !v1))
                              {
                                swift_beginAccess();
                                if (*(a1 + 72) == 0.0 || (result = sub_1B964C6B0(), !v1))
                                {
                                  swift_beginAccess();
                                  if (*(a1 + 76) == 0.0 || (result = sub_1B964C6B0(), !v1))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 80) == 0.0 || (result = sub_1B964C6B0(), !v1))
                                    {
                                      v17[1] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
                                      swift_beginAccess();
                                      sub_1B8F1B8B8();
                                      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
                                      {
                                        sub_1B8D9207C(v11, &qword_1EBAC07F8, &qword_1B966FA98);
                                      }

                                      else
                                      {
                                        sub_1B8FAC528();
                                        sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                                        sub_1B964C740();
                                        result = sub_1B8FAC5C8();
                                        if (v1)
                                        {
                                          return result;
                                        }
                                      }

                                      v15 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
                                      swift_beginAccess();
                                      if (!*(a1 + v15) || (result = sub_1B964C6C0(), !v1))
                                      {
                                        swift_beginAccess();
                                        v16 = v18;
                                        sub_1B8F1B8B8();
                                        if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
                                        {
                                          return sub_1B8D9207C(v16, &qword_1EBAC0800, &qword_1B966FAA0);
                                        }

                                        else
                                        {
                                          sub_1B8FAC528();
                                          sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
                                          sub_1B964C740();
                                          return sub_1B8FAC5C8();
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

BOOL sub_1B9009C9C(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  v4 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v65 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20B8, &qword_1B967F560);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v63 - v13;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20C0, &qword_1B967F568);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = (&v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v63 - v27;
  swift_beginAccess();
  v29 = *(a1 + 16);
  swift_beginAccess();
  if (v29 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 20);
  swift_beginAccess();
  if (v30 != *(a2 + 20))
  {
    return 0;
  }

  swift_beginAccess();
  v31 = *(a1 + 24);
  swift_beginAccess();
  if (v31 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 28);
  swift_beginAccess();
  if (v32 != *(a2 + 28))
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 32);
  swift_beginAccess();
  if (v33 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 36);
  swift_beginAccess();
  if (v34 != *(a2 + 36))
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 40);
  swift_beginAccess();
  if (v35 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 44);
  swift_beginAccess();
  if (v36 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 48);
  swift_beginAccess();
  if (v37 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 52);
  swift_beginAccess();
  if (v38 != *(a2 + 52))
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 56);
  swift_beginAccess();
  if (v39 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 60);
  swift_beginAccess();
  if (v40 != *(a2 + 60))
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 64);
  swift_beginAccess();
  if (v41 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 68);
  swift_beginAccess();
  if (v42 != *(a2 + 68))
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 72);
  swift_beginAccess();
  if (v43 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 76);
  swift_beginAccess();
  if (v44 != *(a2 + 76))
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 80);
  swift_beginAccess();
  if (v45 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  LODWORD(v64) = *(a1 + 84);
  swift_beginAccess();
  if (v64 != *(a2 + 84))
  {
    return 0;
  }

  v64 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  sub_1B8F1B8B8();
  v64 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  v46 = *(v18 + 48);
  sub_1B8F1B8B8();
  v64 = v46;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v21, 1, v14) == 1)
  {

    sub_1B8D9207C(v28, &qword_1EBAC07F8, &qword_1B966FA98);
    if (__swift_getEnumTagSinglePayload(&v21[v64], 1, v14) == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBAC07F8, &qword_1B966FA98);
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v21[v64], 1, v14) == 1)
  {

    sub_1B8D9207C(v28, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
LABEL_29:
    v52 = &qword_1EBAC20C0;
    v53 = &qword_1B967F568;
    v54 = v21;
LABEL_36:
    sub_1B8D9207C(v54, v52, v53);
    goto LABEL_37;
  }

  sub_1B8FAC528();
  if (*v26 != *v17 || v26[1] != v17[1] || *(v26 + 2) != *(v17 + 2))
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v28, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
    v54 = v21;
    v52 = &qword_1EBAC07F8;
    v53 = &qword_1B966FA98;
    goto LABEL_36;
  }

  v55 = *(v14 + 28);
  sub_1B964C2B0();
  v64 = sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);

  LODWORD(v64) = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v28, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v21, &qword_1EBAC07F8, &qword_1B966FA98);
  if ((v64 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_22:
  v47 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v47) = *(a1 + v47);
  v48 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Feedback_V2_SafariUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  if (v47 != *(a2 + v48))
  {
LABEL_37:

    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v49 = *(v6 + 48);
  v50 = v69;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v50, 1, v68) == 1)
  {

    sub_1B8D9207C(v67, &qword_1EBAC0800, &qword_1B966FAA0);
    if (__swift_getEnumTagSinglePayload(v69 + v49, 1, v68) == 1)
    {
      sub_1B8D9207C(v69, &qword_1EBAC0800, &qword_1B966FAA0);
      return 1;
    }

    goto LABEL_41;
  }

  v56 = v69;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v56 + v49, 1, v68) == 1)
  {

    sub_1B8D9207C(v67, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
LABEL_41:
    v57 = &qword_1EBAC20B8;
    v58 = &qword_1B967F560;
    v59 = v69;
LABEL_47:
    sub_1B8D9207C(v59, v57, v58);
    return 0;
  }

  v60 = v65;
  sub_1B8FAC528();
  if (*v66 != *v60 || v66[1] != v65[1])
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v67, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
    v59 = v69;
    v57 = &qword_1EBAC0800;
    v58 = &qword_1B966FAA0;
    goto LABEL_47;
  }

  v61 = *(v68 + 24);
  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v62 = sub_1B964C850();

  sub_1B8FAC5C8();
  sub_1B8D9207C(v67, &qword_1EBAC0800, &qword_1B966FAA0);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v69, &qword_1EBAC0800, &qword_1B966FAA0);
  return (v62 & 1) != 0;
}

uint64_t sub_1B900AA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C08, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900AB00(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900AB70()
{
  sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);

  return sub_1B964C5D0();
}

uint64_t sub_1B900ABFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0638);
  __swift_project_value_buffer(v0, qword_1EBAC0638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1B964EE50;
  v4 = v53 + v3;
  v5 = v53 + v3 + v1[14];
  *(v53 + v3) = 1;
  *v5 = "appLaunch";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "onDeviceAddressBookData";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "onDeviceOtherPersonalData";
  *(v11 + 1) = 25;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "punchout";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "thirdPartyInAppContent";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parsec";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "querySuggestion";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "other";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "totalEngagements";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "siriSuggestions";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 14;
  *v27 = "parsecWeb";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 15;
  *v29 = "parsecAppStore";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 16;
  *v31 = "parsecMaps";
  *(v31 + 1) = 10;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 17;
  *v33 = "parsecWiki";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 18;
  *v35 = "parsecNews";
  *(v35 + 1) = 10;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 19;
  *v37 = "parsecStocks";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 20;
  *v39 = "parsecWeather";
  *(v39 + 1) = 13;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 21;
  *v41 = "parsecOther";
  *(v41 + 1) = 11;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 22;
  *v43 = "webSuggestions";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 11;
  *v45 = "topHitTriggerRatio";
  *(v45 + 1) = 18;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 12;
  *v47 = "querySuggestionTriggerRatio";
  *(v47 + 1) = 27;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 13;
  *v49 = "totalTopHitEngagements";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "engagementShareRatio";
  *(v51 + 1) = 20;
  v51[16] = 2;
  v8();
  return sub_1B964C760();
}

_OWORD *sub_1B900B330()
{
  *(v0 + 76) = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v1 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v3 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B900B3DC(_DWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35[0] = v35 - v8;
  *(v1 + 76) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v9 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v35[1] = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio, 1, 1, v10);
  v36 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements) = 0;
  v11 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v37 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  v13 = a1[4];
  swift_beginAccess();
  *(v1 + 16) = v13;
  swift_beginAccess();
  v14 = a1[5];
  swift_beginAccess();
  *(v1 + 20) = v14;
  swift_beginAccess();
  v15 = a1[6];
  swift_beginAccess();
  *(v1 + 24) = v15;
  swift_beginAccess();
  v16 = a1[7];
  swift_beginAccess();
  *(v1 + 28) = v16;
  swift_beginAccess();
  v17 = a1[8];
  swift_beginAccess();
  *(v1 + 32) = v17;
  swift_beginAccess();
  v18 = a1[9];
  swift_beginAccess();
  *(v1 + 36) = v18;
  swift_beginAccess();
  v19 = a1[10];
  swift_beginAccess();
  *(v1 + 40) = v19;
  swift_beginAccess();
  v20 = a1[11];
  swift_beginAccess();
  *(v1 + 44) = v20;
  swift_beginAccess();
  v21 = a1[12];
  swift_beginAccess();
  *(v1 + 48) = v21;
  swift_beginAccess();
  v22 = a1[13];
  swift_beginAccess();
  *(v1 + 52) = v22;
  swift_beginAccess();
  v23 = a1[14];
  swift_beginAccess();
  *(v1 + 56) = v23;
  swift_beginAccess();
  v24 = a1[15];
  swift_beginAccess();
  *(v1 + 60) = v24;
  swift_beginAccess();
  v25 = a1[16];
  swift_beginAccess();
  *(v1 + 64) = v25;
  swift_beginAccess();
  v26 = a1[17];
  swift_beginAccess();
  *(v1 + 68) = v26;
  swift_beginAccess();
  v27 = a1[18];
  swift_beginAccess();
  *(v1 + 72) = v27;
  swift_beginAccess();
  v28 = a1[19];
  swift_beginAccess();
  *(v1 + 76) = v28;
  swift_beginAccess();
  v29 = a1[20];
  swift_beginAccess();
  *(v1 + 80) = v29;
  swift_beginAccess();
  v30 = a1[21];
  swift_beginAccess();
  *(v1 + 84) = v30;
  swift_beginAccess();
  v31 = a1[22];
  swift_beginAccess();
  *(v1 + 88) = v31;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v32) = *(a1 + v32);
  v33 = v36;
  swift_beginAccess();
  *(v1 + v33) = v32;
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B900BAA8()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__querySuggestionTriggerRatio, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__engagementShareRatio, &qword_1EBAC0800, &qword_1B966FAA0);
  return v0;
}

uint64_t sub_1B900BB48(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B900BC08()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B900BFB0();
        break;
      case 2:
        sub_1B900C008();
        break;
      case 3:
        sub_1B900C05C();
        break;
      case 4:
        sub_1B900C0B0();
        break;
      case 5:
        sub_1B900C104();
        break;
      case 6:
        sub_1B900C158();
        break;
      case 7:
        sub_1B900C1AC();
        break;
      case 8:
        sub_1B900C204();
        break;
      case 9:
        sub_1B900C25C();
        break;
      case 10:
        sub_1B900C2B4();
        break;
      case 11:
        sub_1B900C30C();
        break;
      case 12:
        sub_1B900C3E8();
        break;
      case 13:
        sub_1B900C4C4();
        break;
      case 14:
        sub_1B900C524();
        break;
      case 15:
        sub_1B900C578();
        break;
      case 16:
        sub_1B900C5CC();
        break;
      case 17:
        sub_1B900C620();
        break;
      case 18:
        sub_1B900C674();
        break;
      case 19:
        sub_1B900C6C8();
        break;
      case 20:
        sub_1B900C71C();
        break;
      case 21:
        sub_1B900C770();
        break;
      case 22:
        sub_1B900C7C8();
        break;
      case 23:
        sub_1B900C820();
        break;
      default:
        continue;
    }
  }
}

void sub_1B900BFB0()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

void sub_1B900C008()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C05C()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C0B0()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C104()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C158()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C1AC()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

void sub_1B900C204()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

void sub_1B900C25C()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

void sub_1B900C2B4()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B900C30C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B900C3E8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B900C4C4()
{
  OUTLINED_FUNCTION_819();
  v1 = v0;
  OUTLINED_FUNCTION_132_5();
  v3 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v1();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_818();
}

void sub_1B900C524()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C578()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C5CC()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C620()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C674()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C6C8()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C71C()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C490();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B900C770()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

void sub_1B900C7C8()
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v0();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B900C820()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B900C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = v26 - v9;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  v10 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v26[2] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v30 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - v16;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v29 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 20) == 0.0 || (result = sub_1B964C6B0(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 24) == 0.0 || (result = sub_1B964C6B0(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 28) == 0.0 || (result = sub_1B964C6B0(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 32) == 0.0 || (result = sub_1B964C6B0(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 36) == 0.0 || (result = sub_1B964C6B0(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 40) == 0.0 || (result = sub_1B964C6B0(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 44) == 0.0 || (result = sub_1B964C6B0(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 48) || (result = sub_1B964C6C0(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 52) == 0.0 || (result = sub_1B964C6B0(), !v4))
                    {
                      v26[1] = a4;
                      swift_beginAccess();
                      sub_1B8F1B8B8();
                      if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
                      {
                        sub_1B8D9207C(v17, &qword_1EBAC07F8, &qword_1B966FA98);
                      }

                      else
                      {
                        sub_1B8FAC528();
                        sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                        sub_1B964C740();
                        result = sub_1B8FAC5C8();
                        if (v4)
                        {
                          return result;
                        }
                      }

                      swift_beginAccess();
                      v23 = v30;
                      sub_1B8F1B8B8();
                      if (__swift_getEnumTagSinglePayload(v23, 1, v18) == 1)
                      {
                        sub_1B8D9207C(v23, &qword_1EBAC07F8, &qword_1B966FA98);
                      }

                      else
                      {
                        sub_1B8FAC528();
                        sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);
                        sub_1B964C740();
                        result = sub_1B8FAC5C8();
                        if (v4)
                        {
                          return result;
                        }
                      }

                      v24 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
                      swift_beginAccess();
                      if (!*(a1 + v24) || (result = sub_1B964C6C0(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 56) == 0.0 || (result = sub_1B964C6B0(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 60) == 0.0 || (result = sub_1B964C6B0(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 64) == 0.0 || (result = sub_1B964C6B0(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 68) == 0.0 || (result = sub_1B964C6B0(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 72) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                {
                                  swift_beginAccess();
                                  if (*(a1 + 76) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 80) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                    {
                                      swift_beginAccess();
                                      if (*(a1 + 84) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                      {
                                        swift_beginAccess();
                                        if (*(a1 + 88) == 0.0 || (result = sub_1B964C6B0(), !v4))
                                        {
                                          swift_beginAccess();
                                          v25 = v27;
                                          sub_1B8F1B8B8();
                                          if (__swift_getEnumTagSinglePayload(v25, 1, v28) == 1)
                                          {
                                            return sub_1B8D9207C(v25, &qword_1EBAC0800, &qword_1B966FAA0);
                                          }

                                          else
                                          {
                                            sub_1B8FAC528();
                                            sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio);
                                            sub_1B964C740();
                                            return sub_1B8FAC5C8();
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
  }

  return result;
}

BOOL sub_1B900D340(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  v4 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v82 = (v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20B8, &qword_1B967F560);
  v6 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v8 = v79 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v84 = (v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v85 = v79 - v13;
  v90 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  v14 = *(*(v90 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v90);
  v87 = (v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v79 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20C0, &qword_1B967F568);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v89 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v79 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v88 = (v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v79 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (v79 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = v79 - v35;
  swift_beginAccess();
  v37 = *(a1 + 16);
  swift_beginAccess();
  if (v37 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 20);
  swift_beginAccess();
  if (v38 != *(a2 + 20))
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 24);
  swift_beginAccess();
  if (v39 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 28);
  swift_beginAccess();
  if (v40 != *(a2 + 28))
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 32);
  swift_beginAccess();
  if (v41 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 36);
  swift_beginAccess();
  if (v42 != *(a2 + 36))
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 40);
  swift_beginAccess();
  if (v43 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 44);
  swift_beginAccess();
  if (v44 != *(a2 + 44))
  {
    return 0;
  }

  v81 = v8;
  swift_beginAccess();
  v45 = *(a1 + 48);
  swift_beginAccess();
  if (v45 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 52);
  swift_beginAccess();
  if (v46 != *(a2 + 52))
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 56);
  swift_beginAccess();
  if (v47 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(a1 + 60);
  swift_beginAccess();
  if (v48 != *(a2 + 60))
  {
    return 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 64);
  swift_beginAccess();
  if (v49 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 68);
  swift_beginAccess();
  if (v50 != *(a2 + 68))
  {
    return 0;
  }

  swift_beginAccess();
  v51 = *(a1 + 72);
  swift_beginAccess();
  if (v51 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 76);
  swift_beginAccess();
  if (v52 != *(a2 + 76))
  {
    return 0;
  }

  swift_beginAccess();
  v53 = *(a1 + 80);
  swift_beginAccess();
  if (v53 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v54 = *(a1 + 84);
  swift_beginAccess();
  if (v54 != *(a2 + 84))
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 88);
  swift_beginAccess();
  if (v55 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  v80 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__topHitTriggerRatio;
  swift_beginAccess();
  v56 = *(v19 + 48);
  sub_1B8F1B8B8();
  v80 = v56;
  sub_1B8F1B8B8();
  v57 = v90;
  if (__swift_getEnumTagSinglePayload(v24, 1, v90) == 1)
  {

    sub_1B8D9207C(v36, &qword_1EBAC07F8, &qword_1B966FA98);
    if (__swift_getEnumTagSinglePayload(&v24[v80], 1, v57) == 1)
    {
      sub_1B8D9207C(v24, &qword_1EBAC07F8, &qword_1B966FA98);
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v24[v80], 1, v57) == 1)
  {

    sub_1B8D9207C(v36, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
LABEL_33:
    v65 = &qword_1EBAC20C0;
    v66 = &qword_1B967F568;
    v67 = v24;
LABEL_49:
    sub_1B8D9207C(v67, v65, v66);
    goto LABEL_50;
  }

  sub_1B8FAC528();
  if (*v34 != *v18 || v34[1] != v18[1] || *(v34 + 2) != *(v18 + 2))
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v36, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
    v67 = v24;
    v65 = &qword_1EBAC07F8;
    v66 = &qword_1B966FA98;
    goto LABEL_49;
  }

  v80 = *(v90 + 28);
  sub_1B964C2B0();
  v79[1] = sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);

  LODWORD(v80) = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v36, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v24, &qword_1EBAC07F8, &qword_1B966FA98);
  if ((v80 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_23:
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v58 = *(v19 + 48);
  v59 = v89;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v59, 1, v90) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBAC07F8, &qword_1B966FA98);
    if (__swift_getEnumTagSinglePayload(v89 + v58, 1, v90) == 1)
    {
      sub_1B8D9207C(v89, &qword_1EBAC07F8, &qword_1B966FA98);
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  v68 = v89;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v68 + v58, 1, v90) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
LABEL_42:
    v65 = &qword_1EBAC20C0;
    v66 = &qword_1B967F568;
    v67 = v89;
    goto LABEL_49;
  }

  v69 = v87;
  sub_1B8FAC528();
  if (*v88 != *v69 || v88[1] != v87[1] || *(v88 + 2) != *(v87 + 2))
  {
    sub_1B8FAC5C8();
    sub_1B8D9207C(v31, &qword_1EBAC07F8, &qword_1B966FA98);
    sub_1B8FAC5C8();
    v67 = v89;
    v65 = &qword_1EBAC07F8;
    v66 = &qword_1B966FA98;
    goto LABEL_49;
  }

  v70 = *(v90 + 28);
  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v71 = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v31, &qword_1EBAC07F8, &qword_1B966FA98);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v89, &qword_1EBAC07F8, &qword_1B966FA98);
  if ((v71 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_26:
  v60 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  LODWORD(v60) = *(a1 + v60);
  v61 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_SpotlightUsagePropensityP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__totalTopHitEngagements;
  swift_beginAccess();
  if (v60 != *(a2 + v61))
  {
LABEL_50:

    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v62 = *(v83 + 48);
  v63 = v81;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v63, 1, v86) == 1)
  {

    sub_1B8D9207C(v85, &qword_1EBAC0800, &qword_1B966FAA0);
    if (__swift_getEnumTagSinglePayload(&v81[v62], 1, v86) == 1)
    {
      sub_1B8D9207C(v81, &qword_1EBAC0800, &qword_1B966FAA0);
      return 1;
    }

    goto LABEL_54;
  }

  v72 = v81;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v72 + v62, 1, v86) == 1)
  {

    sub_1B8D9207C(v85, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
LABEL_54:
    v73 = &qword_1EBAC20B8;
    v74 = &qword_1B967F560;
    v75 = v81;
LABEL_60:
    sub_1B8D9207C(v75, v73, v74);
    return 0;
  }

  v76 = v82;
  sub_1B8FAC528();
  if (*v84 != *v76 || v84[1] != v82[1])
  {

    sub_1B8FAC5C8();
    sub_1B8D9207C(v85, &qword_1EBAC0800, &qword_1B966FAA0);
    sub_1B8FAC5C8();
    v75 = v81;
    v73 = &qword_1EBAC0800;
    v74 = &qword_1B966FAA0;
    goto LABEL_60;
  }

  v77 = *(v86 + 24);
  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v78 = sub_1B964C850();

  sub_1B8FAC5C8();
  sub_1B8D9207C(v85, &qword_1EBAC0800, &qword_1B966FAA0);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v81, &qword_1EBAC0800, &qword_1B966FAA0);
  return (v78 & 1) != 0;
}