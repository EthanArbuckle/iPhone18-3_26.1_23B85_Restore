uint64_t sub_1B900E4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C00, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900E568(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900E5D8()
{
  sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);

  return sub_1B964C5D0();
}

uint64_t sub_1B900E664()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0658);
  __swift_project_value_buffer(v0, qword_1EBAC0658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "zkw";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recentResult";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "other";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "querySuggestion";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "image";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 4;
  *v18 = "totalEngagements";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    OUTLINED_FUNCTION_844();
    if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
    {
      if (*(v1 + 8) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
      {
        if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
        {
          if (*(v1 + 12) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
          {
            if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
            {
              v3 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B900EBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BF8, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900EC20(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900EC90()
{
  sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);

  return sub_1B964C5D0();
}

uint64_t sub_1B900ED1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0670);
  __swift_project_value_buffer(v0, qword_1EBAC0670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalEngagements";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_NewsUsagePropensity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    if (!*(v1 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
      OUTLINED_FUNCTION_184_2(v3);
      return OUTLINED_FUNCTION_655_0();
    }
  }

  return result;
}

uint64_t sub_1B900F05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BF0, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900F0DC(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900F14C()
{
  sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);

  return sub_1B964C5D0();
}

uint64_t sub_1B900F1D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0688);
  __swift_project_value_buffer(v0, qword_1EBAC0688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "go";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tap";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalEngagements";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_311_0();
      sub_1B964C4A0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    OUTLINED_FUNCTION_844();
    if (v2 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
    {
      if (!*(v1 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        v3 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_EngagementTriggerRatio.== infix(_:_:)(float *a1, int *a2)
{
  OUTLINED_FUNCTION_516_0(a1, a2);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_375_0(v4, v5);
  if (!v6 || *(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_736(v7);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B900F644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BE8, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900F6C4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900F734()
{
  sub_1B8CD2450(&qword_1EBAC1B20, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio);

  return sub_1B964C5D0();
}

uint64_t sub_1B900F7CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC06A0);
  __swift_project_value_buffer(v0, qword_1EBAC06A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareOfEngagements";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareOfInternetEngagements";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B900F9E4()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v2 + 4, v4, v3);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_1_0();
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EngagementShareRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v1 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
  {
    OUTLINED_FUNCTION_844();
    if (v1 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6B0(), !v0))
    {
      v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
      OUTLINED_FUNCTION_184_2(v2);
      return OUTLINED_FUNCTION_655_0();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_EngagementShareRatio.== infix(_:_:)(float *a1, int *a2)
{
  OUTLINED_FUNCTION_516_0(a1, a2);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_375_0(v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_188_1(v5);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B900FC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BE0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B900FC84(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B900FCF4()
{
  sub_1B8CD2450(&qword_1EBAC1B38, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio);

  return sub_1B964C5D0();
}

uint64_t sub_1B900FD80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC06B8);
  __swift_project_value_buffer(v0, qword_1EBAC06B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "usageSinceLookback";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "safariUsagePropensity";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "spotlightUsagePropensity";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "imagesUsagePropensity";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "newsUsagePropensity";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "collectionStartTimestamp";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "collectionEndTimestamp";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "configuredLookbackTimeInDays";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "totalSessions";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "context";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "uuidBytes";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B90102CC(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B90107C4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B9010CBC(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B90111B4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B90116AC(v7, v8, v9, v10);
        break;
      case 10:
        v23 = OUTLINED_FUNCTION_9();
        sub_1B9011BA4(v23, v24, v25, v26, v27, v28);
        break;
      case 11:
        OUTLINED_FUNCTION_9();
        sub_1B9011BF8();
        break;
      case 12:
        OUTLINED_FUNCTION_9();
        sub_1B9011C5C();
        break;
      case 13:
        OUTLINED_FUNCTION_9();
        sub_1B9011CC0();
        break;
      case 14:
        OUTLINED_FUNCTION_9();
        sub_1B9011D24();
        break;
      case 15:
        OUTLINED_FUNCTION_9();
        sub_1B9011DD8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90102CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
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
    sub_1B8D9207C(v12, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8FAC5C8();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC07D0, &qword_1B966FA70);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC07D0, &qword_1B966FA70);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC07D0, &qword_1B966FA70);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC07D0, &qword_1B966FA70);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC07D0, &qword_1B966FA70);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B90107C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F18, &qword_1B967F3C0);
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
    sub_1B8D9207C(v12, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC1F18, &qword_1B967F3C0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC1F18, &qword_1B967F3C0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC1F18, &qword_1B967F3C0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC1F18, &qword_1B967F3C0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC1F18, &qword_1B967F3C0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9010CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F20, &qword_1B967F3C8);
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
    sub_1B8D9207C(v12, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBAC1F20, &qword_1B967F3C8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC1F20, &qword_1B967F3C8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC1F20, &qword_1B967F3C8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC1F20, &qword_1B967F3C8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC1F20, &qword_1B967F3C8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B90111B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F28, &qword_1B967F3D0);
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
    sub_1B8D9207C(v12, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBAC1F28, &qword_1B967F3D0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC1F28, &qword_1B967F3D0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC1F28, &qword_1B967F3D0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC1F28, &qword_1B967F3D0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC1F28, &qword_1B967F3D0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B90116AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F30, &qword_1B967F3D8);
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
    sub_1B8D9207C(v12, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBAC1F30, &qword_1B967F3D8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC1F30, &qword_1B967F3D8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC1F30, &qword_1B967F3D8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC1F30, &qword_1B967F3D8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC1F30, &qword_1B967F3D8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC0808, &qword_1B966FAA8);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9011BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_132_5();
  v8 = *(v7(0) + 20);
  OUTLINED_FUNCTION_169_2();
  return a6();
}

uint64_t sub_1B9011D24()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0) + 44);
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v51 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v8);
  v9 = OUTLINED_FUNCTION_59_1(v51);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v50[1] = v12;
  v13 = OUTLINED_FUNCTION_177_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v50 - v19;
  OUTLINED_FUNCTION_198_1();
  sub_1B8F1B8B8();
  v21 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_178(v20, 1, v21);
  if (!v22)
  {
    OUTLINED_FUNCTION_113_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v40 = OUTLINED_FUNCTION_242_1();
        sub_1B90123E4(v40, v41, v42, v43);
        goto LABEL_11;
      case 2:
        v32 = OUTLINED_FUNCTION_242_1();
        sub_1B90125F8(v32, v33, v34, v35);
        goto LABEL_11;
      case 3:
        v36 = OUTLINED_FUNCTION_242_1();
        sub_1B901280C(v36, v37, v38, v39);
        goto LABEL_11;
      case 4:
        v28 = OUTLINED_FUNCTION_242_1();
        sub_1B9012A20(v28, v29, v30, v31);
        v0 = v1;
        if (v1)
        {
          OUTLINED_FUNCTION_47_4();
          sub_1B8FAC5C8();
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_47_4();
        sub_1B8FAC5C8();
        break;
      default:
        v24 = OUTLINED_FUNCTION_242_1();
        sub_1B90121D4(v24, v25, v26, v27);
LABEL_11:
        v0 = v1;
        OUTLINED_FUNCTION_47_4();
        sub_1B8FAC5C8();
        if (!v1)
        {
          break;
        }

        goto LABEL_29;
    }
  }

  v44 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  if (!*(v2 + v44[5]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6D0(), (v0 = v1) == 0))
  {
    if (!*(v2 + v44[6]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6D0(), (v0 = v1) == 0))
    {
      if (!*(v2 + v44[7]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6C0(), (v0 = v1) == 0))
      {
        if (!*(v2 + v44[8]) || (OUTLINED_FUNCTION_480_0(), sub_1B964C6C0(), (v0 = v1) == 0))
        {
          v45 = v44[11];
          OUTLINED_FUNCTION_715_0();
          OUTLINED_FUNCTION_178(v3, 1, v51);
          if (v22)
          {
            sub_1B8D9207C(v3, &qword_1EBAC07F0, &qword_1B966FA90);
          }

          else
          {
            OUTLINED_FUNCTION_16_15();
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC0C28, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext);
            OUTLINED_FUNCTION_683_0();
            sub_1B964C740();
            OUTLINED_FUNCTION_324_0();
            sub_1B8FAC5C8();
            if (v0)
            {
              goto LABEL_29;
            }
          }

          v46 = v2 + v44[9];
          if (sub_1B8D99EA8(*v46, *(v46 + 8)) || (v47 = *v46, v48 = *(v46 + 8), sub_1B964C6A0(), !v0))
          {
            v49 = v2 + v44[10];
            sub_1B964C290();
          }
        }
      }
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B90121D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90123E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AC0, type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90125F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AD8, type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B901280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1AF0, type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9012A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1B08, type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Feedback_V2_UsageEnvelope.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v59 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  v4 = OUTLINED_FUNCTION_59_1(v59);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v57[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v57[2] = v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0C30, &qword_1B966FAD0);
  OUTLINED_FUNCTION_59_1(v58);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v60 = v16;
  v17 = OUTLINED_FUNCTION_201();
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(v17);
  v19 = OUTLINED_FUNCTION_126_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_175_3();
  v22 = OUTLINED_FUNCTION_690();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0C38, &qword_1B966FAD8);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = v57 - v33;
  v35 = *(v32 + 56);
  v36 = v3;
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_57(v34);
  if (v37)
  {
    OUTLINED_FUNCTION_57(&v34[v35]);
    if (v37)
    {
      sub_1B8D9207C(v34, &qword_1EBAC0808, &qword_1B966FAA8);
      goto LABEL_12;
    }

LABEL_9:
    v38 = &qword_1EBAC0C38;
    v39 = &qword_1B966FAD8;
    v40 = v34;
LABEL_10:
    sub_1B8D9207C(v40, v38, v39);
LABEL_28:
    v56 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_606();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_57(&v34[v35]);
  if (v37)
  {
    OUTLINED_FUNCTION_47_4();
    sub_1B8FAC5C8();
    goto LABEL_9;
  }

  sub_1B8FAC528();
  OUTLINED_FUNCTION_424();
  static Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind.== infix(_:_:)();
  v42 = v41;
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v34, &qword_1EBAC0808, &qword_1B966FAA8);
  if ((v42 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  if (*(v3 + v43[5]) != *(v1 + v43[5]))
  {
    goto LABEL_28;
  }

  v44 = v43;
  if (*(v3 + v43[6]) != *(v1 + v43[6]) || *(v3 + v43[7]) != *(v1 + v43[7]) || *(v3 + v43[8]) != *(v1 + v43[8]))
  {
    goto LABEL_28;
  }

  v45 = v43[11];
  v46 = *(v58 + 48);
  v47 = v60;
  OUTLINED_FUNCTION_397();
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v48 = v59;
  OUTLINED_FUNCTION_178(v47, 1, v59);
  if (v37)
  {
    OUTLINED_FUNCTION_178(v47 + v46, 1, v48);
    if (v37)
    {
      sub_1B8D9207C(v47, &qword_1EBAC07F0, &qword_1B966FA90);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v47 + v46, 1, v48);
  if (v49)
  {
    OUTLINED_FUNCTION_324_0();
    sub_1B8FAC5C8();
LABEL_24:
    v38 = &qword_1EBAC0C30;
    v39 = &qword_1B966FAD0;
    v40 = v47;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_16_15();
  sub_1B8FAC528();
  v50 = OUTLINED_FUNCTION_197();
  v52 = static Apple_Parsec_Feedback_V2_DeviceContext.== infix(_:_:)(v50, v51);
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v47, &qword_1EBAC07F0, &qword_1B966FA90);
  if ((v52 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ((MEMORY[0x1BFADC060](*(v36 + v44[9]), *(v36 + v44[9] + 8), *(v1 + v44[9]), *(v1 + v44[9] + 8)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v53 = v44[10];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v54, v55);
  v56 = OUTLINED_FUNCTION_656_0();
LABEL_29:
  OUTLINED_FUNCTION_264(v56);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9013170()
{
  OUTLINED_FUNCTION_250_1();
  sub_1B964CA70();
  v0(0);
  v1 = OUTLINED_FUNCTION_461();
  sub_1B8CD2450(v1, v2);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9013244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1BD8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90132C4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9013334()
{
  sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope);

  return sub_1B964C5D0();
}

unint64_t sub_1B9013634()
{
  result = qword_1EBAC0858;
  if (!qword_1EBAC0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0858);
  }

  return result;
}

unint64_t sub_1B9013688()
{
  result = qword_1EBAC0878;
  if (!qword_1EBAC0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0878);
  }

  return result;
}

unint64_t sub_1B90136DC()
{
  result = qword_1EBAC0888;
  if (!qword_1EBAC0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0888);
  }

  return result;
}

unint64_t sub_1B9013730()
{
  result = qword_1EBAC0898;
  if (!qword_1EBAC0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0898);
  }

  return result;
}

unint64_t sub_1B9013784()
{
  result = qword_1EBAC08A8;
  if (!qword_1EBAC08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC08A8);
  }

  return result;
}

unint64_t sub_1B90137D8()
{
  result = qword_1EBAC08C0;
  if (!qword_1EBAC08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC08C0);
  }

  return result;
}

unint64_t sub_1B901382C()
{
  result = qword_1EBAC08C8;
  if (!qword_1EBAC08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC08C8);
  }

  return result;
}

unint64_t sub_1B9013880()
{
  result = qword_1EBAC08E0;
  if (!qword_1EBAC08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC08E0);
  }

  return result;
}

unint64_t sub_1B90138D4()
{
  result = qword_1EBAC08F0;
  if (!qword_1EBAC08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC08F0);
  }

  return result;
}

unint64_t sub_1B9013928()
{
  result = qword_1EBAC0908;
  if (!qword_1EBAC0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0908);
  }

  return result;
}

unint64_t sub_1B901397C()
{
  result = qword_1EBAC0940;
  if (!qword_1EBAC0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0940);
  }

  return result;
}

unint64_t sub_1B90139D0()
{
  result = qword_1EBAC0948;
  if (!qword_1EBAC0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0948);
  }

  return result;
}

unint64_t sub_1B9013A24()
{
  result = qword_1EBAC0950;
  if (!qword_1EBAC0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0950);
  }

  return result;
}

unint64_t sub_1B9013A78()
{
  result = qword_1EBAC0968;
  if (!qword_1EBAC0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0968);
  }

  return result;
}

unint64_t sub_1B9013ACC()
{
  result = qword_1EBAC0980;
  if (!qword_1EBAC0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0980);
  }

  return result;
}

