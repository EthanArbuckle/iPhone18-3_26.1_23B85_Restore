float sub_1C7300AAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v6 = *a2;
  v7 = v2;
  static PairwiseMetrics.cosineSimilarity(_:_:)(&v7, &v6);
  v4 = (v3 + 1.0) * 0.5;
  if (v4 <= 0.0)
  {
    return 3.4028e38;
  }

  else
  {
    return (1.0 - v4) / v4;
  }
}

id VisualOutliers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualOutliers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualOutliers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisualOutliers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualOutliers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C7300C78()
{
  result = qword_1EC21A6E0;
  if (!qword_1EC21A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A6E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualOutliersError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7300DD0()
{
  result = qword_1EC21A6E8;
  if (!qword_1EC21A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A6E8);
  }

  return result;
}

uint64_t sub_1C7300E24()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1C7303784;

  return SafetyController.sensitiveContent(in:useCaseIdentifier:eventRecorder:)(v8, v6, v4, v2);
}

uint64_t SafetyController.sensitiveContent(in:useCaseIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_1C754F38C();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 113) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C7300FB4, v4, 0);
}

uint64_t sub_1C7300FB4()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 113);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1C754F1CC();
  sub_1C707DDC0();
  static TextSanitizer.extractCategories(in:categories:)(v2, v3);
  v5 = v4;

  *(v0 + 72) = v5;
  *(v0 + 112) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1C73010D0;
  v7 = OUTLINED_FUNCTION_57_0();

  return sub_1C7302A74(v7, v8, (v0 + 112));
}

uint64_t sub_1C73010D0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[11] = v1;

  v9 = v5[5];
  if (v1)
  {
    v10 = sub_1C73012A8;
  }

  else
  {
    v5[12] = v0;
    v5[13] = v3;
    v10 = sub_1C7301204;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C7301204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11._countAndFlagsBits = *(v10 + 104);
  v13 = *(v10 + 56);
  v12 = *(v10 + 64);
  v14 = *(v10 + 48);
  v11._object = *(v10 + 96);
  SafetyController.sensitiveContent(scrubbedUserPrompt:)(v11);

  OUTLINED_FUNCTION_7_64();
  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73012A8()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_12_55(*(v0 + 32));
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7301338()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7301400;
  OUTLINED_FUNCTION_88_0();

  return SafetyController.sensitiveContent(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C7301400()
{
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t SafetyController.sensitiveContent(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9 = sub_1C754F38C();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 129) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1C73015BC, v6, 0);
}

uint64_t sub_1C73015BC()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 129);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  sub_1C754F1CC();
  sub_1C707DEC4();
  static TextSanitizer.extractCategories(in:queryTokens:categories:)(v4, v3, v2, v5);
  v7 = v6;

  *(v0 + 88) = v7;
  *(v0 + 128) = v1;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_1C73016DC;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_88_0();

  return sub_1C7302A74(v9, v10, v11);
}

uint64_t sub_1C73016DC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[13] = v1;

  v9 = v5[7];
  if (v1)
  {
    v10 = sub_1C73018B4;
  }

  else
  {
    v5[14] = v0;
    v5[15] = v3;
    v10 = sub_1C7301810;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C7301810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11._countAndFlagsBits = *(v10 + 120);
  v13 = *(v10 + 72);
  v12 = *(v10 + 80);
  v14 = *(v10 + 64);
  v11._object = *(v10 + 112);
  SafetyController.sensitiveContent(scrubbedUserPrompt:)(v11);

  OUTLINED_FUNCTION_7_64();
  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73018B4()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_12_55(*(v0 + 48));
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

PhotosIntelligence::UserPromptSensitiveFlags __swiftcall UserPromptSensitiveFlags.init(sensitiveScenes:requiresMetadataSearch:skipTraits:)(PhotosIntelligence::UserPromptSensitiveFlags sensitiveScenes, Swift::Bool requiresMetadataSearch, Swift::Bool skipTraits)
{
  *v3 = sensitiveScenes.sensitiveScenes._rawValue;
  *(v3 + 8) = requiresMetadataSearch;
  *(v3 + 9) = skipTraits;
  sensitiveScenes.requiresMetadataSearch = requiresMetadataSearch;
  return sensitiveScenes;
}

uint64_t UserPromptSensitiveFlags.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75AA3A0);
  v4 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75AA3D0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v5, v6);

  MEMORY[0x1CCA5CD70](0x725470696B73202CLL, 0xEE00203A73746961);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v8);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C7301AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76697469736E6573 && a2 == 0xEF73656E65635365;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C75AA3F0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6961725470696B73 && a2 == 0xEA00000000007374)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C7301BF8(char a1)
{
  if (!a1)
  {
    return 0x76697469736E6573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x6961725470696B73;
}

uint64_t sub_1C7301C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7301AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7301C94(uint64_t a1)
{
  v2 = sub_1C7303298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7301CD0(uint64_t a1)
{
  v2 = sub_1C7303298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserPromptSensitiveFlags.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6F0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v13[1] = *(v1 + 9);
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7303298();
  sub_1C75504FC();
  sub_1C755200C();
  v17 = v10;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF60);
  sub_1C7551D2C();

  if (!v2)
  {
    v15 = 1;
    sub_1C7551CDC();
    v14 = 2;
    sub_1C7551CDC();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t UserPromptSensitiveFlags.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6F8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7303298();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF50);
  sub_1C7551C1C();
  v6 = sub_1C7551BCC();
  v8 = sub_1C7551BCC();
  v9 = OUTLINED_FUNCTION_401();
  v10(v9);
  *a2 = v11;
  *(a2 + 8) = v6 & 1;
  *(a2 + 9) = v8 & 1;
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C7302170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a3, a4);
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75AA430);
  v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1C71C8B80(0xD000000000000010, 0x80000001C75AA410, 0);
  v10 = sub_1C755065C();
  v20[0] = a1;
  v20[1] = a2;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A708);
  sub_1C7303560();
  sub_1C6FB5E8C();
  v11 = sub_1C755143C();
  v13 = [v9 matchesInString:v10 options:0 range:{v11, v12, 15}];

  sub_1C73035C4();
  sub_1C7550B5C();

  v14 = sub_1C6FB6304();

  if (v14)
  {
    sub_1C75504FC();
    v15 = sub_1C754FEEC();
    v16 = sub_1C75511BC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1C6F765A4(a3, a4, v20);
      _os_log_impl(&dword_1C6F5C000, v15, v16, "[findSensitiveFlags] Found sensitive keyword: '%s'", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1CCA5F8E0](v18, -1, -1);
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1C7302524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a3, a4);
  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75AA450);
  v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1C71C8B80(0xD000000000000010, 0x80000001C75AA410, 0);
  v10 = sub_1C755065C();
  v40[0] = a1;
  v40[1] = a2;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A708);
  sub_1C7303560();
  sub_1C6FB5E8C();
  v11 = sub_1C755143C();
  v13 = [v9 matchesInString:v10 options:0 range:{v11, v12}];

  sub_1C73035C4();
  v14 = sub_1C7550B5C();

  result = sub_1C6FB6304();
  if (!result)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16 = result;
  v35 = v9;
  v36 = a3;
  if (result >= 1)
  {
    v17 = 0;
    v18 = v14 & 0xC000000000000001;
    v19 = MEMORY[0x1E69E7CC0];
    v38 = result;
    v39 = v14;
    v37 = v14 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v20 = MEMORY[0x1CCA5DDD0](v17, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v17 + 32);
      }

      v21 = v20;
      [v20 rangeAtIndex_];
      sub_1C75510EC();
      if (v22)
      {
      }

      else
      {
        v23 = sub_1C755098C();
        v24 = MEMORY[0x1CCA5CC40](v23);
        v26 = v25;

        sub_1C75504FC();
        sub_1C75504FC();
        v27 = sub_1C754FEEC();
        v28 = sub_1C75511BC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v40[0] = v30;
          *v29 = 136315394;
          *(v29 + 4) = sub_1C6F765A4(v36, a4, v40);
          *(v29 + 12) = 2080;
          *(v29 + 14) = sub_1C6F765A4(v24, v26, v40);
          _os_log_impl(&dword_1C6F5C000, v27, v28, "[findSensitiveValues] Found sensitive keyword '%s' with value: %s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v30, -1, -1);
          MEMORY[0x1CCA5F8E0](v29, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v19 = v33;
        }

        v31 = *(v19 + 16);
        if (v31 >= *(v19 + 24) >> 1)
        {
          sub_1C6FB1814();
          v19 = v34;
        }

        *(v19 + 16) = v31 + 1;
        v32 = v19 + 16 * v31;
        *(v32 + 32) = v24;
        *(v32 + 40) = v26;
        v16 = v38;
        v14 = v39;
        v18 = v37;
      }

      ++v17;
    }

    while (v16 != v17);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7302A74(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = type metadata accessor for SafetyError(0);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C7302B44, v3, 0);
}

uint64_t sub_1C7302B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  *(v18 + 104) = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v22 = sub_1C75511BC();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = *(v18 + 40);
    v23 = *(v18 + 48);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    a9 = v26;
    *v25 = 136642819;
    *(v18 + 16) = v24;
    *(v18 + 24) = v23;
    sub_1C75504FC();
    v27 = sub_1C755097C();
    v29 = sub_1C6F765A4(v27, v28, &a9);

    *(v25 + 4) = v29;
    OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v30, v31, "User prompt for checking sensitive flags: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0AF98 != -1)
  {
    swift_once();
  }

  v32 = *(v18 + 129);
  v33 = type metadata accessor for TextSanitizer();
  __swift_project_value_buffer(v33, &unk_1EDD28C28);
  *(v18 + 128) = v32;
  v34 = swift_task_alloc();
  *(v18 + 112) = v34;
  *v34 = v18;
  v34[1] = sub_1C7302D38;
  OUTLINED_FUNCTION_88_0();

  return SafetyController.scrub(_:with:useCaseIdentifier:)();
}

uint64_t sub_1C7302D38()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  *(v6 + 120) = v0;

  if (v0)
  {
    v10 = *(v6 + 56);

    return MEMORY[0x1EEE6DFA0](sub_1C7302EA8, v10, 0);
  }

  else
  {

    v11 = *(v8 + 8);

    return v11(v5, v3);
  }
}

uint64_t sub_1C7302EA8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 80);

    v5 = OUTLINED_FUNCTION_57_0();
    sub_1C7303608(v5, v6);
    sub_1C730366C(v3, v4);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C730366C(*(v0 + 88), *(v0 + 72));
      v7 = sub_1C754FEEC();
      v8 = sub_1C755119C();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 72);
      if (v9)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        sub_1C73036D0();
        swift_allocError();
        sub_1C730366C(v10, v13);
        v14 = _swift_stdlib_bridgeErrorToNSError();
        sub_1C7303728(v10);
        *(v11 + 4) = v14;
        *v12 = v14;
        OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v15, v16, "The sensitive deny list rejected the prompt when checking for sensitive flags, ignoring: %@");
        sub_1C6FC15D8(v12);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        sub_1C7303728(v10);
      }

      v22 = *(v0 + 80);
      sub_1C7303728(*(v0 + 88));
      sub_1C7303728(v22);
      v23 = *(v0 + 32);
      sub_1C75504FC();

      v24 = *(v0 + 40);
      v25 = *(v0 + 48);

      v26 = *(v0 + 8);

      return v26(v24, v25);
    }

    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    sub_1C73036D0();
    swift_allocError();
    sub_1C730366C(v17, v19);
    swift_willThrow();
    sub_1C7303728(v17);
    sub_1C7303728(v18);
  }

  OUTLINED_FUNCTION_43();

  return v20();
}

PhotosIntelligence::UserPromptSensitiveFlags __swiftcall SafetyController.sensitiveContent(scrubbedUserPrompt:)(Swift::String scrubbedUserPrompt)
{
  object = scrubbedUserPrompt._object;
  countAndFlagsBits = scrubbedUserPrompt._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1C7302524(scrubbedUserPrompt._countAndFlagsBits, scrubbedUserPrompt._object, 0x76697469736E6573, 0xEF656E6563735F65);
  v6 = sub_1C7302170(countAndFlagsBits, object, 0x617461646174656DLL, 0xEF6863726165735FLL);
  v7 = sub_1C7302170(countAndFlagsBits, object, 0x6172745F70696B73, 0xEB00000000737469) & 1;
  v8 = 256;
  if (!v7)
  {
    v8 = 0;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  sub_1C75504FC();
  sub_1C6FD1EE8();
  result.sensitiveScenes._rawValue = sub_1C7080EAC(v5, v10, 7);
  *v4 = v5;
  *(v4 + 8) = v6 & 1;
  *(v4 + 9) = v7;
  result.requiresMetadataSearch = v9;
  result.skipTraits = HIBYTE(v9);
  return result;
}

unint64_t sub_1C7303298()
{
  result = qword_1EDD09508;
  if (!qword_1EDD09508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09508);
  }

  return result;
}

uint64_t sub_1C73032EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C730332C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserPromptSensitiveFlags.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C730345C()
{
  result = qword_1EC21A700;
  if (!qword_1EC21A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A700);
  }

  return result;
}

unint64_t sub_1C73034B4()
{
  result = qword_1EDD094F8;
  if (!qword_1EDD094F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094F8);
  }

  return result;
}

unint64_t sub_1C730350C()
{
  result = qword_1EDD09500;
  if (!qword_1EDD09500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09500);
  }

  return result;
}

unint64_t sub_1C7303560()
{
  result = qword_1EDD06858;
  if (!qword_1EDD06858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06858);
  }

  return result;
}

unint64_t sub_1C73035C4()
{
  result = qword_1EDD06978;
  if (!qword_1EDD06978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD06978);
  }

  return result;
}

uint64_t sub_1C7303608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C730366C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C73036D0()
{
  result = qword_1EDD0C458[0];
  if (!qword_1EDD0C458[0])
  {
    type metadata accessor for SafetyError(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0C458);
  }

  return result;
}

uint64_t sub_1C7303728(uint64_t a1)
{
  v2 = type metadata accessor for SafetyError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AlchemistServiceInterface.convert(pixelBuffer:configurationPreset:focalLengthPX:bakingSize:saveURL:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_42();
  v11 = v10;
  *(v9 + 368) = v12;
  *(v9 + 376) = a9;
  *(v9 + 352) = v13;
  *(v9 + 360) = v14;
  *(v9 + 896) = v15;
  *(v9 + 336) = v16;
  *(v9 + 344) = v17;
  *(v9 + 328) = v18;
  v19 = sub_1C754E94C();
  *(v9 + 384) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v9 + 392) = v20;
  *(v9 + 400) = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  *(v9 + 408) = OUTLINED_FUNCTION_77();
  v21 = sub_1C754DD2C();
  *(v9 + 416) = v21;
  OUTLINED_FUNCTION_18(v21);
  *(v9 + 424) = v22;
  *(v9 + 432) = OUTLINED_FUNCTION_77();
  v23 = sub_1C75519CC();
  *(v9 + 440) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v9 + 448) = v24;
  *(v9 + 456) = OUTLINED_FUNCTION_77();
  v25 = sub_1C754F66C();
  *(v9 + 464) = v25;
  OUTLINED_FUNCTION_18(v25);
  *(v9 + 472) = v26;
  *(v9 + 480) = OUTLINED_FUNCTION_77();
  v27 = sub_1C754FE9C();
  *(v9 + 488) = v27;
  OUTLINED_FUNCTION_18(v27);
  *(v9 + 496) = v28;
  *(v9 + 504) = OUTLINED_FUNCTION_281_1();
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  v29 = sub_1C754E86C();
  *(v9 + 536) = v29;
  OUTLINED_FUNCTION_18(v29);
  *(v9 + 544) = v30;
  *(v9 + 552) = OUTLINED_FUNCTION_77();
  v31 = sub_1C754E8FC();
  *(v9 + 560) = v31;
  OUTLINED_FUNCTION_18(v31);
  *(v9 + 568) = v32;
  *(v9 + 576) = OUTLINED_FUNCTION_77();
  v33 = sub_1C754E82C();
  *(v9 + 584) = v33;
  OUTLINED_FUNCTION_18(v33);
  *(v9 + 592) = v34;
  *(v9 + 600) = OUTLINED_FUNCTION_77();
  v35 = sub_1C754E5AC();
  *(v9 + 608) = v35;
  OUTLINED_FUNCTION_18(v35);
  *(v9 + 616) = v36;
  *(v9 + 624) = OUTLINED_FUNCTION_77();
  v37 = sub_1C754FE4C();
  *(v9 + 632) = v37;
  OUTLINED_FUNCTION_18(v37);
  *(v9 + 640) = v38;
  *(v9 + 648) = OUTLINED_FUNCTION_281_1();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 897) = *v11;
  v39 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v39, v40, v41);
}

