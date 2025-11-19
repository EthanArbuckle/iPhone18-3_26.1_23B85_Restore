uint64_t Apple_Parsec_Siri_V2alpha_VideoUnderstanding.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_94_4(), sub_1B91D54AC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v8 = *(v2 + 32);
      v9 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v10 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v11 = *(v2 + 48);
        v12 = *(v2 + 56);
        OUTLINED_FUNCTION_1();
        if (!v13 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          if (!*(v2 + 64) || (v14 = *(v2 + 72), OUTLINED_FUNCTION_94_4(), sub_1B91D5500(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
          {
            if (!*(*(v2 + 80) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
            {
              if (!*(v2 + 88) || (v15 = *(v2 + 96), OUTLINED_FUNCTION_94_4(), sub_1B91D5554(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
              {
                v16 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0) + 44);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoUnderstanding.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
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
      case 11:
        if (v3 != 11)
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
    OUTLINED_FUNCTION_84_1();
    v8 = v8 && v6 == v7;
    if (v8 || (sub_1B964C9F0() & 1) != 0)
    {
      OUTLINED_FUNCTION_40_5();
      v11 = v8 && v9 == v10;
      if (v11 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_167_4();
        v14 = v8 && v12 == v13;
        if (v14 || (sub_1B964C9F0() & 1) != 0)
        {
          v15 = *(v0 + 72);
          if (sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)) && (sub_1B8D6123C(*(v1 + 80), *(v0 + 80)) & 1) != 0)
          {
            v16 = *(v0 + 96);
            if (sub_1B8D92198(*(v1 + 88), *(v1 + 96), *(v0 + 88)))
            {
              v17 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding(0) + 44);
              sub_1B964C2B0();
              OUTLINED_FUNCTION_1_58();
              sub_1B8CD2B58(v18, v19);
              return OUTLINED_FUNCTION_634() & 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B91C951C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8150, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91C959C(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91C960C()
{
  sub_1B8CD2B58(&qword_1EBAC7F80, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding);

  return sub_1B964C5D0();
}

uint64_t sub_1B91C96A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C28);
  __swift_project_value_buffer(v0, qword_1EBAC7C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
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
  *v10 = "entity";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_9();
      sub_1B91C9948();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      if (!*(v1 + 32) || (v7 = *(v1 + 40), OUTLINED_FUNCTION_94_4(), sub_1B91D55A8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
      {
        v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v10 = *(v2 + 40);
  if (!sub_1B8D92198(*(v3 + 32), *(v3 + 40), *(v2 + 32)))
  {
    return 0;
  }

  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91C9BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8148, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91C9C44(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91C9CB4()
{
  sub_1B8CD2B58(&qword_1EBAC7F98, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice);

  return sub_1B964C5D0();
}

uint64_t sub_1B91C9D34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C40);
  __swift_project_value_buffer(v0, qword_1EBAC7C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_UNKNOWN";
  *(v6 + 8) = 41;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_UNSPECIFIED";
  *(v10 + 8) = 45;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_APPLETV";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_HOME_AUTOMATION_DEVICE_TYPE_TELEVISION";
  *(v14 + 1) = 44;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B91C9FB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C58);
  __swift_project_value_buffer(v0, qword_1EBAC7C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.decodeMessage<A>(decoder:)()
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
      sub_1B964C4D0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v3 + 16), *(v2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91CA3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8140, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91CA444(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91CA4B4()
{
  sub_1B8CD2B58(&qword_1EBAC7FB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUtsSearchParam);

  return sub_1B964C5D0();
}

uint64_t sub_1B91CA54C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C70);
  __swift_project_value_buffer(v0, qword_1EBAC7C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B96511C0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "movie";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "tv_show";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tv_season";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tv_episode";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "live_service";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sports_event";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "person";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "ui_metadata";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entity_experience_url";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "description";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "machine_generated_utterance";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B91CA9A4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B91CA9F4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata) = xmmword_1B9652FE0;
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B91CAA80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata) = xmmword_1B9652FE0;
  v8 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v11 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  swift_beginAccess();
  v14 = *v7;
  v15 = v7[1];
  *v7 = v13;
  v7[1] = v12;
  sub_1B8D91FCC(v13, v12);
  sub_1B8D538A0(v14, v15);
  v16 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];
  swift_beginAccess();
  v19 = v8[1];
  *v8 = v18;
  v8[1] = v17;

  v20 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  swift_beginAccess();
  v23 = v9[1];
  *v9 = v22;
  v9[1] = v21;

  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];

  swift_beginAccess();
  v27 = v10[1];
  *v10 = v26;
  v10[1] = v25;

  return v1;
}

uint64_t sub_1B91CADDC()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object, &qword_1EBAC7DA0, &qword_1B96A2828);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata), *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata + 8));
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance + 8);

  return v0;
}

uint64_t sub_1B91CAED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_1B91CAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B91CB1B4(a1, a2, a3, a4);
        continue;
      case 2:
        sub_1B91CB708(a1, a2, a3, a4);
        continue;
      case 3:
        sub_1B91CBC78(a1, a2, a3, a4);
        continue;
      case 4:
        sub_1B91CC1E8(a1, a2, a3, a4);
        continue;
      case 5:
        sub_1B91CC758(a1, a2, a3, a4);
        continue;
      case 6:
        sub_1B91CCCC8(a1, a2, a3, a4);
        continue;
      case 7:
        sub_1B91CD238(a1, a2, a3, a4);
        continue;
      case 9:
        v11 = MEMORY[0x1E69AAC78];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata;
        goto LABEL_15;
      case 10:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL;
        goto LABEL_15;
      case 11:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p;
        goto LABEL_15;
      case 12:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance;
LABEL_15:
        sub_1B91CD7A8(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91CB1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8168, &qword_1B96A48E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B91C6EB0();
    }

    else
    {
      sub_1B8D9207C(v25, &qword_1EBAC8168, &qword_1B96A48E8);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult);
  v28 = v37;
  sub_1B964C580();
  if (v28)
  {
    v29 = v25;
    return sub_1B8D9207C(v29, &qword_1EBAC8168, &qword_1B96A48E8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC8168, &qword_1B96A48E8);
    v29 = v23;
    return sub_1B8D9207C(v29, &qword_1EBAC8168, &qword_1B96A48E8);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v25, &qword_1EBAC8168, &qword_1B96A48E8);
  v31 = v33;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CB708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v32[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAC7DC8, &qword_1B96A2838);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC7DC8, &qword_1B96A2838);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC7DC8, &qword_1B96A2838);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC7DC8, &qword_1B96A2838);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAC7DC8, &qword_1B96A2838);
  v31 = v33;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CBC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v32[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v25, &qword_1EBAC7DE8, &qword_1B96A2858);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC7DE8, &qword_1B96A2858);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC7DE8, &qword_1B96A2858);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC7DE8, &qword_1B96A2858);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAC7DE8, &qword_1B96A2858);
  v31 = v33;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CC1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8170, &qword_1B96A48F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v32[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v25, &qword_1EBAC8170, &qword_1B96A48F0);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC8170, &qword_1B96A48F0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC8170, &qword_1B96A48F0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC8170, &qword_1B96A48F0);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAC8170, &qword_1B96A48F0);
  v31 = v33;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CC758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8178, &qword_1B96A48F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v32[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v25, &qword_1EBAC8178, &qword_1B96A48F8);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC8178, &qword_1B96A48F8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC8178, &qword_1B96A48F8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC8178, &qword_1B96A48F8);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAC8178, &qword_1B96A48F8);
  v31 = v33;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CCCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8180, &qword_1B96A4900);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v32[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v25, &qword_1EBAC8180, &qword_1B96A4900);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC8180, &qword_1B96A4900);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC8180, &qword_1B96A4900);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC8180, &qword_1B96A4900);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAC8180, &qword_1B96A4900);
  v31 = v33;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CD238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8188, &qword_1B96A4908);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__object;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    v32[0] = a1;
    sub_1B91C6E08();
    sub_1B91C6E08();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v25, &qword_1EBAC8188, &qword_1B96A4908);
      sub_1B91C6E08();
      sub_1B91C6E08();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B91C6EB0();
    }
  }

  sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC8188, &qword_1B96A4908);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC8188, &qword_1B96A4908);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC8188, &qword_1B96A4908);
  }

  sub_1B91C6E08();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAC8188, &qword_1B96A4908);
  v31 = v33;
  sub_1B91C6E08();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t sub_1B91CD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B91CD86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91CD8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  swift_beginAccess();
  sub_1B8F1B8B8();
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B91CDF20(a1, a2, a3, a4);
        goto LABEL_22;
      case 2u:
        sub_1B91CE154(a1, a2, a3, a4);
        goto LABEL_22;
      case 3u:
        sub_1B91CE388(a1, a2, a3, a4);
        goto LABEL_22;
      case 4u:
        sub_1B91CE5BC(a1, a2, a3, a4);
        goto LABEL_26;
      case 5u:
        sub_1B91CE7F0(a1, a2, a3, a4);
        goto LABEL_26;
      case 6u:
        sub_1B91CEA24(a1, a2, a3, a4);
LABEL_26:
        v5 = v4;
        if (v4)
        {
          return sub_1B91C6EB0();
        }

        sub_1B91C6EB0();
        break;
      default:
        sub_1B91CDCF0(a1, a2, a3, a4);