unint64_t sub_1B9013B20()
{
  result = qword_1EBAC09A0;
  if (!qword_1EBAC09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC09A0);
  }

  return result;
}

unint64_t sub_1B9013B74()
{
  result = qword_1EBAC09B0;
  if (!qword_1EBAC09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC09B0);
  }

  return result;
}

unint64_t sub_1B9013BC8()
{
  result = qword_1EBAC09E8;
  if (!qword_1EBAC09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC09E8);
  }

  return result;
}

unint64_t sub_1B9013C1C()
{
  result = qword_1EBAC09F0;
  if (!qword_1EBAC09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC09F0);
  }

  return result;
}

unint64_t sub_1B9013C70()
{
  result = qword_1EBAB3DE8;
  if (!qword_1EBAB3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3DE8);
  }

  return result;
}

unint64_t sub_1B9013CC4()
{
  result = qword_1EBAB4DC0;
  if (!qword_1EBAB4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4DC0);
  }

  return result;
}

unint64_t sub_1B9013D18()
{
  result = qword_1EBAB4A28;
  if (!qword_1EBAB4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4A28);
  }

  return result;
}

unint64_t sub_1B9013D6C()
{
  result = qword_1EBAC0A28;
  if (!qword_1EBAC0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0A28);
  }

  return result;
}

unint64_t sub_1B9013DC0()
{
  result = qword_1EBAC0A68;
  if (!qword_1EBAC0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0A68);
  }

  return result;
}

unint64_t sub_1B9013E14()
{
  result = qword_1EBAC0A88;
  if (!qword_1EBAC0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0A88);
  }

  return result;
}

unint64_t sub_1B9013E68()
{
  result = qword_1EBAC0AA8;
  if (!qword_1EBAC0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0AA8);
  }

  return result;
}

unint64_t sub_1B9013EBC()
{
  result = qword_1EBAC0AE0;
  if (!qword_1EBAC0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0AE0);
  }

  return result;
}

unint64_t sub_1B9013F10()
{
  result = qword_1EBAC0AF0;
  if (!qword_1EBAC0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0AF0);
  }

  return result;
}

unint64_t sub_1B9013F64()
{
  result = qword_1EBAC0B00;
  if (!qword_1EBAC0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0B00);
  }

  return result;
}

unint64_t sub_1B9013FB8()
{
  result = qword_1EBAC0B30;
  if (!qword_1EBAC0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0B30);
  }

  return result;
}

unint64_t sub_1B901400C()
{
  result = qword_1EBAC0B48;
  if (!qword_1EBAC0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0B48);
  }

  return result;
}

unint64_t sub_1B9014060()
{
  result = qword_1EBAC0B68;
  if (!qword_1EBAC0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0B68);
  }

  return result;
}

unint64_t sub_1B90140B4()
{
  result = qword_1EBAC0B88;
  if (!qword_1EBAC0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0B88);
  }

  return result;
}

unint64_t sub_1B9014108()
{
  result = qword_1EBAC0BD0;
  if (!qword_1EBAC0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0BD0);
  }

  return result;
}

unint64_t sub_1B9014160()
{
  result = qword_1EBAC0C48;
  if (!qword_1EBAC0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0C48);
  }

  return result;
}

unint64_t sub_1B90141B8()
{
  result = qword_1EBAC0C50;
  if (!qword_1EBAC0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0C50);
  }

  return result;
}

unint64_t sub_1B9014210()
{
  result = qword_1EBAC0C58;
  if (!qword_1EBAC0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0C58);
  }

  return result;
}

unint64_t sub_1B9014298()
{
  result = qword_1EBAC0C70;
  if (!qword_1EBAC0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0C70);
  }

  return result;
}

unint64_t sub_1B90142F0()
{
  result = qword_1EBAC0C78;
  if (!qword_1EBAC0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0C78);
  }

  return result;
}

unint64_t sub_1B9014348()
{
  result = qword_1EBAC0C80;
  if (!qword_1EBAC0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0C80);
  }

  return result;
}

unint64_t sub_1B90143D0()
{
  result = qword_1EBAC0C98;
  if (!qword_1EBAC0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0C98);
  }

  return result;
}

unint64_t sub_1B9014428()
{
  result = qword_1EBAC0CA0;
  if (!qword_1EBAC0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CA0);
  }

  return result;
}

unint64_t sub_1B9014480()
{
  result = qword_1EBAC0CA8;
  if (!qword_1EBAC0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CA8);
  }

  return result;
}

unint64_t sub_1B9014508()
{
  result = qword_1EBAC0CC0;
  if (!qword_1EBAC0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CC0);
  }

  return result;
}

unint64_t sub_1B9014560()
{
  result = qword_1EBAC0CC8;
  if (!qword_1EBAC0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CC8);
  }

  return result;
}

unint64_t sub_1B90145B8()
{
  result = qword_1EBAC0CD0;
  if (!qword_1EBAC0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CD0);
  }

  return result;
}

unint64_t sub_1B9014640()
{
  result = qword_1EBAC0CE8;
  if (!qword_1EBAC0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CE8);
  }

  return result;
}

unint64_t sub_1B9014698()
{
  result = qword_1EBAC0CF0;
  if (!qword_1EBAC0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CF0);
  }

  return result;
}

unint64_t sub_1B90146F0()
{
  result = qword_1EBAC0CF8;
  if (!qword_1EBAC0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0CF8);
  }

  return result;
}

unint64_t sub_1B9014778()
{
  result = qword_1EBAC0D10;
  if (!qword_1EBAC0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D10);
  }

  return result;
}

unint64_t sub_1B90147D0()
{
  result = qword_1EBAC0D18;
  if (!qword_1EBAC0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D18);
  }

  return result;
}

unint64_t sub_1B9014828()
{
  result = qword_1EBAC0D20;
  if (!qword_1EBAC0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D20);
  }

  return result;
}

unint64_t sub_1B90148B0()
{
  result = qword_1EBAC0D38;
  if (!qword_1EBAC0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D38);
  }

  return result;
}

unint64_t sub_1B9014908()
{
  result = qword_1EBAC0D40;
  if (!qword_1EBAC0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D40);
  }

  return result;
}

unint64_t sub_1B9014960()
{
  result = qword_1EBAC0D48;
  if (!qword_1EBAC0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D48);
  }

  return result;
}

unint64_t sub_1B90149E8()
{
  result = qword_1EBAC0D60;
  if (!qword_1EBAC0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D60);
  }

  return result;
}

unint64_t sub_1B9014A40()
{
  result = qword_1EBAC0D68;
  if (!qword_1EBAC0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D68);
  }

  return result;
}

unint64_t sub_1B9014A98()
{
  result = qword_1EBAC0D70;
  if (!qword_1EBAC0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D70);
  }

  return result;
}

unint64_t sub_1B9014B20()
{
  result = qword_1EBAC0D88;
  if (!qword_1EBAC0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D88);
  }

  return result;
}

unint64_t sub_1B9014B78()
{
  result = qword_1EBAC0D90;
  if (!qword_1EBAC0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D90);
  }

  return result;
}

unint64_t sub_1B9014BD0()
{
  result = qword_1EBAC0D98;
  if (!qword_1EBAC0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0D98);
  }

  return result;
}

unint64_t sub_1B9014C58()
{
  result = qword_1EBAB3DE0;
  if (!qword_1EBAB3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3DE0);
  }

  return result;
}

unint64_t sub_1B9014CB0()
{
  result = qword_1EBAB3DD0;
  if (!qword_1EBAB3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3DD0);
  }

  return result;
}

unint64_t sub_1B9014D08()
{
  result = qword_1EBAB3DD8;
  if (!qword_1EBAB3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3DD8);
  }

  return result;
}

unint64_t sub_1B9014D90()
{
  result = qword_1EBAB4A20;
  if (!qword_1EBAB4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4A20);
  }

  return result;
}