void sub_1C7303BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_60_19();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88();
  }

  v39 = sub_1C754FE8C();
  *(v36 + 720) = __swift_project_value_buffer(v39, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v40 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v41 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_55_25(v41);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v43, v44, v42, "Generating", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v45 = *(v36 + 712);
  v46 = *(v36 + 704);
  v47 = *(v36 + 640);
  v48 = *(v36 + 632);

  v49 = *(v47 + 16);
  *(v36 + 728) = v49;
  *(v36 + 736) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49(v46, v45, v48);
  *(v36 + 744) = sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v50 = OUTLINED_FUNCTION_28_28();
  *(v36 + 752) = v50;
  *(v36 + 760) = *(v47 + 8);
  *(v36 + 768) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51 = OUTLINED_FUNCTION_49_3();
  v52(v51);
  v53 = MTLCreateSystemDefaultDevice();
  *(v36 + 776) = v53;
  if (v53)
  {
    v141 = v50;
    v54 = *(v36 + 624);
    v55 = *(v36 + 616);
    v56 = *(v36 + 608);
    v57 = *(v36 + 592);
    v58 = *(v36 + 584);
    v143 = *(v36 + 600);
    v145 = *(v36 + 336);
    sub_1C754E59C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A768);
    v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A770) - 8);
    v60 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
    v61 = swift_allocObject();
    a18 = 2;
    *(v61 + 16) = xmmword_1C755BAB0;
    v62 = (v61 + v60 + v59[14]);
    v63 = *(v57 + 104);
    v63();
    v62[3] = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    (*(v55 + 16))(boxed_opaque_existential_0, v54, v56);
    sub_1C730A980(&qword_1EC215358, MEMORY[0x1E698A848]);
    v65 = sub_1C75504DC();
    (v63)(v143, *MEMORY[0x1E698A810], v58);
    v66 = sub_1C754E78C();
    *(v36 + 184) = v66;
    v67 = __swift_allocate_boxed_opaque_existential_0((v36 + 160));
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x1E698A758], v66);
    sub_1C6F9ED18((v36 + 160), (v36 + 192));
    swift_isUniquelyReferenced_nonNull_native();
    a24 = v65;
    sub_1C6FC7E54();
    v68 = a24;
    v69 = *(v57 + 8);
    v70 = OUTLINED_FUNCTION_55();
    v69(v70);
    if ((v145 & 0x100000000) != 0)
    {
      if (qword_1EC214000 != -1)
      {
        OUTLINED_FUNCTION_0_136();
        swift_once();
      }

      v76 = sub_1C754FF1C();
      __swift_project_value_buffer(v76, qword_1EC21A718);
      v77 = sub_1C754FEEC();
      v78 = sub_1C755117C();
      if (os_log_type_enabled(v77, v78))
      {
        OUTLINED_FUNCTION_96_0();
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_1C6F5C000, v77, v78, "Focal length not defined in file", v79, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {
      v71 = *(v36 + 336);
      (v63)(*(v36 + 600), *MEMORY[0x1E698A820], *(v36 + 584));
      *(v36 + 280) = MEMORY[0x1E69E6448];
      *(v36 + 256) = v71;
      sub_1C6F9ED18((v36 + 256), (v36 + 288));
      swift_isUniquelyReferenced_nonNull_native();
      a24 = v68;
      sub_1C6FC7E54();
      v68 = a24;
      v72 = OUTLINED_FUNCTION_55();
      v69(v72);
    }

    *(v36 + 784) = v68;
    sub_1C754E85C();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    swift_unknownObjectRetain();

    *(v36 + 792) = sub_1C754E84C();
    v90 = *(v36 + 897);
    v148 = *(v36 + 896);
    v91 = *(v36 + 328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A778);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    v93 = *MEMORY[0x1E695F948];
    *(inited + 32) = *MEMORY[0x1E695F948];
    *(inited + 64) = MEMORY[0x1E69E6370];
    *(inited + 40) = 1;
    type metadata accessor for CIImageOption(0);
    sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption);
    v94 = v93;
    v95 = OUTLINED_FUNCTION_62_19();
    objc_allocWithZone(MEMORY[0x1E695F658]);
    v96 = sub_1C730A064(v91, v95);
    *(v36 + 800) = v96;
    LOBYTE(a24) = v90;
    sub_1C7308290(&a24);
    if (v148)
    {
      goto LABEL_20;
    }

    v120 = *(v36 + 344);
    v121 = *(v36 + 352);
    if (v120 != 0.0)
    {
      v122 = *(v36 + 352);
      if (v121 != 0.0)
      {
        v123 = *MEMORY[0x1E69BDDB0] != v120;
        if (*(MEMORY[0x1E69BDDB0] + 8) != v121)
        {
          v123 = 1;
        }

        if (v120 > 64.0 && v123 && v121 > 64.0)
        {
          if (v120 <= -1.0)
          {
            __break(1u);
          }

          else if (v120 < 4294967300.0)
          {
            if ((~*&v121 & 0x7FF0000000000000) != 0 && (*&v120 & 0x7FF0000000000000) != 0x7FF0000000000000)
            {
              if (v121 > -1.0)
              {
                if (v121 < 4294967300.0)
                {
                  v124 = *(v36 + 552);
                  v125 = *(v36 + 544);
                  v126 = *(v36 + 536);
                  *v124 = v120;
                  v124[1] = v122;
                  (*(v125 + 104))(v124, *MEMORY[0x1E698A898], v126);
                  v127 = sub_1C754E8DC();
                  sub_1C754E87C();
                  v127(v36 + 224, 0);
LABEL_20:
                  v149 = (*MEMORY[0x1E698A870] + MEMORY[0x1E698A870]);
                  v97 = swift_task_alloc();
                  *(v36 + 808) = v97;
                  *v97 = v36;
                  v97[1] = sub_1C730467C;
                  OUTLINED_FUNCTION_38_4();

                  v101(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, 1, 2, a19, v141, v143, v145, v149, a24, a25, a26, a27, a28);
                  return;
                }

LABEL_47:
                __break(1u);
                return;
              }

LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          __break(1u);
          goto LABEL_45;
        }
      }
    }

    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    v128 = swift_allocError();
    *v129 = v120;
    *(v129 + 8) = v121;
    *(v129 + 16) = 1;
    swift_willThrow();

    v130 = OUTLINED_FUNCTION_61_0();
    v131(v130);
    *(v36 + 320) = v128;
    v80 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    OUTLINED_FUNCTION_17_62();
    if (swift_dynamicCast())
    {
      v81 = OUTLINED_FUNCTION_16_51();
      if (v82(v81) == *MEMORY[0x1E698A8D8])
      {

        sub_1C730A2C4();
        OUTLINED_FUNCTION_9_10();
        v83 = swift_allocError();
        OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v83, v84);
        v147 = v85;
        swift_willThrow();

        swift_unknownObjectRelease();
        v86 = OUTLINED_FUNCTION_15_1();
        v87(v86);

        goto LABEL_25;
      }

      v106 = OUTLINED_FUNCTION_15_1();
      v107(v106);
      swift_unknownObjectRelease();

      v108 = OUTLINED_FUNCTION_40_35();
      v109(v108);
    }

    else
    {
      v88 = OUTLINED_FUNCTION_5_70();
      v89(v88);
      swift_unknownObjectRelease();
    }

    v147 = v128;
    goto LABEL_25;
  }

  sub_1C730A2C4();
  OUTLINED_FUNCTION_9_10();
  v73 = swift_allocError();
  OUTLINED_FUNCTION_6_77(xmmword_1C7569120, v73, v74);
  v147 = v75;
  swift_willThrow();

LABEL_25:
  OUTLINED_FUNCTION_1_103();
  v132 = v111;
  v133 = v110;
  v134 = *(v36 + 552);
  v135 = *(v36 + 528);
  v136 = *(v36 + 520);
  v137 = *(v36 + 512);
  v138 = *(v36 + 504);
  v139 = *(v36 + 480);
  v140 = *(v36 + 456);
  v142 = *(v36 + 432);
  v144 = *(v36 + 408);
  v146 = *(v36 + 400);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_38_4();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, v132, v133, v134, v135, v136, v137, v138, v139, v140, a18, a19, v142, v144, v146, v147, a24, a25, a26, a27, a28);
}

uint64_t sub_1C730467C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *(v1 + 816) = v3;
  *(v1 + 824) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73047A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t), void (*a19)(void, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_60_19();
  sub_1C754FE6C();
  OUTLINED_FUNCTION_51_20();
  sub_1C755130C();
  v30 = OUTLINED_FUNCTION_42_29();
  v31 = MEMORY[0x1E69E93E8];
  if (v30)
  {

    sub_1C754FEDC();

    v32 = OUTLINED_FUNCTION_15_1();
    if (v33(v32) == *v31)
    {
      v34 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v29 + 496) + 8))(*(v29 + 528), *(v29 + 488));
      v34 = "";
    }

    OUTLINED_FUNCTION_96_0();
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v35);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v36, v37, v38, v39, v40, v34);
    v41 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v41);
  }

  v42 = *(v29 + 760);
  v43 = *(v29 + 696);
  v44 = *(v29 + 632);

  v42(v43, v44);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v45 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v46 = swift_slowAlloc();
    v47 = OUTLINED_FUNCTION_55_25(v46);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v48, v49, v47, "Analyzing", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v176 = *(v29 + 824);
  v171 = *(v29 + 768);
  v172 = *(v29 + 816);
  v50 = *(v29 + 760);
  v51 = *(v29 + 728);
  v52 = *(v29 + 704);
  v53 = *(v29 + 688);
  v54 = *(v29 + 632);
  v55 = *(v29 + 472);
  v173 = *(v29 + 480);
  v174 = *(v29 + 464);

  v51(v52, v53, v54);
  OUTLINED_FUNCTION_41_33();
  *(v29 + 832) = sub_1C754FEBC();
  v56 = OUTLINED_FUNCTION_323();
  v50(v56);
  sub_1C754F84C();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v57 = v172;
  *(v29 + 840) = sub_1C754F75C();
  v59 = *(v55 + 104);
  v58 = v55 + 104;
  v59(v173, *MEMORY[0x1E69C1B78], v174);
  sub_1C754F69C();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v29 + 848) = sub_1C754F67C();
  sub_1C754F68C();
  if (v176)
  {
    v60 = *(v29 + 816);
    v61 = *(v29 + 800);
    (*(*(v29 + 568) + 8))(*(v29 + 576), *(v29 + 560));

    *(v29 + 320) = v176;
    v62 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    OUTLINED_FUNCTION_17_62();
    if (swift_dynamicCast())
    {
      v63 = OUTLINED_FUNCTION_16_51();
      v64(v63);
      OUTLINED_FUNCTION_15_59();
      if (v65)
      {

        sub_1C730A2C4();
        OUTLINED_FUNCTION_9_10();
        v66 = swift_allocError();
        OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v66, v67);
        OUTLINED_FUNCTION_66_20(v68);

        swift_unknownObjectRelease();
        v80 = OUTLINED_FUNCTION_9_70();
      }

      else
      {
        v78 = OUTLINED_FUNCTION_9_70();
        v79(v78);
        swift_unknownObjectRelease();

        v80 = OUTLINED_FUNCTION_40_35();
      }

      v81(v80);
    }

    else
    {
      v76 = OUTLINED_FUNCTION_5_70();
      v77(v76);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_1_103();
    OUTLINED_FUNCTION_24_33();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_38_4();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v171, v172, v173, v174, v176, a25, a26, a27, a28);
  }

  else
  {
    sub_1C754FE6C();
    OUTLINED_FUNCTION_59_21();
    sub_1C754FEAC();
    v69 = sub_1C755130C();
    v70 = sub_1C755144C();
    v71 = MEMORY[0x1E69E93E8];
    if (v70)
    {
      v72 = *(v29 + 520);
      v73 = *(v29 + 488);
      v74 = *(v29 + 496);

      sub_1C754FEDC();

      if ((*(v74 + 88))(v72, v73) == *v71)
      {
        v75 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v29 + 496) + 8))(*(v29 + 520), *(v29 + 488));
        v75 = "";
      }

      OUTLINED_FUNCTION_96_0();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v91);
      v92 = sub_1C754FE2C();
      OUTLINED_FUNCTION_50_24(&dword_1C6F5C000, 0, v69, v92, "Analyzing", v75);
      v93 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v93);
    }

    v94 = *(v29 + 760);
    v95 = *(v29 + 680);
    v96 = *(v29 + 632);

    v94(v95, v96);
    v97 = [objc_opt_self() standardUserDefaults];
    v98 = sub_1C755065C();
    v99 = [v97 integerForKey_];
    *(v29 + 856) = v99;

    if (v99 < 1)
    {
      v122 = *(v29 + 408);
      v123 = *(v29 + 416);
      sub_1C71072FC(*(v29 + 360), v122);
      if (__swift_getEnumTagSinglePayload(v122, 1, v123) == 1)
      {
        OUTLINED_FUNCTION_21_48();

        swift_unknownObjectRelease();
        (*(v58 + 8))(v172, v71);
        v124 = OUTLINED_FUNCTION_43_30();
        v125(v124);
        sub_1C7030CDC(0, &qword_1EC215BD8);
      }

      else
      {
        v134 = OUTLINED_FUNCTION_46_26();
        v135(v134);
        sub_1C754FE6C();
        sub_1C754FE1C();
        v136 = sub_1C754FE6C();
        sub_1C755131C();
        if (OUTLINED_FUNCTION_42_29())
        {
          OUTLINED_FUNCTION_96_0();
          v137 = swift_slowAlloc();
          v138 = OUTLINED_FUNCTION_55_25(v137);
          OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v139, v140, v138, "Persisting", "");
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v173 = *(v29 + 768);
        v141 = *(v29 + 760);
        v142 = *(v29 + 728);
        v143 = *(v29 + 704);
        v144 = *(v29 + 656);
        v145 = *(v29 + 632);

        v142(v143, v144, v145);
        OUTLINED_FUNCTION_41_33();
        sub_1C754FEBC();

        v146 = OUTLINED_FUNCTION_323();
        v141(v146);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215AF8);
        inited = swift_initStackObject();
        v148 = MEMORY[0x1E69ADA00];
        *(inited + 16) = xmmword_1C755BAB0;
        v149 = *v148;
        *(inited + 32) = *v148;
        v150 = *MEMORY[0x1E69AD9E8];
        type metadata accessor for MXISerializeCompressionAlgorithm(0);
        *(inited + 64) = v151;
        *(inited + 40) = v150;
        type metadata accessor for MXISerializeOption(0);
        OUTLINED_FUNCTION_27_37();
        sub_1C730A980(v152, v153);
        v154 = v149;
        v155 = v150;
        sub_1C75504DC();
        sub_1C754F7EC();

        sub_1C754FE6C();
        OUTLINED_FUNCTION_59_21();
        sub_1C754FEAC();
        v156 = sub_1C755130C();
        if (sub_1C755144C())
        {
          LODWORD(v173) = v156;
          v158 = *(v29 + 496);
          v157 = *(v29 + 504);
          v159 = *(v29 + 488);

          sub_1C754FEDC();

          if ((*(v158 + 88))(v157, v159) != *MEMORY[0x1E69E93E8])
          {
            (*(*(v29 + 496) + 8))(*(v29 + 504), *(v29 + 488));
          }

          OUTLINED_FUNCTION_49_21();
          v165 = *(v29 + 800);
          OUTLINED_FUNCTION_30_34();
          v166 = *(v29 + 616);
          v174 = *(v29 + 608);
          v176 = *(v29 + 624);
          v167 = *(v29 + 568);
          v171 = *(v29 + 560);
          v172 = *(v29 + 576);
          v168 = *(v29 + 424);
          a15 = *(v29 + 432);
          a13 = *(v29 + 416);
          OUTLINED_FUNCTION_96_0();
          *swift_slowAlloc() = 0;
          v169 = sub_1C754FE2C();
          OUTLINED_FUNCTION_65_20(&dword_1C6F5C000, v170, v173, v169, "Persisting");
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          swift_unknownObjectRelease();
          a18(v157, a17);
          (*(v168 + 8))(a15, a13);
          (*(v167 + 8))(v172, v171);
          (*(v166 + 8))(v176, v174);
        }

        else
        {
          OUTLINED_FUNCTION_19_56();
          v160 = *(v29 + 616);
          v174 = *(v29 + 608);
          v176 = v161;
          v162 = *(v29 + 568);
          v172 = *(v29 + 560);
          v173 = *(v29 + 576);
          v163 = *(v29 + 424);
          a14 = *(v29 + 416);
          a15 = *(v29 + 432);

          swift_unknownObjectRelease();
          a19(a18, a17);
          (*(v163 + 8))(a15, a14);
          (*(v162 + 8))(v173, v172);
          (*(v160 + 8))(v176, v174);
        }
      }

      OUTLINED_FUNCTION_11_57();

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_38_4();

      return v128(v126, v127, v128, v129, v130, v131, v132, v133, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v171, v172, v173, v174, v176, a25, a26, a27, a28);
    }

    else
    {
      if (qword_1EC214000 != -1)
      {
        OUTLINED_FUNCTION_0_136();
        swift_once();
      }

      v100 = sub_1C754FF1C();
      *(v29 + 864) = __swift_project_value_buffer(v100, qword_1EC21A718);
      v101 = sub_1C754FEEC();
      v102 = sub_1C755119C();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 134217984;
        *(v103 + 4) = v99;
        _os_log_impl(&dword_1C6F5C000, v101, v102, "PhotosAlchemistGenerationArtificialDelay user default set, start waiting for %lds", v103, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C754FE6C();
      sub_1C754FE1C();
      v104 = sub_1C754FE6C();
      v105 = sub_1C755131C();
      if (sub_1C755144C())
      {
        OUTLINED_FUNCTION_96_0();
        v106 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v106);
        v107 = sub_1C754FE2C();
        OUTLINED_FUNCTION_50_24(&dword_1C6F5C000, v104, v105, v107, "ArtificialDelay", "");
        v108 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v108);
      }

      v109 = *(v29 + 760);
      v110 = *(v29 + 728);
      v175 = *(v29 + 456);

      v111 = OUTLINED_FUNCTION_15_1();
      v110(v111);
      OUTLINED_FUNCTION_41_33();
      *(v29 + 872) = sub_1C754FEBC();
      v112 = OUTLINED_FUNCTION_55();
      v109(v112);
      sub_1C7307B7C(v99);
      sub_1C7551E7C();
      v113 = swift_task_alloc();
      *(v29 + 880) = v113;
      *v113 = v29;
      v113[1] = sub_1C7305664;
      OUTLINED_FUNCTION_38_4();

      return v119(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v171, v172, v173, v175, sub_1C730A318, a25, a26, a27, a28);
    }
  }
}