LABEL_22:
        v5 = v4;
        result = sub_1B91C6EB0();
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v15 = a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata;
  swift_beginAccess();
  if (sub_1B8D99EA8(*v15, *(v15 + 8)) || (v17 = *v15, v16 = *(v15 + 8), sub_1B8D91FCC(v17, v16), sub_1B964C6A0(), result = sub_1B8D538A0(v17, v16), !v5))
  {
    v19 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22 || (, sub_1B964C700(), result = , !v5))
    {
      v23 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
      swift_beginAccess();
      v24 = *v23;
      v25 = v23[1];
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26 || (, sub_1B964C700(), result = , !v5))
      {
        v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
        result = swift_beginAccess();
        v28 = *v27;
        v29 = v27[1];
        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {

          sub_1B964C700();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B91CDCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CDF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CE7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CEA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC7DA0, &qword_1B96A2828);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B91C6E08();
      sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult);
      sub_1B964C740();
      return sub_1B91C6EB0();
    }

    result = sub_1B91C6EB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91CEC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v12, v13);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B91CED5C()
{
  OUTLINED_FUNCTION_284();
  v56 = v0;
  v2 = v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v55[1] = v7;
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8160, &qword_1B96A48E0) - 8);
  v9 = *(*v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DA0, &qword_1B96A2828);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v55 - v18;
  OUTLINED_FUNCTION_521();
  v20 = v56;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521();
  v21 = v8[14];
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v12, 1, v3);
  if (!v23)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_178(&v12[v21], 1, v3);
    if (!v23)
    {
      sub_1B91C6E08();
      v22 = v2;

      static Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object.== infix(_:_:)();
      v25 = v24;
      sub_1B91C6EB0();
      sub_1B8D9207C(v19, &qword_1EBAC7DA0, &qword_1B96A2828);
      sub_1B91C6EB0();
      v26 = OUTLINED_FUNCTION_303();
      sub_1B8D9207C(v26, v27, &qword_1B96A2828);
      if ((v25 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_11;
    }

    sub_1B8D9207C(v19, &qword_1EBAC7DA0, &qword_1B96A2828);
    OUTLINED_FUNCTION_0_69();
    sub_1B91C6EB0();
LABEL_9:
    sub_1B8D9207C(v12, &qword_1EBAC8160, &qword_1B96A48E0);
    goto LABEL_27;
  }

  sub_1B8D9207C(v19, &qword_1EBAC7DA0, &qword_1B96A2828);
  OUTLINED_FUNCTION_178(&v12[v21], 1, v3);
  v22 = v2;
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v12, &qword_1EBAC7DA0, &qword_1B96A2828);
LABEL_11:
  v28 = (v22 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  OUTLINED_FUNCTION_521();
  v30 = *v28;
  v29 = v28[1];
  v31 = (v20 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__uiMetadata);
  OUTLINED_FUNCTION_521();
  v33 = *v31;
  v32 = v31[1];
  v34 = OUTLINED_FUNCTION_461();
  sub_1B8D91FCC(v34, v35);
  sub_1B8D91FCC(v33, v32);
  v36 = OUTLINED_FUNCTION_461();
  v37 = MEMORY[0x1BFADC060](v36);
  sub_1B8D538A0(v33, v32);
  v38 = OUTLINED_FUNCTION_461();
  sub_1B8D538A0(v38, v39);
  if (v37)
  {
    v40 = (v22 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
    OUTLINED_FUNCTION_521();
    v41 = *v40;
    v42 = v40[1];
    v43 = (v20 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__entityExperienceURL);
    OUTLINED_FUNCTION_521();
    v44 = v41 == *v43 && v42 == v43[1];
    if (v44 || (OUTLINED_FUNCTION_303(), (sub_1B964C9F0() & 1) != 0))
    {
      v45 = (v22 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
      OUTLINED_FUNCTION_521();
      v46 = *v45;
      v47 = v45[1];
      v48 = (v20 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__description_p);
      OUTLINED_FUNCTION_521();
      v49 = v46 == *v48 && v47 == v48[1];
      if (v49 || (OUTLINED_FUNCTION_303(), (sub_1B964C9F0() & 1) != 0))
      {
        v50 = (v22 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
        OUTLINED_FUNCTION_521();
        v51 = *v50;
        v52 = v50[1];
        v53 = (v20 + OBJC_IVAR____TtCV10PegasusAPI37Apple_Parsec_Siri_V2alpha_VideoResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__machineGeneratedUtterance);
        OUTLINED_FUNCTION_521();
        if (v51 != *v53 || v52 != v53[1])
        {
          OUTLINED_FUNCTION_303();
          sub_1B964C9F0();
        }
      }
    }
  }

LABEL_27:

  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91CF2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8138, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91CF364(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91CF3D4()
{
  sub_1B8CD2B58(&qword_1EBAC7FC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91CF46C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7C90);
  __swift_project_value_buffer(v0, qword_1EBAC7C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v27 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "genres";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v27 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "premiere_date_seconds";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "finale_date_seconds";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "images";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "tv_app_canonical_url";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "season_count";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "content_rating_value";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "content_rating_system";
  *(v25 + 1) = 21;
  v25[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.decodeMessage<A>(decoder:)()
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
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B91CF934();
        break;
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91CF934()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvShowResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
        {
          if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
          {
            if (!*(*(v1 + 56) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), OUTLINED_FUNCTION_22_18(), sub_1B8CD2B58(v7, v8), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
            {
              v9 = *(v1 + 64);
              v10 = *(v1 + 72);
              OUTLINED_FUNCTION_1();
              if (!v11 || (result = OUTLINED_FUNCTION_3(), !v0))
              {
                if (!*(v1 + 80) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                {
                  v12 = *(v1 + 88);
                  v13 = *(v1 + 96);
                  OUTLINED_FUNCTION_1();
                  if (!v14 || (result = OUTLINED_FUNCTION_3(), !v0))
                  {
                    v15 = *(v1 + 104);
                    v16 = *(v1 + 112);
                    OUTLINED_FUNCTION_1();
                    if (!v17 || (result = OUTLINED_FUNCTION_3(), !v0))
                    {
                      v18 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0) + 56);
                      return OUTLINED_FUNCTION_8_1();
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

uint64_t sub_1B91CFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8130, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91CFC98(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91CFD08()
{
  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91CFDA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7CA8);
  __swift_project_value_buffer(v0, qword_1EBAC7CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "premiere_date_seconds";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "images";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tv_app_canonical_url";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "season_number";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "show";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B91D0188();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B91D0228();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D0188()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C570();
}

uint64_t sub_1B91D0228()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0) + 44);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvSeasonResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_159();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v16 = v2[2];
    v17 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      if (!v2[4] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
      {
        if (!*(v2[5] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), OUTLINED_FUNCTION_22_18(), sub_1B8CD2B58(v19, v20), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          v21 = v2[6];
          v22 = v2[7];
          OUTLINED_FUNCTION_1();
          if (!v23 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v24 = v2[8];
            v25 = v2[9];
            OUTLINED_FUNCTION_1();
            if (!v26 || (result = OUTLINED_FUNCTION_3(), !v1))
            {
              v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
              v28 = *(v27 + 44);
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
              {
                sub_1B8D9207C(v3, &qword_1EBAC7DC8, &qword_1B96A2838);
              }

              else
              {
                OUTLINED_FUNCTION_2_42();
                sub_1B91C6E08();
                sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_23_13();
                result = sub_1B91C6EB0();
                if (v1)
                {
                  return result;
                }
              }

              v29 = *(v27 + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B91D0608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8128, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D0688(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D06F8()
{
  sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D0790()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7CC0);
  __swift_project_value_buffer(v0, qword_1EBAC7CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B964EE80;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v25 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "premiere_date_seconds";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v7();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "images";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tv_app_canonical_url";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "season_number";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "episode_number";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "show";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "season";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v7();
  return sub_1B964C760();
}

void *sub_1B91D0BE8()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  v0[6] = 0;
  v0[7] = v1;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

void *sub_1B91D0C74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v32 - v8;
  v1[2] = 0;
  v1[4] = 0;
  v1[3] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = MEMORY[0x1E69E7CC0];
  v1[8] = 0;
  v1[5] = 0xE000000000000000;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v32 = v1 + 10;
  v1[11] = 0xE000000000000000;
  v1[12] = 0;
  v1[13] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show;
  v33 = v1 + 12;
  v34 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season;
  v35 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  v13 = a1[2];
  v14 = a1[3];
  swift_beginAccess();
  v1[2] = v13;
  v1[3] = v14;
  swift_beginAccess();
  v15 = a1[4];
  v16 = a1[5];
  swift_beginAccess();
  v1[4] = v15;
  v1[5] = v16;

  swift_beginAccess();
  v17 = a1[6];
  swift_beginAccess();
  v1[6] = v17;
  swift_beginAccess();
  v18 = a1[7];
  swift_beginAccess();
  v19 = v1[7];
  v1[7] = v18;

  swift_beginAccess();
  v20 = a1[8];
  v21 = a1[9];
  swift_beginAccess();
  v22 = v1[9];
  v1[8] = v20;
  v1[9] = v21;

  swift_beginAccess();
  v23 = a1[10];
  v24 = a1[11];
  v25 = v32;
  swift_beginAccess();
  v26 = v1[11];
  *v25 = v23;
  v1[11] = v24;

  swift_beginAccess();
  v28 = a1[12];
  v27 = a1[13];
  v29 = v33;
  swift_beginAccess();
  v30 = v1[13];
  *v29 = v28;
  v1[13] = v27;

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
  return v1;
}

void *sub_1B91D10D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__show, &qword_1EBAC7DC8, &qword_1B96A2838);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvEpisodeResultP33_D77EB44AE96D8914801A62F370C5085913_StorageClass__season, &qword_1EBAC7DE8, &qword_1B96A2858);
  return v0;
}

uint64_t sub_1B91D1174(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1B91D1224()
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
        sub_1B8DAA85C();
        break;
      case 2:
        sub_1B8DC46F4();
        break;
      case 3:
        sub_1B91D1390();
        break;
      case 4:
        sub_1B91D1414();
        break;
      case 5:
        sub_1B8E16ACC();
        break;
      case 6:
        sub_1B8E16B50();
        break;
      case 7:
        sub_1B8E16BD4();
        break;
      case 8:
        sub_1B91D14E0();
        break;
      case 9:
        sub_1B91D15BC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D1390()
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B91D1414()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91D14E0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91D15BC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91D16C8(void *a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v36 - v8;
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = a1[3];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = a1[3];

    sub_1B964C700();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v23 = a1[5];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (v25 = a1[5], , sub_1B964C700(), result = , !v3))
  {
    swift_beginAccess();
    if (!a1[6] || (result = sub_1B964C6D0(), !v3))
    {
      v37 = v11;
      swift_beginAccess();
      if (!*(a1[7] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage), , sub_1B964C730(), result = , !v3))
      {
        swift_beginAccess();
        v26 = a1[9];
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = a1[8] & 0xFFFFFFFFFFFFLL;
        }

        if (!v27 || (v28 = a1[9], , sub_1B964C700(), result = , !v3))
        {
          swift_beginAccess();
          v29 = a1[11];
          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = a1[10] & 0xFFFFFFFFFFFFLL;
          }

          if (!v30 || (v31 = a1[11], , sub_1B964C700(), result = , !v3))
          {
            swift_beginAccess();
            v32 = a1[13];
            v33 = HIBYTE(v32) & 0xF;
            if ((v32 & 0x2000000000000000) == 0)
            {
              v33 = a1[12] & 0xFFFFFFFFFFFFLL;
            }

            if (!v33 || (v34 = a1[13], , sub_1B964C700(), result = , !v3))
            {
              v37 = a3;
              swift_beginAccess();
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
              {
                sub_1B8D9207C(v15, &qword_1EBAC7DC8, &qword_1B96A2838);
              }

              else
              {
                sub_1B91C6E08();
                sub_1B8CD2B58(&qword_1EBAC7E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult);
                sub_1B964C740();
                result = sub_1B91C6EB0();
                if (v3)
                {
                  return result;
                }
              }

              swift_beginAccess();
              v35 = v39;
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v35, 1, v40) == 1)
              {
                return sub_1B8D9207C(v35, &qword_1EBAC7DE8, &qword_1B96A2858);
              }

              else
              {
                sub_1B91C6E08();
                sub_1B8CD2B58(&qword_1EBAC7FF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult);
                sub_1B964C740();
                return sub_1B91C6EB0();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B91D1D70(void *a1, void *a2)
{
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0);
  v4 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC81A8, &qword_1B96A4928);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DE8, &qword_1B96A2858);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - v13;
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(0);
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v62 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD0, &qword_1B96A2840);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DC8, &qword_1B96A2838);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  swift_beginAccess();
  v28 = a1[2];
  v27 = a1[3];
  swift_beginAccess();
  v29 = v28 == a2[2] && v27 == a2[3];
  if (!v29 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = a1[4];
  v31 = a1[5];
  swift_beginAccess();
  v32 = v30 == a2[4] && v31 == a2[5];
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v33 = a1[6];
  swift_beginAccess();
  if (v33 != a2[6])
  {
    return 0;
  }

  v59 = v8;
  swift_beginAccess();
  v34 = a1[7];
  swift_beginAccess();
  v35 = a2[7];

  sub_1B8D6C98C();
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v38 = a1[8];
  v39 = a1[9];
  swift_beginAccess();
  v40 = v38 == a2[8] && v39 == a2[9];
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v41 = a1[10];
  v42 = a1[11];
  swift_beginAccess();
  v43 = v41 == a2[10] && v42 == a2[11];
  if (!v43 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v44 = a1[12];
  v45 = a1[13];
  swift_beginAccess();
  v46 = v44 == a2[12] && v45 == a2[13];
  if (!v46 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v47 = *(v16 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v48 = v66;
  if (__swift_getEnumTagSinglePayload(v19, 1, v66) != 1)
  {
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(&v19[v47], 1, v48) != 1)
    {
      v50 = v62;
      sub_1B91C6E08();
      v51 = static Apple_Parsec_Siri_V2alpha_TvShowResult.== infix(_:_:)(v24, v50);
      sub_1B91C6EB0();
      sub_1B8D9207C(v26, &qword_1EBAC7DC8, &qword_1B96A2838);
      sub_1B91C6EB0();
      sub_1B8D9207C(v19, &qword_1EBAC7DC8, &qword_1B96A2838);
      if (v51)
      {
        goto LABEL_38;
      }

LABEL_34:

      return 0;
    }

    sub_1B8D9207C(v26, &qword_1EBAC7DC8, &qword_1B96A2838);
    sub_1B91C6EB0();
LABEL_33:
    sub_1B8D9207C(v19, &qword_1EBAC7DD0, &qword_1B96A2840);
    goto LABEL_34;
  }

  sub_1B8D9207C(v26, &qword_1EBAC7DC8, &qword_1B96A2838);
  if (__swift_getEnumTagSinglePayload(&v19[v47], 1, v48) != 1)
  {
    goto LABEL_33;
  }

  sub_1B8D9207C(v19, &qword_1EBAC7DC8, &qword_1B96A2838);
LABEL_38:
  swift_beginAccess();
  v52 = v64;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v53 = *(v63 + 48);
  v54 = v59;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v55 = v65;
  if (__swift_getEnumTagSinglePayload(v54, 1, v65) == 1)
  {

    sub_1B8D9207C(v52, &qword_1EBAC7DE8, &qword_1B96A2858);
    if (__swift_getEnumTagSinglePayload(v54 + v53, 1, v55) == 1)
    {
      sub_1B8D9207C(v54, &qword_1EBAC7DE8, &qword_1B96A2858);
      return 1;
    }

    goto LABEL_43;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v54 + v53, 1, v55) == 1)
  {

    sub_1B8D9207C(v52, &qword_1EBAC7DE8, &qword_1B96A2858);
    sub_1B91C6EB0();
LABEL_43:
    sub_1B8D9207C(v54, &qword_1EBAC81A8, &qword_1B96A4928);
    return 0;
  }

  sub_1B91C6E08();
  static Apple_Parsec_Siri_V2alpha_TvSeasonResult.== infix(_:_:)();
  v57 = v56;

  sub_1B91C6EB0();
  sub_1B8D9207C(v52, &qword_1EBAC7DE8, &qword_1B96A2858);
  sub_1B91C6EB0();
  sub_1B8D9207C(v54, &qword_1EBAC7DE8, &qword_1B96A2858);
  return (v57 & 1) != 0;
}

uint64_t sub_1B91D2728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8120, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D27A8(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D2818()
{
  sub_1B8CD2B58(&qword_1EBAC8008, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D28B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7CE0);
  __swift_project_value_buffer(v0, qword_1EBAC7CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v27 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "genres";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v27 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "release_date_seconds";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "images";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "tv_app_canonical_url";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "content_rating_value";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "content_rating_system";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "runtime_in_minutes";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "in_theaters";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.decodeMessage<A>(decoder:)()
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
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B91D2D88();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D2D88()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
        {
          if (!*(*(v1 + 48) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0), OUTLINED_FUNCTION_22_18(), sub_1B8CD2B58(v7, v8), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
          {
            v9 = *(v1 + 56);
            v10 = *(v1 + 64);
            OUTLINED_FUNCTION_1();
            if (!v11 || (result = OUTLINED_FUNCTION_3(), !v0))
            {
              v12 = *(v1 + 72);
              v13 = *(v1 + 80);
              OUTLINED_FUNCTION_1();
              if (!v14 || (result = OUTLINED_FUNCTION_3(), !v0))
              {
                v15 = *(v1 + 88);
                v16 = *(v1 + 96);
                OUTLINED_FUNCTION_1();
                if (!v17 || (result = OUTLINED_FUNCTION_3(), !v0))
                {
                  if (!*(v1 + 104) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                  {
                    if (*(v1 + 108) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                    {
                      v18 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(0) + 56);
                      return OUTLINED_FUNCTION_8_1();
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

uint64_t sub_1B91D3074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8118, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D30F4(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D3164()
{
  sub_1B8CD2B58(&qword_1EBAC8020, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D3310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8110, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D3390(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D3400()
{
  sub_1B8CD2B58(&qword_1EBAC8038, type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D3498()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D10);
  __swift_project_value_buffer(v0, qword_1EBAC7D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.decodeMessage<A>(decoder:)()
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
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B91D379C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        if (!*(v1 + 24) || (v4 = *(v1 + 32), OUTLINED_FUNCTION_94_4(), sub_1B91D55FC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
        {
          v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoImage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  if (*(v3 + 20) != *(v2 + 20))
  {
    return 0;
  }

  v7 = *(v2 + 32);
  if (!sub_1B8D92198(*(v3 + 24), *(v3 + 32), *(v2 + 24)))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91D3A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8108, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D3ABC(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D3B2C()
{
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D3BAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D28);
  __swift_project_value_buffer(v0, qword_1EBAC7D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VIDEO_IMAGE_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_IMAGE_TYPE_STANDARD_POSTER";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_IMAGE_TYPE_WIDE_POSTER";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B91D3E10()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v9[14];
  *(v12 + v11) = 1;
  *v13 = v5;
  *(v13 + 8) = v3;
  *(v13 + 16) = 2;
  v14 = *v1;
  v15 = sub_1B964C750();
  OUTLINED_FUNCTION_21_7(v15);
  (*(v16 + 104))(v13, v14);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91D3FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_1_15();
  if (!v6 || (result = OUTLINED_FUNCTION_3(), !v4))
  {
    v8 = *(a4(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B91D40B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC8100, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D4134(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D41A4()
{
  sub_1B8CD2B58(&qword_1EBAC8060, type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D423C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D58);
  __swift_project_value_buffer(v0, qword_1EBAC7D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tv_app_canonical_url";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.decodeMessage<A>(decoder:)()
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
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B91D4540();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91D4540()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0) + 32);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  sub_1B8CD2B58(&qword_1EBAC7E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_PersonResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7DD8, &qword_1B96A2848);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_159();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v16 = v2[2];
    v17 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0);
      v20 = *(v19 + 32);
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
      {
        sub_1B8D9207C(v3, &qword_1EBAC7DD8, &qword_1B96A2848);
      }

      else
      {
        OUTLINED_FUNCTION_4_34();
        sub_1B91C6E08();
        OUTLINED_FUNCTION_22_18();
        sub_1B8CD2B58(v21, v22);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_42_9();
        result = sub_1B91C6EB0();
        if (v1)
        {
          return result;
        }
      }

      v23 = v2[4];
      v24 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v25 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v26 = *(v19 + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B91D4888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC80F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D4908(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D4978()
{
  sub_1B8CD2B58(&qword_1EBAC8078, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B91D4A10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7D70);
  __swift_project_value_buffer(v0, qword_1EBAC7D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "full_print";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "full_speak";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cat_id";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "supporting_print";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "supporting_speak";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "redacted_full_print";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "redacted_full_speak";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "redacted_supporting_print";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "redacted_supporting_speak";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "spoken_only";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_approved_for_grading";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoDialogComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (result = OUTLINED_FUNCTION_3(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v0))
    {
      v7 = *(v1 + 32);
      v8 = *(v1 + 40);
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v0))
      {
        v10 = *(v1 + 48);
        v11 = *(v1 + 56);
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(), !v0))
        {
          v13 = *(v1 + 64);
          v14 = *(v1 + 72);
          OUTLINED_FUNCTION_1();
          if (!v15 || (result = OUTLINED_FUNCTION_3(), !v0))
          {
            v16 = *(v1 + 80);
            v17 = *(v1 + 88);
            OUTLINED_FUNCTION_1();
            if (!v18 || (result = OUTLINED_FUNCTION_3(), !v0))
            {
              v19 = *(v1 + 96);
              v20 = *(v1 + 104);
              OUTLINED_FUNCTION_1();
              if (!v21 || (result = OUTLINED_FUNCTION_3(), !v0))
              {
                v22 = *(v1 + 112);
                v23 = *(v1 + 120);
                OUTLINED_FUNCTION_1();
                if (!v24 || (result = OUTLINED_FUNCTION_3(), !v0))
                {
                  v25 = *(v1 + 128);
                  v26 = *(v1 + 136);
                  OUTLINED_FUNCTION_1();
                  if (!v27 || (result = OUTLINED_FUNCTION_3(), !v0))
                  {
                    if (*(v1 + 144) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                    {
                      if (*(v1 + 145) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                      {
                        v28 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0) + 60);
                        return OUTLINED_FUNCTION_8_1();
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

uint64_t static Apple_Parsec_Siri_V2alpha_VideoDialogComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_167_4();
  v15 = v6 && v13 == v14;
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_157_8();
  v18 = v6 && v16 == v17;
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v19 = *(v3 + 80) == *(v2 + 80) && *(v3 + 88) == *(v2 + 88);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v20 = *(v3 + 96) == *(v2 + 96) && *(v3 + 104) == *(v2 + 104);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v3 + 112) == *(v2 + 112) && *(v3 + 120) == *(v2 + 120);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v22 = *(v3 + 128) == *(v2 + 128) && *(v3 + 136) == *(v2 + 136);
  if (!v22 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 144) != *(v2 + 144) || *(v3 + 145) != *(v2 + 145))
  {
    return 0;
  }

  v24 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_58();
  sub_1B8CD2B58(v25, v26);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91D523C(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2B58(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91D531C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2B58(&qword_1EBAC80F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91D539C(uint64_t a1)
{
  v2 = sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91D540C()
{
  sub_1B8CD2B58(&qword_1EBAC8090, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent);

  return sub_1B964C5D0();
}

unint64_t sub_1B91D54AC()
{
  result = qword_1EBAC7DF8;
  if (!qword_1EBAC7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7DF8);
  }

  return result;
}

unint64_t sub_1B91D5500()
{
  result = qword_1EBAC7E00;
  if (!qword_1EBAC7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7E00);
  }

  return result;
}

unint64_t sub_1B91D5554()
{
  result = qword_1EBAC7E08;
  if (!qword_1EBAC7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7E08);
  }

  return result;
}

unint64_t sub_1B91D55A8()
{
  result = qword_1EBAC7E18;
  if (!qword_1EBAC7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7E18);
  }

  return result;
}

unint64_t sub_1B91D55FC()
{
  result = qword_1EBAC7E70;
  if (!qword_1EBAC7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7E70);
  }

  return result;
}

unint64_t sub_1B91D5654()
{
  result = qword_1EBAC7E98;
  if (!qword_1EBAC7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7E98);
  }

  return result;
}

unint64_t sub_1B91D56AC()
{
  result = qword_1EBAC7EA0;
  if (!qword_1EBAC7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7EA0);
  }

  return result;
}

unint64_t sub_1B91D5704()
{
  result = qword_1EBAC7EA8;
  if (!qword_1EBAC7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7EA8);
  }

  return result;
}

unint64_t sub_1B91D578C()
{
  result = qword_1EBAC7EC0;
  if (!qword_1EBAC7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7EC0);
  }

  return result;
}

unint64_t sub_1B91D57E4()
{
  result = qword_1EBAC7EC8;
  if (!qword_1EBAC7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7EC8);
  }

  return result;
}

unint64_t sub_1B91D583C()
{
  result = qword_1EBAC7ED0;
  if (!qword_1EBAC7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7ED0);
  }

  return result;
}

unint64_t sub_1B91D58C4()
{
  result = qword_1EBAC7EE8;
  if (!qword_1EBAC7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7EE8);
  }

  return result;
}

unint64_t sub_1B91D591C()
{
  result = qword_1EBAC7EF0;
  if (!qword_1EBAC7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7EF0);
  }

  return result;
}

unint64_t sub_1B91D5974()
{
  result = qword_1EBAC7EF8;
  if (!qword_1EBAC7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7EF8);
  }

  return result;
}

unint64_t sub_1B91D59FC()
{
  result = qword_1EBAC7F10;
  if (!qword_1EBAC7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7F10);
  }

  return result;
}

unint64_t sub_1B91D5A54()
{
  result = qword_1EBAC7F18;
  if (!qword_1EBAC7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7F18);
  }

  return result;
}

unint64_t sub_1B91D5AAC()
{
  result = qword_1EBAC7F20;
  if (!qword_1EBAC7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7F20);
  }

  return result;
}

unint64_t sub_1B91D5B34()
{
  result = qword_1EBAC7F38;
  if (!qword_1EBAC7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7F38);
  }

  return result;
}

unint64_t sub_1B91D5B8C()
{
  result = qword_1EBAC7F40;
  if (!qword_1EBAC7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7F40);
  }

  return result;
}

unint64_t sub_1B91D5BE4()
{
  result = qword_1EBAC7F48;
  if (!qword_1EBAC7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7F48);
  }

  return result;
}

void sub_1B91D6CC0()
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

uint64_t sub_1B91D6DA0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B91D6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B91D6F10()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieResult(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Siri_V2alpha_LiveServiceResult(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SportsEventResult(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(319);
              if (v7 <= 0x3F)
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

  return result;
}

void sub_1B91D7010()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1EBAC80C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E62F8]);
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

void sub_1B91D7138()
{
  sub_1B91D725C(319, &qword_1EBAC80C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B91D725C(319, &qword_1ED9CA468, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91D725C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_171Tm_0()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 56));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_172Tm_0()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 56));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B91D73E8()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1EBAC80C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E62F8]);
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

uint64_t sub_1B91D7538()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_207Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_208Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 20));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B91D76C0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_0();
    return 0;
  }

  return result;
}

void sub_1B91D7744()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B91D725C(319, &qword_1EBAC80E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoImage, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B91D7838()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B91D78E4()
{
  sub_1B91D725C(319, &qword_1ED9D0F70, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoUnderstanding, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B91D725C(319, &qword_1ED9CFD08, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoHomeAutomationDevice, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B91D725C(319, qword_1ED9D0C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoDialogComponent, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B91D7AA4()
{
  sub_1B91D725C(319, &qword_1ED9CA660, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult.OneOf_Object, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B91D7B84()
{
  sub_1B91D725C(319, &qword_1ED9CA468, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvShowResult, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B91D725C(319, &qword_1ED9CA288, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_31_20()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_41_16()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_49_13()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_12()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_56_6()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_59_11(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoResult(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_62_4()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_8()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_133_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_146_4(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvEpisodeResult(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_149_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = a1;
  v5 = v2 + *(v3 + 56);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_153_5()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_167_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_171_3@<X0>(uint64_t a1@<X8>)
{
  v2[4] = 0;
  v2[5] = v1;
  v2[6] = 0;
  v2[7] = a1;
  v2[8] = 0;
  v2[9] = a1;
  v3 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvSeasonResult(0) + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_177_6()
{

  return sub_1B91C6E08();
}

uint64_t OUTLINED_FUNCTION_180_5()
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v3 = v1 + *(v0 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_181_6()
{

  return sub_1B8D9207C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_184_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonResult(0) + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Apple_Parsec_Siri_V2alpha_InputOrigin.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x12;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B91D83C0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_InputOrigin.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91D83F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91EC57C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_InputOrigin.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC81B0 = a1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_InputOrigin.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B91D8538@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_InputOrigin.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91D8598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.recordLocationActivity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_6:
    *v0 = 0;
    *(v0 + 8) = 1;
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams(0);
    OUTLINED_FUNCTION_102_7(v10);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v10 + 24);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
    v12 = OUTLINED_FUNCTION_40_3();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B91D88F0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_288();
  return sub_1B91D8B1C();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.recordLocationActivity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams(v7);
  OUTLINED_FUNCTION_126_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  OUTLINED_FUNCTION_2_43();
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_33_12();
      OUTLINED_FUNCTION_128();
      sub_1B91D8B1C();
      goto LABEL_7;
    }

    sub_1B91D88F0();
  }

  *v10 = 0;
  *(v10 + 8) = 1;
  OUTLINED_FUNCTION_101_4();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v16 = *(v0 + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
LABEL_7:
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91D88F0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_32_18();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  return OUTLINED_FUNCTION_131_6(v10);
}

uint64_t sub_1B91D8A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  OUTLINED_FUNCTION_177_1();
  sub_1B91D8CE8();
  return a7(v13);
}

uint64_t sub_1B91D8B1C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(v7);
  OUTLINED_FUNCTION_126_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  OUTLINED_FUNCTION_2_43();
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v10 + 32) = 0;
    *(v10 + 40) = v16;
    *(v10 + 48) = 0;
    v17 = v10 + *(v0 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91D8CE8()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.startRequest.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_29_24();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  return OUTLINED_FUNCTION_121_3();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.startRequest.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  started = type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(v7);
  OUTLINED_FUNCTION_126_1(started);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  OUTLINED_FUNCTION_2_43();
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    v16 = v10 + *(v0 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showMapPoints.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_28_17();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(0) + 20);
  if (qword_1EBAB7998 != -1)
  {
    OUTLINED_FUNCTION_91_4();
  }

  *(v0 + v11) = qword_1EBAC8660;
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showMapPoints.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(v7);
  OUTLINED_FUNCTION_126_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  OUTLINED_FUNCTION_2_43();
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_28_17();
      OUTLINED_FUNCTION_128();
      sub_1B91D8B1C();
      goto LABEL_10;
    }

    sub_1B91D88F0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v16 = *(v0 + 20);
  if (qword_1EBAB7998 != -1)
  {
    OUTLINED_FUNCTION_91_4();
  }

  *(v10 + v16) = qword_1EBAC8660;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.phoneCall.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_27_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams(0);
  return OUTLINED_FUNCTION_279(v10);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.phoneCall.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.extendCurrentTts.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.extendCurrentTts.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_738();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_111_6(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_112_6(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS(v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_81_7(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_18();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.setSiriAuthorizationForApp.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_45_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams(0);
  OUTLINED_FUNCTION_102_7(v10);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.setSiriAuthorizationForApp.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_45_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.sayIt.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_115_8(v10);
  v11 = *(v0 + 48);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  v12 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.init()()
{
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_115_8(v1);
  v2 = *(v0 + 48);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.sayIt.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(v7);
  OUTLINED_FUNCTION_126_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  OUTLINED_FUNCTION_2_43();
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = v16;
    *(v10 + 56) = 0;
    *(v10 + 64) = v16;
    *(v10 + 72) = 0;
    v17 = v10 + *(v0 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 48);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_44_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showPlaceDetails.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_43_12();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  *v0 = 0;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams(0);
  OUTLINED_FUNCTION_102_7(v11);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showPlaceDetails.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  OUTLINED_FUNCTION_2_43();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    *v9 = 0;
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_12();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDevice.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  v11 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v11;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams(0);
  return OUTLINED_FUNCTION_279(v12);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDevice.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  OUTLINED_FUNCTION_2_43();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    v15 = MEMORY[0x1E69E7CC0];
    *v9 = MEMORY[0x1E69E7CC0];
    v9[1] = v15;
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.openLink.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_41_17();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams(0);
  OUTLINED_FUNCTION_102_7(v10);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91DA334()
{
  OUTLINED_FUNCTION_132_2();
  v1 = v0(0);
  OUTLINED_FUNCTION_102_7(v1);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.openLink.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_17();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.navigationEnd.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_40_11();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.navigationEnd.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_738();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_111_6(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_112_6(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams(v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_81_7(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_40_11();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDeviceWithWatch.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_39_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  v11 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v11;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams(0);
  return OUTLINED_FUNCTION_279(v12);
}

uint64_t sub_1B91DA880@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v3;
  v4 = a1(0);
  return OUTLINED_FUNCTION_279(v4);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unlockDeviceWithWatch.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_43_7(v12);
  OUTLINED_FUNCTION_2_43();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    v15 = MEMORY[0x1E69E7CC0];
    *v9 = MEMORY[0x1E69E7CC0];
    v9[1] = v15;
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_39_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.cancelCurrentTts.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.cancelCurrentTts.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_738();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_111_6(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_112_6(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CancelCurrentTTS(v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_81_7(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38_7();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.switchProfile.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_37_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_132_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams(0);
  OUTLINED_FUNCTION_102_7(v10);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.switchProfile.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_247_1();
    OUTLINED_FUNCTION_101_4();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.pushOff.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_36_7();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  return OUTLINED_FUNCTION_122_3(v10);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.pushOff.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(v7);
  OUTLINED_FUNCTION_126_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  OUTLINED_FUNCTION_2_43();
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    v10[4] = 0;
    v10[5] = v16;
    v10[6] = 0;
    v10[7] = v16;
    v10[8] = 0;
    v10[9] = v16;
    v17 = v10 + *(v0 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.searchMarketplace.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_35_12();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  OUTLINED_FUNCTION_92_0();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams(0);
  return OUTLINED_FUNCTION_279(v10);
}

uint64_t Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams.init()()
{
  OUTLINED_FUNCTION_92_0();
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams(0);
  return OUTLINED_FUNCTION_279(v0);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.searchMarketplace.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams(v6);
  OUTLINED_FUNCTION_126_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_175_2(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_43_7(v11);
  OUTLINED_FUNCTION_2_43();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 16)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showLocalSearchResult.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_43();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_288();
      return sub_1B91D8B1C();
    }

    sub_1B91D88F0();
  }

  *v0 = xmmword_1B9652FE0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v11 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B91DB584()
{
  sub_1B8D9207C(v0, &qword_1EBAB9028, &qword_1B96A4930);
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.showLocalSearchResult.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams(v7);
  OUTLINED_FUNCTION_126_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  OUTLINED_FUNCTION_2_43();
  if (v14)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9028, &qword_1B96A4930);
LABEL_7:
    *v10 = xmmword_1B9652FE0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    v16 = v10 + *(v0 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1B91D88F0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_128();
  sub_1B91D8B1C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B91DB78C()
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
    sub_1B91D8CE8();
    sub_1B8D9207C(v5, &qword_1EBAB9028, &qword_1B96A4930);
    sub_1B91D8B1C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B91D88F0();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB9028, &qword_1B96A4930);
    sub_1B91D8B1C();
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

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = (v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0) + 20));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v20;
  a20 = v21;
  v263 = v23;
  v264 = v22;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams(0);
  v25 = OUTLINED_FUNCTION_183(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21();
  v249 = v28;
  v29 = OUTLINED_FUNCTION_201();
  v237 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams(v29);
  v30 = OUTLINED_FUNCTION_59_1(v237);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  v250 = v33;
  v34 = OUTLINED_FUNCTION_201();
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(v34);
  v36 = OUTLINED_FUNCTION_183(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  v247 = v39;
  v40 = OUTLINED_FUNCTION_201();
  v240 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams(v40);
  v41 = OUTLINED_FUNCTION_59_1(v240);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_21();
  v248 = v44;
  v45 = OUTLINED_FUNCTION_201();
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CancelCurrentTTS(v45);
  v47 = OUTLINED_FUNCTION_183(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_21();
  v245 = v50;
  v51 = OUTLINED_FUNCTION_201();
  v234 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams(v51);
  v52 = OUTLINED_FUNCTION_59_1(v234);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_21();
  v246 = v55;
  v56 = OUTLINED_FUNCTION_201();
  v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams(v56);
  v58 = OUTLINED_FUNCTION_183(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_21();
  v62 = OUTLINED_FUNCTION_207_3(v61);
  v239 = type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams(v62);
  v63 = OUTLINED_FUNCTION_59_1(v239);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_21();
  v244 = v66;
  v67 = OUTLINED_FUNCTION_201();
  v233 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams(v67);
  v68 = OUTLINED_FUNCTION_59_1(v233);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_21();
  v72 = OUTLINED_FUNCTION_207_3(v71);
  v235 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams(v72);
  v73 = OUTLINED_FUNCTION_59_1(v235);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_21();
  v77 = OUTLINED_FUNCTION_207_3(v76);
  v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(v77);
  v79 = OUTLINED_FUNCTION_183(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_21();
  v83 = OUTLINED_FUNCTION_207_3(v82);
  v238 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams(v83);
  v84 = OUTLINED_FUNCTION_59_1(v238);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_21();
  v88 = OUTLINED_FUNCTION_207_3(v87);
  v89 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS(v88);
  v90 = OUTLINED_FUNCTION_183(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_21();
  v94 = OUTLINED_FUNCTION_207_3(v93);
  v236 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams(v94);
  v95 = OUTLINED_FUNCTION_59_1(v236);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_21();
  v99 = OUTLINED_FUNCTION_207_3(v98);
  v241 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(v99);
  v100 = OUTLINED_FUNCTION_59_1(v241);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_21();
  v104 = OUTLINED_FUNCTION_207_3(v103);
  started = type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(v104);
  v105 = OUTLINED_FUNCTION_59_1(started);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_21();
  v109 = OUTLINED_FUNCTION_207_3(v108);
  v110 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(v109);
  v111 = OUTLINED_FUNCTION_183(v110);
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_21();
  v115 = OUTLINED_FUNCTION_207_3(v114);
  v116 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams(v115);
  v117 = OUTLINED_FUNCTION_183(v116);
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_21();
  v121 = OUTLINED_FUNCTION_207_3(v120);
  v122 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(v121);
  v123 = OUTLINED_FUNCTION_59_1(v122);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v258 = &v231 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_682();
  v262 = v128;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_682();
  v254 = v130;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_682();
  v261 = v132;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_682();
  v256 = v134;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_682();
  v260 = v136;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_682();
  v252 = v138;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_682();
  v259 = v140;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_682();
  v257 = v142;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_682();
  v253 = v144;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_124_3();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_682();
  v251 = v147;
  OUTLINED_FUNCTION_230();
  v149 = MEMORY[0x1EEE9AC00](v148);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_682();
  v255 = v150;
  OUTLINED_FUNCTION_230();
  v152 = MEMORY[0x1EEE9AC00](v151);
  v154 = &v231 - v153;
  v155 = MEMORY[0x1EEE9AC00](v152);
  v157 = &v231 - v156;
  v158 = MEMORY[0x1EEE9AC00](v155);
  MEMORY[0x1EEE9AC00](v158);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC82C0, &qword_1B96A4938);
  OUTLINED_FUNCTION_183(v159);
  v161 = *(v160 + 64);
  OUTLINED_FUNCTION_176();
  v163 = MEMORY[0x1EEE9AC00](v162);
  v165 = &v231 - v164;
  v166 = *(v163 + 56);
  sub_1B91D8CE8();
  v264 = v166;
  sub_1B91D8CE8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 1)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_32_18();
      OUTLINED_FUNCTION_113_8(&v265);
      v212 = OUTLINED_FUNCTION_461();
      static Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.== infix(_:_:)(v212, v213);
      goto LABEL_98;
    case 2u:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_29_24();
      v196 = v242;
      sub_1B91D8B1C();
      v197 = *v157 == *v196 && *(v157 + 1) == *(v196 + 8);
      if (v197 || (sub_1B964C9F0() & 1) != 0)
      {
        v198 = *(v196 + 24);
        if (sub_1B8D92198(*(v157 + 2), v157[24], *(v196 + 16)) && v157[25] == *(v196 + 25))
        {
          v199 = *(started + 28);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_70();
          sub_1B8CD2BA0(v200, v201);
          sub_1B964C850();
        }
      }

      OUTLINED_FUNCTION_88_6();
      sub_1B91D88F0();
      OUTLINED_FUNCTION_432();
      goto LABEL_99;
    case 3u:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 3)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_28_17();
      v204 = v243;
      sub_1B91D8B1C();
      v205 = *(v241 + 20);
      if (*&v154[v205] == *(v204 + v205) || (v206 = *&v154[v205], , , v207 = OUTLINED_FUNCTION_432(), v209 = sub_1B91F97F4(v207, v208), , , (v209 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v210, v211);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_86_6();
      sub_1B91D88F0();
      goto LABEL_99;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v182 = v255;
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 4)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_27_10();
      OUTLINED_FUNCTION_113_8(&a14);
      OUTLINED_FUNCTION_74_0();
      v185 = v171 && v183 == v184;
      if (v185 || (sub_1B964C9F0() & 1) != 0)
      {
        v186 = *(v182 + 16) == v166[2] && *(v182 + 24) == v166[3];
        if (v186 || (sub_1B964C9F0() & 1) != 0)
        {
          OUTLINED_FUNCTION_586_1(&v259);
          OUTLINED_FUNCTION_0_70();
          sub_1B8CD2BA0(v187, v188);
          OUTLINED_FUNCTION_181();
        }
      }

      goto LABEL_98;
    case 5u:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 5)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_113_8(&a12);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_70();
      sub_1B8CD2BA0(v214, v215);
      sub_1B964C850();
      sub_1B91D88F0();
      goto LABEL_99;
    case 6u:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 6)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_45_10();
      OUTLINED_FUNCTION_113_8(&a15);
      OUTLINED_FUNCTION_74_0();
      v220 = v171 && v218 == v219;
      if (v220 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_109_4(&v262);
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v221, v222);
        OUTLINED_FUNCTION_181();
      }

      goto LABEL_98;
    case 7u:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 7)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_44_10();
      sub_1B91D8B1C();
      static Apple_Parsec_Siri_V2alpha_SayItBuilderParams.== infix(_:_:)();
      sub_1B91D88F0();
      OUTLINED_FUNCTION_543();
      goto LABEL_99;
    case 8u:
      OUTLINED_FUNCTION_1_59();
      v228 = v253;
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 8)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_43_12();
      OUTLINED_FUNCTION_113_8(&a16);
      if (*v228 == *v166)
      {
        OUTLINED_FUNCTION_109_4(&v258);
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v229, v230);
        OUTLINED_FUNCTION_181();
      }

      OUTLINED_FUNCTION_17_20();
      sub_1B91D88F0();
      OUTLINED_FUNCTION_17_20();
      goto LABEL_99;
    case 9u:
      OUTLINED_FUNCTION_1_59();
      v193 = v257;
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 9)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_42_10();
      OUTLINED_FUNCTION_113_8(&a17);
      if (sub_1B8D5A714(*v193, *v166) & 1) != 0 && (sub_1B8D5A714(v193[1], v166[1]))
      {
        OUTLINED_FUNCTION_586_1(&v256);
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v194, v195);
        OUTLINED_FUNCTION_181();
      }

      goto LABEL_98;
    case 0xAu:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 10)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_41_17();
      sub_1B91D8B1C();
      OUTLINED_FUNCTION_74_0();
      v225 = v171 && v223 == v224;
      if (v225 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_109_4(&v263);
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v226, v227);
        OUTLINED_FUNCTION_181();
      }

      goto LABEL_98;
    case 0xBu:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 11)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_40_11();
      OUTLINED_FUNCTION_113_8(&a18);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_70();
      sub_1B8CD2BA0(v180, v181);
      OUTLINED_FUNCTION_461();
      sub_1B964C850();
      goto LABEL_98;
    case 0xCu:
      OUTLINED_FUNCTION_1_59();
      v189 = v260;
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 12)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_39_10();
      v190 = v246;
      sub_1B91D8B1C();
      if (sub_1B8D5A714(*v189, *v190) & 1) != 0 && (sub_1B8D5A714(v189[1], v190[1]))
      {
        OUTLINED_FUNCTION_586_1(&v257);
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v191, v192);
        OUTLINED_FUNCTION_181();
      }

      goto LABEL_98;
    case 0xDu:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 13)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_38_7();
      sub_1B91D8B1C();
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_70();
      sub_1B8CD2BA0(v216, v217);
      OUTLINED_FUNCTION_461();
      sub_1B964C850();
      goto LABEL_98;
    case 0xEu:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 14)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_37_10();
      sub_1B91D8B1C();
      OUTLINED_FUNCTION_74_0();
      v177 = v171 && v175 == v176;
      if (v177 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_109_4(&v264);
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v178, v179);
        OUTLINED_FUNCTION_181();
      }

      goto LABEL_98;
    case 0xFu:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 15)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_36_7();
      sub_1B91D8B1C();
      v202 = OUTLINED_FUNCTION_461();
      static Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.== infix(_:_:)(v202, v203);
      goto LABEL_98;
    case 0x10u:
      OUTLINED_FUNCTION_1_59();
      v167 = v262;
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 16)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_35_12();
      v168 = v250;
      sub_1B91D8B1C();
      OUTLINED_FUNCTION_74_0();
      v171 = v171 && v169 == v170;
      if (v171 || (sub_1B964C9F0() & 1) != 0)
      {
        v172 = *(v167 + 16) == *(v168 + 16) && *(v167 + 24) == *(v168 + 24);
        if (v172 || (sub_1B964C9F0() & 1) != 0)
        {
          OUTLINED_FUNCTION_586_1(&v260);
          OUTLINED_FUNCTION_0_70();
          sub_1B8CD2BA0(v173, v174);
          OUTLINED_FUNCTION_181();
        }
      }

      goto LABEL_98;
    case 0x11u:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5() != 17)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_34_10();
      sub_1B91D8B1C();
      OUTLINED_FUNCTION_461();
      static Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.== infix(_:_:)();
LABEL_98:
      sub_1B91D88F0();
      goto LABEL_99;
    default:
      OUTLINED_FUNCTION_1_59();
      sub_1B91D8CE8();
      if (OUTLINED_FUNCTION_62_5())
      {
LABEL_90:
        sub_1B91D88F0();
        sub_1B8D9207C(v165, &qword_1EBAC82C0, &qword_1B96A4938);
      }

      else
      {
        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_113_8(&v261);
        static Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.== infix(_:_:)();
        sub_1B91D88F0();
LABEL_99:
        sub_1B91D88F0();
        OUTLINED_FUNCTION_4_35();
        sub_1B91D88F0();
      }

      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v10 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_70();
  sub_1B8CD2BA0(v13, v14);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 24);
  if (!sub_1B8D92198(*(v3 + 16), *(v3 + 24), *(v2 + 16)) || *(v3 + 25) != *(v2 + 25))
  {
    return 0;
  }

  v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_70();
  sub_1B8CD2BA0(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Siri_V2alpha_SayItBuilderParams.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC82C8, &qword_1B96A4940);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC82D0, &unk_1B96A4948);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88();
  v20 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v21 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 32) != *(v0 + 32) || *(v1 + 33) != *(v0 + 33))
  {
    goto LABEL_23;
  }

  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(0);
  v22 = *(v43 + 48);
  v23 = *(v16 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v24 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v24, v25, v3);
  if (!v20)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v23, 1, v3);
    if (!v26)
    {
      OUTLINED_FUNCTION_5_31();
      sub_1B91D8B1C();
      v29 = *(v3 + 20);
      if (*&v15[v29] == *(v9 + v29) || (v30 = *&v15[v29], , , v31 = OUTLINED_FUNCTION_616(), v33 = sub_1B916BFC0(v31, v32), , , v33))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_70();
        sub_1B8CD2BA0(v34, v35);
        v36 = sub_1B964C850();
        sub_1B91D88F0();
        sub_1B91D88F0();
        sub_1B8D9207C(v2, &qword_1EBAC82C8, &qword_1B96A4940);
        if ((v36 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      sub_1B91D88F0();
      sub_1B91D88F0();
      v27 = &qword_1EBAC82C8;
      v28 = &qword_1B96A4940;
LABEL_22:
      sub_1B8D9207C(v2, v27, v28);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_31_21();
    sub_1B91D88F0();
LABEL_21:
    v27 = &qword_1EBAC82D0;
    v28 = &unk_1B96A4948;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_178(v2 + v23, 1, v3);
  if (!v20)
  {
    goto LABEL_21;
  }

  sub_1B8D9207C(v2, &qword_1EBAC82C8, &qword_1B96A4940);
LABEL_27:
  v37 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (v37 || (sub_1B964C9F0() & 1) != 0)
  {
    v38 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
    if (v38 || (sub_1B964C9F0()) && *(v1 + 72) == *(v0 + 72))
    {
      v39 = *(v43 + 44);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_70();
      sub_1B8CD2BA0(v40, v41);
      sub_1B964C850();
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91DD3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D5A714(*v6, *v7) & 1) == 0 || (sub_1B8D5A714(*(v4 + 8), *(v3 + 8)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_70();
  sub_1B8CD2BA0(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_CancelCurrentTTS.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_70();
  sub_1B8CD2BA0(v0, v1);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B91DD4F8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_70();
  sub_1B8CD2BA0(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v10 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_70();
  sub_1B8CD2BA0(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_70();
  sub_1B8CD2BA0(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(v0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0);
  v6 = OUTLINED_FUNCTION_102_7(v5);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return OUTLINED_FUNCTION_279(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.inputOrigin.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.inputOrigin.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams.appBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams.appBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC82C8, &qword_1B96A4940);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(0) + 48);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v8 + 20);
    if (qword_1EBAB7608 != -1)
    {
      OUTLINED_FUNCTION_99_8();
    }

    *(a1 + v12) = qword_1EBAC64F0;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC82C8, &qword_1B96A4940);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_31();
    return sub_1B91D8B1C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioData.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAC82C8, &qword_1B96A4940);
  OUTLINED_FUNCTION_5_31();
  sub_1B91D8B1C();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioData.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v0 + 32) = v8;
  *(v0 + 40) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(0) + 48);
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v5 + 20);
    if (qword_1EBAB7608 != -1)
    {
      OUTLINED_FUNCTION_99_8();
    }

    *&v8[v13] = qword_1EBAC64F0;
    OUTLINED_FUNCTION_28_13();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v16);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v4, &qword_1EBAC82C8, &qword_1B96A4940);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_31();
    sub_1B91D8B1C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B91DDF68()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B91D8CE8();
    sub_1B8D9207C(v6 + v1, &qword_1EBAC82C8, &qword_1B96A4940);
    OUTLINED_FUNCTION_5_31();
    sub_1B91D8B1C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    OUTLINED_FUNCTION_31_21();
    sub_1B91D88F0();
  }

  else
  {
    sub_1B8D9207C(v6 + v1, &qword_1EBAC82C8, &qword_1B96A4940);
    OUTLINED_FUNCTION_5_31();
    sub_1B91D8B1C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasAudioData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC82C8, &qword_1B96A4940);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(0) + 48);
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
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

  sub_1B8D9207C(v0, &qword_1EBAC82C8, &qword_1B96A4940);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_SayItBuilderParams.clearAudioData()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAC82C8, &qword_1B96A4940);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioDataURL.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioDataURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.locale.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.locale.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_SayItBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessage.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessage.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessageCatID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessageCatID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams.successCommands.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams.failureCommands.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B91DE6E8()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B91DE770()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91DE900()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B91DE988()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_CancelCurrentTTS.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_CancelCurrentTTS.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.resourceURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.resourceURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.imageData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.imageData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.urlFormatString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.urlFormatString.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ImageResource(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ImageResource(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ImageResource(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ImageResource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ImageResource(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91DEF98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB49A8);
  __swift_project_value_buffer(v0, qword_1EBAB49A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1B96511A0;
  v4 = v42 + v3 + v1[14];
  *(v42 + v3) = 0;
  *v4 = "INPUT_ORIGIN_UNKNOWN";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v42 + v3 + v2 + v1[14];
  *(v42 + v3 + v2) = 1;
  *v8 = "INPUT_ORIGIN_HOME_BUTTON";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v42 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "INPUT_ORIGIN_REMOTE_BUTTON";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v42 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "INPUT_ORIGIN_REMOTE_APP_BUTTON";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v7();
  v13 = (v42 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "INPUT_ORIGIN_ASSISTANT_SPEECH_BUTTON";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v7();
  v15 = (v42 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "INPUT_ORIGIN_ASSISTANT_TEXT_INPUT";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v7();
  v17 = (v42 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "INPUT_ORIGIN_PRIOR_REQUEST";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  v19 = (v42 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "INPUT_ORIGIN_VOICE_TRIGGER";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v7();
  v21 = (v42 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "INPUT_ORIGIN_SERVER_GENERATED";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v7();
  v23 = (v42 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INPUT_ORIGIN_MOTION_GESTURE";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v7();
  v25 = (v42 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "INPUT_ORIGIN_RAISE_TO_SPEAK";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v7();
  v27 = (v42 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "INPUT_ORIGIN_CLIENT_GENERATED";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v42 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "INPUT_ORIGIN_TAP_TO_REFRESH";
  *(v30 + 1) = 27;
  v30[16] = 2;
  v7();
  v31 = (v42 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "INPUT_ORIGIN_BACKGROUND_REFRESH";
  *(v32 + 1) = 31;
  v32[16] = 2;
  v7();
  v33 = (v42 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "INPUT_ORIGIN_BLUETOOTH_VOICE_TRIGGER";
  *(v34 + 1) = 36;
  v34[16] = 2;
  v7();
  v35 = (v42 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "INPUT_ORIGIN_BLUETOOTH_DOUBLE_TAP";
  *(v36 + 1) = 33;
  v36[16] = 2;
  v7();
  v37 = (v42 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "INPUT_ORIGIN_TRIGGERLESS_FOLLOWUP";
  *(v38 + 1) = 33;
  v38[16] = 2;
  v7();
  v39 = (v42 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "INPUT_ORIGIN_DIALOG_BUTTON_TAP";
  *(v40 + 1) = 30;
  v40[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B91DF564()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5BF0);
  __swift_project_value_buffer(v0, qword_1EBAB5BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "record_location_activity";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "app_punch_out";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "start_request";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "show_map_points";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "phone_call";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "extend_current_tts";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "set_siri_authorization_for_app";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "say_it";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "show_place_details";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "unlock_device";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "open_link";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "navigation_end";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "unlock_device_with_watch";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "cancel_current_tts";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "switch_profile";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "push_off";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "search_marketplace";
  *(v38 + 1) = 18;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "show_local_search_result";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 101;
  *v42 = "unique_id";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.decodeMessage<A>(decoder:)()
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
        sub_1B91DFCFC(v3, v4, v5, v6);
        break;
      case 2:
        v47 = OUTLINED_FUNCTION_17_3();
        sub_1B91E01F4(v47, v48, v49, v50);
        break;
      case 3:
        v31 = OUTLINED_FUNCTION_17_3();
        sub_1B91E06EC(v31, v32, v33, v34);
        break;
      case 4:
        v39 = OUTLINED_FUNCTION_17_3();
        sub_1B91E0BE4(v39, v40, v41, v42);
        break;
      case 5:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B91E10DC(v19, v20, v21, v22);
        break;
      case 6:
        v55 = OUTLINED_FUNCTION_17_3();
        sub_1B91E15D4(v55, v56, v57, v58);
        break;
      case 7:
        v63 = OUTLINED_FUNCTION_17_3();
        sub_1B91E1ACC(v63, v64, v65, v66);
        break;
      case 8:
        v43 = OUTLINED_FUNCTION_17_3();
        sub_1B91E1FC4(v43, v44, v45, v46);
        break;
      case 9:
        v71 = OUTLINED_FUNCTION_17_3();
        sub_1B91E24BC(v71, v72, v73, v74);
        break;
      case 10:
        v27 = OUTLINED_FUNCTION_17_3();
        sub_1B91E29B4(v27, v28, v29, v30);
        break;
      case 11:
        v67 = OUTLINED_FUNCTION_17_3();
        sub_1B91E2EAC(v67, v68, v69, v70);
        break;
      case 12:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B91E33A4(v15, v16, v17, v18);
        break;
      case 13:
        v23 = OUTLINED_FUNCTION_17_3();
        sub_1B91E389C(v23, v24, v25, v26);
        break;
      case 14:
        v59 = OUTLINED_FUNCTION_17_3();
        sub_1B91E3D94(v59, v60, v61, v62);
        break;
      case 15:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B91E428C(v11, v12, v13, v14);
        break;
      case 16:
        continue;
      case 17:
        v35 = OUTLINED_FUNCTION_17_3();
        sub_1B91E4784(v35, v36, v37, v38);
        break;
      case 18:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B91E4C7C(v7, v8, v9, v10);
        break;
      case 19:
        v51 = OUTLINED_FUNCTION_17_3();
        sub_1B91E5174(v51, v52, v53, v54);
        break;
      default:
        if (result == 101)
        {
          OUTLINED_FUNCTION_9();
          sub_1B91E566C();
        }

        break;
    }
  }
}

uint64_t sub_1B91DFCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8520, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B91D88F0();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC8520, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC84E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8520, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8520, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8520, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8520, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8528, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8528, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8360, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8528, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8528, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8528, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8528, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E06EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  started = type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams(0);
  v6 = *(*(started - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](started);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8530, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, started);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8530, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, started);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(qword_1ED9C9458, type metadata accessor for Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8530, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, started) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8530, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8530, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8530, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E0BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8538, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8538, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC84F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8538, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8538, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8538, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8538, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E10DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8540, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8540, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC84F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8540, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8540, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8540, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8540, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E15D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8548, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8548, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8500, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExtendCurrentTTS);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8548, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8548, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8548, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8548, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8550, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8550, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8380, type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8550, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8550, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8550, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8550, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E1FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8558, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8558, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8398, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8558, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8558, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8558, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8558, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E24BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8560, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8560, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8508, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8560, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8560, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8560, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8560, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E29B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8568, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8568, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC83C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8568, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8568, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8568, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8568, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E2EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8570, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8570, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC83F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8570, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8570, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8570, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8570, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8578, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8578, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8510, type metadata accessor for Apple_Parsec_Siri_V2alpha_NavigationEndBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8578, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8578, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8578, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8578, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8580, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8580, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC83E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8580, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8580, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8580, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8580, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E3D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CancelCurrentTTS(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8588, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8588, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8410, type metadata accessor for Apple_Parsec_Siri_V2alpha_CancelCurrentTTS);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8588, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8588, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8588, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8588, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8590, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8590, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8428, type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8590, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8590, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8590, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8590, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E4784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC8598, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B8D9207C(v22, &qword_1EBAC8598, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC83B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC8598, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC8598, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC8598, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC8598, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E4C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC85A0, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B8D9207C(v22, &qword_1EBAC85A0, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8458, type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC85A0, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC85A0, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC85A0, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC85A0, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B91E5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9028, &qword_1B96A4930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC85A8, "ƪ\n");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9028, &qword_1B96A4930);
  }

  else
  {
    sub_1B91D8B1C();
    sub_1B91D8B1C();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B8D9207C(v22, &qword_1EBAC85A8, "ƪ\n");
      sub_1B91D8B1C();
      sub_1B91D8B1C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B91D88F0();
    }
  }

  sub_1B8CD2BA0(&qword_1EBAC8518, type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC85A8, "ƪ\n");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC85A8, "ƪ\n");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC85A8, "ƪ\n");
  }

  sub_1B91D8B1C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC85A8, "ƪ\n");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B91D8B1C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v102[3] = a2;
  v102[1] = a1;
  v5 = OUTLINED_FUNCTION_177_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_183(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_124_3();
  v13 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v102 - v14;
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams(0);
  OUTLINED_FUNCTION_28_13();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) != 1)
  {
    sub_1B8D92024();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v19 = OUTLINED_FUNCTION_6_27();
        sub_1B91E5AB0(v19, v20, v21, v22);
        v4 = v3;
        OUTLINED_FUNCTION_4_35();
        sub_1B91D88F0();
        if (!v3)
        {
          break;
        }

        return sub_1B8D9207C(v15, &qword_1EBAB9028, &qword_1B96A4930);
      case 1u:
        v55 = OUTLINED_FUNCTION_6_27();
        sub_1B91E5CC0(v55, v56, v57, v58);
        goto LABEL_19;
      case 2u:
        v43 = OUTLINED_FUNCTION_6_27();
        sub_1B91E5ED4(v43, v44, v45, v46);
        goto LABEL_19;
      case 3u:
        v47 = OUTLINED_FUNCTION_6_27();
        sub_1B91E60E8(v47, v48, v49, v50);
        goto LABEL_19;
      case 4u:
        v31 = OUTLINED_FUNCTION_6_27();
        sub_1B91E62FC(v31, v32, v33, v34);
        goto LABEL_19;
      case 5u:
        v59 = OUTLINED_FUNCTION_6_27();
        sub_1B91E6510(v59, v60, v61, v62);
        goto LABEL_19;
      case 6u:
        v67 = OUTLINED_FUNCTION_6_27();
        sub_1B91E6724(v67, v68, v69, v70);
        goto LABEL_19;
      case 7u:
        v51 = OUTLINED_FUNCTION_6_27();
        sub_1B91E6938(v51, v52, v53, v54);
        goto LABEL_19;
      case 8u:
        v75 = OUTLINED_FUNCTION_6_27();
        sub_1B91E6B4C(v75, v76, v77, v78);
        goto LABEL_19;
      case 9u:
        v39 = OUTLINED_FUNCTION_6_27();
        sub_1B91E6D60(v39, v40, v41, v42);
        goto LABEL_19;
      case 0xAu:
        v71 = OUTLINED_FUNCTION_6_27();
        sub_1B91E6F74(v71, v72, v73, v74);
        goto LABEL_19;
      case 0xBu:
        v27 = OUTLINED_FUNCTION_6_27();
        sub_1B91E7188(v27, v28, v29, v30);
        goto LABEL_19;
      case 0xCu:
        v35 = OUTLINED_FUNCTION_6_27();
        sub_1B91E739C(v35, v36, v37, v38);
        goto LABEL_19;
      case 0xDu:
        v63 = OUTLINED_FUNCTION_6_27();
        sub_1B91E75B0(v63, v64, v65, v66);
        goto LABEL_19;
      case 0xEu:
        v23 = OUTLINED_FUNCTION_6_27();
        sub_1B91E77C4(v23, v24, v25, v26);
LABEL_19:
        v4 = v3;
        if (!v3)
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_4_35();
        sub_1B91D88F0();
        return sub_1B8D9207C(v15, &qword_1EBAB9028, &qword_1B96A4930);
      default:
LABEL_21:
        OUTLINED_FUNCTION_4_35();
        sub_1B91D88F0();
        break;
    }
  }

  sub_1B8D9207C(v15, &qword_1EBAB9028, &qword_1B96A4930);
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_13();
  if (__swift_getEnumTagSinglePayload(v79, v80, v81) == 1)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_616();
  sub_1B8D92024();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 17:
      v91 = OUTLINED_FUNCTION_75_7();
      sub_1B91E7E00(v91, v92, v93, v94);
      break;
    case 16:
      v87 = OUTLINED_FUNCTION_75_7();
      sub_1B91E7BEC(v87, v88, v89, v90);
      break;
    case 15:
      v83 = OUTLINED_FUNCTION_75_7();
      sub_1B91E79D8(v83, v84, v85, v86);
      break;
    default:
      OUTLINED_FUNCTION_4_35();
      sub_1B91D88F0();
      goto LABEL_33;
  }

  v4 = v3;
  OUTLINED_FUNCTION_4_35();
  sub_1B91D88F0();
  if (!v3)
  {
LABEL_33:
    sub_1B8D9207C(v2, &qword_1EBAB9028, &qword_1B96A4930);
    v96 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0);
    v97 = (v2 + *(v96 + 20));
    v98 = *v97;
    v99 = v97[1];
    OUTLINED_FUNCTION_1();
    if (!v100 || (result = sub_1B964C700(), !v4))
    {
      v101 = v2 + *(v96 + 24);
      return sub_1B964C290();
    }

    return result;
  }

  v15 = v2;
  return sub_1B8D9207C(v15, &qword_1EBAB9028, &qword_1B96A4930);
}