unint64_t sub_1B9014DE8()
{
  result = qword_1EBAB4A10;
  if (!qword_1EBAB4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4A10);
  }

  return result;
}

unint64_t sub_1B9014E40()
{
  result = qword_1EBAB4A18;
  if (!qword_1EBAB4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4A18);
  }

  return result;
}

unint64_t sub_1B9014EC8()
{
  result = qword_1EBAC0DD0;
  if (!qword_1EBAC0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0DD0);
  }

  return result;
}

unint64_t sub_1B9014F20()
{
  result = qword_1EBAC0DD8;
  if (!qword_1EBAC0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0DD8);
  }

  return result;
}

unint64_t sub_1B9014F78()
{
  result = qword_1EBAC0DE0;
  if (!qword_1EBAC0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0DE0);
  }

  return result;
}

unint64_t sub_1B9015000()
{
  result = qword_1EBAC0DF8;
  if (!qword_1EBAC0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0DF8);
  }

  return result;
}

unint64_t sub_1B9015058()
{
  result = qword_1EBAC0E00;
  if (!qword_1EBAC0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E00);
  }

  return result;
}

unint64_t sub_1B90150B0()
{
  result = qword_1EBAC0E08;
  if (!qword_1EBAC0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E08);
  }

  return result;
}

unint64_t sub_1B9015138()
{
  result = qword_1EBAC0E20;
  if (!qword_1EBAC0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E20);
  }

  return result;
}

unint64_t sub_1B9015190()
{
  result = qword_1EBAC0E28;
  if (!qword_1EBAC0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E28);
  }

  return result;
}

unint64_t sub_1B90151E8()
{
  result = qword_1EBAC0E30;
  if (!qword_1EBAC0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E30);
  }

  return result;
}

unint64_t sub_1B9015270()
{
  result = qword_1EBAC0E48;
  if (!qword_1EBAC0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E48);
  }

  return result;
}

unint64_t sub_1B90152C8()
{
  result = qword_1EBAC0E50;
  if (!qword_1EBAC0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E50);
  }

  return result;
}

unint64_t sub_1B9015320()
{
  result = qword_1EBAC0E58;
  if (!qword_1EBAC0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E58);
  }

  return result;
}

unint64_t sub_1B90153A8()
{
  result = qword_1EBAC0E70;
  if (!qword_1EBAC0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E70);
  }

  return result;
}

unint64_t sub_1B9015400()
{
  result = qword_1EBAC0E78;
  if (!qword_1EBAC0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E78);
  }

  return result;
}

unint64_t sub_1B9015458()
{
  result = qword_1EBAC0E80;
  if (!qword_1EBAC0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E80);
  }

  return result;
}

unint64_t sub_1B90154E0()
{
  result = qword_1EBAC0E98;
  if (!qword_1EBAC0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0E98);
  }

  return result;
}

unint64_t sub_1B9015538()
{
  result = qword_1EBAC0EA0;
  if (!qword_1EBAC0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0EA0);
  }

  return result;
}

unint64_t sub_1B9015590()
{
  result = qword_1EBAC0EA8;
  if (!qword_1EBAC0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0EA8);
  }

  return result;
}

unint64_t sub_1B9015618()
{
  result = qword_1EBAC0EC0;
  if (!qword_1EBAC0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0EC0);
  }

  return result;
}

unint64_t sub_1B9015670()
{
  result = qword_1EBAC0EC8;
  if (!qword_1EBAC0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0EC8);
  }

  return result;
}

unint64_t sub_1B90156C8()
{
  result = qword_1EBAC0ED0;
  if (!qword_1EBAC0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0ED0);
  }

  return result;
}

unint64_t sub_1B9015750()
{
  result = qword_1EBAC0EE8;
  if (!qword_1EBAC0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0EE8);
  }

  return result;
}

unint64_t sub_1B90157A8()
{
  result = qword_1EBAC0EF0;
  if (!qword_1EBAC0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0EF0);
  }

  return result;
}

unint64_t sub_1B9015800()
{
  result = qword_1EBAC0EF8;
  if (!qword_1EBAC0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0EF8);
  }

  return result;
}

unint64_t sub_1B9015888()
{
  result = qword_1EBAC0F10;
  if (!qword_1EBAC0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F10);
  }

  return result;
}

unint64_t sub_1B90158E0()
{
  result = qword_1EBAC0F18;
  if (!qword_1EBAC0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F18);
  }

  return result;
}

unint64_t sub_1B9015938()
{
  result = qword_1EBAC0F20;
  if (!qword_1EBAC0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F20);
  }

  return result;
}

unint64_t sub_1B90159C0()
{
  result = qword_1EBAC0F38;
  if (!qword_1EBAC0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F38);
  }

  return result;
}

unint64_t sub_1B9015A18()
{
  result = qword_1EBAC0F40;
  if (!qword_1EBAC0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F40);
  }

  return result;
}

unint64_t sub_1B9015A70()
{
  result = qword_1EBAC0F48;
  if (!qword_1EBAC0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F48);
  }

  return result;
}

unint64_t sub_1B9015AF8()
{
  result = qword_1EBAC0F60;
  if (!qword_1EBAC0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F60);
  }

  return result;
}

unint64_t sub_1B9015B50()
{
  result = qword_1EBAC0F68;
  if (!qword_1EBAC0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F68);
  }

  return result;
}

unint64_t sub_1B9015BA8()
{
  result = qword_1EBAC0F70;
  if (!qword_1EBAC0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F70);
  }

  return result;
}

unint64_t sub_1B9015C30()
{
  result = qword_1EBAC0F88;
  if (!qword_1EBAC0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F88);
  }

  return result;
}

unint64_t sub_1B9015C88()
{
  result = qword_1EBAC0F90;
  if (!qword_1EBAC0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F90);
  }

  return result;
}

unint64_t sub_1B9015CE0()
{
  result = qword_1EBAC0F98;
  if (!qword_1EBAC0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0F98);
  }

  return result;
}

unint64_t sub_1B9015D68()
{
  result = qword_1EBAC0FB0;
  if (!qword_1EBAC0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0FB0);
  }

  return result;
}

unint64_t sub_1B9015DC0()
{
  result = qword_1EBAC0FB8;
  if (!qword_1EBAC0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0FB8);
  }

  return result;
}

unint64_t sub_1B9015E18()
{
  result = qword_1EBAC0FC0;
  if (!qword_1EBAC0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0FC0);
  }

  return result;
}

unint64_t sub_1B9015EA0()
{
  result = qword_1EBAC0FD8;
  if (!qword_1EBAC0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0FD8);
  }

  return result;
}

unint64_t sub_1B9015EF8()
{
  result = qword_1EBAC0FE0;
  if (!qword_1EBAC0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0FE0);
  }

  return result;
}

unint64_t sub_1B9015F50()
{
  result = qword_1EBAC0FE8;
  if (!qword_1EBAC0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC0FE8);
  }

  return result;
}

unint64_t sub_1B9015FD8()
{
  result = qword_1EBAC1000;
  if (!qword_1EBAC1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1000);
  }

  return result;
}

unint64_t sub_1B9016030()
{
  result = qword_1EBAC1008;
  if (!qword_1EBAC1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1008);
  }

  return result;
}

unint64_t sub_1B9016088()
{
  result = qword_1EBAC1010;
  if (!qword_1EBAC1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1010);
  }

  return result;
}

unint64_t sub_1B9016110()
{
  result = qword_1EBAC1028;
  if (!qword_1EBAC1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1028);
  }

  return result;
}

unint64_t sub_1B9016168()
{
  result = qword_1EBAC1030;
  if (!qword_1EBAC1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1030);
  }

  return result;
}

unint64_t sub_1B90161C0()
{
  result = qword_1EBAC1038;
  if (!qword_1EBAC1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1038);
  }

  return result;
}

unint64_t sub_1B9016248()
{
  result = qword_1EBAC1050;
  if (!qword_1EBAC1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1050);
  }

  return result;
}

unint64_t sub_1B90162A0()
{
  result = qword_1EBAC1058;
  if (!qword_1EBAC1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1058);
  }

  return result;
}

unint64_t sub_1B90162F8()
{
  result = qword_1EBAC1060;
  if (!qword_1EBAC1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1060);
  }

  return result;
}

unint64_t sub_1B9016380()
{
  result = qword_1EBAC1078;
  if (!qword_1EBAC1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1078);
  }

  return result;
}

unint64_t sub_1B90163D8()
{
  result = qword_1EBAC1080;
  if (!qword_1EBAC1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1080);
  }

  return result;
}

unint64_t sub_1B9016430()
{
  result = qword_1EBAC1088;
  if (!qword_1EBAC1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1088);
  }

  return result;
}

unint64_t sub_1B90164B8()
{
  result = qword_1EBAC10A0;
  if (!qword_1EBAC10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10A0);
  }

  return result;
}

unint64_t sub_1B9016510()
{
  result = qword_1EBAC10A8;
  if (!qword_1EBAC10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10A8);
  }

  return result;
}

unint64_t sub_1B9016568()
{
  result = qword_1EBAC10B0;
  if (!qword_1EBAC10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10B0);
  }

  return result;
}

unint64_t sub_1B90165F0()
{
  result = qword_1EBAC10C8;
  if (!qword_1EBAC10C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10C8);
  }

  return result;
}

unint64_t sub_1B9016648()
{
  result = qword_1EBAC10D0;
  if (!qword_1EBAC10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10D0);
  }

  return result;
}

unint64_t sub_1B90166A0()
{
  result = qword_1EBAC10D8;
  if (!qword_1EBAC10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10D8);
  }

  return result;
}

unint64_t sub_1B9016728()
{
  result = qword_1EBAC10F0;
  if (!qword_1EBAC10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10F0);
  }

  return result;
}

unint64_t sub_1B9016780()
{
  result = qword_1EBAC10F8;
  if (!qword_1EBAC10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC10F8);
  }

  return result;
}

unint64_t sub_1B90167D8()
{
  result = qword_1EBAC1100;
  if (!qword_1EBAC1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1100);
  }

  return result;
}

unint64_t sub_1B9016860()
{
  result = qword_1EBAC1118;
  if (!qword_1EBAC1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1118);
  }

  return result;
}

unint64_t sub_1B90168B8()
{
  result = qword_1EBAC1120;
  if (!qword_1EBAC1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1120);
  }

  return result;
}

unint64_t sub_1B9016910()
{
  result = qword_1EBAC1128;
  if (!qword_1EBAC1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1128);
  }

  return result;
}

unint64_t sub_1B9016998()
{
  result = qword_1EBAC1140;
  if (!qword_1EBAC1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1140);
  }

  return result;
}

unint64_t sub_1B90169F0()
{
  result = qword_1EBAC1148;
  if (!qword_1EBAC1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1148);
  }

  return result;
}

unint64_t sub_1B9016A48()
{
  result = qword_1EBAC1150;
  if (!qword_1EBAC1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1150);
  }

  return result;
}

unint64_t sub_1B9016AD0()
{
  result = qword_1EBAC1168;
  if (!qword_1EBAC1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1168);
  }

  return result;
}

unint64_t sub_1B9016B28()
{
  result = qword_1EBAC1170;
  if (!qword_1EBAC1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1170);
  }

  return result;
}