uint64_t sub_1C7305664()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 888) = v0;

  (*(v2[56] + 8))(v2[57], v2[55]);
  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t), void (*a19)(void, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_60_19();
  sub_1C754FE6C();
  OUTLINED_FUNCTION_51_20();
  sub_1C755130C();
  v31 = OUTLINED_FUNCTION_42_29();
  v32 = MEMORY[0x1E69E93E8];
  if (v31)
  {

    sub_1C754FEDC();

    v33 = OUTLINED_FUNCTION_15_1();
    if (v34(v33) == *v32)
    {
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v29 + 496) + 8))(*(v29 + 512), *(v29 + 488));
      v35 = "";
    }

    OUTLINED_FUNCTION_96_0();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v36);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v37, v38, v39, v40, v41, v35);
    v42 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v42);
  }

  v43 = *(v29 + 760);

  v44 = OUTLINED_FUNCTION_49_3();
  v43(v44);
  v45 = sub_1C754FEEC();
  v46 = sub_1C755119C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v29 + 856);
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v47;
    _os_log_impl(&dword_1C6F5C000, v45, v46, "PhotosAlchemistGenerationArtificialDelay user default set, finished waiting for %lds", v48, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v49 = *(v29 + 888);
  v50 = *(v29 + 408);
  v51 = *(v29 + 416);
  sub_1C71072FC(*(v29 + 360), v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    OUTLINED_FUNCTION_21_48();

    swift_unknownObjectRelease();
    (*(v30 + 8))(a21, v32);
    v52 = OUTLINED_FUNCTION_43_30();
    v53(v52);
    sub_1C7030CDC(a24, &qword_1EC215BD8);
LABEL_27:
    OUTLINED_FUNCTION_11_57();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_38_4();

    return v121(v119, v120, v121, v122, v123, v124, v125, v126, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  v130 = v49;
  v54 = OUTLINED_FUNCTION_46_26();
  v55(v54);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v56 = sub_1C754FE6C();
  v57 = sub_1C755131C();
  if (sub_1C755144C())
  {
    OUTLINED_FUNCTION_96_0();
    v58 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v58);
    v59 = sub_1C754FE2C();
    OUTLINED_FUNCTION_50_24(&dword_1C6F5C000, v56, v57, v59, "Persisting", "");
    v60 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v60);
  }

  v61 = *(v29 + 760);
  v62 = *(v29 + 728);
  v63 = *(v29 + 656);
  v64 = *(v29 + 632);

  v65 = OUTLINED_FUNCTION_323();
  v62(v65);
  OUTLINED_FUNCTION_41_33();
  v66 = sub_1C754FEBC();

  v61(v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215AF8);
  inited = swift_initStackObject();
  v68 = MEMORY[0x1E69ADA00];
  *(inited + 16) = xmmword_1C755BAB0;
  v69 = *v68;
  *(inited + 32) = *v68;
  v70 = *MEMORY[0x1E69AD9E8];
  type metadata accessor for MXISerializeCompressionAlgorithm(0);
  *(inited + 64) = v71;
  *(inited + 40) = v70;
  type metadata accessor for MXISerializeOption(0);
  OUTLINED_FUNCTION_27_37();
  sub_1C730A980(v72, v73);
  v74 = v69;
  v75 = v70;
  OUTLINED_FUNCTION_62_19();
  sub_1C754F7EC();
  if (!v130)
  {

    sub_1C754FE6C();
    OUTLINED_FUNCTION_59_21();
    sub_1C754FEAC();
    v88 = sub_1C755130C();
    if (sub_1C755144C())
    {
      v89 = *(v29 + 496);
      v90 = *(v29 + 504);
      v91 = *(v29 + 488);

      sub_1C754FEDC();
      a23 = v66;

      if ((*(v89 + 88))(v90, v91) != *MEMORY[0x1E69E93E8])
      {
        (*(*(v29 + 496) + 8))(*(v29 + 504), *(v29 + 488));
      }

      OUTLINED_FUNCTION_49_21();
      v113 = *(v29 + 800);
      OUTLINED_FUNCTION_30_34();
      a24 = *(v29 + 624);
      v114 = *(v29 + 616);
      a21 = *(v29 + 576);
      a22 = *(v29 + 608);
      v115 = *(v29 + 568);
      a20 = *(v29 + 560);
      v116 = *(v29 + 424);
      a15 = *(v29 + 432);
      a13 = *(v29 + 416);
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      v117 = sub_1C754FE2C();
      OUTLINED_FUNCTION_65_20(&dword_1C6F5C000, v118, v88, v117, "Persisting");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      swift_unknownObjectRelease();
      a18(v90, a17);
      (*(v116 + 8))(a15, a13);
      (*(v115 + 8))(a21, a20);
      (*(v114 + 8))(a24, a22);
    }

    else
    {
      OUTLINED_FUNCTION_19_56();
      v94 = *(v29 + 616);
      a23 = *(v29 + 608);
      a24 = v95;
      v96 = *(v29 + 568);
      a21 = *(v29 + 560);
      a22 = *(v29 + 576);
      v97 = *(v29 + 424);
      a14 = *(v29 + 416);
      a15 = *(v29 + 432);

      swift_unknownObjectRelease();
      a19(a18, a17);
      (*(v97 + 8))(a15, a14);
      (*(v96 + 8))(a22, a21);
      (*(v94 + 8))(a24, a23);
    }

    goto LABEL_27;
  }

  v129 = *(v29 + 576);
  v76 = *(v29 + 568);
  v127 = *(v29 + 816);
  v128 = *(v29 + 560);
  v78 = *(v29 + 424);
  v77 = *(v29 + 432);
  v79 = *(v29 + 416);

  (*(v78 + 8))(v77, v79);
  (*(v76 + 8))(v129, v128);
  *(v29 + 320) = v130;
  v80 = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_17_62();
  if (swift_dynamicCast())
  {
    v81 = OUTLINED_FUNCTION_16_51();
    if (v82(v81) == *MEMORY[0x1E698A8D8])
    {

      sub_1C730A2C4();
      OUTLINED_FUNCTION_9_10();
      v83 = swift_allocError();
      OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v83, v84);
      OUTLINED_FUNCTION_66_20(v85);

      swift_unknownObjectRelease();
      v86 = OUTLINED_FUNCTION_55();
      v87(v86);
    }

    else
    {
      v99 = *(v29 + 392);
      v100 = *(v29 + 400);
      v101 = *(v29 + 384);
      v102 = OUTLINED_FUNCTION_55();
      v103(v102);
      swift_unknownObjectRelease();

      (*(v99 + 8))(v100, v101);
    }
  }

  else
  {
    v92 = OUTLINED_FUNCTION_5_70();
    v93(v92);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_24_33();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_38_4();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v127, v128, v129, v66, v130, a25, a26, a27, a28);
}

uint64_t sub_1C73061D8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 888);
  OUTLINED_FUNCTION_53_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_17_62();
  if (swift_dynamicCast())
  {
    v6 = OUTLINED_FUNCTION_16_51();
    v7(v6);
    OUTLINED_FUNCTION_15_59();
    if (v8)
    {

      sub_1C730A2C4();
      OUTLINED_FUNCTION_9_10();
      v9 = swift_allocError();
      OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v9, v10);
      OUTLINED_FUNCTION_66_20(v11);

      swift_unknownObjectRelease();
      v16 = OUTLINED_FUNCTION_9_70();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_9_70();
      v15(v14);
      swift_unknownObjectRelease();

      v16 = OUTLINED_FUNCTION_40_35();
    }

    v17(v16);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_70();
    v13(v12);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_25_36();

  OUTLINED_FUNCTION_43();

  return v18();
}

uint64_t sub_1C730648C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 824);
  OUTLINED_FUNCTION_53_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_17_62();
  if (swift_dynamicCast())
  {
    v5 = OUTLINED_FUNCTION_16_51();
    v6(v5);
    OUTLINED_FUNCTION_15_59();
    if (v7)
    {

      sub_1C730A2C4();
      OUTLINED_FUNCTION_9_10();
      v8 = swift_allocError();
      OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v8, v9);
      OUTLINED_FUNCTION_66_20(v10);

      swift_unknownObjectRelease();
      v15 = OUTLINED_FUNCTION_9_70();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_9_70();
      v14(v13);
      swift_unknownObjectRelease();

      v15 = OUTLINED_FUNCTION_40_35();
    }

    v16(v15);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_70();
    v12(v11);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_25_36();

  OUTLINED_FUNCTION_43();

  return v17();
}

uint64_t static AlchemistServiceInterface.getMXIOutputURL(assetUUID:)(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  if (qword_1EC214010 != -1)
  {
    OUTLINED_FUNCTION_26_39();
    swift_once();
  }

  v6 = sub_1C754DD2C();
  __swift_project_value_buffer(v6, qword_1EC21A748);
  sub_1C754DCDC();
  v7 = sub_1C755065C();

  v8 = [v5 fileExistsAtPath_];

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = [v4 defaultManager];
  v10 = sub_1C754DC8C();
  v15[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v15];

  if (v11)
  {
    v12 = v15[0];
LABEL_6:
    v15[0] = a1;
    v15[1] = a2;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](6912109, 0xE300000000000000);
    sub_1C754DC9C();
  }

  v14 = v15[0];
  sub_1C754DBEC();

  return swift_willThrow();
}

uint64_t AlchemistServiceInterface.convert(asset:saveURL:configurationPreset:bakingSize:eventHandler:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 128) = v3;
  *(v0 + 136) = v4;
  *(v0 + 90) = v5;
  *(v0 + 112) = v6;
  *(v0 + 120) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  v10 = sub_1C754FE9C();
  *(v0 + 144) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 152) = v11;
  *(v0 + 160) = OUTLINED_FUNCTION_77();
  v12 = sub_1C754DD2C();
  *(v0 + 168) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 176) = v13;
  *(v0 + 184) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754FE4C();
  *(v0 + 192) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v0 + 200) = v15;
  *(v0 + 208) = OUTLINED_FUNCTION_281_1();
  *(v0 + 216) = swift_task_alloc();
  *(v0 + 224) = swift_task_alloc();
  *(v0 + 91) = *v2;
  v16 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C7306A70()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88();
  }

  v1 = sub_1C754FE8C();
  v0[29] = __swift_project_value_buffer(v1, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v2 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v3 = swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_55_25(v3);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v5, v6, v4, "RequestingImage", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v7 = v0[25];

  v8 = OUTLINED_FUNCTION_45_26();
  v9(v8);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v0[30] = OUTLINED_FUNCTION_28_28();
  v0[31] = *(v7 + 8);
  v0[32] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_49_3();
  v11(v10);
  type metadata accessor for Spatial3DAssetResourceUtils();
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_1C7306C2C;

  return static Spatial3DAssetResourceUtils.requestFullSizeImageURL(for:progressHandler:cancellationHandler:)();
}

uint64_t sub_1C7306C2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 272) = v0;

  if (v0)
  {
    v5 = sub_1C7306F20;
  }

  else
  {
    v5 = sub_1C7306D30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C7306D30()
{
  v19 = v1;
  sub_1C754FE6C();
  OUTLINED_FUNCTION_51_20();
  sub_1C755130C();
  if (OUTLINED_FUNCTION_42_29())
  {

    sub_1C754FEDC();

    v2 = OUTLINED_FUNCTION_15_1();
    if (v3(v2) == *MEMORY[0x1E69E93E8])
    {
      v4 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));
      v4 = "";
    }

    OUTLINED_FUNCTION_96_0();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v5);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v6, v7, v8, v9, v10, v4);
    v11 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v11);
  }

  v12 = *(v1 + 248);
  v13 = *(v1 + 91);
  v14 = *(v1 + 208);
  v15 = *(v1 + 192);

  v12(v14, v15);
  *(v1 + 280) = type metadata accessor for SpatialAnalyticsUtils();
  *(v1 + 288) = swift_initStackObject();
  *(v1 + 296) = sub_1C74A6724();
  v18 = 0;
  sub_1C74A62B0(&v18);
  *(v1 + 89) = v13;
  v16 = swift_task_alloc();
  *(v1 + 304) = v16;
  *v16 = v1;
  v16[1] = sub_1C7306FB0;

  return AlchemistServiceInterface.convert(imageURL:saveURL:configurationPreset:bakingSize:eventHandler:)();
}

uint64_t sub_1C7306F20()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_64_15();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7306FB0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 312) = v0;

  if (!v0)
  {
    *(v5 + 320) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73070B8()
{
  v10 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 96);
  v5 = *(v0 + 320);
  static SpatialAnalyticsUtils.sendGenerationEvent(asset:mxiScene:spatialType:)();

  v9 = 0;
  sub_1C74A62F4(&v9, v4);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_116();
  v7 = *(v0 + 320);

  return v6(v7);
}

uint64_t sub_1C73071E4()
{
  OUTLINED_FUNCTION_123();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_64_15();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t AlchemistServiceInterface.convert(imageData:saveURL:configurationPreset:bakingSize:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_42();
  v11 = v10;
  *(v9 + 56) = v12;
  *(v9 + 64) = a9;
  *(v9 + 185) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = v15;
  *(v9 + 24) = v16;
  *(v9 + 32) = v17;
  *(v9 + 16) = v18;
  v19 = sub_1C754FE9C();
  *(v9 + 72) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v9 + 80) = v20;
  *(v9 + 88) = OUTLINED_FUNCTION_77();
  v21 = sub_1C754FE4C();
  *(v9 + 96) = v21;
  OUTLINED_FUNCTION_18(v21);
  *(v9 + 104) = v22;
  *(v9 + 112) = OUTLINED_FUNCTION_281_1();
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 186) = *v11;
  v23 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v23, v24, v25);
}

uint64_t sub_1C73073BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88();
  }

  v10 = sub_1C754FE8C();
  __swift_project_value_buffer(v10, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v11 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v12);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v13, v14, v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v19);
  }

  v20 = *(v9 + 104);

  v21 = OUTLINED_FUNCTION_45_26();
  v22(v21);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v9 + 136) = OUTLINED_FUNCTION_28_28();
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_40_35();
  v23(v24);
  v25 = sub_1C754DDCC();
  v26 = CGImageSourceCreateWithData(v25, 0);
  *(v9 + 144) = v26;

  if (v26)
  {
    v27 = sub_1C7309210(v26, 0);
    *(v9 + 152) = v27;
    v31 = v27;
    Width = CVPixelBufferGetWidth(v27);
    Height = CVPixelBufferGetHeight(v31);
    AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(v34, v26, Width, Height);
    v36 = v35;
    v37 = sub_1C754FE6C();
    sub_1C754FEAC();
    v38 = sub_1C755130C();
    v39 = sub_1C755144C();
    if (v39)
    {

      sub_1C754FEDC();

      v40 = OUTLINED_FUNCTION_61_0();
      if (v41(v40) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v9 + 80) + 8))(*(v9 + 88), *(v9 + 72));
        v42 = "";
      }

      OUTLINED_FUNCTION_96_0();
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v37, v38, v44, "Fetching", v42, v43, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v45 = *(v9 + 186);
    v46 = *(v9 + 112);
    v47 = *(v9 + 96);
    v48 = *(v9 + 185);

    (v23)(v46, v47);
    *(v9 + 184) = v45;
    v49 = swift_task_alloc();
    *(v9 + 160) = v49;
    *v49 = v9;
    v49[1] = sub_1C73077E4;
    v50 = *(v9 + 56);
    v51 = *(v9 + 40);
    v52 = *(v9 + 48);
    v53 = *(v9 + 32);

    return AlchemistServiceInterface.convert(pixelBuffer:configurationPreset:focalLengthPX:bakingSize:saveURL:eventHandler:)(v31, v9 + 184, v36 | ((HIDWORD(v36) & 1) << 32), v51, v52, v48 & 1, v53, v50, a9);
  }

  else
  {
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v28 = 0xD00000000000001FLL;
    *(v28 + 8) = 0x80000001C75AA500;
    *(v28 + 16) = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v29();
  }
}

uint64_t sub_1C73077E4()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73078EC()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_116();
  v3 = *(v0 + 176);

  return v2(v3);
}

uint64_t sub_1C7307994()
{
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_43();

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlchemistServiceInterface.prewarm()()
{
  if (MTLCreateSystemDefaultDevice())
  {
    sub_1C754E85C();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1C754E84C();
    if (!v0)
    {

      if (qword_1EC214000 != -1)
      {
        OUTLINED_FUNCTION_0_136();
        swift_once();
      }

      v2 = sub_1C754FF1C();
      __swift_project_value_buffer(v2, qword_1EC21A718);
      v3 = sub_1C754FEEC();
      v4 = sub_1C755117C();
      if (os_log_type_enabled(v3, v4))
      {
        OUTLINED_FUNCTION_96_0();
        v5 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v5);
        _os_log_impl(&dword_1C6F5C000, v3, v4, "Prewarmed ALCService.", v1, 2u);
        v6 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v6);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_6_77(xmmword_1C7569120, v7, v8);
    swift_willThrow();
  }
}

uint64_t sub_1C7307BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_19;
  }

  v6 = a1 == 1798647344 && a2 == 0xE400000000000000;
  if (v6 || (sub_1C7551DBC() & 1) != 0)
  {
    v7 = MEMORY[0x1E698A8B8];
    goto LABEL_20;
  }

  v8 = a1 == 27441 && a2 == 0xE200000000000000;
  if (v8 || (sub_1C7551DBC() & 1) != 0)
  {
    v7 = MEMORY[0x1E698A880];
    goto LABEL_20;
  }

  v9 = a1 == 27442 && a2 == 0xE200000000000000;
  if (v9 || (sub_1C7551DBC() & 1) != 0)
  {
    goto LABEL_19;
  }

  v14 = a1 == 27444 && a2 == 0xE200000000000000;
  if (v14 || (sub_1C7551DBC() & 1) != 0)
  {
    v7 = MEMORY[0x1E698A890];
  }

  else
  {
    v15 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
    if (!v15 && (sub_1C7551DBC() & 1) == 0)
    {
LABEL_19:
      v7 = MEMORY[0x1E698A888];
      goto LABEL_20;
    }

    v7 = MEMORY[0x1E698A8B0];
  }

LABEL_20:
  v10 = *v7;
  v11 = sub_1C754E86C();
  v12 = *(*(v11 - 8) + 104);

  return v12(a3, v10, v11);
}

uint64_t AlchemistServiceInterface.ConfigurationPreset.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7307DFC()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC21A710 = result;
  return result;
}

uint64_t sub_1C7307E64()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A718);
  __swift_project_value_buffer(v0, qword_1EC21A718);
  if (qword_1EC213FF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC21A710;
  return sub_1C754FF2C();
}

uint64_t sub_1C7307EF0()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C754FE8C();
  __swift_allocate_value_buffer(v4, qword_1EC21A730);
  __swift_project_value_buffer(v4, qword_1EC21A730);
  if (qword_1EC214000 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC21A718);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C754FE5C();
}

uint64_t sub_1C730802C()
{
  v0 = sub_1C754DD2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  __swift_allocate_value_buffer(v7, qword_1EC21A748);
  __swift_project_value_buffer(v0, qword_1EC21A748);
  v8 = NSTemporaryDirectory();
  sub_1C755068C();

  sub_1C754DC4C();

  v9 = [objc_opt_self() protectedTemporaryItemsSubdirectoryName];
  sub_1C755068C();

  sub_1C754DC9C();

  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_1C754DC9C();
  return (v10)(v6, v0);
}

uint64_t static AlchemistServiceInterface.outputDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC214010 != -1)
  {
    OUTLINED_FUNCTION_26_39();
    swift_once();
  }

  v2 = sub_1C754DD2C();
  v3 = __swift_project_value_buffer(v2, qword_1EC21A748);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1C7308290(char *a1)
{
  v2 = sub_1C754E86C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C754E91C();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 104);
  v33 = *a1;
  v10(v8, **(&unk_1E82A1788 + v33), v6);
  sub_1C754E8EC();
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = sub_1C755065C();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = sub_1C754E8DC();
      sub_1C754E8CC();
      v14(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770);
  }

  v15 = sub_1C755065C();
  v16 = [v11 objectForKey_];

  if (v16)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = sub_1C754E8DC();
      sub_1C754E8AC();
      v17(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770);
  }

  v18 = sub_1C755065C();
  v19 = [v11 objectForKey_];

  if (v19)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v20 = sub_1C754E8DC();
      sub_1C754E89C();
      v20(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770);
  }

  v21 = sub_1C755065C();
  v22 = [v11 objectForKey_];

  if (v22)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = sub_1C754E8DC();
      sub_1C754E88C();
      v23(&v36, 0);
    }
  }

  else
  {
    sub_1C7030CDC(&v36, &qword_1EC219770);
  }

  v24 = sub_1C755065C();
  v25 = [v11 stringForKey_];

  if (v25)
  {
    v26 = sub_1C755068C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  sub_1C7307BAC(v26, v28, v4);

  v29 = sub_1C754E8DC();
  sub_1C754E87C();
  v29(&v36, 0);
  v30 = sub_1C755065C();
  v31 = [v11 objectForKey_];

  if (v31)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v33 != 2)
    {
      v32 = sub_1C754E8DC();
      sub_1C754E8BC();
      v32(&v36, 0);
    }
  }

  else
  {

    sub_1C7030CDC(&v36, &qword_1EC219770);
  }
}