unint64_t sub_1B9016B80()
{
  result = qword_1EBAC1178;
  if (!qword_1EBAC1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1178);
  }

  return result;
}

unint64_t sub_1B9016C08()
{
  result = qword_1EBAB4DB8;
  if (!qword_1EBAB4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4DB8);
  }

  return result;
}

unint64_t sub_1B9016C60()
{
  result = qword_1EBAB4DA8;
  if (!qword_1EBAB4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4DA8);
  }

  return result;
}

unint64_t sub_1B9016CB8()
{
  result = qword_1EBAB4DB0;
  if (!qword_1EBAB4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4DB0);
  }

  return result;
}

unint64_t sub_1B9016D40()
{
  result = qword_1EBAC11A0;
  if (!qword_1EBAC11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11A0);
  }

  return result;
}

unint64_t sub_1B9016D98()
{
  result = qword_1EBAC11A8;
  if (!qword_1EBAC11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11A8);
  }

  return result;
}

unint64_t sub_1B9016DF0()
{
  result = qword_1EBAC11B0;
  if (!qword_1EBAC11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11B0);
  }

  return result;
}

unint64_t sub_1B9016E78()
{
  result = qword_1EBAC11C8;
  if (!qword_1EBAC11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11C8);
  }

  return result;
}

unint64_t sub_1B9016ED0()
{
  result = qword_1EBAC11D0;
  if (!qword_1EBAC11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11D0);
  }

  return result;
}

unint64_t sub_1B9016F28()
{
  result = qword_1EBAC11D8;
  if (!qword_1EBAC11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11D8);
  }

  return result;
}

unint64_t sub_1B9016FB0()
{
  result = qword_1EBAC11F0;
  if (!qword_1EBAC11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11F0);
  }

  return result;
}

unint64_t sub_1B9017008()
{
  result = qword_1EBAC11F8;
  if (!qword_1EBAC11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC11F8);
  }

  return result;
}

unint64_t sub_1B9017060()
{
  result = qword_1EBAC1200;
  if (!qword_1EBAC1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1200);
  }

  return result;
}

unint64_t sub_1B90170E8()
{
  result = qword_1EBAC1218;
  if (!qword_1EBAC1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1218);
  }

  return result;
}

unint64_t sub_1B9017140()
{
  result = qword_1EBAC1220;
  if (!qword_1EBAC1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1220);
  }

  return result;
}

unint64_t sub_1B9017198()
{
  result = qword_1EBAC1228;
  if (!qword_1EBAC1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1228);
  }

  return result;
}

unint64_t sub_1B9017220()
{
  result = qword_1EBAC1240;
  if (!qword_1EBAC1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1240);
  }

  return result;
}

unint64_t sub_1B9017278()
{
  result = qword_1EBAC1248;
  if (!qword_1EBAC1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1248);
  }

  return result;
}

unint64_t sub_1B90172D0()
{
  result = qword_1EBAC1250;
  if (!qword_1EBAC1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1250);
  }

  return result;
}

unint64_t sub_1B9017358()
{
  result = qword_1EBAC1268;
  if (!qword_1EBAC1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1268);
  }

  return result;
}

unint64_t sub_1B90173B0()
{
  result = qword_1EBAC1270;
  if (!qword_1EBAC1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1270);
  }

  return result;
}

unint64_t sub_1B9017408()
{
  result = qword_1EBAC1278;
  if (!qword_1EBAC1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1278);
  }

  return result;
}

unint64_t sub_1B9017490()
{
  result = qword_1EBAC1290;
  if (!qword_1EBAC1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1290);
  }

  return result;
}

unint64_t sub_1B90174E8()
{
  result = qword_1EBAC1298;
  if (!qword_1EBAC1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1298);
  }

  return result;
}

unint64_t sub_1B9017540()
{
  result = qword_1EBAC12A0;
  if (!qword_1EBAC12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC12A0);
  }

  return result;
}

unint64_t sub_1B90175C8()
{
  result = qword_1EBAC12B8;
  if (!qword_1EBAC12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC12B8);
  }

  return result;
}

unint64_t sub_1B9017620()
{
  result = qword_1EBAC12C0;
  if (!qword_1EBAC12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC12C0);
  }

  return result;
}

unint64_t sub_1B9017678()
{
  result = qword_1EBAC12C8;
  if (!qword_1EBAC12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC12C8);
  }

  return result;
}

unint64_t sub_1B9017700()
{
  result = qword_1EBAC12E0;
  if (!qword_1EBAC12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC12E0);
  }

  return result;
}

unint64_t sub_1B9017758()
{
  result = qword_1EBAC12E8;
  if (!qword_1EBAC12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC12E8);
  }

  return result;
}

unint64_t sub_1B90177B0()
{
  result = qword_1EBAC12F0;
  if (!qword_1EBAC12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC12F0);
  }

  return result;
}

unint64_t sub_1B9017838()
{
  result = qword_1EBAC1308;
  if (!qword_1EBAC1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1308);
  }

  return result;
}

unint64_t sub_1B9017890()
{
  result = qword_1EBAC1310;
  if (!qword_1EBAC1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1310);
  }

  return result;
}

unint64_t sub_1B90178E8()
{
  result = qword_1EBAC1318;
  if (!qword_1EBAC1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1318);
  }

  return result;
}

unint64_t sub_1B9017970()
{
  result = qword_1EBAC1330;
  if (!qword_1EBAC1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1330);
  }

  return result;
}

unint64_t sub_1B90179C8()
{
  result = qword_1EBAC1338;
  if (!qword_1EBAC1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1338);
  }

  return result;
}

unint64_t sub_1B9017A20()
{
  result = qword_1EBAC1340;
  if (!qword_1EBAC1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1340);
  }

  return result;
}

unint64_t sub_1B9017AA8()
{
  result = qword_1EBAC1358;
  if (!qword_1EBAC1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1358);
  }

  return result;
}

unint64_t sub_1B9017B00()
{
  result = qword_1EBAC1360;
  if (!qword_1EBAC1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1360);
  }

  return result;
}

unint64_t sub_1B9017B58()
{
  result = qword_1EBAC1368;
  if (!qword_1EBAC1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1368);
  }

  return result;
}

unint64_t sub_1B9017BE0()
{
  result = qword_1EBAC1380;
  if (!qword_1EBAC1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1380);
  }

  return result;
}

unint64_t sub_1B9017C38()
{
  result = qword_1EBAC1388;
  if (!qword_1EBAC1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1388);
  }

  return result;
}

unint64_t sub_1B9017C90()
{
  result = qword_1EBAC1390;
  if (!qword_1EBAC1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1390);
  }

  return result;
}

unint64_t sub_1B9017D18()
{
  result = qword_1EBAC13A8;
  if (!qword_1EBAC13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC13A8);
  }

  return result;
}

unint64_t sub_1B9017D70()
{
  result = qword_1EBAC13B0;
  if (!qword_1EBAC13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC13B0);
  }

  return result;
}

unint64_t sub_1B9017DC8()
{
  result = qword_1EBAC13B8;
  if (!qword_1EBAC13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC13B8);
  }

  return result;
}

unint64_t sub_1B9017E50()
{
  result = qword_1EBAC13D0;
  if (!qword_1EBAC13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC13D0);
  }

  return result;
}

unint64_t sub_1B9017EA8()
{
  result = qword_1EBAC13D8;
  if (!qword_1EBAC13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC13D8);
  }

  return result;
}

unint64_t sub_1B9017F00()
{
  result = qword_1EBAC13E0;
  if (!qword_1EBAC13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC13E0);
  }

  return result;
}

unint64_t sub_1B9017F88()
{
  result = qword_1EBAC13F8;
  if (!qword_1EBAC13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC13F8);
  }

  return result;
}

unint64_t sub_1B9017FE0()
{
  result = qword_1EBAC1400;
  if (!qword_1EBAC1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1400);
  }

  return result;
}

unint64_t sub_1B9018038()
{
  result = qword_1EBAC1408;
  if (!qword_1EBAC1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1408);
  }

  return result;
}

unint64_t sub_1B90180C0()
{
  result = qword_1EBAC1420;
  if (!qword_1EBAC1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1420);
  }

  return result;
}

unint64_t sub_1B9018118()
{
  result = qword_1EBAC1428;
  if (!qword_1EBAC1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1428);
  }

  return result;
}

unint64_t sub_1B9018170()
{
  result = qword_1EBAC1430;
  if (!qword_1EBAC1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1430);
  }

  return result;
}

void sub_1B901E58C()
{
  sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B901FED0(319, &qword_1ED9FAC98, &type metadata for Apple_Parsec_Feedback_V2_ResultSectionForFeedback.OneOf_BundleID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B901E6F8(319, &qword_1EDA00148, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B901E6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B901E7A0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B901E87C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B901E944()
{
  sub_1B901FED0(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B901FED0(319, qword_1ED9FAD28, &type metadata for Apple_Parsec_Feedback_V2_PunchoutForFeedback.OneOf_BundleID, MEMORY[0x1E69E6720]);
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

uint64_t sub_1B901EC10()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B901ED1C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B901EE24()
{
  sub_1B901E6F8(319, &qword_1ED9F4490, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
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

void sub_1B901EF68()
{
  sub_1B901E6F8(319, &qword_1ED9F4498, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1ED9FF758, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B901F0B4()
{
  sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B901F244()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1698Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_706_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
    OUTLINED_FUNCTION_678_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_1699Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_682_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
      OUTLINED_FUNCTION_684_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1B901F4F8()
{
  sub_1B901E6F8(319, &qword_1ED9F4488, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B901FED0(319, &qword_1ED9FBDD8, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B901FED0(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v3 <= 0x3F)
        {
          sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B901F6AC()
{
  sub_1B901E6F8(319, &qword_1ED9F44A0, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B901F830()
{
  sub_1B901E6F8(319, &qword_1EBAC1B60, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9F44A0, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, MEMORY[0x1E69E62F8]);
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

void sub_1B901FB10()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B901FC8C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void sub_1B901FD5C()
{
  sub_1B901FE74();
  if (v0 <= 0x3F)
  {
    sub_1B901FED0(319, qword_1ED9FA7D0, &type metadata for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger, MEMORY[0x1E69E6720]);
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

void sub_1B901FE74()
{
  if (!qword_1ED9FBDE0)
  {
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9FBDE0);
    }
  }
}

void sub_1B901FED0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void sub_1B9020024()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9FCD90, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9020250()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, qword_1ED9F5990, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B901E6F8(319, qword_1ED9F73E0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1894Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 36);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_1895Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 36);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_1B90204B4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9FE628, type metadata accessor for Apple_Parsec_Feedback_V2_Error, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1707Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_266();
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

uint64_t __swift_store_extra_inhabitant_index_1708Tm()
{
  v2 = OUTLINED_FUNCTION_705_0();
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = *(v0 + 20);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v7 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_1B9020738()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_339_0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1761Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_622_0();
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_1762Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v4)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      OUTLINED_FUNCTION_633_0();
    }

    v10 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t __swift_get_extra_inhabitant_index_1975Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_267_0();
  }

  v6 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t __swift_store_extra_inhabitant_index_1976Tm()
{
  v2 = OUTLINED_FUNCTION_705_0();
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = *(v0 + 24);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v7 = *(v0 + 28);
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_1B9020C24()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_339_0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1743Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1744Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B9020E98()
{
  OUTLINED_FUNCTION_734();
  sub_1B901E6F8(319, v0, v1, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B9020F84()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_339_0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B9021088()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B901E6F8(319, &qword_1ED9FE610, type metadata accessor for Apple_Parsec_Feedback_V2_Range, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1617Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 20);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_1618Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 20);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t __swift_get_extra_inhabitant_index_1680Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_706_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B902136C()
{
  OUTLINED_FUNCTION_734();
  sub_1B901E6F8(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B90213EC()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(319);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(319);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(319);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(319);
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(319);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                            return 0;
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
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1842Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_678_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_1843Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_684_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B90218C0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_2056Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_362_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_2057Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B9021A7C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1797Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_1798Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B9021C18()
{
  sub_1B9021CE4(319, &qword_1EBAC1B98);
  if (v0 <= 0x3F)
  {
    sub_1B9021CE4(319, &qword_1EBAC1BA0);
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

void sub_1B9021CE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(255);
    OUTLINED_FUNCTION_461();
    v3 = sub_1B964C7C0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B9021DA4()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9021EA4()
{
  OUTLINED_FUNCTION_734();
  sub_1B901E6F8(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1545Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_362_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1546Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B902208C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_2()
{
  OUTLINED_FUNCTION_365_0();
  v4 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_81_0();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1B9022248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_1599Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 28);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t __swift_store_extra_inhabitant_index_1600Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 28);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B9022418()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1671Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 24);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void sub_1B9022530()
{
  sub_1B901E6F8(319, &qword_1ED9CA4D8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B901E6F8(319, &qword_1ED9CA4F0, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9022650()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B9022708()
{
  sub_1B901E6F8(319, &qword_1ED9FE120, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B902283C()
{
  sub_1B901E6F8(319, &qword_1EDA00060, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v20 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v21 = *(v2 - 8) + 64;
      sub_1B901E6F8(319, &qword_1ED9FE350, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v22 = *(v4 - 8) + 64;
        sub_1B901E6F8(319, &qword_1EDA03BE8, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v23 = *(v6 - 8) + 64;
          sub_1B901E6F8(319, &qword_1ED9F99D0, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v24 = *(v8 - 8) + 64;
            sub_1B901E6F8(319, &qword_1ED9F9C60, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v25 = *(v10 - 8) + 64;
              sub_1B901E6F8(319, qword_1ED9FA630, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v26 = *(v12 - 8) + 64;
                sub_1B901E6F8(319, qword_1ED9F7828, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes, MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v27 = *(v14 - 8) + 64;
                  sub_1B901E6F8(319, qword_1ED9F78C0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, MEMORY[0x1E69E6720]);
                  if (v17 <= 0x3F)
                  {
                    v28 = *(v16 - 8) + 64;
                    sub_1B901E6F8(319, qword_1ED9F6AA0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo, MEMORY[0x1E69E6720]);
                    if (v19 <= 0x3F)
                    {
                      v29 = *(v18 - 8) + 64;
                      swift_updateClassMetadata2();
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

void sub_1B9022D70()
{
  sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, qword_1ED9F78C0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9022EE0()
{
  sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1EDA03AF8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9023044()
{
  sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1EDA03AF8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B902319C()
{
  sub_1B901E6F8(319, &qword_1ED9FF208, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1EDA00028, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9023304()
{
  sub_1B901E6F8(319, &qword_1ED9C9D90, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1ED9CA4C0, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B90234A4()
{
  sub_1B901E6F8(319, &qword_1EDA03AE0, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1EDA03B10, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B901E6F8(319, &qword_1EDA03AF8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B902367C()
{
  sub_1B901E6F8(319, &qword_1ED9CA4F0, type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B9023784()
{
  sub_1B901E6F8(319, &qword_1ED9C9AE0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1ED9C9C80, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B90238E4()
{
  sub_1B901E6F8(319, &qword_1ED9C9AE0, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B901E6F8(319, &qword_1ED9C9C80, type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B9023A44()
{
  result = qword_1EBAC1E80;
  if (!qword_1EBAC1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1E80);
  }

  return result;
}

unint64_t sub_1B9023A98()
{
  result = qword_1EBAC1E88;
  if (!qword_1EBAC1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1E88);
  }

  return result;
}

unint64_t sub_1B9023AEC()
{
  result = qword_1EBAC1E90;
  if (!qword_1EBAC1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1E90);
  }

  return result;
}

unint64_t sub_1B9023B40()
{
  result = qword_1EBAC1E98;
  if (!qword_1EBAC1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1E98);
  }

  return result;
}

unint64_t sub_1B9023B94()
{
  result = qword_1EBAC1EA0;
  if (!qword_1EBAC1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EA0);
  }

  return result;
}

unint64_t sub_1B9023BE8()
{
  result = qword_1EBAC1EA8;
  if (!qword_1EBAC1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EA8);
  }

  return result;
}

unint64_t sub_1B9023C3C()
{
  result = qword_1EBAC1EB0;
  if (!qword_1EBAC1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EB0);
  }

  return result;
}

unint64_t sub_1B9023C90()
{
  result = qword_1EBAC1EB8;
  if (!qword_1EBAC1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EB8);
  }

  return result;
}

unint64_t sub_1B9023CE4()
{
  result = qword_1EBAC1EC0;
  if (!qword_1EBAC1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EC0);
  }

  return result;
}

unint64_t sub_1B9023D38()
{
  result = qword_1EBAC1EC8;
  if (!qword_1EBAC1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EC8);
  }

  return result;
}

unint64_t sub_1B9023D8C()
{
  result = qword_1EBAC1ED0;
  if (!qword_1EBAC1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1ED0);
  }

  return result;
}

unint64_t sub_1B9023DE0()
{
  result = qword_1EBAC1ED8;
  if (!qword_1EBAC1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1ED8);
  }

  return result;
}

unint64_t sub_1B9023E34()
{
  result = qword_1EBAC1EE0;
  if (!qword_1EBAC1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EE0);
  }

  return result;
}

unint64_t sub_1B9023E88()
{
  result = qword_1EBAC1EE8;
  if (!qword_1EBAC1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EE8);
  }

  return result;
}

unint64_t sub_1B9023EDC()
{
  result = qword_1EBAC1EF0;
  if (!qword_1EBAC1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EF0);
  }

  return result;
}

unint64_t sub_1B9023F30()
{
  result = qword_1EBAC1EF8;
  if (!qword_1EBAC1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1EF8);
  }

  return result;
}

unint64_t sub_1B9023F84()
{
  result = qword_1EBAC1F00;
  if (!qword_1EBAC1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1F00);
  }

  return result;
}

unint64_t sub_1B9023FD8()
{
  result = qword_1EBAC1F08;
  if (!qword_1EBAC1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1F08);
  }

  return result;
}

unint64_t sub_1B902402C()
{
  result = qword_1EBAC1F10;
  if (!qword_1EBAC1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC1F10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v5 = *(result + 20);
  *(a1 + 80) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_14(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  v5 = *(result + 20);
  *(a1 + 80) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v5 = *(result + 20);
  *(a1 + 88) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_6(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t result)
{
  v1 = *(*result + 80);
  v2 = *(*result + 84);
  return result;
}

uint64_t **OUTLINED_FUNCTION_128_3(uint64_t **result)
{
  v1 = (*result)[3];
  v2 = (*result)[4];
  v3 = (*result)[1];
  v4 = (*result)[2];
  v5 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_5()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_138_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_140_2(uint64_t result)
{
  *(v1 + 16) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_142_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_149_1(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_150_3(uint64_t result)
{
  *(v1 + 16) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_151_2()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_205_1()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_220_2(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1B8D9207C(v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_225_2(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 88) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_226_2()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_232_0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  return 0;
}

void OUTLINED_FUNCTION_241_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_244_1()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_249_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_251_1(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_253_1()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_254_1(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 72) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_255_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_256_1@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_258_1()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_262_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_263_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_264_1(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 84) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_265_1()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 72);
  return 0;
}

uint64_t OUTLINED_FUNCTION_268_1()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_274_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_275_1(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return 0;
}

void OUTLINED_FUNCTION_276_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_278_1()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  return 0;
}

void OUTLINED_FUNCTION_280_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
}

uint64_t OUTLINED_FUNCTION_284_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_297_0()
{
  v0 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_308_0(uint64_t a1)
{
  v4 = *(v2 + *(a1 + 20));
  v5 = *v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_309_0(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 20));
  v5 = *v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_310_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = a1;
  *(v1 + 56) = -1;
  v4 = v1 + *(v2 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_339_0()
{
  v3 = MEMORY[0x1E69E6720];

  sub_1B901E6F8(319, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_342_0()
{
  v0 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_343_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_344_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_346_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_349_0()
{
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback._StorageClass(0);
  v1 = *(started + 48);
  v2 = *(started + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_350_0()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_354_0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_355_0()
{

  return sub_1B8FAC5C8();
}

uint64_t OUTLINED_FUNCTION_356_0()
{

  return sub_1B8FAC5C8();
}

uint64_t OUTLINED_FUNCTION_357_0()
{

  return sub_1B964C850();
}

void OUTLINED_FUNCTION_358_0(uint64_t a1@<X8>)
{
  v3 = *(*(a1 - 256) + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

void OUTLINED_FUNCTION_360_0(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  v3 = *v2;
  v4 = v2[1];
  *(v2 + 16);
}

void OUTLINED_FUNCTION_363_0()
{
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_364_0()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_368_0@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 96) = v1;
  *(v3 + 104) = 0;
  *(v3 + 112) = v2;
  *(v3 + 120) = 0;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;
  *(v3 + 144) = v1;
  *(v3 + 152) = v1;
  v6 = v3 + *(v4 + 64);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_369_0()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  return 0;
}

void OUTLINED_FUNCTION_370_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_374_0()
{

  return swift_beginAccess();
}

float OUTLINED_FUNCTION_375_0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 4);
  v3 = *(a2 + 4);
  return result;
}

void OUTLINED_FUNCTION_376_0(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v3 = *(v2 + a1 + 8);
  v5 = *(v2 + a1 + 16);
  v6 = (*(v1 + 8) + a1);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 16);
}

uint64_t OUTLINED_FUNCTION_397_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_422_0()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_424_0()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
}

uint64_t OUTLINED_FUNCTION_425_0()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 88);
  return 0;
}

void OUTLINED_FUNCTION_427_0()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
}

uint64_t OUTLINED_FUNCTION_433_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_459_0()
{
  v2 = *(v0 + 80);
  v3 = *(*(v0 + 88) + *(v0 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_461_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_474_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_478_0(uint64_t result)
{
  v3 = *(v2 + *(result + 20));
  v4 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_492_0()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

void OUTLINED_FUNCTION_494_0()
{
  v3 = *(v0 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_500_0()
{
  v2 = *(*(v0 + 80) + *(v0 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_505_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_509_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_513_0(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
}

float OUTLINED_FUNCTION_516_0(float *a1, int *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_518_0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_519_0()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 72);
  return 0;
}

uint64_t OUTLINED_FUNCTION_520_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(*(v1 + 72) + *(v1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_535_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_536_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_543_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_586_1@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_592_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(*(v1 + 80) + *(v1 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_602_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_603_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_604_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_605_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_606_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_607_0(uint64_t a1@<X8>)
{
  *(v2 + 64) = 0;
  *(v2 + 72) = v1;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_608_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0xE000000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xC000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 255;
  *(v1 + 68) = 0;
  v4 = v1 + *(v2 + 44);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_609_0@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + a1);
  result = *v4;
  v6 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  v7 = *(v4 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_610_0@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + v1;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v2 = *v4;
  *(v2 + 8) = v6;
  *(v2 + 16) = v7;

  return sub_1B8D52584(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_612_0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  return 0;
}

uint64_t OUTLINED_FUNCTION_613_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_614_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_619_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_625_0()
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_627_0()
{
  result = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  return result;
}

void OUTLINED_FUNCTION_639_0()
{
  *(v0 + 1888) = v2;
  *(v0 + 1896) = v1;
  *(v0 + 1904) = v3;
}

void OUTLINED_FUNCTION_641_0()
{
  v2 = *(v1 + 16);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_643_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 36);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_655_0()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_656_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_660_0@<X0>(unint64_t a1@<X8>)
{
  v1 = a1 >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_666_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1B8FAC528();
}

uint64_t OUTLINED_FUNCTION_668_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_669_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = 0;
  v1[1] = a1;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_686_0()
{
  v3 = *(*(v0 + 72) + v1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_689_0()
{
  v3 = v0 + *(v1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_690_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_691_0()
{

  return sub_1B8FAC528();
}

uint64_t OUTLINED_FUNCTION_692_0()
{

  return sub_1B8FAC528();
}

uint64_t OUTLINED_FUNCTION_693_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_694_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 36);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_695_0()
{
  result = *(v1 + 8);
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_698_0()
{
  *v0 = 0;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_699_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = 0;
  v1[1] = a1;
  return 0;
}

void OUTLINED_FUNCTION_700_0()
{
  *v1 = 0;
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
  *(v1 + 40) = v0;
}

void OUTLINED_FUNCTION_702_0()
{
  *v0 = 0;
  *(v0 + 8) = v1;
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_705_0()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_707_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_715_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_719_0()
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  return result;
}

float OUTLINED_FUNCTION_722_0()
{
  result = *(v1 + 12);
  v3 = *(v0 + 12);
  return result;
}

uint64_t OUTLINED_FUNCTION_723_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_724(char a1@<W8>)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_727()
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_728(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_730()
{

  return sub_1B8FAC5C8();
}

uint64_t OUTLINED_FUNCTION_731()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_732@<X0>(uint64_t a1@<X8>)
{
  v1[7] = 0;
  v1[8] = a1;
  v1[9] = 0;
  v1[10] = a1;
  return 0;
}

void OUTLINED_FUNCTION_733(char a1@<W8>)
{
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;
  *(v1 + 48) = a1;
}

uint64_t OUTLINED_FUNCTION_736(uint64_t a1)
{
  v2 = *(a1 + 28);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_737()
{
  result = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_739(uint64_t result)
{
  *v1 = result;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_740()
{
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 24) = v0;
  v4 = v1 + *(v2 + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_741()
{
  v4 = v1 + *(v0 + 20);
  v5 = *(v2 - 72);

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_742()
{
  v2 = *(*(v0 + 64) + *(v0 + 72));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_743()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_744()
{
  v3 = *(*(v0 + 72) + v1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_745()
{
  v3 = v0 + *(v1 + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_762()
{
  v3 = v0 + *(v1 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_763()
{

  return sub_1B8FAC5C8();
}

uint64_t OUTLINED_FUNCTION_764(uint64_t a1)
{
  v2 = *(a1 + 32);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_801@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 28);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_804()
{
  v2 = *(*(v0 + 104) + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_813()
{
}

uint64_t OUTLINED_FUNCTION_814()
{
  v2 = *(*(v0 - 88) + 36);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_824()
{
  v3 = v0 + *(v1 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_825()
{

  return sub_1B8FAC5C8();
}

uint64_t OUTLINED_FUNCTION_826()
{
  v3 = v0 + *(v1 + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_827()
{

  return sub_1B8FAC528();
}

uint64_t OUTLINED_FUNCTION_828()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_829()
{

  return sub_1B8FAC528();
}

uint64_t OUTLINED_FUNCTION_830(uint64_t a1)
{
  v2 = *(a1 + 36);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_833()
{
  result = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  return result;
}

void OUTLINED_FUNCTION_840(uint64_t a1@<X8>)
{
  *v1 = 0;
  v1[1] = a1;
  v1[2] = 0;
}

uint64_t **OUTLINED_FUNCTION_846(uint64_t **result)
{
  v2 = **result;
  v1 = (*result)[1];
  v3 = (*result)[3];
  v4 = (*result)[4];
  v5 = (*result)[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_848()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_851()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_852()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

void OUTLINED_FUNCTION_853()
{
  v3 = *(v0 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_861()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_862@<X0>(uint64_t a1@<X8>)
{
  v1[7] = 0;
  v1[8] = a1;
  v1[9] = 0;
  v1[10] = a1;
  v4 = v1 + *(v2 + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_863()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_864()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_866(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_867()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_868(uint64_t a1)
{
  v2 = *(a1 + 40);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_869()
{

  return sub_1B964C7B0();
}

uint64_t OUTLINED_FUNCTION_870()
{

  return sub_1B8FAC528();
}

uint64_t OUTLINED_FUNCTION_871(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1B964C2B0();
}

uint64_t Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.flights.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate() + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate()
{
  result = qword_1EBAC2160;
  if (!qword_1EBAC2160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate() + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate() + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9027E9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2120);
  __swift_project_value_buffer(v0, qword_1EBAC2120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "flights";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6E90 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC2120);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B9028118();
    }
  }

  return result;
}

uint64_t sub_1B9028118()
{
  type metadata accessor for Searchfoundation_Flight(0);
  sub_1B90287C8(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_Flight(0), sub_1B90287C8(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight), result = sub_1B964C730(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate() + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B8D64C24();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate() + 20);
  sub_1B964C2B0();
  sub_1B90287C8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  sub_1B90287C8(&qword_1EBAC2140, type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9028434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90287C8(&qword_1EBAC2178, type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90284B4(uint64_t a1)
{
  v2 = sub_1B90287C8(&qword_1EBAC2150, type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9028524()
{
  sub_1B90287C8(&qword_1EBAC2150, type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);

  return sub_1B964C5D0();
}

void sub_1B90286EC()
{
  sub_1B9028770();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9028770()
{
  if (!qword_1EBAC2170)
  {
    type metadata accessor for Searchfoundation_Flight(255);
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAC2170);
    }
  }
}

uint64_t sub_1B90287C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Apple_Parsec_Flights_V1alpha_FlightQueryContext.appBundleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightQueryContext.appBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightQueryContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightQueryContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Flights_V1alpha_FlightSearchRequest.searchQuery.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchRequest(v15);
  OUTLINED_FUNCTION_19_11(*(v16 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_461();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9028B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B902F890();
  return a7(v7);
}

void Apple_Parsec_Flights_V1alpha_FlightSearchRequest.queryContext.modify()
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
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v9);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchRequest(v16);
  OUTLINED_FUNCTION_35_7(v17);
  v18 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v18, v19, Context);
  if (v20)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v21 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v12 + v21) = qword_1ED9D38C8;
    v22 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, v23, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_246();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Flights_V1alpha_FlightSearchRequest.flightQueryContext.modify()
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
  Context = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(v9);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchRequest(v15);
  OUTLINED_FUNCTION_19_11(*(v16 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_84_5();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC2230, &unk_1B967FDD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_461();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Flights_V1alpha_FlightSearchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightSearchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Apple_Parsec_Flights_V1alpha_FlightSearchResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_85(v8);
  v9 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchResponse(v14);
  OUTLINED_FUNCTION_19_11(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_16();
    OUTLINED_FUNCTION_461();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightSearchResponse.flights.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightSearchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchResponse(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90292F8()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 20));
  OUTLINED_FUNCTION_109_2(v9, v10);
  v11 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return OUTLINED_FUNCTION_89_7();
  }

  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v13 = v0 + *(v11 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC2228, &unk_1B967FDC0);
  }

  return result;
}

uint64_t sub_1B9029404()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_9_17();
  OUTLINED_FUNCTION_82_4();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest.searchQuery.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  SubscriptionTokenRequest = type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest(v15);
  OUTLINED_FUNCTION_19_11(*(SubscriptionTokenRequest + 20));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_461();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9029598(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79();
  v6 = a1(0);
  OUTLINED_FUNCTION_82_2(*(v6 + 20));
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v7 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v10, v11, &unk_1B967FDC0);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9029660()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B90296E0()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 24));
  OUTLINED_FUNCTION_109_2(v9, v10);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return OUTLINED_FUNCTION_89_7();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = *(Context + 20);
  if (qword_1ED9D38C0 != -1)
  {
    OUTLINED_FUNCTION_12_0();
  }

  *(v0 + v13) = qword_1ED9D38C8;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, Context);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  return result;
}

uint64_t sub_1B9029820()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_82_4();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest.queryContext.modify()
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
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v9);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  SubscriptionTokenRequest = type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest(v16);
  OUTLINED_FUNCTION_35_7(SubscriptionTokenRequest);
  v18 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v18, v19, Context);
  if (v20)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v21 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v12 + v21) = qword_1ED9D38C8;
    v22 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, v23, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_246();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9029A28()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = v1(0);
  OUTLINED_FUNCTION_106_5(*(v8 + 24));
  v0(0);
  v9 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9029B04()
{
  OUTLINED_FUNCTION_111_0();
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  sub_1B8D9207C(v1 + *(v6 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B9029B94()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 28));
  OUTLINED_FUNCTION_109_2(v9, v10);
  Context = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return OUTLINED_FUNCTION_89_7();
  }

  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v13 = v0 + *(Context + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC2230, &unk_1B967FDD0);
  }

  return result;
}

uint64_t sub_1B9029C98()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBAC2230, &unk_1B967FDD0);
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_82_4();
  type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest.flightQueryContext.modify()
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
  Context = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(v9);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  SubscriptionTokenRequest = type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest(v15);
  OUTLINED_FUNCTION_19_11(*(SubscriptionTokenRequest + 28));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_84_5();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC2230, &unk_1B967FDD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_461();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9029E4C()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = v1(0);
  OUTLINED_FUNCTION_106_5(*(v8 + 28));
  v0(0);
  v9 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9029F28()
{
  OUTLINED_FUNCTION_111_0();
  v4 = OUTLINED_FUNCTION_178_1();
  v6 = v5(v4);
  sub_1B8D9207C(v1 + *(v6 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B9029FD8(uint64_t (*a1)(void))
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = a1(0);
  v3 = v2[5];
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[6];
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v2[7];
  type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1B902A0B0()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 32));
  OUTLINED_FUNCTION_109_2(v9, v10);
  v11 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return OUTLINED_FUNCTION_89_7();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = -1;
  v13 = v0 + *(v11 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
  }

  return result;
}

uint64_t sub_1B902A1B4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_82_4();
  type metadata accessor for Apple_Parsec_Search_Error();
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_85(v8);
  v9 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  SubscriptionTokenResponse = type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse(v14);
  OUTLINED_FUNCTION_19_11(*(SubscriptionTokenResponse + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_16();
    OUTLINED_FUNCTION_461();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B902A344(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79();
  v6 = a1(0);
  OUTLINED_FUNCTION_82_2(*(v6 + 32));
  type metadata accessor for Apple_Parsec_Search_Error();
  v7 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v10, v11, &qword_1B964D970);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B902A40C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B902A4BC()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B902A544()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 28);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B902A610@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  v3 = a1(0);
  v4 = a2 + *(v3 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.flightLegMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9138, &unk_1B964D920);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(0);
  sub_1B8DD9078(v1 + *(v9 + 24), v8, &qword_1EBAB9138, &unk_1B964D920);
  v10 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  OUTLINED_FUNCTION_178(v8, 1, v10);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v12 = a1 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v10 + 28);
    type metadata accessor for Searchfoundation_Date(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_178(v8, 1, v10);
    if (!v11)
    {
      return sub_1B8D9207C(v8, &qword_1EBAB9138, &unk_1B964D920);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_20();
    return sub_1B902F83C();
  }

  return result;
}

uint64_t Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.flightLegMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9138, &unk_1B964D920);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_82_4();
  type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  v3 = a1 + *(v2 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 28);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.flightLegMetadata.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(v16);
  OUTLINED_FUNCTION_35_7(v17);
  v18 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v18, v19, v10);
  if (v20)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v21 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v22 = *(v10 + 28);
    type metadata accessor for Searchfoundation_Date(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v27, v28, v10);
    if (!v20)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9138, &unk_1B964D920);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_246();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.carrierCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.carrierCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.flightNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.flightNumber.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.departurePublishedTime.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(v7);
  v9 = OUTLINED_FUNCTION_115(*(v8 + 28));
  sub_1B8DD9078(v9, v10, &qword_1EBAB8E30, &qword_1B964D630);
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    v13 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_35();
    return OUTLINED_FUNCTION_89_7();
  }

  return result;
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.departurePublishedTime.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_82_4();
  type metadata accessor for Searchfoundation_Date(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Flights_V1alpha_FlightLegMetadata.departurePublishedTime.modify()
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
  v10 = type metadata accessor for Searchfoundation_Date(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(v16);
  OUTLINED_FUNCTION_19_11(*(v17 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v12 = 0;
    v19 = v12 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_35();
    OUTLINED_FUNCTION_461();
    sub_1B902F83C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B902AFAC()
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
    sub_1B902F890();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B902F83C();
    OUTLINED_FUNCTION_187_1();
    sub_1B902F8E4();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B902F83C();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t sub_1B902B120()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B902B1A8()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B902B274()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2180);
  __swift_project_value_buffer(v0, qword_1EBAC2180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "app_bundle_id";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightQueryContext.decodeMessage<A>(decoder:)()
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
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightQueryContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_64_2();
  if (!*v1 || (v2 = v0, result = sub_1B964C720(), !v0))
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v2))
    {
      v8 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Flights_V1alpha_FlightQueryContext.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_41();
  sub_1B8CD2498(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B902B6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2498(&qword_1EBAC23E0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B902B73C(uint64_t a1)
{
  v2 = sub_1B8CD2498(&qword_1EBAC2240, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B902B7AC()
{
  sub_1B8CD2498(&qword_1EBAC2240, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B902B960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2498(&qword_1EBAC23D8, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B902B9E0(uint64_t a1)
{
  v2 = sub_1B8CD2498(&qword_1EBAC22B0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B902BA50()
{
  sub_1B8CD2498(&qword_1EBAC22B0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B902BAE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC21B0);
  __swift_project_value_buffer(v0, qword_1EBAC21B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
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
  *v14 = 100;
  *v15 = "flights";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Flights_V1alpha_FlightSearchResponse.decodeMessage<A>(decoder:)()
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
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B902DB1C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B902DAA0();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CFB0F8();
        break;
    }
  }
}

void Apple_Parsec_Flights_V1alpha_FlightSearchResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_64_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_164();
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  if (!*v1 || (v19 = *(v1 + 8), sub_1B8F2116C(), OUTLINED_FUNCTION_81_4(), !v0))
  {
    v18 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchResponse(0);
    sub_1B8DD9078(v1 + *(v18 + 32), v2, &qword_1EBAB9188, &qword_1B964D970);
    OUTLINED_FUNCTION_178(v2, 1, v7);
    if (v11)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      OUTLINED_FUNCTION_45_5();
      sub_1B902F83C();
      OUTLINED_FUNCTION_8_23();
      sub_1B8CD2498(v12, v13);
      OUTLINED_FUNCTION_70_6();
      sub_1B902F8E4();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    v14 = *(v1 + 16);
    v15 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v16 || (OUTLINED_FUNCTION_75_3(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (type metadata accessor for Searchfoundation_Flight(0), sub_1B8CD2498(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight), OUTLINED_FUNCTION_57_5(), !v0))
      {
        v17 = *(v18 + 28);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B902C154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2498(&qword_1EBAC23D0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B902C1D4(uint64_t a1)
{
  v2 = sub_1B8CD2498(&qword_1EBAC22C8, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B902C244()
{
  sub_1B8CD2498(&qword_1EBAC22C8, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B902C2E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B964EE60;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "search_query";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v11 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = "query_context";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v13();
  v15 = (v8 + 2 * v5);
  v16 = v15 + v4[14];
  *v15 = 3;
  *v16 = "flight_query_context";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v13();
  return sub_1B964C760();
}

uint64_t sub_1B902C524()
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
      case 3:
        OUTLINED_FUNCTION_22_11();
        sub_1B902C6B4();
        break;
      case 2:
        OUTLINED_FUNCTION_22_11();
        sub_1B902C638();
        break;
      case 1:
        OUTLINED_FUNCTION_22_11();
        sub_1B902C5BC();
        break;
    }
  }

  return result;
}

uint64_t sub_1B902C5BC()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 20);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_42_6();
  sub_1B8CD2498(v2, v3);
  return OUTLINED_FUNCTION_21_11();
}

uint64_t sub_1B902C638()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_41_10();
  sub_1B8CD2498(v2, v3);
  return OUTLINED_FUNCTION_21_11();
}

uint64_t sub_1B902C6B4()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 28);
  type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0);
  OUTLINED_FUNCTION_40_7();
  sub_1B8CD2498(v2, v3);
  return OUTLINED_FUNCTION_21_11();
}

void sub_1B902C74C()
{
  OUTLINED_FUNCTION_273_0();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2230, &unk_1B967FDD0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v45 = v10;
  Context = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0);
  v11 = OUTLINED_FUNCTION_59_1(Context);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_137();
  v47 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v18 = OUTLINED_FUNCTION_59_1(v47);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_22_3();
  v26 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v25);
  v27 = OUTLINED_FUNCTION_59_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v30 = v5(0);
  sub_1B8DD9078(v0 + v30[5], v2, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v31, v32, v33);
  if (v34)
  {
    sub_1B8D9207C(v2, &qword_1EBAC2228, &unk_1B967FDC0);
  }

  else
  {
    sub_1B902F83C();
    OUTLINED_FUNCTION_42_6();
    sub_1B8CD2498(v35, v36);
    sub_1B964C740();
    sub_1B902F8E4();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B8DD9078(v0 + v30[6], v3, &qword_1EBABED40, &qword_1B96809F0);
  v37 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v37, v38, v47);
  if (v34)
  {
    sub_1B8D9207C(v3, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B902F83C();
    OUTLINED_FUNCTION_41_10();
    sub_1B8CD2498(v39, v40);
    OUTLINED_FUNCTION_108_5();
    sub_1B902F8E4();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B8DD9078(v0 + v30[7], v45, &qword_1EBAC2230, &unk_1B967FDD0);
  v41 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v41, v42, Context);
  if (v34)
  {
    sub_1B8D9207C(v45, &qword_1EBAC2230, &unk_1B967FDD0);
LABEL_13:
    sub_1B964C290();
    goto LABEL_14;
  }

  sub_1B902F83C();
  OUTLINED_FUNCTION_40_7();
  sub_1B8CD2498(v43, v44);
  OUTLINED_FUNCTION_108_5();
  sub_1B902F8E4();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_272_0();
}

void sub_1B902CBC0()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Context = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext(0);
  v8 = OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v109 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2230, &unk_1B967FDD0);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v110 = v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2248, &unk_1B967FDE0);
  OUTLINED_FUNCTION_59_1(v112);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_185();
  v114 = v21;
  v118 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v22 = OUTLINED_FUNCTION_59_1(v118);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v111 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_185();
  v115 = v31;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1(v116);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_185();
  v119 = v35;
  v36 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v37 = OUTLINED_FUNCTION_59_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_164();
  v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2250, &unk_1B967FDF0) - 8);
  v45 = *(*v44 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v108 - v47;
  v117 = v3(0);
  v49 = *(v117 + 20);
  v50 = v44[14];
  v120 = v7;
  sub_1B8DD9078(v7 + v49, v48, &qword_1EBAC2228, &unk_1B967FDC0);
  v121 = v5;
  sub_1B8DD9078(v5 + v49, &v48[v50], &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v51, v52, v53);
  if (v70)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v54, v55, v56);
    if (v70)
    {
      sub_1B8D9207C(v48, &qword_1EBAC2228, &unk_1B967FDC0);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v63 = OUTLINED_FUNCTION_686();
  sub_1B8DD9078(v63, v64, v65, v66);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v67, v68, v69);
  if (v70)
  {
    sub_1B902F8E4();
LABEL_14:
    v71 = &qword_1EBAC2250;
    v72 = &unk_1B967FDF0;
LABEL_28:
    v81 = v48;
LABEL_29:
    sub_1B8D9207C(v81, v71, v72);
    goto LABEL_30;
  }

  sub_1B902F83C();
  v73 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v73 && (sub_1B964C9F0() & 1) == 0 || (v74 = *(v0 + 24), !sub_1B8D92198(*(v1 + 16), *(v1 + 24), *(v0 + 16))))
  {
    sub_1B902F8E4();
    sub_1B902F8E4();
    v71 = &qword_1EBAC2228;
    v72 = &unk_1B967FDC0;
    goto LABEL_28;
  }

  v75 = *(v36 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_41();
  sub_1B8CD2498(v76, v77);
  v78 = sub_1B964C850();
  sub_1B902F8E4();
  sub_1B902F8E4();
  sub_1B8D9207C(v48, &qword_1EBAC2228, &unk_1B967FDC0);
  if ((v78 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_6:
  v57 = v117;
  v58 = *(v117 + 24);
  v59 = *(v116 + 48);
  v48 = v119;
  v60 = v120;
  sub_1B8DD9078(v120 + v58, v119, &qword_1EBABED40, &qword_1B96809F0);
  v61 = v121;
  sub_1B8DD9078(v121 + v58, &v48[v59], &qword_1EBABED40, &qword_1B96809F0);
  v62 = v118;
  OUTLINED_FUNCTION_178(v48, 1, v118);
  if (v70)
  {
    OUTLINED_FUNCTION_178(&v48[v59], 1, v62);
    if (v70)
    {
      sub_1B8D9207C(v48, &qword_1EBABED40, &qword_1B96809F0);
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  v79 = v115;
  sub_1B8DD9078(v48, v115, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_178(&v48[v59], 1, v62);
  if (v80)
  {
    sub_1B902F8E4();
LABEL_27:
    v71 = &qword_1EBABED68;
    v72 = &qword_1B9680A10;
    goto LABEL_28;
  }

  v83 = v111;
  sub_1B902F83C();
  v84 = *(v62 + 20);
  v85 = *(v79 + v84);
  v86 = *(v83 + v84);
  if (v85 != v86)
  {
    v87 = *(v79 + v84);

    v88 = sub_1B9090820(v85, v86);

    if (!v88)
    {
      sub_1B902F8E4();
      sub_1B902F8E4();
      v71 = &qword_1EBABED40;
      v72 = &qword_1B96809F0;
      goto LABEL_28;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_41();
  sub_1B8CD2498(v89, v90);
  v91 = sub_1B964C850();
  sub_1B902F8E4();
  sub_1B902F8E4();
  sub_1B8D9207C(v48, &qword_1EBABED40, &qword_1B96809F0);
  if ((v91 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_35:
  v92 = *(v57 + 28);
  v93 = *(v112 + 48);
  v94 = v114;
  sub_1B8DD9078(v60 + v92, v114, &qword_1EBAC2230, &unk_1B967FDD0);
  v95 = v61 + v92;
  v96 = v94;
  sub_1B8DD9078(v95, v94 + v93, &qword_1EBAC2230, &unk_1B967FDD0);
  v97 = Context;
  OUTLINED_FUNCTION_178(v94, 1, Context);
  if (v70)
  {
    OUTLINED_FUNCTION_178(v94 + v93, 1, v97);
    if (v70)
    {
      sub_1B8D9207C(v94, &qword_1EBAC2230, &unk_1B967FDD0);
LABEL_40:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_41();
      sub_1B8CD2498(v98, v99);
      v82 = sub_1B964C850();
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  v100 = v94;
  v101 = v110;
  sub_1B8DD9078(v100, v110, &qword_1EBAC2230, &unk_1B967FDD0);
  OUTLINED_FUNCTION_178(v96 + v93, 1, v97);
  if (v102)
  {
    sub_1B902F8E4();
LABEL_44:
    v71 = &qword_1EBAC2248;
    v72 = &unk_1B967FDE0;
LABEL_55:
    v81 = v96;
    goto LABEL_29;
  }

  v103 = v109;
  sub_1B902F83C();
  if (*v101 != *v103 || (v101[1] == v103[1] ? (v104 = v101[2] == v103[2]) : (v104 = 0), !v104 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B902F8E4();
    sub_1B902F8E4();
    v71 = &qword_1EBAC2230;
    v72 = &unk_1B967FDD0;
    goto LABEL_55;
  }

  v105 = *(v97 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_41();
  sub_1B8CD2498(v106, v107);
  LOBYTE(v105) = sub_1B964C850();
  sub_1B902F8E4();
  sub_1B902F8E4();
  sub_1B8D9207C(v96, &qword_1EBAC2230, &unk_1B967FDD0);
  if (v105)
  {
    goto LABEL_40;
  }

LABEL_30:
  v82 = 0;
LABEL_31:
  OUTLINED_FUNCTION_264(v82);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B902D5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2498(&qword_1EBAC23C8, type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B902D62C(uint64_t a1)
{
  v2 = sub_1B8CD2498(&qword_1EBAC22E0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B902D69C()
{
  sub_1B8CD2498(&qword_1EBAC22E0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B902D734()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC21E0);
  __swift_project_value_buffer(v0, qword_1EBAC21E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
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
  *v14 = 100;
  *v15 = "channel_ids";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse.decodeMessage<A>(decoder:)()
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
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B902DB1C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B902DAA0();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CFB0F8();
        break;
    }
  }
}

uint64_t sub_1B902DAA0()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_8_23();
  sub_1B8CD2498(v2, v3);
  return OUTLINED_FUNCTION_21_11();
}

void sub_1B902DB1C()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v4(0);
  sub_1B8CD2498(v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_64_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_164();
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  if (!*v1 || (v19 = *(v1 + 8), sub_1B8F2116C(), OUTLINED_FUNCTION_81_4(), !v0))
  {
    SubscriptionTokenResponse = type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse(0);
    sub_1B8DD9078(v1 + *(SubscriptionTokenResponse + 32), v2, &qword_1EBAB9188, &qword_1B964D970);
    OUTLINED_FUNCTION_178(v2, 1, v7);
    if (v11)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      OUTLINED_FUNCTION_45_5();
      sub_1B902F83C();
      OUTLINED_FUNCTION_8_23();
      sub_1B8CD2498(v12, v13);
      OUTLINED_FUNCTION_70_6();
      sub_1B902F8E4();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    v14 = *(v1 + 16);
    v15 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v16 || (OUTLINED_FUNCTION_75_3(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(0), sub_1B8CD2498(&qword_1EBAC2270, type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo), OUTLINED_FUNCTION_57_5(), !v0))
      {
        v17 = *(SubscriptionTokenResponse + 28);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B902DE08()
{
  OUTLINED_FUNCTION_284();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_280();
  v9 = type metadata accessor for Apple_Parsec_Search_Error();
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_164();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_79();
  v21 = *v1;
  v22 = *v0;
  if (*(v0 + 8) != 1)
  {
    if (v21 != v22)
    {
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  if (!v22)
  {
    if (!v21)
    {
      goto LABEL_11;
    }

LABEL_28:
    v33 = 0;
    goto LABEL_29;
  }

  if (v22 != 1)
  {
    if (v21 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  if (v21 != 1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v35 = v6;
  v34 = v8(0);
  v23 = *(v34 + 32);
  v24 = *(v17 + 48);
  sub_1B8DD9078(v1 + v23, v3, &qword_1EBAB9188, &qword_1B964D970);
  sub_1B8DD9078(v0 + v23, v3 + v24, &qword_1EBAB9188, &qword_1B964D970);
  v25 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v25, v26, v9);
  if (v27)
  {
    OUTLINED_FUNCTION_178(v3 + v24, 1, v9);
    if (v27)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9188, &qword_1B964D970);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1B8DD9078(v3, v4, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(v3 + v24, 1, v9);
  if (v27)
  {
    sub_1B902F8E4();
LABEL_19:
    sub_1B8D9207C(v3, &qword_1EBAB9190, &qword_1B964D978);
    goto LABEL_28;
  }

  sub_1B902F83C();
  v28 = static Apple_Parsec_Search_Error.== infix(_:_:)(v4, v2);
  sub_1B902F8E4();
  sub_1B902F8E4();
  sub_1B8D9207C(v3, &qword_1EBAB9188, &qword_1B964D970);
  if ((v28 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v29 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v29 && (sub_1B964C9F0() & 1) == 0 || (v35(v1[4], v0[4]) & 1) == 0)
  {
    goto LABEL_28;
  }

  v30 = *(v34 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_41();
  sub_1B8CD2498(v31, v32);
  v33 = OUTLINED_FUNCTION_634();
LABEL_29:
  OUTLINED_FUNCTION_264(v33);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B902E1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2498(&qword_1EBAC23C0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B902E244(uint64_t a1)
{
  v2 = sub_1B8CD2498(&qword_1EBAC22F8, type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B902E2B4()
{
  sub_1B8CD2498(&qword_1EBAC22F8, type metadata accessor for Apple_Parsec_Flights_V1alpha_FetchSubscriptionTokenResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B902E34C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC21F8);
  __swift_project_value_buffer(v0, qword_1EBAC21F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "channel_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "flight_leg_metadata";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.decodeMessage<A>(decoder:)()
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
      sub_1B902E59C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B902E59C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(0) + 24);
  type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  sub_1B8CD2498(&qword_1EBAC2280, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata);
  return sub_1B964C580();
}

void Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9138, &unk_1B964D920);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_95_4();
  v7 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v11 = *v0;
  v12 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v13 || (sub_1B964C700(), !v1))
  {
    v14 = type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(0);
    sub_1B8DD9078(v0 + *(v14 + 24), v2, &qword_1EBAB9138, &unk_1B964D920);
    OUTLINED_FUNCTION_178(v2, 1, v7);
    if (v15)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9138, &unk_1B964D920);
LABEL_7:
      v16 = v0 + *(v14 + 20);
      sub_1B964C290();
      goto LABEL_8;
    }

    sub_1B902F83C();
    sub_1B8CD2498(&qword_1EBAC2280, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata);
    sub_1B964C740();
    sub_1B902F8E4();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  v5 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9138, &unk_1B964D920);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9140, &unk_1B967FE00);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_212_0();
  v17 = *v1 == *v0 && v1[1] == v0[1];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo(0);
  v18 = *(v13 + 48);
  sub_1B8DD9078(v1 + *(v26 + 24), v2, &qword_1EBAB9138, &unk_1B964D920);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_178(v2 + v18, 1, v5);
    if (v17)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9138, &unk_1B964D920);
LABEL_17:
      v23 = *(v26 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_41();
      sub_1B8CD2498(v24, v25);
      v20 = OUTLINED_FUNCTION_634();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_1B8DD9078(v2, v3, &qword_1EBAB9138, &unk_1B964D920);
  OUTLINED_FUNCTION_178(v2 + v18, 1, v5);
  if (v19)
  {
    sub_1B902F8E4();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB9140, &unk_1B967FE00);
    goto LABEL_15;
  }

  sub_1B902F83C();
  static Apple_Parsec_Flights_V1alpha_FlightLegMetadata.== infix(_:_:)();
  v22 = v21;
  sub_1B902F8E4();
  sub_1B902F8E4();
  sub_1B8D9207C(v2, &qword_1EBAB9138, &unk_1B964D920);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v20 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B902EB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2498(&qword_1EBAC23B8, type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B902EC0C(uint64_t a1)
{
  v2 = sub_1B8CD2498(&qword_1EBAC2270, type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B902EC7C()
{
  sub_1B8CD2498(&qword_1EBAC2270, type metadata accessor for Apple_Parsec_Flights_V1alpha_APNSStatusChannelInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B902ED14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2210);
  __swift_project_value_buffer(v0, qword_1EBAC2210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "carrier_code";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "flight_number";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "departure_published_time";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Flights_V1alpha_FlightLegMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_9();
      sub_1B902EFB4();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B902EFB4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0) + 28);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B8CD2498(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  return sub_1B964C580();
}

void Apple_Parsec_Flights_V1alpha_FlightLegMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_64_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_95_4();
  v9 = type metadata accessor for Searchfoundation_Date(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = *v1;
  v14 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v0 = v2) == 0))
  {
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v0 = v2) == 0))
    {
      v19 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
      sub_1B8DD9078(v3 + *(v19 + 28), v4, &qword_1EBAB8E30, &qword_1B964D630);
      OUTLINED_FUNCTION_178(v4, 1, v9);
      if (v20)
      {
        sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_9:
        v21 = *(v19 + 24);
        OUTLINED_FUNCTION_8_1();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_1_35();
      sub_1B902F83C();
      sub_1B8CD2498(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
      sub_1B964C740();
      sub_1B902F8E4();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}