uint64_t static AlchemistServiceInterface.imageURL(for:progressHandler:cancellationHandler:)()
{
  OUTLINED_FUNCTION_58_23();
  type metadata accessor for Spatial3DAssetResourceUtils();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return static Spatial3DAssetResourceUtils.requestFullSizeImageURL(for:progressHandler:cancellationHandler:)();
}

uint64_t AlchemistServiceInterface.convert(imageURL:saveURL:configurationPreset:bakingSize:eventHandler:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 177) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  v10 = sub_1C754FE9C();
  *(v0 + 64) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v0 + 72) = v11;
  *(v0 + 80) = OUTLINED_FUNCTION_77();
  v12 = sub_1C754FE4C();
  *(v0 + 88) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v0 + 96) = v13;
  *(v0 + 104) = OUTLINED_FUNCTION_281_1();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  *(v0 + 178) = *v2;
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7308B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88();
  }

  v10 = sub_1C754FE8C();
  __swift_project_value_buffer(v10, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v11 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_55_25(v12);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v14, v15, v13, "Fetching", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v16 = *(v9 + 96);

  v17 = OUTLINED_FUNCTION_45_26();
  v18(v17);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v9 + 128) = OUTLINED_FUNCTION_28_28();
  v19 = *(v16 + 8);
  v20 = OUTLINED_FUNCTION_40_35();
  v19(v20);
  v21 = sub_1C754DC8C();
  v22 = CGImageSourceCreateWithURL(v21, 0);
  *(v9 + 136) = v22;

  if (v22)
  {
    v23 = sub_1C7309210(v22, 0);
    *(v9 + 144) = v23;
    v28 = v23;
    Width = CVPixelBufferGetWidth(v23);
    Height = CVPixelBufferGetHeight(v28);
    AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(v31, v22, Width, Height);
    v33 = v32;
    v34 = sub_1C754FE6C();
    sub_1C754FEAC();
    v35 = sub_1C755130C();
    v36 = sub_1C755144C();
    if (v36)
    {

      sub_1C754FEDC();

      v37 = OUTLINED_FUNCTION_61_0();
      if (v38(v37) == *MEMORY[0x1E69E93E8])
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v9 + 72) + 8))(*(v9 + 80), *(v9 + 64));
        v39 = "";
      }

      OUTLINED_FUNCTION_96_0();
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v34, v35, v41, "Fetching", v39, v40, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v42 = *(v9 + 178);
    v43 = *(v9 + 104);
    v44 = *(v9 + 88);
    v45 = *(v9 + 177);

    (v19)(v43, v44);
    *(v9 + 176) = v42;
    v46 = swift_task_alloc();
    *(v9 + 152) = v46;
    *v46 = v9;
    v46[1] = sub_1C7308FC4;
    v47 = *(v9 + 48);
    v48 = *(v9 + 32);
    v49 = *(v9 + 40);
    v50 = *(v9 + 24);

    return AlchemistServiceInterface.convert(pixelBuffer:configurationPreset:focalLengthPX:bakingSize:saveURL:eventHandler:)(v28, v9 + 176, v33 | ((HIDWORD(v33) & 1) << 32), v48, v49, v45 & 1, v50, v47, a9);
  }

  else
  {
    sub_1C755180C();

    v24 = sub_1C754DCEC();
    MEMORY[0x1CCA5CD70](v24);

    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000001C75AA520;
    *(v25 + 16) = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v26();
  }
}

uint64_t sub_1C7308FC4()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73090CC()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_116();
  v3 = *(v0 + 168);

  return v2(v3);
}

uint64_t sub_1C7309174()
{
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_43();

  return v1();
}

__CVBuffer *sub_1C7309210(CGImageSource *a1, CGColorSpace *a2)
{
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a1);
  if (PrimaryImageIndex >= CGImageSourceGetCount(a1))
  {
    sub_1C730A2C4();
    swift_allocError();
    *v14 = xmmword_1C755FF30;
    *(v14 + 16) = 2;
    swift_willThrow();
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  v8 = *MEMORY[0x1E695F948];
  *(inited + 32) = *MEMORY[0x1E695F948];
  *(inited + 40) = 1;
  type metadata accessor for CIImageOption(0);
  sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption);
  v9 = v8;
  v10 = sub_1C75504DC();
  sub_1C70C0638(v10);
  v3 = v11;

  objc_allocWithZone(MEMORY[0x1E695F658]);
  v12 = sub_1C730A12C(a1, PrimaryImageIndex, v3);
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (!v15)
    {
      sub_1C730A2C4();
      swift_allocError();
      *v22 = xmmword_1C755FEA0;
      *(v22 + 16) = 2;
      swift_willThrow();

      return v3;
    }

    v13 = v15;
  }

  v16 = a2;
  v17 = sub_1C755135C();
  if (v2)
  {

    return v3;
  }

  v18 = v17;
  result = [v12 extent];
  if (v20 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v21 < 9.22337204e18)
  {
    v3 = sub_1C7309C14(v20, v21, 0x42475241u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A790);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1C755BAB0;
    v24 = *MEMORY[0x1E695F838];
    *(v23 + 32) = *MEMORY[0x1E695F838];
    *(v23 + 40) = v13;
    type metadata accessor for CIContextOption(0);
    type metadata accessor for CGColorSpace(0);
    sub_1C730A980(&qword_1EC214960, type metadata accessor for CIContextOption);
    v25 = v24;
    v26 = v13;
    v27 = sub_1C75504DC();
    sub_1C70C085C(v27);
    v29 = v28;

    v30 = objc_allocWithZone(MEMORY[0x1E695F620]);
    v31 = sub_1C730A208(v29);
    CVBufferSetAttachment(v3, *MEMORY[0x1E6965CE8], v26, kCVAttachmentMode_ShouldPropagate);
    [v31 render:v18 toCVPixelBuffer:v3];

    return v3;
  }

LABEL_22:
  __break(1u);
  return result;
}

void __swiftcall AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(Swift::Float_optional *__return_ptr retstr, CGImageSourceRef from, Swift::Int width, Swift::Int height)
{
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(from);
  v6 = CGImageSourceCopyPropertiesAtIndex(from, PrimaryImageIndex, 0);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1C755049C();
    }
  }

  if (qword_1EC214000 != -1)
  {
    OUTLINED_FUNCTION_0_136();
    swift_once();
  }

  v8 = sub_1C754FF1C();
  v9 = __swift_project_value_buffer(v8, qword_1EC21A718);
  v10 = sub_1C754FEEC();
  sub_1C755118C();
  v11 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_96_0();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C6F5C000, v10, v9, "Failed to get properties from image source, returning nil", v13, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }
}

uint64_t AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v5 = sub_1C754DD2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C754DC8C();
  v10 = CGImageSourceCreateWithURL(v9, 0);

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_61_0();
    AlchemistServiceInterface.getFocalLengthPX(from:width:height:)(v13, v11, v12, a3);
    v15 = v14;

    return v15 | ((HIDWORD(v15) & 1) << 32);
  }

  else
  {
    if (qword_1EC214000 != -1)
    {
      OUTLINED_FUNCTION_0_136();
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EC21A718);
    (*(v6 + 16))(v8, a1, v5);
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      v22 = sub_1C754DCEC();
      v30[1] = a1;
      v24 = v23;
      (*(v6 + 8))(v8, v5);
      v25 = sub_1C6F765A4(v22, v24, &v31);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Failed to create image source image from %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1C755180C();

    v31 = 0xD000000000000029;
    v32 = 0x80000001C75AA540;
    v26 = sub_1C754DCEC();
    MEMORY[0x1CCA5CD70](v26);

    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
    v27 = v31;
    v28 = v32;
    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    return swift_willThrow();
  }
}

CVPixelBufferRef sub_1C7309C14(size_t a1, size_t a2, OSType a3)
{
  pixelBufferOut[9] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A798);
  inited = swift_initStackObject();
  v7 = MEMORY[0x1E696CD98];
  *(inited + 16) = xmmword_1C755BAB0;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = v8;
  sub_1C755180C();

  pixelBufferOut[0] = 0x616572635F495341;
  pixelBufferOut[1] = 0xEB000000005F6574;
  OUTLINED_FUNCTION_323();
  v10 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v10);

  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  OUTLINED_FUNCTION_323();
  v11 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  v12 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v12);

  *(inited + 40) = 0x616572635F495341;
  *(inited + 48) = 0xEB000000005F6574;
  type metadata accessor for IOSurfacePropertyKey(0);
  sub_1C730A980(&qword_1EC214950, type metadata accessor for IOSurfacePropertyKey);
  sub_1C75504DC();
  v13 = sub_1C755048C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7A0);
  v14 = swift_initStackObject();
  v15 = MEMORY[0x1E69660E8];
  *(v14 + 16) = xmmword_1C75604F0;
  v16 = *v15;
  *(v14 + 32) = *v15;
  v17 = MEMORY[0x1E69E6370];
  *(v14 + 40) = 1;
  v18 = *MEMORY[0x1E69660D8];
  *(v14 + 64) = v17;
  *(v14 + 72) = v18;
  type metadata accessor for CFDictionary(0);
  *(v14 + 104) = v19;
  *(v14 + 80) = v13;
  type metadata accessor for CFString(0);
  sub_1C730A980(&qword_1EC214578, type metadata accessor for CFString);
  v20 = v16;
  v21 = v18;
  v22 = v13;
  OUTLINED_FUNCTION_323();
  sub_1C75504DC();
  v23 = sub_1C755048C();

  pixelBufferOut[0] = 0;
  result = CVPixelBufferCreate(0, a1, a2, a3, v23, pixelBufferOut);
  v25 = pixelBufferOut[0];
  if (result)
  {
    v26 = result;
    if (qword_1EC214000 != -1)
    {
      OUTLINED_FUNCTION_0_136();
      swift_once();
    }

    v27 = sub_1C754FF1C();
    v28 = __swift_project_value_buffer(v27, qword_1EC21A718);
    v29 = sub_1C754FEEC();
    sub_1C755119C();
    v30 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = v26;
      _os_log_impl(&dword_1C6F5C000, v29, v28, "CVPixelBufferCreate failed with error code: %d", v32, 8u);
      v33 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v33);
    }

    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    v34 = swift_allocError();
    OUTLINED_FUNCTION_6_77(xmmword_1C755FEB0, v34, v35);
    swift_willThrow();
    goto LABEL_9;
  }

  if (pixelBufferOut[0])
  {
    v36 = pixelBufferOut[0];
LABEL_9:

    return v25;
  }

  __break(1u);
  return result;
}

id sub_1C730A064(void *a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CIImageOption(0);
    sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption);
    v4 = sub_1C755048C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithCVPixelBuffer:a1 options:v4];

  return v5;
}

id sub_1C730A12C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for CIImageOption(0);
    sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption);
    v7 = sub_1C755048C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithCGImageSource:a1 index:a2 options:v7];

  return v8;
}

id sub_1C730A208(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_1C730A980(&qword_1EC214960, type metadata accessor for CIContextOption);
    v2 = sub_1C755048C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithOptions_];

  return v3;
}

unint64_t sub_1C730A2C4()
{
  result = qword_1EC21A760;
  if (!qword_1EC21A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A760);
  }

  return result;
}

uint64_t sub_1C730A318()
{
  OUTLINED_FUNCTION_123();
  v7 = v6;
  OUTLINED_FUNCTION_58_23();
  *(v2 + 56) = v0;
  v8 = sub_1C75519BC();
  *(v2 + 64) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v2 + 72) = v9;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 40) = v5;
  *(v2 + 48) = v4;
  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  *(v2 + 32) = v7 & 1;
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C730A3F8()
{
  v1 = v0[9];
  sub_1C75519CC();
  sub_1C730A980(&qword_1EDD06868, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_59_21();
  sub_1C7551E5C();
  sub_1C730A980(&qword_1EDD06870, MEMORY[0x1E69E87E8]);
  sub_1C75519DC();
  v0[12] = *(v1 + 8);
  v0[13] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = OUTLINED_FUNCTION_15_1();
  v3(v2);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1C730A580;
  v5 = v0[11];

  return MEMORY[0x1EEE6DE58](v5);
}

uint64_t sub_1C730A580()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_49_3();
  v6(v9);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C730A71C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C730A71C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

unint64_t sub_1C730A784()
{
  result = qword_1EC21A780;
  if (!qword_1EC21A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A780);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlchemistServiceInterface(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlchemistServiceInterface.ConfigurationPreset(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence25AlchemistServiceInterfaceV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C730A980(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_21_48()
{
  v3 = v0[100];
  *(v1 - 96) = v0[78];
  *(v1 - 88) = v0[51];
}

uint64_t OUTLINED_FUNCTION_24_33()
{
  *(v1 - 96) = *(v0 + 400);
}

uint64_t OUTLINED_FUNCTION_42_29()
{

  return sub_1C755144C();
}

void OUTLINED_FUNCTION_50_24(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

id OUTLINED_FUNCTION_53_28()
{
  *(v0 + 320) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_55_25(_WORD *a1)
{
  *a1 = 0;

  return sub_1C754FE2C();
}

uint64_t OUTLINED_FUNCTION_61_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_19()
{

  return sub_1C75504DC();
}

uint64_t OUTLINED_FUNCTION_64_15()
{
}

uint64_t OUTLINED_FUNCTION_66_20(uint64_t a1)
{
  *(v1 - 88) = a1;

  return swift_willThrow();
}

uint64_t sub_1C730AB84(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[81] = v7;
  v8[80] = a7;
  v8[79] = a6;
  v8[78] = a5;
  v8[77] = a4;
  v8[76] = a2;
  v8[75] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  v8[82] = swift_task_alloc();
  v10 = sub_1C754DFFC();
  v8[83] = v10;
  OUTLINED_FUNCTION_18(v10);
  v8[84] = v11;
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v12 = sub_1C754F2FC();
  v8[89] = v12;
  OUTLINED_FUNCTION_18(v12);
  v8[90] = v13;
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v14 = sub_1C754F38C();
  v8[93] = v14;
  OUTLINED_FUNCTION_18(v14);
  v8[94] = v15;
  v8[95] = swift_task_alloc();
  memcpy(v8 + 42, a3, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C730AD78, 0, 0);
}

uint64_t sub_1C730AD78()
{
  v64 = v0;
  v1 = *(v0 + 632);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  __swift_project_boxed_opaque_existential_1(*(v0 + 632), v1[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  v2 = objc_opt_self();
  sub_1C731022C(v2);
  if (v3)
  {
    v4 = *(v0 + 664);
    v5 = *(v0 + 656);
    sub_1C754DF7C();

    if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
    {
      v6 = *(v0 + 664);
      v7 = *(v0 + 656);
      sub_1C754DFEC();
      if (__swift_getEnumTagSinglePayload(v7, 1, v6) != 1)
      {
        sub_1C730BB50(*(v0 + 656));
      }
    }

    else
    {
      (*(*(v0 + 672) + 32))(*(v0 + 696), *(v0 + 656), *(v0 + 664));
    }

    (*(*(v0 + 672) + 32))(*(v0 + 704), *(v0 + 696), *(v0 + 664));
  }

  else
  {
    sub_1C754DFEC();
  }

  v61 = *(*(v0 + 672) + 16);
  v61(*(v0 + 688), *(v0 + 704), *(v0 + 664));
  v8 = sub_1C754FEEC();
  v9 = sub_1C75511BC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 672);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    __dst[0] = v60;
    *v12 = 136315138;
    sub_1C712A6F8();
    v59 = v9;
    v13 = sub_1C7551D8C();
    v15 = v14;
    v16 = *(v11 + 8);
    v17 = OUTLINED_FUNCTION_61_0();
    v16(v17);
    v18 = sub_1C6F765A4(v13, v15, __dst);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1C6F5C000, v8, v59, "Seeding prompt generation with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1CCA5F8E0](v60, -1, -1);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
  }

  else
  {

    v19 = *(v11 + 8);
    v20 = OUTLINED_FUNCTION_61_0();
    v19(v20);
  }

  v21 = *(v0 + 736);
  v22 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = *(v0 + 680);
  v61(v25, *(v0 + 704), *(v0 + 664));
  *(v0 + 560) = &type metadata for Random.Arc4Random;
  *(v0 + 568) = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v25, v0 + 536);
  memcpy(__dst, (v0 + 336), 0x50uLL);
  (*(v23 + 32))(v22, v21, v24);
  sub_1C730B7B0(v0 + 536, __dst, (v0 + 496), v22, __src);
  memcpy((v0 + 416), __src, 0x50uLL);
  sub_1C754F2DC();
  v26 = *(v0 + 648);
  v27 = *(v0 + 624);
  v28 = *(v0 + 616);
  v29 = *(v0 + 608);
  v30 = *(v0 + 600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7571600;
  OUTLINED_FUNCTION_3_1();
  *(v32 + 32) = 0xD000000000000018;
  *(v32 + 40) = v33;
  *(v0 + 576) = v30;
  *(v0 + 584) = v29;
  sub_1C75504FC();
  *(inited + 48) = sub_1C755097C();
  *(inited + 56) = v34;
  OUTLINED_FUNCTION_3_1();
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = v35;
  *(v0 + 592) = *(v26 + OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_configuration);
  *(inited + 80) = sub_1C7551D8C();
  *(inited + 88) = v36;
  OUTLINED_FUNCTION_3_1();
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = v37;
  v38 = 1702195796;
  if (*(v0 + 416))
  {
    v39 = 1702195796;
  }

  else
  {
    v39 = 0x65736C6146;
  }

  if (*(v0 + 416))
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  *(inited + 112) = v39;
  *(inited + 120) = v40;
  *(inited + 128) = 0x6D726F6665657266;
  *(inited + 136) = 0xEF73746550736148;
  if (*(v0 + 417))
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v38 = 0x65736C6146;
    v41 = 0xE500000000000000;
  }

  *(inited + 144) = v38;
  *(inited + 152) = v41;
  OUTLINED_FUNCTION_3_1();
  *(inited + 160) = 0xD00000000000001FLL;
  *(inited + 168) = v42;
  v43 = *(v0 + 440);
  *(inited + 176) = *(v0 + 432);
  *(inited + 184) = v43;
  OUTLINED_FUNCTION_3_1();
  *(inited + 192) = 0xD00000000000001FLL;
  *(inited + 200) = v44;
  v45 = *(v0 + 464);
  *(inited + 208) = *(v0 + 456);
  *(inited + 216) = v45;
  OUTLINED_FUNCTION_3_1();
  *(inited + 224) = 0xD00000000000001FLL;
  *(inited + 232) = v46;
  v47 = *(v0 + 488);
  *(inited + 240) = *(v0 + 480);
  *(inited + 248) = v47;
  OUTLINED_FUNCTION_3_1();
  *(inited + 256) = 0xD000000000000015;
  *(inited + 264) = v48;
  *(inited + 272) = v28;
  *(inited + 280) = v27;
  OUTLINED_FUNCTION_3_1();
  *(inited + 288) = v50;
  *(inited + 296) = v49;
  *(inited + 304) = 0;
  *(inited + 312) = 0xE000000000000000;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C730BAFC(v0 + 416);
  v51 = sub_1C75504DC();
  sub_1C754F2EC();
  v52 = *(v0 + 760);
  v53 = *(v0 + 752);
  v54 = *(v0 + 744);
  v55 = *(v0 + 632);
  (*(*(v0 + 672) + 8))(*(v0 + 704), *(v0 + 664));
  OUTLINED_FUNCTION_0_137();
  OUTLINED_FUNCTION_18_0(v55, *(v56 + 24));
  sub_1C754F1AC();
  (*(v53 + 8))(v52, v54);

  v57 = *(v0 + 8);

  return v57(v51);
}

uint64_t sub_1C730B730(const void *a1)
{
  sub_1C754FEFC();
  memcpy((v1 + OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_configuration), a1, 0x59uLL);
  return v1;
}

void *sub_1C730B7B0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(v16, a2, sizeof(v16));
  v11 = objc_opt_self();
  sub_1C7027A20(__dst, v15);
  LOBYTE(v11) = [v11 shufflePromptParameters];
  type metadata accessor for DynamicLifeContextGenerator();
  swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v16, 0, v11);
  v15[0] = 1;
  v13 = 1;
  sub_1C73CB6F0(v15, a1, a3, a4, &v13, __src);

  if (!v5)
  {
    return memcpy(a5, __src, 0x50uLL);
  }

  return result;
}

uint64_t GlobalTraitPromptGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t GlobalTraitPromptGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence26GlobalTraitPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalTraitPromptGenerator()
{
  result = qword_1EDD090B8;
  if (!qword_1EDD090B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C730BA4C()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C730BB50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t QueryDisambiguationSuggestionDataSource.description.getter()
{
  v1 = type metadata accessor for EventSuggestion();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v23 = v1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v9 = v25;
    v10 = *(v3 + 80);
    v22 = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v12 = *(v3 + 72);
    do
    {
      sub_1C7100F28(v11, v6);
      v13 = *v6;
      v14 = v6[1];
      sub_1C75504FC();
      sub_1C7100F8C(v6);
      v25 = v9;
      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v9 = v25;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      v11 += v12;
      --v8;
    }

    while (v8);
    v7 = v22;
    v1 = v23;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75AA7E0);
  v17 = *(v9 + 16);

  v24 = v17;
  v18 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v18);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AA810);
  v19 = MEMORY[0x1CCA5D090](v7, v1);
  MEMORY[0x1CCA5CD70](v19);

  MEMORY[0x1CCA5CD70](32010, 0xE200000000000000);
  return v25;
}

PhotosIntelligence::QueryDisambiguationSuggestionType_optional __swiftcall QueryDisambiguationSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t QueryDisambiguationSuggestionType.rawValue.getter()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1C730BEA0@<X0>(uint64_t *a1@<X8>)
{
  result = QueryDisambiguationSuggestionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C730BFBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C730C048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C730BFBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C730C074(uint64_t a1)
{
  v2 = sub_1C730C50C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C730C0B0(uint64_t a1)
{
  v2 = sub_1C730C50C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryDisambiguationSuggestionDataSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7A8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C730C50C();
  sub_1C75504FC();
  sub_1C755200C();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7B8);
  sub_1C730C560(&qword_1EC21A7C0, &qword_1EC21A7C8);
  sub_1C7551D2C();

  return (*(v5 + 8))(v8, v3);
}

uint64_t QueryDisambiguationSuggestionDataSource.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C70414D8();
  return sub_1C7551FAC();
}

uint64_t QueryDisambiguationSuggestionDataSource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7D0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C730C50C();
  sub_1C7551FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A7B8);
    sub_1C730C560(&qword_1EC21A7D8, &qword_1EC21A7E0);
    sub_1C7551C1C();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C730C4C4()
{
  sub_1C7551F3C();
  sub_1C70414D8();
  return sub_1C7551FAC();
}

unint64_t sub_1C730C50C()
{
  result = qword_1EC21A7B0;
  if (!qword_1EC21A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A7B0);
  }

  return result;
}

uint64_t sub_1C730C560(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A7B8);
    sub_1C730C5E8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C730C5E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventSuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C730C630()
{
  result = qword_1EC21A7E8;
  if (!qword_1EC21A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A7E8);
  }

  return result;
}

unint64_t sub_1C730C688()
{
  result = qword_1EC21A7F0;
  if (!qword_1EC21A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A7F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDisambiguationSuggestionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for QueryDisambiguationSuggestionDataSource.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C730C878()
{
  result = qword_1EC21A7F8;
  if (!qword_1EC21A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A7F8);
  }

  return result;
}

unint64_t sub_1C730C8D0()
{
  result = qword_1EC21A800;
  if (!qword_1EC21A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A800);
  }

  return result;
}

unint64_t sub_1C730C928()
{
  result = qword_1EC21A808;
  if (!qword_1EC21A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A808);
  }

  return result;
}

unint64_t sub_1C730C97C()
{
  result = qword_1EC21A810;
  if (!qword_1EC21A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A810);
  }

  return result;
}

uint64_t AssetClusterer.CentroidCodebookOptions.distanceBlock.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AssetClusterer.CentroidCodebookOptions.init(seed:maxNumberOfAssetsToSample:maxNumberOfAssetsToCluster:minDistanceToCluster:distanceBlock:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t AssetClusterer.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t AssetClusterer.init(centroidCodebook:vectorFetchingBlock:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for AssetClusterer();
  OUTLINED_FUNCTION_2_96();
  sub_1C754FE7C();
  result = sub_1C6F699F8(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t type metadata accessor for AssetClusterer()
{
  result = qword_1EC21A828;
  if (!qword_1EC21A828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetClusterer.cluster(_:)(uint64_t a1)
{
  v134 = sub_1C754FE9C();
  OUTLINED_FUNCTION_3_0();
  v133 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  v153 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v130 - v8;
  v10 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v154 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v135 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v130 - v22;
  v24 = *(type metadata accessor for AssetClusterer() + 24);
  sub_1C75504FC();
  sub_1C754FE3C();
  v145 = v1;
  v136 = v24;
  v25 = sub_1C754FE6C();
  v26 = sub_1C755131C();
  v27 = sub_1C755144C();
  v132 = v9;
  if (v27)
  {
    v28 = v10;
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(a1 + 16);

    v30 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v25, v26, v30, "cluster", "Asset count: %ld", v29, 0xCu);
    v10 = v28;
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  (*(v12 + 16))(v20, v23, v10);
  sub_1C754FECC();
  swift_allocObject();
  v31 = sub_1C754FEBC();
  v137 = *(v12 + 8);
  v138 = v12 + 8;
  v137(v23, v10);
  if (!*(a1 + 16))
  {
    v97 = sub_1C754FE6C();
    v98 = v154;
    sub_1C754FEAC();
    v99 = sub_1C755130C();
    if (sub_1C755144C())
    {

      v100 = v153;
      sub_1C754FEDC();

      v101 = v133;
      v102 = v134;
      if ((*(v133 + 88))(v100, v134) == *MEMORY[0x1E69E93E8])
      {
        v103 = "[Error] Interval already ended";
      }

      else
      {
        (*(v101 + 8))(v100, v102);
        v103 = "";
      }

      v124 = swift_slowAlloc();
      *v124 = 0;
      v125 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v97, v99, v125, "cluster", v103, v124, 2u);
      OUTLINED_FUNCTION_109();
    }

    v137(v98, v10);

    return MEMORY[0x1E69E7CC0];
  }

  v131 = v10;
  v32 = sub_1C730D744(a1, 500);
  v141 = *(v32 + 16);
  if (!v141)
  {

    v34 = MEMORY[0x1E69E7CC8];
LABEL_58:
    sub_1C75504FC();
    sub_1C703FFB0();
    v105 = v104;

    v106 = 0;
    v107 = *(v105 + 16);
    v55 = MEMORY[0x1E69E7CC0];
    while (v107 != v106)
    {
      if (v106 >= v107)
      {
        goto LABEL_88;
      }

      v108 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_89;
      }

      if (v34[2] && (v109 = sub_1C6FCABD0(*(v105 + 8 * v106 + 32)), (v110 & 1) != 0))
      {
        v111 = *(v34[7] + 8 * v109);
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          v55 = v114;
        }

        v113 = *(v55 + 16);
        v112 = *(v55 + 24);
        if (v113 >= v112 >> 1)
        {
          OUTLINED_FUNCTION_15(v112);
          sub_1C6FB226C();
          v55 = v115;
        }

        *(v55 + 16) = v113 + 1;
        *(v55 + 8 * v113 + 32) = v111;
        v106 = v108;
      }

      else
      {
        ++v106;
      }
    }

    v116 = sub_1C754FE6C();
    v117 = v135;
    sub_1C754FEAC();
    v118 = sub_1C755130C();
    if (sub_1C755144C())
    {

      v119 = v132;
      sub_1C754FEDC();

      v120 = v133;
      v121 = v134;
      if ((*(v133 + 88))(v119, v134) == *MEMORY[0x1E69E93E8])
      {
        v122 = "[Error] Interval already ended";
      }

      else
      {
        (*(v120 + 8))(v119, v121);
        v122 = "";
      }

      v126 = swift_slowAlloc();
      *v126 = 0;
      v127 = v135;
      v128 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v116, v118, v128, "cluster", v122, v126, 2u);
      OUTLINED_FUNCTION_109();

      v123 = v127;
    }

    else
    {

      v123 = v117;
    }

    v137(v123, v131);

    return v55;
  }

  v33 = 0;
  v144 = v32 + 32;
  v34 = MEMORY[0x1E69E7CC8];
  v35 = v145[5];
  v142 = v145[6];
  v143 = v35;
  v139 = v32;
  v140 = v31;
  while (2)
  {
    if (v33 < *(v32 + 16))
    {
      v36 = *(v144 + 8 * v33);
      v146 = v33 + 1;
      v37 = sub_1C75504FC();
      v38 = v143(v37);
      v39 = 0;
      v40 = *(v36 + 16);
      v41 = (v36 + 40);
      v153 = (v36 + 40);
      v154 = MEMORY[0x1E69E7CC0];
LABEL_9:
      v42 = &v41[16 * v39++];
      while (v39 - v40 != 1)
      {
        if ((v39 - 1) >= *(v36 + 16))
        {
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (*(v38 + 16))
        {
          v43 = *(v42 - 1);
          v44 = *v42;
          sub_1C75504FC();
          v45 = sub_1C6F78124(v43, v44);
          if (v46)
          {
            v47 = *(*(v38 + 56) + 8 * v45);
            sub_1C75504FC();

            v48 = v154;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v152 = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB2DBC();
              v48 = v52;
            }

            v51 = *(v48 + 16);
            v50 = *(v48 + 24);
            if (v51 >= v50 >> 1)
            {
              OUTLINED_FUNCTION_15(v50);
              sub_1C6FB2DBC();
              v48 = v53;
            }

            *(v48 + 16) = v51 + 1;
            v154 = v48;
            v41 = v153;
            *(v48 + 8 * v51 + 32) = v152;
            goto LABEL_9;
          }
        }

        ++v39;
        v42 += 2;
      }

      v54 = v145[3];
      v55 = v145[4];
      __swift_project_boxed_opaque_existential_1(v145, v54);
      v56 = v147;
      v57 = (*(v55 + 24))(v154, v54, v55);
      if (v56)
      {

        return v55;
      }

      v151 = v57;
      v147 = 0;

      v58 = 0;
      v59 = (v36 + 40);
      v152 = MEMORY[0x1E69E7CC0];
      v154 = (v36 + 40);
LABEL_23:
      v60 = &v59[16 * v58];
      while (v40 != v58)
      {
        if (v58 >= *(v36 + 16))
        {
          goto LABEL_83;
        }

        if (*(v38 + 16))
        {
          v62 = *(v60 - 1);
          v61 = *v60;
          sub_1C75504FC();
          sub_1C6F78124(v62, v61);
          if (v63)
          {
            v64 = v152;
            v65 = swift_isUniquelyReferenced_nonNull_native();
            v155 = v64;
            if ((v65 & 1) == 0)
            {
              sub_1C6F7ED9C();
              v64 = v155;
            }

            v67 = v64[2];
            v66 = v64[3];
            v68 = (v67 + 1);
            if (v67 >= v66 >> 1)
            {
              OUTLINED_FUNCTION_15(v66);
              v153 = v70;
              sub_1C6F7ED9C();
              v68 = v153;
              v64 = v155;
            }

            ++v58;
            v64[2] = v68;
            v152 = v64;
            v69 = &v64[2 * v67];
            v69[4] = v62;
            v69[5] = v61;
            v59 = v154;
            goto LABEL_23;
          }
        }

        v60 += 2;
        ++v58;
      }

      v71 = v151;
      v150 = *(v151 + 16);
      if (v150)
      {
        v72 = 0;
        v73 = v152;
        v74 = v152[2];
        v148 = v151 + 32;
        v149 = v74;
        v75 = v152 + 5;
        while (v72 < *(v71 + 16))
        {
          if (v149 == v72)
          {
            goto LABEL_52;
          }

          if (v72 >= v73[2])
          {
            goto LABEL_85;
          }

          v76 = *(v148 + 8 * v72);
          v77 = *v75;
          v154 = *(v75 - 1);
          sub_1C75504FC();
          v153 = objc_autoreleasePoolPush();
          swift_isUniquelyReferenced_nonNull_native();
          v155 = v34;
          v78 = sub_1C6FCABD0(v76);
          if (__OFADD__(v34[2], (v79 & 1) == 0))
          {
            goto LABEL_86;
          }

          v80 = v78;
          v81 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A818);
          v82 = sub_1C7551A2C();
          v34 = v155;
          if (v82)
          {
            v83 = sub_1C6FCABD0(v76);
            if ((v81 & 1) != (v84 & 1))
            {
              goto LABEL_91;
            }

            v80 = v83;
          }

          if ((v81 & 1) == 0)
          {
            v34[(v80 >> 6) + 8] |= 1 << v80;
            *(v34[6] + 8 * v80) = v76;
            *(v34[7] + 8 * v80) = MEMORY[0x1E69E7CC0];
            v85 = v34[2];
            v86 = __OFADD__(v85, 1);
            v87 = v85 + 1;
            if (v86)
            {
              goto LABEL_87;
            }

            v34[2] = v87;
          }

          v88 = v34[7];
          v89 = *(v88 + 8 * v80);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          *(v88 + 8 * v80) = v89;
          if ((v90 & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v89 = v95;
            *(v88 + 8 * v80) = v95;
          }

          v92 = *(v89 + 16);
          v91 = *(v89 + 24);
          if (v92 >= v91 >> 1)
          {
            OUTLINED_FUNCTION_15(v91);
            sub_1C6FB1814();
            v89 = v96;
            *(v88 + 8 * v80) = v96;
          }

          ++v72;
          *(v89 + 16) = v92 + 1;
          v93 = v89 + 16 * v92;
          v94 = v153;
          *(v93 + 32) = v154;
          *(v93 + 40) = v77;
          objc_autoreleasePoolPop(v94);
          v75 += 2;
          v71 = v151;
          v73 = v152;
          if (v150 == v72)
          {
            goto LABEL_52;
          }
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

LABEL_52:

      v33 = v146;
      v32 = v139;
      if (v146 != v141)
      {
        continue;
      }

      goto LABEL_58;
    }

    break;
  }

  __break(1u);
LABEL_91:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C730D744(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v3 = result;
  v4 = *(result + 16);
  v5 = sub_1C730E42C(0, v4, a2);
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1C716D5B0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_27;
    }

    v6 = 0;
    while (1)
    {
      v7 = v4 >= v6;
      if (a2 > 0)
      {
        v7 = v6 >= v4;
      }

      if (v7)
      {
        break;
      }

      v8 = v6 + a2;
      if (__OFADD__(v6, a2))
      {
        v9 = ((v6 + a2) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v9 = v6 + a2;
      }

      if (__OFADD__(v6, a2))
      {
        goto LABEL_52;
      }

      if (v4 < v8)
      {
        v8 = v4;
      }

      v10 = v8 - v6;
      if (v8 < v6)
      {
        goto LABEL_53;
      }

      if (v6 < 0)
      {
        goto LABEL_54;
      }

      if (v4 == v10)
      {
        result = sub_1C75504FC();
        v11 = v3;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
        if (v8 != v6)
        {
          if (v10 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
            v11 = swift_allocObject();
            v14 = _swift_stdlib_malloc_size(v11);
            v11[2] = v10;
            v11[3] = 2 * ((v14 - 32) / 16);
          }

          result = swift_arrayInitWithCopy();
        }
      }

      v13 = *(v23 + 16);
      v12 = *(v23 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1C716D5B0((v12 > 1), v13 + 1, 1);
      }

      *(v23 + 16) = v13 + 1;
      *(v23 + 8 * v13 + 32) = v11;
      v6 = v9;
      if (!--v5)
      {
        while (1)
        {
LABEL_27:
          v15 = v4 >= v9;
          if (a2 > 0)
          {
            v15 = v9 >= v4;
          }

          if (v15)
          {
            return v23;
          }

          v16 = v9 + a2;
          v17 = __OFADD__(v9, a2) ? ((v9 + a2) >> 63) ^ 0x8000000000000000 : v9 + a2;
          if (__OFADD__(v9, a2))
          {
            break;
          }

          if (v4 < v16)
          {
            v16 = v4;
          }

          v18 = v16 - v9;
          if (v16 < v9)
          {
            goto LABEL_49;
          }

          if (v9 < 0)
          {
            goto LABEL_50;
          }

          if (v4 == v18)
          {
            result = sub_1C75504FC();
            v19 = v3;
          }

          else
          {
            v19 = MEMORY[0x1E69E7CC0];
            if (v16 != v9)
            {
              if (v18 >= 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
                v19 = swift_allocObject();
                v22 = _swift_stdlib_malloc_size(v19);
                v19[2] = v18;
                v19[3] = 2 * ((v22 - 32) / 16);
              }

              result = swift_arrayInitWithCopy();
            }
          }

          v21 = *(v23 + 16);
          v20 = *(v23 + 24);
          if (v21 >= v20 >> 1)
          {
            result = sub_1C716D5B0((v20 > 1), v21 + 1, 1);
          }

          *(v23 + 16) = v21 + 1;
          *(v23 + 8 * v21 + 32) = v19;
          v9 = v17;
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t static AssetClusterer.centroidCodebook(assetUUIDs:options:vectorFetchingBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v90 = a4;
  v91 = a3;
  v79 = a5;
  v74 = sub_1C754FE9C();
  OUTLINED_FUNCTION_3_0();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  sub_1C754FE8C();
  OUTLINED_FUNCTION_3_0();
  v81 = v24;
  v82 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *a2;
  v87 = *(a2 + 8);
  v27 = *(a2 + 16);
  v85 = *(a2 + 24);
  v86 = v27;
  v28 = *(a2 + 40);
  v83 = *(a2 + 48);
  v84 = v28;
  OUTLINED_FUNCTION_2_96();
  sub_1C754FE7C();
  sub_1C75504FC();
  sub_1C754FE3C();
  v80 = v26;
  v29 = sub_1C754FE6C();
  v30 = sub_1C755131C();
  v31 = sub_1C755144C();
  v76 = v16;
  if (v31)
  {
    v32 = v12;
    v33 = v10;
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(a1 + 16);

    v35 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v29, v30, v35, "centroidCodebook", "Asset count: %ld", v34, 0xCu);
    v10 = v33;
    v12 = v32;
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  (*(v12 + 16))(v19, v22, v10);
  sub_1C754FECC();
  swift_allocObject();
  v92 = sub_1C754FEBC();
  v38 = *(v12 + 8);
  v37 = v12 + 8;
  v36 = v38;
  v78 = v10;
  v38(v22, v10);
  v39 = v88;
  v40 = v87;
  v94 = static AssetSampler.sample(assetUUIDs:maxNumberOfAssetsToSample:seed:)(a1, v86, v88, v87);
  sub_1C75504FC();
  v41 = v89;
  sub_1C70401E8();
  v42 = v41;
  if (v41)
  {
    goto LABEL_31;
  }

  v43 = v94;
  v44 = v91(v94);
  v77 = v37;
  v75 = v36;
  v89 = 0;
  if ((v40 & 1) == 0)
  {
    if (v39 <= 0xFF)
    {
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
    return result;
  }

  LOBYTE(v39) = 42;
LABEL_8:
  type metadata accessor for Random();
  swift_allocObject();
  v45 = Random.init(randomSeed:)(v39);
  v93 = 1;
  v88 = type metadata accessor for AgglomerativeKMeans();
  swift_allocObject();

  v90 = v45;
  v91 = AgglomerativeKMeans.init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)();
  v42 = 0;
  v46 = *(v43 + 16);
  v47._rawValue = MEMORY[0x1E69E7CC0];
LABEL_9:
  v48 = (v43 + 40 + 16 * v42);
  while (v46 != v42)
  {
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (*(v44 + 16))
    {
      v49 = *(v48 - 1);
      v50 = *v48;
      sub_1C75504FC();
      v51 = sub_1C6F78124(v49, v50);
      if (v52)
      {
        v53 = *(*(v44 + 56) + 8 * v51);
        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2DBC();
          v47._rawValue = v56;
        }

        v55 = *(v47._rawValue + 2);
        v54 = *(v47._rawValue + 3);
        if (v55 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_15(v54);
          sub_1C6FB2DBC();
          v47._rawValue = v57;
        }

        ++v42;
        *(v47._rawValue + 2) = v55 + 1;
        *(v47._rawValue + v55 + 4) = v53;
        goto LABEL_9;
      }
    }

    v48 += 2;
    ++v42;
  }

  v58 = v91;
  AgglomerativeKMeans.fit(_:)(v47);
  if (v59)
  {
    (*(v81 + 8))(v80, v82);
  }

  else
  {

    v61 = v80;
    v62 = sub_1C754FE6C();
    v63 = v76;
    sub_1C754FEAC();
    v64 = sub_1C755130C();
    if (sub_1C755144C())
    {

      v65 = v72;
      sub_1C754FEDC();

      v66 = v73;
      v67 = v74;
      if ((*(v73 + 88))(v65, v74) == *MEMORY[0x1E69E93E8])
      {
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v66 + 8))(v65, v67);
        v68 = "";
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v62, v64, v70, "centroidCodebook", v68, v69, 2u);
      OUTLINED_FUNCTION_109();
      v58 = v91;
    }

    v75(v63, v78);
    v71 = v79;
    v79[3] = v88;
    v71[4] = &protocol witness table for KMeans;

    *v71 = v58;
    return (*(v81 + 8))(v61, v82);
  }
}

unint64_t sub_1C730E184()
{
  result = qword_1EC21A820;
  if (!qword_1EC21A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A820);
  }

  return result;
}

unint64_t sub_1C730E200()
{
  result = sub_1C70912D4();
  if (v1 <= 0x3F)
  {
    result = sub_1C730E29C();
    if (v2 <= 0x3F)
    {
      result = sub_1C754FE8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C730E29C()
{
  result = qword_1EC21A838;
  if (!qword_1EC21A838)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC21A838);
  }

  return result;
}

uint64_t sub_1C730E2E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C730E324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetClusterer.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C730E42C(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t FreeformStoryRequestGenerator.Configuration.init(maximumNumberOfTokensForLifeContext:maxNumberOfTraitsToSelect:numberOfChaptersToGenerate:numberOfShotsPerChapter:shufflePromptParameters:computeNumberOfTokens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 48) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t FreeformStoryRequestGenerator.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FreeformStoryRequestGenerator.init(configuration:)(a1);
  return v2;
}

uint64_t FreeformStoryRequestGenerator.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 48);
  sub_1C754FEFC();
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  v6 = [objc_opt_self() globalAndPersonalTraitsSeed];
  if (!v6)
  {
    v28 = 0;
    MEMORY[0x1CCA5F900](&v28, 8);
    v22 = v28;
    *(v2 + 72) = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
    v11 = sub_1C754FEEC();
    v23 = sub_1C75511BC();
    v24 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_13_3();
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_1C6F5C000, v11, v23, "Setting random number generator seed for shuffling traits and generating number of traits for storytelling adapter to focus on as %llu (random integer)", v26, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_7;
  }

  v7 = v6;
  sub_1C755103C();
  v8 = sub_1C755104C();
  v9 = sub_1C7551FCC();

  *(v2 + 72) = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  v10 = v7;
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();

  if (!os_log_type_enabled(v11, v12))
  {

LABEL_7:
    return v2;
  }

  OUTLINED_FUNCTION_13_3();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 138412290;
  *(v13 + 4) = v10;
  *v14 = v7;
  v15 = v10;
  OUTLINED_FUNCTION_7_65();
  _os_log_impl(v16, v17, v18, v19, v20, v21);
  sub_1C6FB5FC8(v14, &qword_1EC215190);
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();

  return v2;
}

uint64_t sub_1C730E76C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_14_53(v17);
  OUTLINED_FUNCTION_14_53(v16);
  v9 = objc_opt_self();
  sub_1C7027A20(v17, v15);
  LOBYTE(v9) = [v9 shufflePromptParameters];
  type metadata accessor for DynamicLifeContextGenerator();
  swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v16, 0, v9);
  v15[0] = 2;
  v10 = v5[2];
  v11 = v5[6];
  v12 = v5[7];
  v18 = 1;
  v13 = sub_1C73CD8BC(v15, v10, v11, v12, a2, a3, a4, &v18);

  return v13;
}

void *sub_1C730E884@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_14_53(v15);
  OUTLINED_FUNCTION_14_53(v14);
  v9 = objc_opt_self();
  sub_1C7027A20(v15, v13);
  LOBYTE(v9) = [v9 shufflePromptParameters];
  type metadata accessor for DynamicLifeContextGenerator();
  swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v14, 0, v9);
  v13[0] = 2;
  v11 = 1;
  sub_1C73CB6F0(v13, a1, a2, a3, &v11, __src);

  if (!v4)
  {
    return memcpy(a4, __src, 0x50uLL);
  }

  return result;
}

void sub_1C730E9A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v182 = a3;
  v183 = a6;
  v180 = a7;
  v181 = a2;
  v178 = a1;
  v177 = type metadata accessor for LLMConfiguration(0);
  MEMORY[0x1EEE9AC00](v177);
  v179 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v185 = &v168 - v11;
  v188 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v190 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v187 = v14 - v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v186 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  v184 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  v192 = &v168 - v21;
  v208 = sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v196 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v168 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_130();
  v191 = v31;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v168 - v33;
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v193 = v36;
  v194 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_14_53(__src);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  v39 = v195;
  sub_1C754F2CC();
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    sub_1C754F1AC();
    v40 = v208;
    v41 = v196;
LABEL_17:
    (*(v193 + 8))(v38, v194);
    (*(v41 + 8))(a5, v40);
    return;
  }

  v175 = v29;
  v171 = v26;
  v172 = v38;
  v195 = 0;
  v42 = a4[3];
  v173 = a4;
  __swift_project_boxed_opaque_existential_1(a4, v42);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v170 = objc_opt_self();
  sub_1C731022C(v170);
  v176 = a5;
  v174 = v34;
  if (v43)
  {
    v44 = v185;
    sub_1C754DF7C();

    v45 = v188;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v188);
    v47 = v190;
    if (EnumTagSinglePayload == 1)
    {
      v48 = v184;
      sub_1C754DFEC();
      v49 = __swift_getEnumTagSinglePayload(v44, 1, v45);
      v50 = v192;
      if (v49 != 1)
      {
        sub_1C6FB5FC8(v44, &unk_1EC217A30);
      }
    }

    else
    {
      v48 = v184;
      (*(v190 + 32))(v184, v44, v45);
      v50 = v192;
    }

    (*(v47 + 32))(v50, v48, v45);
  }

  else
  {
    v50 = v192;
    sub_1C754DFEC();
    v45 = v188;
    v47 = v190;
  }

  v51 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryRequestGenerator_logger;
  v52 = v186;
  v185 = *(v47 + 16);
  (v185)(v186, v50, v45);
  v184 = v51;
  v53 = sub_1C754FEEC();
  v54 = sub_1C75511BC();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_13_3();
    v55 = v52;
    v56 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v202[0] = v169;
    *v56 = 136315138;
    sub_1C712A6F8();
    v57 = sub_1C7551D8C();
    v58 = v47;
    v60 = v59;
    v186 = *(v58 + 8);
    v186(v55, v45);
    v61 = sub_1C6F765A4(v57, v60, v202);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_1C6F5C000, v53, v54, "Seeding prompt generation with %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v169);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    v186 = *(v47 + 8);
    v186(v52, v45);
  }

  v62 = v195;
  v63 = v187;
  v64 = v175;
  v65 = v192;
  (v185)(v187, v192, v45);
  v204 = &type metadata for Random.Arc4Random;
  v205 = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v63, v203);
  memcpy(v201, __src, sizeof(v201));
  v41 = v196;
  v66 = *(v196 + 32);
  v38 = v45;
  v40 = v208;
  v66(v64, v174, v208);
  sub_1C730E884(v203, v206, v64, v202);
  if (v62)
  {
    v186(v65, v38);
    __swift_destroy_boxed_opaque_existential_1(v206);
    __swift_destroy_boxed_opaque_existential_1(v203);
    (*(v41 + 8))(v191, v40);
LABEL_15:
    __swift_project_boxed_opaque_existential_1(v173, v173[3]);
    OUTLINED_FUNCTION_13_62();
    a5 = v176;
    goto LABEL_17;
  }

  memcpy(v200, v202, sizeof(v200));
  memcpy(v199, __src, sizeof(v199));
  v67 = v171;
  v66(v171, v191, v40);
  v68 = sub_1C730E76C(v199, v203, v206, v67);
  v70 = v69;
  if (sub_1C75507FC() < 1)
  {
    v186 = v68;
  }

  else
  {
    *&v199[0] = 32;
    *(&v199[0] + 1) = 0xE100000000000000;
    MEMORY[0x1CCA5CD70](v68, v70);

    v70 = *(&v199[0] + 1);
    v186 = *&v199[0];
  }

  v191 = v70;
  v195 = 0;
  v71 = *(v182 + 16);
  if (v71)
  {
    v72 = v182 + 32;
    v73 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C6FB5E28(v72, v199);
      v74 = *(&v199[1] + 1);
      v75 = *&v199[2];
      __swift_project_boxed_opaque_existential_1(v199, *(&v199[1] + 1));
      v76 = (*(v75 + 32))(v74, v75);
      v78 = v77;
      __swift_destroy_boxed_opaque_existential_1(v199);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v73 = v81;
      }

      v79 = *(v73 + 16);
      if (v79 >= *(v73 + 24) >> 1)
      {
        sub_1C6FB1814();
        v73 = v82;
      }

      *(v73 + 16) = v79 + 1;
      v80 = v73 + 16 * v79;
      *(v80 + 32) = v76;
      *(v80 + 40) = v78;
      v72 += 40;
      --v71;
    }

    while (v71);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v198 = v73;
  v83 = v189;
  v84 = OUTLINED_FUNCTION_16_52();
  sub_1C75511BC();
  v85 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v85, v86))
  {
    OUTLINED_FUNCTION_13_3();
    v87 = swift_slowAlloc();
    *v87 = 134217984;
    *(v87 + 4) = *(v73 + 16);
    OUTLINED_FUNCTION_7_65();
    _os_log_impl(v88, v89, v90, v91, v92, v93);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  memcpy(v199, __src, sizeof(v199));
  sub_1C75504FC();
  sub_1C730FB8C(v199, v73);
  v95 = v94;

  v96 = sub_1C706D154(v95);
  v97 = sub_1C71CD85C(v96);
  swift_beginAccess();
  v198 = v97;

  v98 = OUTLINED_FUNCTION_16_52();
  sub_1C75511BC();
  v99 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v99, v100))
  {
    OUTLINED_FUNCTION_13_3();
    v101 = swift_slowAlloc();
    *v101 = 134217984;
    *(v101 + 4) = *(v97 + 16);
    OUTLINED_FUNCTION_7_65();
    _os_log_impl(v102, v103, v104, v105, v106, v107);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (*(v83 + 64) == 1)
  {
    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_0(v203, v204);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C72AF5EC(&qword_1EDD06AA8);
    sub_1C72AF5EC(&qword_1EDD06A98);
    v83 = v189;
    sub_1C755062C();
    swift_endAccess();
  }

  v108 = v198;
  v109 = sub_1C75504FC();
  v110 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v109, 1, 1701736270);
  v112 = v111;

  v113 = [v170 storytellerSelectedTraitsCount];
  if (!v113)
  {
    v122 = *(v83 + 72);
    v115 = sub_1C7310290(v182, v122);

    if (v115 < 0)
    {
      __break(1u);
      return;
    }

    sub_1C75504FC();
    v116 = OUTLINED_FUNCTION_16_52();
    v117 = sub_1C75511BC();
    v123 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v123, v124))
    {
      v120 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_78(v120, 3.8521e-34);
      v121 = "Asking storytelling adapter to focus on %ld traits out of %ld traits, based on distribution";
      goto LABEL_42;
    }

LABEL_43:

    goto LABEL_44;
  }

  v114 = v113;
  v115 = [v113 integerValue];

  sub_1C75504FC();
  v116 = OUTLINED_FUNCTION_16_52();
  v117 = sub_1C75511BC();
  v118 = OUTLINED_FUNCTION_72();
  if (!os_log_type_enabled(v118, v119))
  {
    goto LABEL_43;
  }

  v120 = swift_slowAlloc();
  OUTLINED_FUNCTION_6_78(v120, 3.8521e-34);
  v121 = "Asking storytelling adapter to focus on %ld traits out of %ld traits, based on user default";
LABEL_42:
  _os_log_impl(&dword_1C6F5C000, v116, v117, v121, v120, 0x16u);
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();

LABEL_44:
  v40 = v208;
  v125 = v181;
  if (*(v108 + 16) >= v115)
  {
    v126 = v115;
  }

  else
  {
    v126 = *(v108 + 16);
  }

  v127 = v183;
  v187 = v108;
  if (v183)
  {
    *(*(*(v183 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 24) + 48) = v108;
    sub_1C75504FC();

    v128 = *(*(v127 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 24);
    v129 = v191;
    *(v128 + 64) = v186;
    *(v128 + 72) = v129;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1C7581F90;
  OUTLINED_FUNCTION_3_1();
  *(v131 + 32) = 0xD000000000000018;
  *(v131 + 40) = v132;
  *&v199[0] = v178;
  *(&v199[0] + 1) = v125;
  sub_1C75504FC();
  *(v130 + 48) = sub_1C755097C();
  *(v130 + 56) = v133;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 64) = 0xD000000000000013;
  *(v130 + 72) = v134;
  *(v130 + 80) = v110;
  *(v130 + 88) = v112;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 96) = 0xD000000000000019;
  *(v130 + 104) = v135;
  *&v199[0] = v126;
  *(v130 + 112) = OUTLINED_FUNCTION_12_56();
  *(v130 + 120) = v136;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 128) = 0xD000000000000016;
  *(v130 + 136) = v137;
  *(v130 + 144) = 0x656761746E6F4DLL;
  *(v130 + 152) = 0xE700000000000000;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 160) = 0xD000000000000013;
  *(v130 + 168) = v138;
  v139 = v189;
  *&v199[0] = *(v189 + 32);
  *(v130 + 176) = OUTLINED_FUNCTION_12_56();
  *(v130 + 184) = v140;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 192) = 0xD000000000000013;
  *(v130 + 200) = v141;
  *&v199[0] = *(v139 + 40);
  *(v130 + 208) = OUTLINED_FUNCTION_12_56();
  *(v130 + 216) = v142;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 224) = 0xD000000000000013;
  *(v130 + 232) = v143;
  v144 = 1702195796;
  if (LOBYTE(v200[0]))
  {
    v145 = 1702195796;
  }

  else
  {
    v145 = 0x65736C6146;
  }

  if (LOBYTE(v200[0]))
  {
    v146 = 0xE400000000000000;
  }

  else
  {
    v146 = 0xE500000000000000;
  }

  *(v130 + 240) = v145;
  *(v130 + 248) = v146;
  *(v130 + 256) = 0x6D726F6665657266;
  *(v130 + 264) = 0xEF73746550736148;
  if (BYTE1(v200[0]))
  {
    v147 = 0xE400000000000000;
  }

  else
  {
    v144 = 0x65736C6146;
    v147 = 0xE500000000000000;
  }

  *(v130 + 272) = v144;
  *(v130 + 280) = v147;
  *(v130 + 288) = 0xD00000000000001FLL;
  *(v130 + 296) = 0x80000001C75958D0;
  v148 = v200[3];
  *(v130 + 304) = v200[2];
  *(v130 + 312) = v148;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 320) = v150;
  *(v130 + 328) = v149;
  v152 = *(v151 + 48);
  *(v130 + 336) = *(v151 + 40);
  *(v130 + 344) = v152;
  OUTLINED_FUNCTION_3_1();
  *(v130 + 352) = v154;
  *(v130 + 360) = v153;
  v156 = *(v155 + 72);
  *(v130 + 368) = *(v155 + 64);
  *(v130 + 376) = v156;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C730BAFC(v200);
  v157 = sub_1C75504DC();
  if (v183)
  {
    sub_1C75504FC();
    sub_1C71619C4();
  }

  type metadata accessor for LLMWrapperUtils();
  v158 = v195;
  v41 = v196;
  v159 = v180;
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  LOBYTE(v199[0]) = byte_1EC218F88;
  static LLMWrapperUtils.storytellerModelType(for:)(v197);
  type metadata accessor for LLMConfigurationProvider();
  v38 = v179;
  if (qword_1EDD0BCA8 != -1)
  {
    swift_once();
  }

  v160 = sub_1C754FF1C();
  v161 = __swift_project_value_buffer(v160, qword_1EDD0BCB0);
  v162 = static LLMConfigurationProvider.configuration(for:logger:)(v197, v161, v38);
  v163 = (v190 + 8);
  if (v158)
  {

    (*v163)(v192, v188);
    __swift_destroy_boxed_opaque_existential_1(v206);

    __swift_destroy_boxed_opaque_existential_1(v203);
    goto LABEL_15;
  }

  (*v163)(v192, v188, v162);
  __swift_destroy_boxed_opaque_existential_1(v206);
  v164 = &v38[*(v177 + 40)];
  v165 = *(v164 + 1);
  v199[0] = *v164;
  v199[1] = v165;
  v199[2] = *(v164 + 2);
  *(&v199[2] + 9) = *(v164 + 41);
  sub_1C731054C(v38, type metadata accessor for LLMConfiguration);

  *v159 = v157;
  v166 = v199[1];
  *(v159 + 8) = v199[0];
  *(v159 + 24) = v166;
  *(v159 + 40) = v199[2];
  *(v159 + 49) = *(&v199[2] + 9);
  __swift_destroy_boxed_opaque_existential_1(v203);
  __swift_project_boxed_opaque_existential_1(v173, v173[3]);
  v167 = v172;
  sub_1C754F1AC();
  (*(v193 + 8))(v167, v194);
  (*(v41 + 8))(v176, v40);
}

unint64_t static FreeformStoryRequestGenerator.numberOfTraitsToSelect(from:randomizer:)(uint64_t a1, void *a2)
{
  swift_getObjectType();

  return sub_1C7310290(a1, a2);
}

void sub_1C730FB8C(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = type metadata accessor for TimeExtendedToken(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_78();
  v71 = (v5 - v6);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  v72 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - v10;
  v12 = 0;
  v13 = *(a1 + 40);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = *(v13 + 16);
  while (v15 != v12)
  {
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    sub_1C721AB4C(v13 + v16 + v17 * v12, v11);
    switch(v11[57])
    {
      case 5:

        goto LABEL_7;
      default:
        v18 = sub_1C7551DBC();

        if ((v18 & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_7:
        if (v11[56] == 1)
        {
          sub_1C721AC04(v11, v72);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C716DCA8();
            v14 = v73;
          }

          v22 = *(v14 + 16);
          v21 = *(v14 + 24);
          v23 = v22 + 1;
          if (v22 >= v21 >> 1)
          {
            OUTLINED_FUNCTION_8_66(v21);
            v25 = v24;
            sub_1C716DCA8();
            v23 = v25;
            v14 = v73;
          }

          ++v12;
          *(v14 + 16) = v23;
          sub_1C721AC04(v72, v14 + v16 + v22 * v17);
        }

        else
        {
LABEL_8:
          OUTLINED_FUNCTION_0_138();
          sub_1C731054C(v11, v19);
          ++v12;
        }

        break;
    }
  }

  v72 = v14;
  v26 = v69;
  v27 = *(v69 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v29 = v26 + 40;
    v31 = v72;
    v30 = v73;
    do
    {
      v32 = sub_1C75506FC();
      v34 = v33;
      v73 = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_8_66(v35);
        sub_1C6F7ED9C();
        v30 = v73;
      }

      *(v30 + 16) = v36 + 1;
      v37 = v30 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v29 += 16;
      --v27;
    }

    while (v27);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v72;
  }

  v38 = sub_1C706D154(v30);
  v39 = *(v31 + 16);
  if (v39)
  {
    v73 = v28;
    sub_1C6F7ED9C();
    v40 = v73;
    v41 = v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v42 = *(v4 + 72);
    v43 = v71;
    do
    {
      sub_1C721AB4C(v41, v43);
      v44 = *v43;
      v45 = v43[1];
      sub_1C75504FC();
      OUTLINED_FUNCTION_0_138();
      sub_1C731054C(v43, v46);
      v73 = v40;
      v48 = v40[2];
      v47 = v40[3];
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_8_66(v47);
        sub_1C6F7ED9C();
        v43 = v71;
        v40 = v73;
      }

      v40[2] = v48 + 1;
      v49 = &v40[2 * v48];
      v49[4] = v44;
      v49[5] = v45;
      v41 += v42;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  v50 = 0;
  v51 = v40[2];
  v71 = (v40 + 4);
  v72 = v51;
  v70 = MEMORY[0x1E69E7CC0];
LABEL_29:
  while (v50 != v72)
  {
    if (v50 >= v40[2])
    {
      goto LABEL_48;
    }

    v52 = &v71[2 * v50];
    v54 = *v52;
    v53 = v52[1];
    ++v50;
    v55 = sub_1C75506FC();
    v57 = v56;
    if (*(v38 + 16))
    {
      v58 = v55;
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v59 = sub_1C7551FAC();
      v60 = ~(-1 << *(v38 + 32));
      while (1)
      {
        v61 = v59 & v60;
        if (((*(v38 + 56 + (((v59 & v60) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v59 & v60)) & 1) == 0)
        {
          break;
        }

        v62 = (*(v38 + 48) + 16 * v61);
        if (*v62 != v58 || v62[1] != v57)
        {
          v64 = sub_1C7551DBC();
          v59 = v61 + 1;
          if ((v64 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    v65 = v70;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v65;
    if ((v66 & 1) == 0)
    {
      sub_1C6F7ED9C();
      v65 = v74;
    }

    v67 = *(v65 + 16);
    if (v67 >= *(v65 + 24) >> 1)
    {
      sub_1C6F7ED9C();
      v65 = v74;
    }

    *(v65 + 16) = v67 + 1;
    v70 = v65;
    v68 = v65 + 16 * v67;
    *(v68 + 32) = v54;
    *(v68 + 40) = v53;
  }

  v73 = v69;
  sub_1C75504FC();
  sub_1C6FD2568(v70);
}

uint64_t FreeformStoryRequestGenerator.deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryRequestGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FreeformStoryRequestGenerator.__deallocating_deinit()
{
  FreeformStoryRequestGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C731022C(void *a1)
{
  v1 = [a1 shufflePromptParametersSeed];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C7310290(uint64_t a1, id a2)
{
  result = *(a1 + 16);
  if (result >= 4)
  {
    v3 = 14;
    if (result < 0xE)
    {
      v3 = result;
    }

    v4 = result * 0.45 + 2.0;
    if (v4 == INFINITY)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 1.84467441e19)
      {
        v5 = v4;
        result = v3;
        if (v3 <= v4)
        {
          return result;
        }

        v6 = [a2 nextUnsignedIntegerLessThan_];
        v7 = __CFADD__(v6, v5);
        result = v6 + v5;
        if (!v7)
        {
          return result;
        }

LABEL_13:
        __break(1u);
        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryRequestGenerator()
{
  result = qword_1EDD080A0;
  if (!qword_1EDD080A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C73103A0()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C73104AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73104EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C731054C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_1C73105D0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SummarizationCLIPClusterer.__allocating_init(vectorFetchingBlock:clusterCreationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = (v8 + qword_1EC21A840);
  *v9 = a1;
  v9[1] = a2;
  v10 = (v8 + qword_1EC21A848);
  *v10 = a3;
  v10[1] = a4;
  return sub_1C754F55C();
}

uint64_t SummarizationCLIPClusterer.init(vectorFetchingBlock:clusterCreationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + qword_1EC21A840);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + qword_1EC21A848);
  *v6 = a3;
  v6[1] = a4;
  return sub_1C754F55C();
}

uint64_t sub_1C7310714(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AssetClusterer();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = v11 >> 1;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  v13 = v11 > 0x3E9;
  v14 = 500;
  if (!v13)
  {
    v14 = v12;
  }

  v35 = 1;
  LOBYTE(v36) = 0;
  v37 = 1000;
  v38 = v14;
  v39 = 1050253722;
  v40 = j___s18PhotosIntelligence15PairwiseMetricsO14cosineDistanceySfAA11FloatVectorV_AFtFZ;
  v41 = 0;
  v15 = *(v4 + qword_1EC21A840);
  v16 = *(v4 + qword_1EC21A840 + 8);
  static AssetClusterer.centroidCodebook(assetUUIDs:options:vectorFetchingBlock:)(a1, &v35, v15, v16, v42);
  if (!v3)
  {
    sub_1C6FB5E28(v42, v10);

    sub_1C754FE7C();
    *(v10 + 5) = v15;
    *(v10 + 6) = v16;
    v17 = AssetClusterer.cluster(_:)(a1);
    v20 = v17;
    v21 = *(v17 + 16);
    if (v21)
    {
      v30 = v10;
      v31 = 0;
      v32 = a2;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1C716EB64();
      v7 = v34;
      v33 = *(v4 + qword_1EC21A848);
      v22 = 32;
      do
      {
        v23 = v20;
        v24 = sub_1C75504FC();
        v33(&v35, v24);

        v25 = v35;
        v26 = v36;
        v34 = v7;
        v27 = *(v7 + 16);
        if (v27 >= *(v7 + 24) >> 1)
        {
          sub_1C716EB64();
          v7 = v34;
        }

        *(v7 + 16) = v27 + 1;
        v28 = v7 + 16 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        v22 += 8;
        --v21;
        v20 = v23;
      }

      while (v21);

      sub_1C7310A44(v30);
      __swift_destroy_boxed_opaque_existential_1(v42);
      a2 = v32;
    }

    else
    {

      sub_1C7310A44(v10);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v18 + 8))(a2);
  return v7;
}

uint64_t sub_1C7310A44(uint64_t a1)
{
  v2 = type metadata accessor for AssetClusterer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7310AD0()
{
}

uint64_t SummarizationCLIPClusterer.deinit()
{
  v0 = sub_1C754F56C();

  return v0;
}

uint64_t SummarizationCLIPClusterer.__deallocating_deinit()
{
  SummarizationCLIPClusterer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarizationCLIPClusterer()
{
  result = qword_1EC21A850;
  if (!qword_1EC21A850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FreeformStoryCuratedChapter.curatedAssets.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  sub_1C6FBC6B8();
  swift_allocError();
  *v1 = 2;
  return swift_willThrow();
}

void *FreeformStoryCuratedChapter.init(uncuratedChapter:curationState:highlightInformationByCuratedAssetUUID:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  result = memcpy(a4, __src, 0x68uLL);
  *(a4 + 104) = v6;
  *(a4 + 112) = v7;
  *(a4 + 120) = a3;
  return result;
}

uint64_t FreeformStoryCuratedChapter.fallbackShot.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_12_57(a1);
  v2 = v1;
  sub_1C75504FC();

  return sub_1C75504FC();
}

__n128 FreeformStoryUncuratedChapter.init(title:role:shots:fallbackShot:id:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *a5;
  *(a8 + 88) = 0;
  *(a8 + 96) = 0;
  *a8 = a6;
  *(a8 + 8) = a7;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = v8;
  *(a8 + 40) = a4;
  *(a8 + 48) = v9;
  *(a8 + 56) = *(a5 + 1);
  result = *(a5 + 3);
  *(a8 + 72) = result;
  return result;
}

uint64_t FreeformStoryUncuratedChapter.Role.description.getter()
{
  result = 0x706168432079654BLL;
  switch(*v0)
  {
    case 1:
      result = 0x6375646F72746E49;
      break;
    case 2:
      result = 0x656C616E6946;
      break;
    case 3:
      result = 0x432061207473754ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7310EA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F7274756FLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C7310FF8(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x6F72746E69;
      break;
    case 2:
      result = 0x6F7274756FLL;
      break;
    case 3:
      result = 0x6C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7311074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7310EA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C731109C(uint64_t a1)
{
  v2 = sub_1C73116A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73110D8(uint64_t a1)
{
  v2 = sub_1C73116A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7311114(uint64_t a1)
{
  v2 = sub_1C731179C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7311150(uint64_t a1)
{
  v2 = sub_1C731179C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C731118C(uint64_t a1)
{
  v2 = sub_1C73117F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73111C8(uint64_t a1)
{
  v2 = sub_1C73117F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7311204(uint64_t a1)
{
  v2 = sub_1C73116F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7311240(uint64_t a1)
{
  v2 = sub_1C73116F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C731127C(uint64_t a1)
{
  v2 = sub_1C7311748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73112B8(uint64_t a1)
{
  v2 = sub_1C7311748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryUncuratedChapter.Role.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A860);
  OUTLINED_FUNCTION_3_0();
  v39 = v4;
  v40 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v38 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A868);
  OUTLINED_FUNCTION_3_0();
  v36 = v8;
  v37 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A870);
  OUTLINED_FUNCTION_3_0();
  v33 = v12;
  v34 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A878);
  OUTLINED_FUNCTION_3_0();
  v30 = v16;
  v31 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A880);
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C73116A0();
  sub_1C755200C();
  switch(v26)
  {
    case 1:
      sub_1C731179C();
      v27 = v32;
      OUTLINED_FUNCTION_8_67();
      v29 = v33;
      v28 = v34;
      goto LABEL_6;
    case 2:
      sub_1C7311748();
      v27 = v35;
      OUTLINED_FUNCTION_8_67();
      v29 = v36;
      v28 = v37;
      goto LABEL_6;
    case 3:
      sub_1C73116F4();
      v27 = v38;
      OUTLINED_FUNCTION_8_67();
      v29 = v39;
      v28 = v40;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      sub_1C73117F0();
      sub_1C7551C6C();
      (*(v30 + 8))(v19, v31);
      break;
  }

  (*(v22 + 8))(v25, v20);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C73116A0()
{
  result = qword_1EDD07FB0;
  if (!qword_1EDD07FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07FB0);
  }

  return result;
}

unint64_t sub_1C73116F4()
{
  result = qword_1EDD07F50;
  if (!qword_1EDD07F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F50);
  }

  return result;
}

unint64_t sub_1C7311748()
{
  result = qword_1EDD07F68;
  if (!qword_1EDD07F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F68);
  }

  return result;
}

unint64_t sub_1C731179C()
{
  result = qword_1EDD07F80;
  if (!qword_1EDD07F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F80);
  }

  return result;
}

unint64_t sub_1C73117F0()
{
  result = qword_1EDD07F98;
  if (!qword_1EDD07F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F98);
  }

  return result;
}

void FreeformStoryUncuratedChapter.Role.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v69 = v0;
  v2 = v1;
  v65 = v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A888);
  OUTLINED_FUNCTION_3_0();
  v64 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v67 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A890);
  OUTLINED_FUNCTION_3_0();
  v61 = v8;
  v62 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v63 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A898);
  OUTLINED_FUNCTION_3_0();
  v59 = v12;
  v60 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8A0);
  OUTLINED_FUNCTION_3_0();
  v58 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8A8);
  OUTLINED_FUNCTION_3_0();
  v66 = v22;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C73116A0();
  v26 = v69;
  sub_1C7551FFC();
  if (v26)
  {
    goto LABEL_9;
  }

  v55 = v16;
  v56 = v20;
  v57 = v15;
  v27 = v67;
  v28 = v68;
  v69 = v2;
  v29 = v25;
  v30 = sub_1C7551C5C();
  sub_1C6FD80E0(v30, 0);
  if (v32 == v33 >> 1)
  {
LABEL_8:
    v44 = v66;
    v45 = sub_1C75518EC();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v47 = &type metadata for FreeformStoryUncuratedChapter.Role;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v29, v21);
    v2 = v69;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
    OUTLINED_FUNCTION_125();
    return;
  }

  v54 = 0;
  if (v32 < (v33 >> 1))
  {
    v34 = *(v31 + v32);
    sub_1C6FD80C8(v32 + 1);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    if (v36 == v38 >> 1)
    {
      v39 = v65;
      v40 = v66;
      v53 = v34;
      v41 = v34;
      v42 = v64;
      switch(v41)
      {
        case 1:
          sub_1C731179C();
          v48 = v57;
          OUTLINED_FUNCTION_53_0();
          swift_unknownObjectRelease();
          v50 = v59;
          v49 = v60;
          goto LABEL_18;
        case 2:
          sub_1C7311748();
          v48 = v63;
          OUTLINED_FUNCTION_53_0();
          swift_unknownObjectRelease();
          v50 = v61;
          v49 = v62;
LABEL_18:
          (*(v50 + 8))(v48, v49);
          goto LABEL_19;
        case 3:
          sub_1C73116F4();
          v51 = v54;
          sub_1C7551B4C();
          if (v51)
          {
            (*(v40 + 8))(v29, v21);
            swift_unknownObjectRelease();
            v2 = v69;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v42 + 8))(v27, v28);
LABEL_19:
          (*(v40 + 8))(v29, v21);
          *v39 = v53;
          __swift_destroy_boxed_opaque_existential_1(v69);
          break;
        default:
          sub_1C73117F0();
          v43 = v56;
          OUTLINED_FUNCTION_53_0();
          swift_unknownObjectRelease();
          (*(v58 + 8))(v43, v55);
          goto LABEL_19;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t FreeformStoryUncuratedChapter.fallbackShot.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_12_57(a1);
  v2 = v1;
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t FreeformStoryUncuratedChapter.requiredAssets.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t FreeformStoryUncuratedChapter.forbiddenAssets.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

void FreeformStoryUncuratedChapter.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if ([*(v0 + 64) fetchedObjects])
  {
    OUTLINED_FUNCTION_19_1();
    sub_1C6FDEC1C();
    v5 = sub_1C7550B5C();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75AAA20);
  MEMORY[0x1CCA5CD70](v1, v2);
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_26_40();
  sub_1C73E68E8(v3);
  OUTLINED_FUNCTION_25_37();
  OUTLINED_FUNCTION_26_40();
  v6 = MEMORY[0x1CCA5D090](v4, &type metadata for FreeformStoryShot);
  MEMORY[0x1CCA5CD70](v6);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  v7 = FreeformStoryShot.description.getter();
  MEMORY[0x1CCA5CD70](v7);

  MEMORY[0x1CCA5CD70](2112041, 0xE300000000000000);
  v8 = sub_1C6FB6304();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v9)
    {

      v21 = MEMORY[0x1CCA5D090](v10, MEMORY[0x1E69E6158]);
      v23 = v22;

      MEMORY[0x1CCA5CD70](v21, v23);

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA5DDD0](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v14 = sub_1C70CAC04(v11);
    v16 = v15;

    ++v9;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v10 = v19;
      }

      v17 = *(v10 + 16);
      if (v17 >= *(v10 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_53();
        v10 = v20;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v9 = v13;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

PhotosIntelligence::FreeformStoryUncuratedChapter::CodingKeys_optional __swiftcall FreeformStoryUncuratedChapter.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 25705 && stringValue._object == 0xE200000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_42_0() & 1) != 0))
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x656C746974 && object == 0xE500000000000000;
    if (v8 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 1701605234 && object == 0xE400000000000000;
      if (v9 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v10 = countAndFlagsBits == 0x73746F6873 && object == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
        {

          v7 = 3;
        }

        else if (countAndFlagsBits == OUTLINED_FUNCTION_18_46() && object == v11)
        {

          v7 = 4;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_42_0();

          if (v13)
          {
            v7 = 4;
          }

          else
          {
            v7 = 5;
          }
        }
      }
    }
  }

  *v3 = v7;
  return result;
}

uint64_t FreeformStoryUncuratedChapter.CodingKeys.stringValue.getter()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 1701605234;
      break;
    case 3:
      result = 0x73746F6873;
      break;
    case 4:
      result = OUTLINED_FUNCTION_18_46();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7312480(uint64_t a1)
{
  v2 = sub_1C7314C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73124BC(uint64_t a1)
{
  v2 = sub_1C7314C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryUncuratedChapter.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v30 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8B0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *(v0 + 16);
  v28 = *(v0 + 24);
  v29 = v10;
  v36 = *(v0 + 32);
  v11 = *(v0 + 40);
  v26 = *(v0 + 48);
  v27 = v11;
  v12 = *(v0 + 56);
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v22 = *(v0 + 64);
  v23 = v14;
  v24 = v13;
  v25 = v12;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C7314C7C();
  sub_1C755200C();
  LOBYTE(v31) = 0;
  v15 = v30;
  sub_1C7551CCC();
  if (!v15)
  {
    v16 = v26;
    v17 = v27;
    v18 = v25;
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    LOBYTE(v31) = v36;
    sub_1C7314CD0();
    OUTLINED_FUNCTION_11_58();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v31 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8B8);
    sub_1C7314DCC(&qword_1EDD06B88, sub_1C7314D24);
    OUTLINED_FUNCTION_11_58();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v31 = v16;
    v32 = v18;
    v19 = v22;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    sub_1C7314D24();
    sub_1C75504FC();
    v20 = v19;
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_11_58();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v21 = v33;
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_125();
}

void FreeformStoryUncuratedChapter.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8C0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C7314C7C();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_22_51();
    v6 = sub_1C7551BBC();
    v8 = v7;
    v19 = v6;
    LOBYTE(v23[0]) = 1;
    OUTLINED_FUNCTION_22_51();
    v9 = sub_1C7551BBC();
    v20 = v10;
    v18 = v9;
    sub_1C7314D78();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8B8);
    LOBYTE(v22[0]) = 3;
    sub_1C7314DCC(&qword_1EC21A8D0, sub_1C7314E44);
    OUTLINED_FUNCTION_22_51();
    sub_1C7551C1C();
    v11 = v23[0];
    sub_1C7314E44();
    OUTLINED_FUNCTION_22_51();
    sub_1C7551C1C();
    v12 = OUTLINED_FUNCTION_5_71();
    v13(v12);
    v16 = v35;
    v17 = v34;
    v14 = v37;
    v15 = v36;
    v21 = v33;
    v22[0] = v19;
    v22[1] = v8;
    v22[2] = v18;
    v22[3] = v20;
    LOBYTE(v22[4]) = 1;
    v22[5] = v11;
    v22[6] = v33;
    v22[7] = v34;
    v22[8] = v35;
    v22[9] = v36;
    v22[10] = v37;
    v22[11] = 0;
    v22[12] = 0;
    memcpy(v4, v22, 0x68uLL);
    sub_1C6FC061C(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v23[0] = v19;
    v23[1] = v8;
    v23[2] = v18;
    v23[3] = v20;
    v24 = 1;
    v25 = v11;
    v26 = v21;
    v27 = v17;
    v28 = v16;
    v29 = v15;
    v30 = v14;
    v31 = 0;
    v32 = 0;
    sub_1C70552E0(v23);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7312B58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C7312C1C(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x64657461727563;
  }
}

uint64_t sub_1C7312C50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C75AAB10 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7312CEC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7312D74(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a2;
  v23 = a4;
  v19 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A968);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A970);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A978);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7315BFC();
  sub_1C755200C();
  if (v23)
  {
    v25 = 1;
    sub_1C7315C50();
    sub_1C7551C6C();
    v14 = v20;
    sub_1C7551CCC();
    (*(v18 + 8))(v6, v14);
  }

  else
  {
    v24 = 0;
    sub_1C7315CA4();
    sub_1C7551C6C();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    sub_1C7551D2C();
    (*(v17 + 8))(v9, v7);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1C73130B4(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A948);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A950);
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A958);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7315BFC();
  v11 = v39;
  sub_1C7551FFC();
  if (v11)
  {
    goto LABEL_10;
  }

  v33 = v4;
  v34 = v6;
  v39 = a1;
  v12 = v38;
  v13 = sub_1C7551C5C();
  result = sub_1C6FD80E0(v13, 0);
  if (v16 == v17 >> 1)
  {
    goto LABEL_8;
  }

  v32 = 0;
  if (v16 < (v17 >> 1))
  {
    v18 = *(v15 + v16);
    sub_1C6FD80C8(v16 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    if (v20 == v22 >> 1)
    {
      v41 = v18;
      if (v18)
      {
        v43 = 1;
        sub_1C7315C50();
        v10 = v9;
        v23 = v32;
        sub_1C7551B4C();
        v24 = v37;
        if (!v23)
        {
          v10 = sub_1C7551BBC();
          swift_unknownObjectRelease();
          (*(v36 + 8))(v3, v12);
          (*(v24 + 8))(v9, v7);
LABEL_15:
          __swift_destroy_boxed_opaque_existential_1(v39);
          return v10;
        }
      }

      else
      {
        v42 = 0;
        sub_1C7315CA4();
        v28 = v34;
        v10 = v9;
        v29 = v32;
        sub_1C7551B4C();
        v24 = v37;
        if (!v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          sub_1C6FF60E4(&qword_1EDD0CF50);
          v30 = v33;
          sub_1C7551C1C();
          swift_unknownObjectRelease();
          (*(v35 + 8))(v28, v30);
          (*(v24 + 8))(v9, v7);
          v10 = v40;
          goto LABEL_15;
        }
      }

      (*(v24 + 8))(v9, v7);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

LABEL_8:
    v25 = sub_1C75518EC();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v27 = &type metadata for FreeformStoryCuratedChapter.CodableCurationState;
    v10 = v9;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v9, v7);
LABEL_9:
    a1 = v39;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73136D8@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStoryUncuratedChapter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C731370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7312B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7313734(uint64_t a1)
{
  v2 = sub_1C7315BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7313770(uint64_t a1)
{
  v2 = sub_1C7315BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73137B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7312C50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73137DC(uint64_t a1)
{
  v2 = sub_1C7315CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7313818(uint64_t a1)
{
  v2 = sub_1C7315CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7313858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7312CEC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C7313884(uint64_t a1)
{
  v2 = sub_1C7315C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73138C0(uint64_t a1)
{
  v2 = sub_1C7315C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73138FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C73130B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

id FreeformStoryCuratedChapter.curationState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_1C6FBC70C(v2);
}

void FreeformStoryCuratedChapter.curationState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1C6FBC718(*(v1 + 104));
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
}

void FreeformStoryCuratedChapter.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A8E0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C713E08C(v2);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v11 = v4;
    v12 = v6;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1C7314E98();
    sub_1C7551FFC();
    sub_1C7314EEC();
    sub_1C7551C1C();
    memcpy(v22, v21, sizeof(v22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FE8);
    sub_1C7315048(&qword_1EC21A8F0, sub_1C7314F40);
    sub_1C7551C1C();
    v7 = v14[0];
    LOBYTE(v13[0]) = 1;
    sub_1C7314F94();
    sub_1C7551C1C();
    sub_1C7313D60(v14[0], v15, v12, &v19);
    v8 = OUTLINED_FUNCTION_1_2();
    v9(v8);

    sub_1C7314FE8();
    v10 = v19;
    v23 = v20;
    OUTLINED_FUNCTION_27_38(v13);
    v13[13] = v10;
    LOBYTE(v13[14]) = v23;
    v13[15] = v7;
    memcpy(v11, v13, 0x80uLL);
    sub_1C6FB7BB8(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_27_38(v14);
    v16 = v10;
    v17 = v23;
    v18 = v7;
    sub_1C6FBC664(v14);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C7313D60(uint64_t a1@<X0>, char a2@<W2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    sub_1C6FBC6B8();
    v7 = swift_allocError();
    *v8 = 1;
LABEL_3:
    *a4 = v7;
    *(a4 + 8) = a2 & 1;
    return;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [a3 librarySpecificFetchOptions];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = sub_1C6FCA158(a1, v12, v13);

  if (v15)
  {
    type metadata accessor for FreeformStoryDiagnosticsUtils();
    v16 = sub_1C734A78C(v15, a1, a3);
    if (!v4)
    {
      v7 = v16;

      objc_autoreleasePoolPop(v11);
      goto LABEL_3;
    }
  }

  sub_1C6FBC6B8();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();

  objc_autoreleasePoolPop(v11);
}

void FreeformStoryCuratedChapter.description.getter()
{
  v1 = *(v0 + 16);
  v45 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v48 = *(v0 + 104);
  v4 = *(v0 + 112);
  if ([*(v0 + 64) fetchedObjects])
  {
    OUTLINED_FUNCTION_19_1();
    sub_1C6FDEC1C();
    v5 = sub_1C7550B5C();

    if (v4)
    {
LABEL_3:
      v6 = v48;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75AAA70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      sub_1C75519EC();
      sub_1C6FBC718(v48);
      v46 = 0;
      v49 = 0xE000000000000000;
      goto LABEL_22;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v44 = v3;
  v43 = v2;
  v42 = v1;
  if ([v48 fetchedObjects])
  {
    OUTLINED_FUNCTION_19_1();
    sub_1C6FDEC1C();
    v7 = sub_1C7550B5C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1C755180C();

  sub_1C6FB6304();
  v8 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v8);

  MEMORY[0x1CCA5CD70](0x2973746573736120, 0xEA0000000000203ALL);
  v9 = sub_1C6FB6304();
  v10 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (v9 != v10)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA5DDD0](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_38;
    }

    v14 = sub_1C70CAC04(v11);
    v16 = v15;

    ++v10;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v47 = v19;
      }

      v17 = *(v47 + 16);
      if (v17 >= *(v47 + 24) >> 1)
      {
        sub_1C6FB1814();
        v47 = v20;
      }

      *(v47 + 16) = v17 + 1;
      v18 = v47 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v10 = v13;
    }
  }

  v21 = MEMORY[0x1CCA5D090](v47, MEMORY[0x1E69E6158]);
  v23 = v22;

  MEMORY[0x1CCA5CD70](v21, v23);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  sub_1C6FBC718(v48);
  v46 = 0x4164657461727563;
  v49 = 0xEF28207374657373;
  v3 = v44;
  v2 = v43;
  v1 = v42;
LABEL_22:
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C75AAA90);
  MEMORY[0x1CCA5CD70](v1, v45);
  OUTLINED_FUNCTION_19_57();
  OUTLINED_FUNCTION_26_40();
  sub_1C73E68E8(v2);
  OUTLINED_FUNCTION_25_37();
  OUTLINED_FUNCTION_26_40();
  v24 = MEMORY[0x1CCA5D090](v3, &type metadata for FreeformStoryShot);
  MEMORY[0x1CCA5CD70](v24);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  v25 = FreeformStoryShot.description.getter();
  MEMORY[0x1CCA5CD70](v25);

  MEMORY[0x1CCA5CD70](2112041, 0xE300000000000000);
  v26 = sub_1C6FB6304();
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v26 == v27)
    {

      v39 = MEMORY[0x1CCA5D090](v28, MEMORY[0x1E69E6158]);
      v41 = v40;

      MEMORY[0x1CCA5CD70](v39, v41);

      MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
      MEMORY[0x1CCA5CD70](v46, v49);

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1CCA5DDD0](v27, v5);
    }

    else
    {
      if (v27 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v29 = *(v5 + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v32 = sub_1C70CAC04(v29);
    v34 = v33;

    ++v27;
    if (v34)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v28 = v37;
      }

      v35 = *(v28 + 16);
      if (v35 >= *(v28 + 24) >> 1)
      {
        OUTLINED_FUNCTION_16_53();
        v28 = v38;
      }

      *(v28 + 16) = v35 + 1;
      v36 = v28 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v34;
      v27 = v31;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

PhotosIntelligence::FreeformStoryCuratedChapter::CodingKeys_optional __swiftcall FreeformStoryCuratedChapter.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  OUTLINED_FUNCTION_10_2();
  v6 = v4 == 0xD000000000000010 && v5 == object;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_42_0() & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = v7 == 0x6E6F697461727563 && object == 0xED00006574617453;
    if (v10 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
    {

      v9 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_10_2();
      if (v7 == 0xD000000000000026 && v11 == object)
      {

        v9 = 2;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_42_0();

        if (v13)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }
    }
  }

  *v3 = v9;
  return result;
}

unint64_t FreeformStoryCuratedChapter.CodingKeys.stringValue.getter()
{
  v1 = 0x6E6F697461727563;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C7314660(uint64_t a1)
{
  v2 = sub_1C7314E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C731469C(uint64_t a1)
{
  v2 = sub_1C7314E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryCuratedChapter.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v22 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A908);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  memcpy(v28, v0, 0x68uLL);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v20 = *(v0 + 120);
  v21 = v10;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C6FC061C(v28, v27);
  sub_1C7314E98();
  sub_1C755200C();
  OUTLINED_FUNCTION_27_38(v27);
  sub_1C716A2A8();
  v12 = v22;
  sub_1C7551D2C();
  if (v12)
  {
    memcpy(v26, v27, sizeof(v26));
    sub_1C70552E0(v26);
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v13 = v6;
    memcpy(v26, v27, sizeof(v26));
    sub_1C70552E0(v26);
    v23 = v21;
    LOBYTE(v24) = v11;
    sub_1C6FBC70C(v21);
    sub_1C73149F0(&v23);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_1C6FBC718(v23);
    v23 = v15;
    v24 = v17;
    v25 = v19 & 1;
    sub_1C7314FF4();
    sub_1C7551D2C();
    sub_1C7314FE8();
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FE8);
    sub_1C7315048(&qword_1EC21A910, sub_1C73150CC);
    sub_1C7551D2C();
    (*(v13 + 8))(v9, 0);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C73149F0(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    swift_getErrorValue();
    sub_1C7551EAC();
  }

  else
  {
    v3 = [v2 fetchedObjects];
    if (v3)
    {
      v4 = v3;
      sub_1C6FDEC1C();
      v5 = sub_1C7550B5C();

      v6 = sub_1C6FB6304();
      v7 = 0;
      v21 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v6 == v7)
        {

          return;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1CCA5DDD0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = v8;
        v11 = [v10 uuid];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1C755068C();
          v20 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v21 = v17;
          }

          v15 = *(v21 + 16);
          if (v15 >= *(v21 + 24) >> 1)
          {
            sub_1C6FB1814();
            v21 = v18;
          }

          *(v21 + 16) = v15 + 1;
          v16 = v21 + 16 * v15;
          *(v16 + 32) = v13;
          *(v16 + 40) = v20;
          v7 = v9;
        }

        else
        {

          ++v7;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      sub_1C6FBC6B8();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C7314C50@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStoryCuratedChapter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C7314C7C()
{
  result = qword_1EDD07FC8[0];
  if (!qword_1EDD07FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD07FC8);
  }

  return result;
}

unint64_t sub_1C7314CD0()
{
  result = qword_1EDD07F38;
  if (!qword_1EDD07F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F38);
  }

  return result;
}

unint64_t sub_1C7314D24()
{
  result = qword_1EDD0AAE8;
  if (!qword_1EDD0AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAE8);
  }

  return result;
}

unint64_t sub_1C7314D78()
{
  result = qword_1EC21A8C8;
  if (!qword_1EC21A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A8C8);
  }

  return result;
}

uint64_t sub_1C7314DCC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A8B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7314E44()
{
  result = qword_1EC21A8D8;
  if (!qword_1EC21A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A8D8);
  }

  return result;
}

unint64_t sub_1C7314E98()
{
  result = qword_1EDD08D08;
  if (!qword_1EDD08D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08D08);
  }

  return result;
}

unint64_t sub_1C7314EEC()
{
  result = qword_1EC21A8E8;
  if (!qword_1EC21A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A8E8);
  }

  return result;
}

unint64_t sub_1C7314F40()
{
  result = qword_1EC21A8F8;
  if (!qword_1EC21A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A8F8);
  }

  return result;
}

unint64_t sub_1C7314F94()
{
  result = qword_1EC21A900;
  if (!qword_1EC21A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A900);
  }

  return result;
}

unint64_t sub_1C7314FF4()
{
  result = qword_1EDD08CB0;
  if (!qword_1EDD08CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CB0);
  }

  return result;
}

uint64_t sub_1C7315048(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216FE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C73150CC()
{
  result = qword_1EC21A918;
  if (!qword_1EC21A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A918);
  }

  return result;
}

unint64_t sub_1C7315124()
{
  result = qword_1EC21A920;
  if (!qword_1EC21A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A920);
  }

  return result;
}

unint64_t sub_1C731517C()
{
  result = qword_1EC21A928;
  if (!qword_1EC21A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A928);
  }

  return result;
}

unint64_t sub_1C73151D4()
{
  result = qword_1EDD07FB8;
  if (!qword_1EDD07FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07FB8);
  }

  return result;
}

unint64_t sub_1C731522C()
{
  result = qword_1EDD07FC0;
  if (!qword_1EDD07FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07FC0);
  }

  return result;
}

unint64_t sub_1C7315284()
{
  result = qword_1EC21A930;
  if (!qword_1EC21A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A930);
  }

  return result;
}

unint64_t sub_1C73152DC()
{
  result = qword_1EDD08CF8;
  if (!qword_1EDD08CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CF8);
  }

  return result;
}

unint64_t sub_1C7315334()
{
  result = qword_1EDD08D00;
  if (!qword_1EDD08D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08D00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryUncuratedChapter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C7315478(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73154B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7315524(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7315564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *sub_1C73155E8(_BYTE *result, unsigned int a2, unsigned int a3)
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