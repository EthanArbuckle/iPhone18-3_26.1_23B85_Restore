_BYTE *storeEnumTagSinglePayload for FreeformStoryShot.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7385FC0()
{
  result = qword_1EC21B018;
  if (!qword_1EC21B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B018);
  }

  return result;
}

uint64_t static PromptSuggestionReader.promptSuggestionByPromptText(_:in:sources:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = static PromptSuggestionReader.fetchPHPromptSuggestions(_:in:sources:)(a1, a2, a3);
  v6 = [v5 fetchedObjects];
  if (v6)
  {
    v7 = v6;
    sub_1C6F65BE8(0, &qword_1EDD0CEB0);
    v8 = sub_1C7550B5C();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v33 = MEMORY[0x1E69E7CC8];
  v9 = sub_1C6FB6304();
  v10 = 0;
  v11 = 0;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1CCA5DDD0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v32 = v12;
    sub_1C73883D8(&v33, &v32);

    ++v10;
  }

  v11 = v33;
  if (qword_1EDD0E0E8 == -1)
  {
    goto LABEL_13;
  }

LABEL_19:
  OUTLINED_FUNCTION_0_156();
LABEL_13:
  v14 = sub_1C754FF1C();
  __swift_project_value_buffer(v14, qword_1EDD0E0F0);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();

  if (os_log_type_enabled(v15, v16))
  {
    swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_15_5();
    v33 = v17;
    *v10 = 134218754;
    v18 = *(v11 + 16);

    *(v10 + 4) = v18;

    *(v10 + 12) = 2048;
    v19 = sub_1C75504FC();
    v31 = v5;
    v20 = *(sub_1C706D154(v19) + 16);

    *(v10 + 14) = v20;

    *(v10 + 22) = 2048;
    v21 = *(a1 + 16);

    *(v10 + 24) = v21;

    *(v10 + 32) = 2080;
    v22 = MEMORY[0x1CCA5D090](a3, &type metadata for PromptSuggestion.Source);
    v24 = sub_1C6F765A4(v22, v23, &v33);

    *(v10 + 34) = v24;
    OUTLINED_FUNCTION_5_82();
    _os_log_impl(v25, v26, v27, v28, v29, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_79();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v11;
}

uint64_t static PromptSuggestionReader.phSuggestionByPromptText(_:in:sources:)(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = static PromptSuggestionReader.fetchPHPromptSuggestions(_:in:sources:)(a1, a2, a3);
  v5 = [v57 fetchedObjects];
  v55 = a3;
  v56 = a1;
  if (v5)
  {
    v6 = v5;
    sub_1C6F65BE8(0, &qword_1EDD0CEB0);
    v7 = sub_1C7550B5C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1C6FB6304();
  v9 = 0;
  v58 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    while (2)
    {
      for (i = v9; ; ++i)
      {
        if (v8 == i)
        {

          if (qword_1EDD0E0E8 != -1)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1CCA5DDD0](i, v7);
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v11 = *(v7 + 8 * i + 32);
        }

        v12 = v11;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          OUTLINED_FUNCTION_0_156();
LABEL_25:
          v36 = sub_1C754FF1C();
          __swift_project_value_buffer(v36, qword_1EDD0E0F0);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          v37 = sub_1C754FEEC();
          v38 = sub_1C75511BC();

          if (os_log_type_enabled(v37, v38))
          {
            swift_slowAlloc();
            v39 = OUTLINED_FUNCTION_15_5();
            v59 = v39;
            *v8 = 134218754;
            v40 = *(v58 + 16);

            *(v8 + 4) = v40;

            *(v8 + 12) = 2048;
            v41 = sub_1C75504FC();
            v42 = *(sub_1C706D154(v41) + 16);

            *(v8 + 14) = v42;

            *(v8 + 22) = 2048;
            v43 = *(v56 + 16);

            *(v8 + 24) = v43;

            *(v8 + 32) = 2080;
            v44 = MEMORY[0x1CCA5D090](v55, &type metadata for PromptSuggestion.Source);
            v46 = sub_1C6F765A4(v44, v45, &v59);

            *(v8 + 34) = v46;
            OUTLINED_FUNCTION_5_82();
            _os_log_impl(v47, v48, v49, v50, v51, 0x2Au);
            __swift_destroy_boxed_opaque_existential_1(v39);
            OUTLINED_FUNCTION_90_2();
            OUTLINED_FUNCTION_79();
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          return v58;
        }

        v13 = [v11 title];
        v14 = sub_1C755068C();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          break;
        }
      }

      v18 = [v12 title];
      v19 = sub_1C755068C();
      v21 = v20;

      v54 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v59 = v58;
      v53 = v21;
      v22 = sub_1C6F78124(v19, v21);
      if (__OFADD__(*(v58 + 16), (v23 & 1) == 0))
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190A0);
      if ((sub_1C7551A2C() & 1) == 0)
      {
        v26 = v53;
        if ((v25 & 1) == 0)
        {
          break;
        }

        goto LABEL_23;
      }

      v26 = v53;
      v27 = sub_1C6F78124(v19, v53);
      if ((v25 & 1) != (v28 & 1))
      {
        goto LABEL_34;
      }

      v24 = v27;
      if (v25)
      {
LABEL_23:

        v58 = v59;
        v34 = v59[7];
        v35 = *(v34 + 8 * v24);
        *(v34 + 8 * v24) = v54;

        continue;
      }

      break;
    }

    v29 = v59;
    v59[(v24 >> 6) + 8] |= 1 << v24;
    v30 = (v29[6] + 16 * v24);
    *v30 = v19;
    v30[1] = v26;
    *(v29[7] + 8 * v24) = v54;

    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      v58 = v29;
      v29[2] = v33;
      continue;
    }

    break;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v13 = *a3;
  if (qword_1EDD0E110 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_2_107();
  }

  v14 = qword_1EDD0E118;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v14;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0E0E8 != -1)
  {
    OUTLINED_FUNCTION_0_156();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EDD0E0F0);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();

  if (os_log_type_enabled(v16, v17))
  {
    v71 = a9;
    v73 = v13;
    v18 = a1;
    v19 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v19 = 136315906;
    v70 = a2;
    v20 = MEMORY[0x1CCA5D090](a2, &type metadata for PromptSuggestion.Source);
    v21 = a6;
    v23 = sub_1C6F765A4(v20, v22, &v79);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    v24 = a4;
    if (a5)
    {
      v24 = -1;
    }

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    if (a7)
    {
      v25 = -1;
    }

    else
    {
      v25 = a6;
    }

    *(v19 + 24) = v25;
    *(v19 + 32) = 2080;
    v26 = 0xE300000000000000;
    v27 = 7105633;
    v28 = v21;
    a1 = v18;
    switch(v73)
    {
      case 1uLL:
        v26 = 0xE500000000000000;
        v27 = 0x64696C6176;
        break;
      case 2uLL:
        v26 = 0xE700000000000000;
        v27 = OUTLINED_FUNCTION_9_76();
        break;
      case 3uLL:
        v26 = 0xE400000000000000;
        v27 = 1684370293;
        break;
      default:
        break;
    }

    v29 = sub_1C6F765A4(v27, v26, &v79);

    *(v19 + 34) = v29;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Fetch Prompt Suggestions for sources: %s with limit: %ld shuffling group size: %ld, content mode: %s", v19, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_79();

    a9 = v71;
    a6 = v28;
    a2 = v70;
    LOBYTE(v13) = v73;
  }

  else
  {
  }

  v30 = *a8;
  if (*a8)
  {
    v31 = *(a8 + 8);
    v79 = *a8;
    v80 = v31;
    if ((a7 & 1) == 0)
    {
      sub_1C75504FC();
      v34 = sub_1C754FEEC();
      v35 = sub_1C75511BC();
      if (os_log_type_enabled(v34, v35))
      {
        v72 = a9;
        v36 = v13;
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1C6F5C000, v34, v35, "Will shuffle results", v13, 2u);
        v37 = v13;
        LOBYTE(v13) = v36;
        a9 = v72;
        MEMORY[0x1CCA5F8E0](v37, -1, -1);
      }

      LOBYTE(v78) = v13;
      v33 = static PromptSuggestionReader.fetchPHPromptSuggestions(in:sources:contentMode:limit:)(a1, a2, &v78, a6, 0);
      v38 = [v33 fetchedObjects];
      if (v38)
      {
        v39 = v38;
        sub_1C6F65BE8(0, &qword_1EDD0CEB0);
        v40 = sub_1C7550B5C();

        v78 = sub_1C71CC918(v40);
        sub_1C73B3D4C(&v79);

        v41 = v78;
      }

      else
      {

        v41 = MEMORY[0x1E69E7CC0];
      }

      if (a5)
      {
        v42 = a6;
      }

      else
      {
        v42 = a4;
      }

      v43 = sub_1C70341EC(v42, v41);
      v45 = v44;
      v47 = v46;
      v30 = v48;
      if (v48)
      {
        sub_1C7551DEC();
        swift_unknownObjectRetain_n();
        v50 = swift_dynamicCastClass();
        if (!v50)
        {
          swift_unknownObjectRelease();
          v50 = MEMORY[0x1E69E7CC0];
        }

        v51 = *(v50 + 16);

        if (__OFSUB__(v30 >> 1, v47))
        {
          __break(1u);
        }

        else if (v51 == (v30 >> 1) - v47)
        {
          v52 = swift_dynamicCastClass();
          if (v52)
          {
            a1 = v52;
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease_n();
            a1 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_39;
        }

        swift_unknownObjectRelease();
      }

      sub_1C739CC7C(v43, v45, v47, v30);
      a1 = v49;
      swift_unknownObjectRelease();
      goto LABEL_31;
    }
  }

  LOBYTE(v79) = v13;
  v32 = static PromptSuggestionReader.fetchPHPromptSuggestions(in:sources:contentMode:limit:)(a1, a2, &v79, a4, a5 & 1);
  v33 = [v32 fetchedObjects];

  if (v33)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CEB0);
    a1 = sub_1C7550B5C();
LABEL_31:

    goto LABEL_39;
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_39:
  swift_allocObject();
  PerformanceMeasure.init(name:log:)();
  v79 = MEMORY[0x1E69E7CC8];
  v53 = sub_1C6FB6304();
  v13 = 0;
  a6 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v53 != v13)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x1CCA5DDD0](v13, a1);
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v54 = *(a1 + 8 * v13 + 32);
    }

    v30 = v54;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v78 = v54;
    sub_1C7387CF8(&v79, &v78);

    ++v13;
  }

  v55 = v79;
  v56 = sub_1C75504FC();
  v57 = sub_1C71CDB8C(v56);
  sub_1C6F85170();
  sub_1C75504FC();
  sub_1C75504FC();
  v58 = sub_1C754FEEC();
  v59 = sub_1C75511BC();

  if (os_log_type_enabled(v58, v59))
  {
    swift_slowAlloc();
    v60 = OUTLINED_FUNCTION_15_5();
    v79 = v60;
    *v30 = 134218242;
    *(v30 + 4) = *(v57 + 16);

    *(v30 + 12) = 2080;
    v61 = MEMORY[0x1CCA5D090](a2, &type metadata for PromptSuggestion.Source);
    v63 = sub_1C6F765A4(v61, v62, &v79);

    *(v30 + 14) = v63;
    OUTLINED_FUNCTION_5_82();
    _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_79();
  }

  else
  {
  }

  *a9 = v57;
  a9[1] = v55;
  sub_1C6F85170();
}

uint64_t static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v6 = *a3;
  v9 = 0;
  v10 = 0;
  v8 = v6;
  static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(a1, a2, &v8, a4, a5 & 1, 0, 1, &v9, a6);
}

uint64_t sub_1C7386FA4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EDD0E118 = result;
  return result;
}

uint64_t sub_1C738701C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0E0F0);
  __swift_project_value_buffer(v0, qword_1EDD0E0F0);
  if (qword_1EDD0E110 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD0E118;
  return sub_1C754FF2C();
}

uint64_t PromptSuggestionReader.ContentMode.description.getter()
{
  result = 7105633;
  switch(*v0)
  {
    case 1:
      result = 0x64696C6176;
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_76();
      break;
    case 3:
      result = 1684370293;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1C7387118()
{
  v18 = MEMORY[0x1E69E7CC0];
  switch(*v0)
  {
    case 1:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v1 = OUTLINED_FUNCTION_20_0();
      *(v1 + 16) = xmmword_1C75604F0;
      v2 = MEMORY[0x1E69E6158];
      *(v1 + 56) = MEMORY[0x1E69E6158];
      v3 = sub_1C6F6D524();
      *(v1 + 64) = v3;
      OUTLINED_FUNCTION_1_115();
      *(v1 + 32) = v4;
      *(v1 + 40) = v5;
      v6 = MEMORY[0x1E69E7660];
      *(v1 + 96) = MEMORY[0x1E69E75F8];
      *(v1 + 104) = v6;
      *(v1 + 72) = 1;
      OUTLINED_FUNCTION_6_91();
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v7 = OUTLINED_FUNCTION_20_0();
      *(v7 + 16) = xmmword_1C75604F0;
      *(v7 + 56) = v2;
      *(v7 + 64) = v3;
      *(v7 + 32) = 0xD000000000000011;
      *(v7 + 40) = 0x80000001C75AB660;
      v8 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
      *(v7 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28);
      *(v7 + 104) = sub_1C706700C();
      *(v7 + 72) = v8;
      goto LABEL_8;
    case 2:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v9 = OUTLINED_FUNCTION_20_0();
      *(v9 + 16) = xmmword_1C75604F0;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1C6F6D524();
      OUTLINED_FUNCTION_1_115();
      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
      v12 = MEMORY[0x1E69E7660];
      *(v9 + 96) = MEMORY[0x1E69E75F8];
      *(v9 + 104) = v12;
      v13 = 2;
      goto LABEL_7;
    case 3:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v9 = OUTLINED_FUNCTION_20_0();
      *(v9 + 16) = xmmword_1C75604F0;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1C6F6D524();
      OUTLINED_FUNCTION_1_115();
      *(v9 + 32) = v14;
      *(v9 + 40) = v15;
      v16 = MEMORY[0x1E69E7660];
      *(v9 + 96) = MEMORY[0x1E69E75F8];
      *(v9 + 104) = v16;
      v13 = 3;
LABEL_7:
      *(v9 + 72) = v13;
      OUTLINED_FUNCTION_6_91();
LABEL_8:
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      break;
    default:
      break;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  return sub_1C6F6E5C4();
}

uint64_t PromptSuggestionReader.ContentMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7387510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    v4 = 0x1EC213000uLL;
    while (1)
    {
      v6 = *v2++;
      v5 = v6;
      if (v6 == 1)
      {
        v7 = 1401;
      }

      else if (v5 == 4)
      {
        v7 = 1403;
      }

      else
      {
        if (v5 != 3)
        {
          if (*(v4 + 3808) != -1)
          {
            swift_once();
          }

          v9 = sub_1C754FF1C();
          __swift_project_value_buffer(v9, qword_1EC219390);
          v10 = sub_1C754FEEC();
          v11 = sub_1C755119C();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = v4;
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            v23 = v14;
            *v13 = 136315138;
            v15 = 0x636961736F4DLL;
            if (v5 != 1)
            {
              v15 = 0x686372616553;
            }

            if (v5)
            {
              v16 = v15;
            }

            else
            {
              v16 = 1701736270;
            }

            if (v5)
            {
              v17 = 0xE600000000000000;
            }

            else
            {
              v17 = 0xE400000000000000;
            }

            v18 = sub_1C6F765A4(v16, v17, &v23);

            *(v13 + 4) = v18;
            _os_log_impl(&dword_1C6F5C000, v10, v11, "Template source %s does not have a PHSuggestionSubtype", v13, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v14);
            MEMORY[0x1CCA5F8E0](v14, -1, -1);
            MEMORY[0x1CCA5F8E0](v13, -1, -1);

            v4 = v12;
          }

          else
          {
          }

          goto LABEL_14;
        }

        v7 = 1402;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB38CC();
        v3 = v19;
      }

      v8 = *(v3 + 16);
      if (v8 >= *(v3 + 24) >> 1)
      {
        sub_1C6FB38CC();
        v3 = v20;
      }

      *(v3 + 16) = v8 + 1;
      *(v3 + 2 * v8 + 32) = v7;
LABEL_14:
      if (!--v1)
      {
        goto LABEL_30;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_30:
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C75604F0;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1C6F6D524();
  *(v21 + 32) = 0x65707974627573;
  *(v21 + 40) = 0xE700000000000000;
  *(v21 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300);
  *(v21 + 104) = sub_1C7099594(&qword_1EDD0CF08, &qword_1EC219300);
  *(v21 + 72) = v3;
  return sub_1C755112C();
}

uint64_t PromptSuggestionReader.Result.suggestions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PromptSuggestionReader.Result.phSuggestionUUIDBySuggestion.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

id static PromptSuggestionReader.fetchPHPromptSuggestions(in:sources:contentMode:limit:)(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5)
{
  v8 = *a3;
  if (qword_1EDD0E110 != -1)
  {
    OUTLINED_FUNCTION_2_107();
  }

  v9 = qword_1EDD0E118;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v10 = v9;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0E0E8 != -1)
  {
    OUTLINED_FUNCTION_0_156();
  }

  v11 = sub_1C754FF1C();
  __swift_project_value_buffer(v11, qword_1EDD0E0F0);
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();

  if (os_log_type_enabled(v12, v13))
  {
    v30 = a4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315394;
    v16 = MEMORY[0x1CCA5D090](a2, &type metadata for PromptSuggestion.Source);
    v18 = sub_1C6F765A4(v16, v17, &v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = 0xE300000000000000;
    v20 = 7105633;
    switch(v8)
    {
      case 1:
        v19 = 0xE500000000000000;
        v20 = 0x64696C6176;
        break;
      case 2:
        v19 = 0xE700000000000000;
        v20 = OUTLINED_FUNCTION_9_76();
        break;
      case 3:
        v19 = 0xE400000000000000;
        v20 = 1684370293;
        break;
      default:
        break;
    }

    v21 = sub_1C6F765A4(v20, v19, &v32);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Fetch PHSuggestionTypeMemoryPrompt for sources: %s, with mode: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
    OUTLINED_FUNCTION_90_2();

    a4 = v30;
  }

  else
  {
  }

  v22 = [a1 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v23 = OUTLINED_FUNCTION_13_1();
  *(v23 + 16) = xmmword_1C7564A90;
  *(v23 + 32) = sub_1C7387510(a2);
  v33 = v8;
  *(v23 + 40) = sub_1C7387118();
  v24 = sub_1C6F6E5C4();
  [v22 setPredicate_];

  v25 = OUTLINED_FUNCTION_13_1();
  *(v25 + 16) = xmmword_1C7564A90;
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v25 + 32) = sub_1C6F6AF98(0x747865746E6F63, 0xE700000000000000, 1);
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v25 + 40) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
  sub_1C71F8834(v25, v22);
  if ((a5 & 1) == 0)
  {
    [v22 setFetchLimit_];
  }

  v28 = [objc_opt_self() fetchSuggestionsWithOptions_];

  sub_1C6F85170();

  return v28;
}

void sub_1C7387CF8(uint64_t a1, id *a2)
{
  v40 = a1;
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v40 - v8;
  v10 = *a2;
  v11 = [*a2 featuresProperties];
  sub_1C75504AC();

  v12 = objc_opt_self();
  v13 = sub_1C755048C();

  v42[0] = 0;
  v14 = [v12 dataWithJSONObject:v13 options:0 error:v42];

  v15 = v42[0];
  if (v14)
  {
    v16 = sub_1C754DDEC();
    v18 = v17;

    sub_1C754D73C();
    swift_allocObject();
    sub_1C754D72C();
    sub_1C7388A5C();
    v19 = v41;
    sub_1C754D71C();
    if (!v19)
    {

      sub_1C6FC1640(v16, v18);
      sub_1C71592A8(v9, v5);
      sub_1C70CAC04(v10);
      if (v38)
      {
        v39 = v40;
        swift_isUniquelyReferenced_nonNull_native();
        v42[0] = *v39;
        sub_1C6FC9608();
        *v39 = v42[0];
      }

      else
      {
        sub_1C7236F94(v5, 0, v32, v33, v34, v35, v36, v37, v40, v41);
      }

      sub_1C715930C(v5);
      sub_1C715930C(v9);
      return;
    }

    sub_1C6FC1640(v16, v18);
    v20 = v19;
  }

  else
  {
    v21 = v15;
    v20 = sub_1C754DBEC();

    swift_willThrow();
  }

  if (qword_1EDD0E0E8 != -1)
  {
    swift_once();
  }

  v22 = sub_1C754FF1C();
  __swift_project_value_buffer(v22, qword_1EDD0E0F0);
  v23 = v10;
  v24 = v20;
  v25 = sub_1C754FEEC();
  v26 = sub_1C755119C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412546;
    *(v27 + 4) = v23;
    *v28 = v23;
    *(v27 + 12) = 2112;
    v29 = v23;
    v30 = v20;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v31;
    v28[1] = v31;
    _os_log_impl(&dword_1C6F5C000, v25, v26, "Error creating PromptSuggestion from PHSuggestion %@: %@", v27, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
    MEMORY[0x1CCA5F8E0](v27, -1, -1);
  }

  else
  {
  }
}

id static PromptSuggestionReader.fetchPHPromptSuggestions(_:in:sources:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1C75504FC();
  v5 = sub_1C706D154(v4);
  v20 = [a2 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v6 = OUTLINED_FUNCTION_13_1();
  *(v6 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v7 = OUTLINED_FUNCTION_20_0();
  *(v7 + 16) = xmmword_1C75604F0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C6F6D524();
  *(v7 + 64) = v8;
  *(v7 + 32) = 0x656C746974;
  *(v7 + 40) = 0xE500000000000000;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *(v7 + 96) = v9;
  v10 = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0);
  *(v7 + 104) = v10;
  *(v7 + 72) = v5;
  sub_1C75504FC();
  *(v6 + 32) = sub_1C755112C();
  v11 = OUTLINED_FUNCTION_20_0();
  *(v11 + 16) = xmmword_1C75604F0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = v8;
  *(v11 + 32) = 0x656C746974627573;
  *(v11 + 40) = 0xE800000000000000;
  *(v11 + 96) = v9;
  *(v11 + 104) = v10;
  *(v11 + 72) = v5;
  *(v6 + 40) = sub_1C755112C();
  v12 = sub_1C74B8340();
  v13 = OUTLINED_FUNCTION_13_1();
  *(v13 + 16) = xmmword_1C7564A90;
  *(v13 + 32) = sub_1C7387510(a3);
  *(v13 + 40) = v12;
  v14 = v12;
  v15 = sub_1C6F6E5C4();
  [v20 setPredicate_];

  v16 = objc_opt_self();
  v17 = v20;
  v18 = [v16 fetchSuggestionsWithOptions_];

  return v18;
}

void sub_1C73883D8(uint64_t a1, id *a2)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PromptSuggestion(0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = [*a2 title];
  v14 = sub_1C755068C();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v41 = v2;
    v18 = [v12 featuresProperties];
    sub_1C75504AC();

    v19 = objc_opt_self();
    v20 = sub_1C755048C();

    v42[0] = 0;
    v21 = [v19 dataWithJSONObject:v20 options:0 error:v42];

    v22 = v42[0];
    if (v21)
    {
      v23 = sub_1C754DDEC();
      v25 = v24;

      sub_1C754D73C();
      swift_allocObject();
      sub_1C754D72C();
      sub_1C7388A5C();
      v26 = v41;
      sub_1C754D71C();
      if (!v26)
      {

        sub_1C6FC1640(v23, v25);
        v39 = [v12 title];
        sub_1C755068C();

        sub_1C71592A8(v11, v7);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
        sub_1C709B448();
        sub_1C715930C(v11);
        return;
      }

      sub_1C6FC1640(v23, v25);
      v27 = v26;
    }

    else
    {
      v28 = v22;
      v27 = sub_1C754DBEC();

      swift_willThrow();
    }

    if (qword_1EDD0E0E8 != -1)
    {
      swift_once();
    }

    v29 = sub_1C754FF1C();
    __swift_project_value_buffer(v29, qword_1EDD0E0F0);
    v30 = v12;
    v31 = v27;
    v32 = sub_1C754FEEC();
    v33 = sub_1C755119C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412546;
      *(v34 + 4) = v30;
      *v35 = v30;
      *(v34 + 12) = 2112;
      v36 = v30;
      v37 = v27;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      v35[1] = v38;
      _os_log_impl(&dword_1C6F5C000, v32, v33, "Error creating PromptSuggestion from PHSuggestion %@: %@", v34, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v35, -1, -1);
      MEMORY[0x1CCA5F8E0](v34, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_1C7388870()
{
  result = qword_1EC21B020;
  if (!qword_1EC21B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B020);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestionReader(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PromptSuggestionReader.ContentMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7388A5C()
{
  result = qword_1EDD0F0B0;
  if (!qword_1EDD0F0B0)
  {
    type metadata accessor for PromptSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0B0);
  }

  return result;
}

void sub_1C7388AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v5 = sub_1C719D92C(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        sub_1C75504FC();
        if (v13 >= v12 >> 1)
        {
          sub_1C6F7ED9C();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C6F9ED50(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C7388CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v5 = sub_1C719D92C(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = *(v2 + 48) + 192 * v5;
        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        sub_1C75504FC();
        if (v13 >= v12 >> 1)
        {
          sub_1C6F7ED9C();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C6F9ED50(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C7388F28(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = *(a1 + 16);
  v25 = a1 + 32;
LABEL_2:
  while (v5 != v6)
  {
    v7 = (v25 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = a2[1];
    if (v10)
    {
      v11 = *(*v3 + 16);
      v12 = (*v3 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == 3)
        {
          v14 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v14 = *a2 & 0xFFFFFFFFFFFFLL;
          }

          if (!v14)
          {
            break;
          }

          v23 = sub_1C75506FC();
          v24 = v15;
          sub_1C75506FC();
          sub_1C6FB5E8C();
          sub_1C75504FC();
          v16 = sub_1C75515AC();

          if ((v16 & 1) == 0)
          {
            v3 = a3;
            goto LABEL_17;
          }

          if (qword_1EDD0ED88 != -1)
          {
            swift_once();
          }

          v17 = sub_1C754FF1C();
          __swift_project_value_buffer(v17, &dword_1EDD28D48);
          sub_1C75504FC();
          v18 = sub_1C754FEEC();
          v19 = sub_1C755117C();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v23 = v21;
            *v20 = 136315138;
            *(v20 + 4) = sub_1C6F765A4(v9, v8, &v23);
            _os_log_impl(&dword_1C6F5C000, v18, v19, "(Apple Music Search) Genre %s is mood dupe so skip adding it to the search prompt", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            MEMORY[0x1CCA5F8E0](v21, -1, -1);
            MEMORY[0x1CCA5F8E0](v20, -1, -1);
          }

          v3 = a3;
          goto LABEL_2;
        }
      }
    }

    sub_1C75504FC();
LABEL_17:
    v23 = 32;
    v24 = 0xE100000000000000;
    MEMORY[0x1CCA5CD70](v9, v8);
    MEMORY[0x1CCA5CD70](v23, v24);
  }
}

uint64_t sub_1C73891D0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[57] = v4;
  v1[58] = v0;
  v1[55] = v5;
  v1[56] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  v1[59] = swift_task_alloc();
  v7 = sub_1C75501EC();
  v1[60] = v7;
  v1[61] = *(v7 - 8);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v8 = sub_1C754F38C();
  v1[64] = v8;
  v1[65] = *(v8 - 8);
  v1[66] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x80uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73898B8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 560) = v0;

  if (!v0)
  {
    *(v4 + 568) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7389D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 624) = v5;
  *(v3 + 632) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7389E94()
{
  v158 = v0;
  v2 = *(v0 + 624);
  v3 = *(v0 + 440);
  v145 = *(v0 + 592);
  v146 = *(v0 + 600);
  v4 = StoryMusicCurator.filterOutExplicitIfNeeded(songs:queryInfo:options:)(v2, &v145, v3);
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(v0 + 624);
  if (!v6)
  {

    v10 = sub_1C754FEEC();
    v11 = sub_1C755119C();
    v12 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_96_0();
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v10, v11, "(Apple Music Search) curateAppleMusicFromSmartSearch: No clean songs", v14, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v15, 6);
    swift_willThrow();
    v16 = *(v0 + 528);
    v17 = *(v0 + 520);
    v18 = *(v0 + 512);
    OUTLINED_FUNCTION_70(*(v0 + 456), *(*(v0 + 456) + 24));
    sub_1C754F1AC();
    (*(v17 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 272);

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_327_0();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v132 = v4;
  v133 = v0;
  v128 = v0 + 344;
  if (v6 == v8)
  {
    v127 = *(v0 + 632);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v139 = *(v4 + 16);
    if (v8)
    {
      v22 = *(v0 + 488);
      v145 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_83_9();
      v23 = v145;
      OUTLINED_FUNCTION_96_15();
      v25 = v7 + v24;
      OUTLINED_FUNCTION_94_17();
      do
      {
        v26 = OUTLINED_FUNCTION_63_21();
        v27(v26);
        sub_1C75501BC();
        sub_1C755015C();
        OUTLINED_FUNCTION_100_16();

        (*v1)(&v145, v6);
        v145 = v23;
        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        v6 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          OUTLINED_FUNCTION_15(v28);
          OUTLINED_FUNCTION_137_0();
          sub_1C6F7ED9C();
          v23 = v145;
        }

        *(v23 + 16) = v6;
        v30 = v23 + 16 * v29;
        *(v30 + 32) = v22;
        *(v30 + 40) = v5;
        v25 += v141;
        --v8;
        v0 = v133;
      }

      while (v8);
      v5 = v132;
      v6 = v139;
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v31 = *(v0 + 488);
    sub_1C706D154(v23);
    v145 = v21;
    OUTLINED_FUNCTION_18_54();
    sub_1C6F7ED9C();
    v32 = v145;
    OUTLINED_FUNCTION_96_15();
    v34 = v5 + v33;
    OUTLINED_FUNCTION_94_17();
    v35 = v6;
    do
    {
      v36 = OUTLINED_FUNCTION_63_21();
      v37(v36);
      sub_1C75501BC();
      sub_1C755015C();
      OUTLINED_FUNCTION_100_16();

      (*v1)(&v145, v6);
      v145 = v32;
      v39 = *(v32 + 16);
      v38 = *(v32 + 24);
      v6 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        OUTLINED_FUNCTION_15(v38);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C();
        v32 = v145;
      }

      *(v32 + 16) = v6;
      v40 = v32 + 16 * v39;
      *(v40 + 32) = v31;
      *(v40 + 40) = v5;
      v34 += v141;
      --v35;
      v0 = v133;
    }

    while (v35);
    v41 = *(v133 + 632);
    v42 = *(v133 + 544);
    v43 = *(v133 + 464) + *(v133 + 536);
    sub_1C74C3924();
    v45 = v44;

    sub_1C7388AB4(v45);
    v47 = v46;
    v127 = v41;

    *(v43 + *(v42 + 96)) = v47;

    v5 = v132;
    v6 = v139;
    v9 = MEMORY[0x1E69E7CC0];
  }

  v48 = *(v0 + 488);
  v145 = v9;
  OUTLINED_FUNCTION_18_54();
  sub_1C716E4AC();
  v49 = 0;
  v130 = v5 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v131 = v48;
  v50 = v145;
  v129 = (v48 + 8);
  while (1)
  {
    if (v49 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    v144 = v50;
    v51 = *(v0 + 472);
    (*(v131 + 16))(*(v0 + 496), v130 + *(v131 + 72) * v49, *(v0 + 480));
    v52 = sub_1C75501BC();
    v140 = v53;
    v142 = v52;
    v54 = sub_1C755018C();
    v137 = v55;
    v138 = v54;
    v56 = sub_1C75501DC();
    v135 = v57;
    v136 = v56;
    v143 = sub_1C755019C();
    sub_1C75501CC();
    v58 = sub_1C754DD2C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v58);
    v60 = *(v0 + 472);
    if (EnumTagSinglePayload == 1)
    {
      sub_1C7030CDC(*(v0 + 472), &qword_1EC215BD8);
      v61 = 0;
      v134 = 0;
    }

    else
    {
      v62 = sub_1C754DC2C();
      v134 = v63;
      v64 = v60;
      v61 = v62;
      (*(*(v58 - 8) + 8))(v64, v58);
    }

    v65 = *(v0 + 496);
    v66 = *(v0 + 480);
    v147 = 1;
    v148 = 1;
    v149 = 1;
    v150 = 1;
    v151 = 1;
    (*v129)(v65, v66);
    v67 = v147;
    v68 = v148;
    v69 = v149;
    v70 = v150;
    v71 = v151;
    v50 = v144;
    v145 = v144;
    v73 = *(v144 + 16);
    v72 = *(v144 + 24);
    if (v73 >= v72 >> 1)
    {
      OUTLINED_FUNCTION_15(v72);
      sub_1C716E4AC();
      v50 = v145;
    }

    *(v0 + 640) = v50;
    *(v50 + 16) = v73 + 1;
    v74 = v50 + 192 * v73;
    *(v74 + 32) = 2;
    v75 = *&v152[3];
    *(v74 + 33) = *v152;
    *(v74 + 36) = v75;
    *(v74 + 40) = v142;
    *(v74 + 48) = v140;
    *(v74 + 56) = v136;
    *(v74 + 64) = v135;
    *(v74 + 72) = v138;
    *(v74 + 80) = v137;
    *(v74 + 88) = 0;
    *(v74 + 96) = v67;
    v76 = *&v153[3];
    *(v74 + 97) = *v153;
    *(v74 + 100) = v76;
    *(v74 + 104) = 0;
    *(v74 + 112) = v68;
    v77 = *v154;
    *(v74 + 116) = *&v154[3];
    *(v74 + 113) = v77;
    *(v74 + 120) = v143;
    *(v74 + 128) = 0;
    *(v74 + 136) = 0;
    *(v74 + 144) = 0;
    *(v74 + 152) = v69;
    *(v74 + 153) = 2;
    v78 = *&v154[7];
    *(v74 + 158) = v155;
    *(v74 + 154) = v78;
    *(v74 + 160) = v61;
    *(v74 + 168) = v134;
    *(v74 + 176) = 0;
    *(v74 + 184) = v70;
    v79 = *&v156[3];
    *(v74 + 185) = *v156;
    *(v74 + 188) = v79;
    *(v74 + 192) = 0;
    *(v74 + 200) = v71;
    v80 = *(v157 + 3);
    *(v74 + 201) = v157[0];
    *(v74 + 204) = v80;
    *(v74 + 208) = 0;
    *(v74 + 216) = 0;
    if (v6 - 1 == v49)
    {
      break;
    }

    ++v49;
    v5 = v132;
    v0 = v133;
  }

  v81 = v50;
  v82 = v133;
  v83 = *(v133 + 440);

  v84 = type metadata accessor for StoryMusicCurationOptions();
  *(v133 + 648) = v84;
  v85 = *(v83 + *(v84 + 80));
  v86 = v128;
  *(v128 + 481) = v85;
  v87 = *(v133 + 464);
  if (v85)
  {
    v88 = *(v87 + 16);
LABEL_33:
    *(v133 + 656) = v88;
    v93 = sub_1C754FEEC();
    sub_1C755117C();
    v94 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v94, v95))
    {
      OUTLINED_FUNCTION_96_0();
      v96 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v96);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v97, v98, v99, v100, v101, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *(v133 + 432) = v88;
    *(v133 + 824) = 2;
    v102 = swift_task_alloc();
    *(v133 + 664) = v102;
    *v102 = v133;
    v102[1] = sub_1C738A868;
    OUTLINED_FUNCTION_98_15();
    OUTLINED_FUNCTION_327_0();

    AppleMusicUtils.fetchAugmentedMetadata(for:songType:)(v103, v104);
    return;
  }

  v89 = v84;
  v90 = *(v133 + 440);
  v91 = *(v90 + *(v84 + 84));
  v92 = *(v87 + 16);
  v88 = v92;
  if (v91 == 1)
  {
    goto LABEL_33;
  }

  *(v133 + 696) = v92;
  *(v128 + 482) = 0;
  *(v133 + 688) = v81;
  v106 = *(v81 + 16);
  *(v133 + 704) = v106;
  v107 = MEMORY[0x1E69E7CC0];
  if (v106)
  {
    v145 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v107 = v145;
    v108 = *(v145 + 16);
    v109 = 16 * v108;
    v110 = (v81 + 48);
    do
    {
      v112 = *(v110 - 1);
      v111 = *v110;
      v145 = v107;
      v113 = *(v107 + 24);
      sub_1C75504FC();
      if (v108 >= v113 >> 1)
      {
        sub_1C6F7ED9C();
        v107 = v145;
      }

      *(v107 + 16) = v108 + 1;
      v114 = v107 + v109;
      *(v114 + 32) = v112;
      *(v114 + 40) = v111;
      v109 += 16;
      v110 += 24;
      ++v108;
      --v106;
    }

    while (v106);
    v82 = v133;
    v89 = *(v133 + 648);
    v87 = *(v133 + 464);
    v90 = *(v133 + 440);
    v86 = v128;
  }

  *(v87 + v82[67] + *(v82[68] + 100)) = v107;

  v115 = v90 + *(v89 + 88);
  if (*(v115 + 48) && (v116 = *(v115 + 24)) != 0 && *(v116 + 16))
  {
    v82[93] = v81;
    v82[92] = v127;
    v117 = v82[74];
    swift_bridgeObjectRetain_n();
    v82[42] = v117;
    *v86 = v86[16];
    v118 = swift_task_alloc();
    v82[94] = v118;
    *v118 = v82;
    OUTLINED_FUNCTION_5_83(v118);
    OUTLINED_FUNCTION_98_15();
    OUTLINED_FUNCTION_327_0();

    sub_1C7390010(v119, v120, v121);
  }

  else
  {
    v123 = swift_task_alloc();
    v82[89] = v123;
    *v123 = v82;
    OUTLINED_FUNCTION_37_34(v123);
    OUTLINED_FUNCTION_98_15();
    OUTLINED_FUNCTION_327_0();

    sub_1C738F460(v124, v125);
  }
}

uint64_t sub_1C738A868()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 672) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 680) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738A980()
{

  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  *(v0 + 696) = *(v0 + 656);
  *(v0 + 826) = 1;
  *(v0 + 688) = v1;
  v3 = *(v1 + 16);
  *(v0 + 704) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v22 = v2;
    v25 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23();
    v4 = v25;
    v5 = *(v25 + 16);
    v6 = 16 * v5;
    v23 = v1;
    v7 = (v1 + 48);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(v25 + 24);
      sub_1C75504FC();
      if (v5 >= v10 >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v25 + 16) = v5 + 1;
      v11 = v25 + v6;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      v6 += 16;
      v7 += 24;
      ++v5;
      --v3;
    }

    while (v3);
    v2 = v22;
    v1 = v23;
  }

  v12 = *(v0 + 648);
  v13 = *(v0 + 440);
  *(*(v0 + 464) + *(v0 + 536) + *(*(v0 + 544) + 100)) = v4;

  v14 = v13 + *(v12 + 88);
  if (*(v14 + 48) && (v15 = *(v14 + 24)) != 0 && *(v15 + 16))
  {
    *(v0 + 744) = v1;
    *(v0 + 736) = v2;
    v16 = *(v0 + 608);
    v24 = *(v0 + 592);
    swift_bridgeObjectRetain_n();
    *(v0 + 336) = v24;
    *(v0 + 352) = v16;
    v17 = swift_task_alloc();
    *(v0 + 752) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_5_83(v17);
    v18 = *(v0 + 456);

    return sub_1C7390010(v1, v0 + 336, v18);
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 712) = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_37_34(v20);
    v21 = *(v0 + 440);

    return sub_1C738F460(v1, v21);
  }
}

uint64_t sub_1C738ABC0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 720) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 728) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738ACD8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  *(v0 + 744) = v1;
  *(v0 + 736) = v2;
  v3 = *(v0 + 608);
  v7 = *(v0 + 592);
  sub_1C75504FC();
  *(v0 + 336) = v7;
  *(v0 + 352) = v3;
  v4 = swift_task_alloc();
  *(v0 + 752) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_5_83(v4);
  v5 = *(v0 + 456);

  return sub_1C7390010(v1, v0 + 336, v5);
}

uint64_t sub_1C738AD8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 760) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C738AE7C()
{
  v97 = v1;
  rawValue = *(v1 + 744);
  if (*(*(v1 + 760) + 16))
  {
    v4._rawValue = *(v1 + 608);

    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = *(v1 + 704);
    v0 = rawValue[2];

    if (v0 != v5)
    {

      sub_1C75504FC();
      sub_1C706D714();
      v43 = v42;
      sub_1C706D714();
      v45 = sub_1C72389E8(v44, v43);

      v46 = sub_1C71CDCB4(v45);
      *(v1 + 768) = v46;
      v47 = sub_1C754FEEC();
      v48 = sub_1C755117C();
      if (os_log_type_enabled(v47, v48))
      {
        OUTLINED_FUNCTION_13_3();
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v50 = swift_slowAlloc();
        v51 = v50;
        v95 = v50;
        *v49 = 136315138;
        v52 = *(v46 + 16);
        v53 = MEMORY[0x1E69E7CC0];
        if (v52)
        {
          v91 = v50;
          v92 = v48;
          v93 = v49;
          v94 = v47;
          v96[0] = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_18_54();
          sub_1C6F7ED9C();
          v53 = v96[0];
          v54 = *(v96[0] + 16);
          v55 = 16 * v54;
          v56 = (v46 + 48);
          do
          {
            v57 = *(v56 - 1);
            v58 = *v56;
            v96[0] = v53;
            v59 = *(v53 + 24);
            sub_1C75504FC();
            if (v54 >= v59 >> 1)
            {
              sub_1C6F7ED9C();
              v53 = v96[0];
            }

            *(v53 + 16) = v54 + 1;
            v60 = v53 + v55;
            *(v60 + 32) = v57;
            *(v60 + 40) = v58;
            v55 += 16;
            v56 += 24;
            ++v54;
            --v52;
          }

          while (v52);
          v47 = v94;
          v49 = v93;
          v48 = v92;
          v51 = v91;
        }

        v61 = MEMORY[0x1CCA5D090](v53, MEMORY[0x1E69E6158]);
        v63 = v62;

        v64 = sub_1C6F765A4(v61, v63, &v95);

        *(v49 + 4) = v64;
        _os_log_impl(&dword_1C6F5C000, v47, v48, "(Apple Music Search) Remaining unused songs were unsafe. Reconsider recently used songs. uncheckedRecentlyUsedSongs = %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        v65 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v65);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v66 = *(v1 + 464);

      v67 = sub_1C754FEEC();
      sub_1C755117C();

      if (OUTLINED_FUNCTION_140_0())
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_12_66();
        v68 = swift_slowAlloc();
        v96[0] = v68;
        *v66 = 136315138;
        v69 = sub_1C75504FC();
        v70 = MEMORY[0x1CCA5D090](v69, MEMORY[0x1E69E6158]);
        v72 = v71;

        v73 = sub_1C6F765A4(v70, v72, v96);

        *(v66 + 4) = v73;
        OUTLINED_FUNCTION_39();
        _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        v79 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v79);
        v80 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v80);
      }

      v81 = *(v1 + 608);
      *(v1 + 384) = *(v1 + 592);
      *(v1 + 400) = v81;
      v82 = swift_task_alloc();
      *(v1 + 776) = v82;
      *v82 = v1;
      v82[1] = sub_1C738B5F8;
      OUTLINED_FUNCTION_98_15();
      OUTLINED_FUNCTION_20_4();

      return sub_1C7390010(v83, v84, v85);
    }

    rawValue = *(v1 + 744);
    v4._rawValue = *(v1 + 608);
  }

  v6 = *(v1 + 760);
  if (!*(v6 + 16))
  {

    v9 = sub_1C754FEEC();
    sub_1C755119C();
    v10 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_96_0();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v12);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v18 = *(v1 + 696);

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v19, 5);
    swift_willThrow();

    OUTLINED_FUNCTION_14_58();
    OUTLINED_FUNCTION_2_108();
    v20 = OUTLINED_FUNCTION_9_52();
    v21(v20);
    OUTLINED_FUNCTION_45_32();

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(*(v1 + 440) + 16);
  if (v7 < 0)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1C7033F04(v7, v6);
  OUTLINED_FUNCTION_62_22();
  if ((v2 & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_112_8();
    v4._rawValue = v8;
    goto LABEL_20;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_69_1();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v2 >> 1, v0))
  {
    goto LABEL_54;
  }

  if (v25 != (v2 >> 1) - v0)
  {
LABEL_55:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_98_5();
  swift_unknownObjectRelease();
  if (v4._rawValue)
  {
    goto LABEL_21;
  }

  v4._rawValue = MEMORY[0x1E69E7CC0];
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  *(v1 + 792) = v4;
  if (*(v1 + 826) == 1)
  {
    if (*(v1 + 825) == 1)
    {
      v96[0] = *(v1 + 696);
      rawValue = AppleMusicUtils.filterOutNotAppropriateSong(from:aboveThreshold:)(v4, 0.5)._0._rawValue;

      v4._rawValue = rawValue;
    }

    OUTLINED_FUNCTION_81_20();
    if (!v26)
    {
      OUTLINED_FUNCTION_118_11();

      goto LABEL_50;
    }

    v27 = sub_1C754FEEC();
    sub_1C755117C();
    v28 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_96_0();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_92_0(v30);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      v36 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v36);
    }

    v37 = *(v1 + 736);

    v96[0] = v4._rawValue;
    sub_1C75504FC();
    sub_1C710B5BC(v96);
    if (!v37)
    {

LABEL_50:
      OUTLINED_FUNCTION_14_58();
      OUTLINED_FUNCTION_2_108();
      v87 = OUTLINED_FUNCTION_9_52();
      v88(v87);
      OUTLINED_FUNCTION_45_32();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_20_4();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_20_4();
  }

  else
  {
    OUTLINED_FUNCTION_111_13();
    v40 = swift_task_alloc();
    *(v1 + 800) = v40;
    *v40 = v1;
    OUTLINED_FUNCTION_30_39(v40);
    OUTLINED_FUNCTION_20_4();

    return StoryMusicCurator.inflateAndSort(songs:using:sortUpToIndex:eventRecorder:)();
  }
}

uint64_t sub_1C738B5F8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 784) = v5;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C738B740()
{
  v45 = v2;
  v44[0] = *(v2 + 784);
  rawValue = v44;
  sub_1C70CFF78();
  if (!*(v44[0] + 16))
  {

    v7 = sub_1C754FEEC();
    sub_1C755119C();
    v8 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_96_0();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v10);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v16 = *(v2 + 696);

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v17, 5);
    swift_willThrow();

    OUTLINED_FUNCTION_14_58();
    OUTLINED_FUNCTION_2_108();
    v18 = OUTLINED_FUNCTION_9_52();
    v19(v18);
    OUTLINED_FUNCTION_45_32();

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(*(v2 + 440) + 16);
  if (v5 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1C7033F04(v5, v44[0]);
  OUTLINED_FUNCTION_62_22();
  if ((v3 & 1) == 0)
  {
LABEL_4:
    OUTLINED_FUNCTION_112_8();
    v0._rawValue = v6;
    goto LABEL_16;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_69_1();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v3 >> 1, v1))
  {
    goto LABEL_36;
  }

  if (v23 != (v3 >> 1) - v1)
  {
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_98_5();
  swift_unknownObjectRelease();
  if (v0._rawValue)
  {
    goto LABEL_17;
  }

  v0._rawValue = MEMORY[0x1E69E7CC0];
LABEL_16:
  swift_unknownObjectRelease();
LABEL_17:
  *(v2 + 792) = v0;
  if (*(v2 + 826) == 1)
  {
    if (*(v2 + 825) == 1)
    {
      v44[0] = *(v2 + 696);
      rawValue = AppleMusicUtils.filterOutNotAppropriateSong(from:aboveThreshold:)(v0, 0.5)._0._rawValue;

      v0._rawValue = rawValue;
    }

    OUTLINED_FUNCTION_81_20();
    if (!v24)
    {
      OUTLINED_FUNCTION_118_11();

      goto LABEL_32;
    }

    v25 = sub_1C754FEEC();
    sub_1C755117C();
    v26 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_96_0();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_92_0(v28);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      v34 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v34);
    }

    v35 = *(v2 + 736);

    v44[0] = v0._rawValue;
    sub_1C75504FC();
    sub_1C710B5BC(v44);
    if (!v35)
    {

LABEL_32:
      OUTLINED_FUNCTION_14_58();
      OUTLINED_FUNCTION_2_108();
      v40 = OUTLINED_FUNCTION_9_52();
      v41(v40);
      OUTLINED_FUNCTION_45_32();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_17_1();
  }

  else
  {
    OUTLINED_FUNCTION_111_13();
    v38 = swift_task_alloc();
    *(v2 + 800) = v38;
    *v38 = v2;
    OUTLINED_FUNCTION_30_39(v38);
    OUTLINED_FUNCTION_17_1();

    return StoryMusicCurator.inflateAndSort(songs:using:sortUpToIndex:eventRecorder:)();
  }
}

uint64_t sub_1C738BB20()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 808) = v0;

  if (!v0)
  {

    *(v4 + 816) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738BC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_118_11();

  v25 = *(v13 + 816);
  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_44();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1C738BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v24 = *(v12 + 560);
  OUTLINED_FUNCTION_1_116();
  v13 = OUTLINED_FUNCTION_21_54();
  v14(v13);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_1C738BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();

  v24 = *(v12 + 632);
  OUTLINED_FUNCTION_1_116();
  v13 = OUTLINED_FUNCTION_21_54();
  v14(v13);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_1C738BE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 656);

  v25 = *(v12 + 672);
  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_1C738BEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_118_11();

  v25 = *(v13 + 720);
  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_50_27();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

void sub_1C738BF38()
{
  v1 = *(v0 + 808);
  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 808);
    v6 = *(v0 + 696);
    OUTLINED_FUNCTION_13_3();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1C7551EAC();
    v11 = sub_1C6F765A4(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "(Apple Music Search) Error sorting songs by mood so using the original results. Error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    v12 = *(v0 + 808);
    v13 = *(v0 + 696);
  }

  OUTLINED_FUNCTION_1_116();
  v14 = OUTLINED_FUNCTION_21_54();
  v15(v14);
  OUTLINED_FUNCTION_45_32();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C738C104(uint8_t *a1)
{
  v2 = sub_1C738C388();
  if ((v2 & 1) == 0)
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v7 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v7, &dword_1EDD28D48);
    v8 = sub_1C754FEEC();
    v9 = sub_1C755118C();
    v10 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v10, v11))
    {
      v6 = 1;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_96_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v12);
    v13 = "(Apple Music) SmartSearch is enabled for all scenarios";
LABEL_13:
    _os_log_impl(&dword_1C6F5C000, v8, v9, v13, a1, 2u);
    v6 = v2 ^ 1;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
LABEL_16:

    return v6 & 1;
  }

  v3 = &a1[*(type metadata accessor for StoryMusicCurationOptions() + 88)];
  a1 = *(v3 + 6);
  if (!a1 || (v4 = *(v3 + 3), v5 = StoryPromptAttributes.hasMusicCurationIngredients()(), sub_1C71AACA4(v4), sub_1C75504FC(), sub_1C71AACF0(v4), , !v5))
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v14 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v14, &dword_1EDD28D48);
    v8 = sub_1C754FEEC();
    v9 = sub_1C755118C();
    v15 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v15, v16))
    {
      v6 = 0;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_96_0();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v17);
    v13 = "(Apple Music) No QU music so not using smart search";
    goto LABEL_13;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_1C738C30C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C7393FC8(v6);
  return sub_1C755193C();
}

uint64_t sub_1C738C388()
{
  v0 = objc_opt_self();
  v1 = [v0 appleMusicSmartSearchMode];
  v2 = sub_1C755068C();
  v4 = v3;

  v45 = v2;
  v46 = v4;
  sub_1C6FB5E8C();
  LOBYTE(v1) = sub_1C75515AC();

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  v5 = [v0 appleMusicSmartSearchMode];
  v6 = sub_1C755068C();
  v8 = v7;

  v9 = static StoryMusicCurator.dictionaryFromCommasString(using:)(v6, v8);

  if (!*(v9 + 16))
  {
    goto LABEL_26;
  }

  sub_1C75504FC();
  sub_1C6F78124(0x796C6E4F5551, 0xE600000000000000);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v12 = sub_1C6FE0F8C(0x796C6E4F5551, 0xE600000000000000, v9);
  v14 = v13;

  if (!v14)
  {
    return 1;
  }

  v16 = HIBYTE(v14) & 0xF;
  v17 = v12 & 0xFFFFFFFFFFFFLL;
  if (!((v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v12 & 0xFFFFFFFFFFFFLL))
  {
LABEL_26:

    return 1;
  }

  if ((v14 & 0x1000000000000000) == 0)
  {
    if ((v14 & 0x2000000000000000) != 0)
    {
      v45 = v12;
      v46 = v14 & 0xFFFFFFFFFFFFFFLL;
      if (v12 == 43)
      {
        if (v16)
        {
          if (--v16)
          {
            v20 = 0;
            v30 = &v45 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v16)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v12 != 45)
      {
        if (v16)
        {
          v20 = 0;
          v35 = &v45;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            v35 = (v35 + 1);
            if (!--v16)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v16)
      {
        if (--v16)
        {
          v20 = 0;
          v24 = &v45 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v16)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C75518FC();
      }

      v19 = *result;
      if (v19 == 43)
      {
        if (v17 >= 1)
        {
          v16 = v17 - 1;
          if (v17 != 1)
          {
            v20 = 0;
            if (result)
            {
              v27 = (result + 1);
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  goto LABEL_69;
                }

                v29 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_69;
                }

                v20 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_69;
                }

                ++v27;
                if (!--v16)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_83;
      }

      if (v19 != 45)
      {
        if (v17)
        {
          v20 = 0;
          if (result)
          {
            while (1)
            {
              v33 = *result - 48;
              if (v33 > 9)
              {
                goto LABEL_69;
              }

              v34 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_69;
              }

              v20 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v17)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v20 = 0;
        LOBYTE(v16) = 1;
        goto LABEL_70;
      }

      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v20 = 0;
          if (result)
          {
            v21 = (result + 1);
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_69;
              }

              v23 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_69;
              }

              v20 = v23 - v22;
              if (__OFSUB__(v23, v22))
              {
                goto LABEL_69;
              }

              ++v21;
              if (!--v16)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v16) = 0;
LABEL_70:
          v38 = v16;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_1C71CBAA8(v12, v14, 10);
  v20 = v43;
  v38 = v44;
LABEL_71:

  if (v38)
  {
    return 1;
  }

  if (v20 == 1)
  {
    if (qword_1EDD0ED88 != -1)
    {
      swift_once();
    }

    v39 = sub_1C754FF1C();
    __swift_project_value_buffer(v39, &dword_1EDD28D48);
    v40 = sub_1C754FEEC();
    v41 = sub_1C755118C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C6F5C000, v40, v41, "(Apple Music Search) shouldUseSmartSearchForQUOnly: Enabled", v42, 2u);
      MEMORY[0x1CCA5F8E0](v42, -1, -1);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1C738C880(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_1C754F38C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C738C944, 0, 0);
}

uint64_t sub_1C738CE6C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 192) = v1;

  if (!v1)
  {
    *(v4 + 200) = a1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C738CFA0()
{
  OUTLINED_FUNCTION_115_0();
  v42 = v0;
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  sub_1C75504FC();
  OUTLINED_FUNCTION_108_11();
  sub_1C6FD2F68(v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_82_17();

  v41[0] = MEMORY[0x1E69E7CC0];
  v5 = sub_1C6FD2F68(v4);
  OUTLINED_FUNCTION_89_16(v5, v6, v7, v8, v9, v10, v11, v12, v39, v41[0]);
  v13 = sub_1C75504FC();
  v41[0] = sub_1C71CC894(v13);
  sub_1C738C30C(v41);
  if (!v3)
  {

    OUTLINED_FUNCTION_89_16(v16, v17, v18, v19, v20, v21, v22, v23, v40, v41[0]);

    v24 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_141();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_66();
      v25 = swift_slowAlloc();
      v41[0] = v25;
      OUTLINED_FUNCTION_117_10(4.8149e-34);
      OUTLINED_FUNCTION_116_14();
      sub_1C6F765A4(v26, v27, v41);
      OUTLINED_FUNCTION_86_14();
      *(v4 + 4) = v1;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v33 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v33);
      v34 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v34);
    }

    OUTLINED_FUNCTION_53_32();

    OUTLINED_FUNCTION_80_0(v24, v24[3]);
    OUTLINED_FUNCTION_109_0();
    sub_1C754F1AC();
    v35 = OUTLINED_FUNCTION_9_52();
    v36(v35);

    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_87_5();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_87_5();
}

void sub_1C738D188()
{
  OUTLINED_FUNCTION_115_0();
  v54 = v0;
  v3 = *(v0 + 192);
  v4 = sub_1C754FEEC();
  sub_1C755119C();

  v5 = OUTLINED_FUNCTION_140_0();
  v6 = *(v0 + 192);
  if (v5)
  {
    OUTLINED_FUNCTION_13_3();
    v1 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1C7030CDC(v7, &qword_1EC215190);
    v15 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v15);
    v16 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v16);
  }

  OUTLINED_FUNCTION_108_11();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  swift_endAccess();
  v18 = OUTLINED_FUNCTION_82_17();

  v19 = sub_1C6FD2F68(v18);
  OUTLINED_FUNCTION_89_16(v19, v20, v21, v22, v23, v24, v25, v26, v51, v17);
  v27 = sub_1C75504FC();
  v53[0] = sub_1C71CC894(v27);
  sub_1C738C30C(v53);

  OUTLINED_FUNCTION_89_16(v28, v29, v30, v31, v32, v33, v34, v35, v52, v53[0]);

  v36 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_141();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_66();
    v37 = swift_slowAlloc();
    v53[0] = v37;
    OUTLINED_FUNCTION_117_10(4.8149e-34);
    OUTLINED_FUNCTION_116_14();
    sub_1C6F765A4(v38, v39, v53);
    OUTLINED_FUNCTION_86_14();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v45 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v45);
    v46 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v46);
  }

  OUTLINED_FUNCTION_53_32();

  OUTLINED_FUNCTION_80_0(v36, v36[3]);
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v47 = OUTLINED_FUNCTION_9_52();
  v48(v47);

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_87_5();

  __asm { BRAA            X2, X16 }
}

uint64_t StoryMusicCurator.searchPromptGenerator(with:searchKeywords:eventRecorder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v203 = a2;
  v8 = *v3;
  v9 = sub_1C754D84C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v210) = 0;
  sub_1C6FC0604(__src);
  memcpy(v212, __src, sizeof(v212));
  result = StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(&v210, a1, v212);
  if (v4)
  {
    return result;
  }

  v193 = a3;
  v200 = result;
  v201 = v8;
  v195 = v9;
  v196 = v12;
  if (*(a1 + 24))
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_52_27();
    LOBYTE(v14) = sub_1C7551DBC();
  }

  v214 = MEMORY[0x1E69E7CC0];
  v210 = 0;
  v211 = 0xE000000000000000;
  v192 = *MEMORY[0x1E69BEA98];
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750(v15, v16);

  v197 = v10;
  if (!v212[3])
  {
    sub_1C7030CDC(v212, &qword_1EC216D30);
    v22 = MEMORY[0x1E69E7CC0];
    v17 = v3;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v17 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(v208 + 16))
  {

LABEL_13:
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v18 = OUTLINED_FUNCTION_76_18();
  sub_1C6FB632C(v18);
  sub_1C75504FC();

  OUTLINED_FUNCTION_102_13();
  if (!v19)
  {

    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v20 = OUTLINED_FUNCTION_94_2();
  MEMORY[0x1CCA5CD70](v20);

  sub_1C6FB474C();
  v22 = v21;
  v23 = *(v21 + 24);
  if (*(v21 + 16) >= v23 >> 1)
  {
    goto LABEL_167;
  }

LABEL_10:
  OUTLINED_FUNCTION_49_26();
  *(v24 + 32) = 0;
  v214 = v22;
LABEL_14:
  v191 = *MEMORY[0x1E69BEA58];
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750(v25, v26);

  if (!v212[3])
  {
    sub_1C7030CDC(v212, &qword_1EC216D30);
    LODWORD(v31) = 0;
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v208 + 16))
  {

LABEL_24:
    LODWORD(v31) = 0;
    goto LABEL_25;
  }

  v212[0] = v208;
  sub_1C703328C();
  v27 = sub_1C75505FC();
  v14 = v28;

  OUTLINED_FUNCTION_26_43();
  MEMORY[0x1CCA5CD70](v27, v14);

  MEMORY[0x1CCA5CD70](v212[0], v212[1]);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB474C();
    v22 = v178;
  }

  OUTLINED_FUNCTION_74_14();
  if (v30)
  {
    OUTLINED_FUNCTION_15_2(v29);
    sub_1C6FB474C();
    v22 = v179;
  }

  OUTLINED_FUNCTION_49_26();
  LODWORD(v31) = 1;
  *(v32 + 32) = 1;
  v214 = v22;
LABEL_25:
  v208 = 0;
  v209 = 0;
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750(v33, v34);

  if (!v212[3])
  {
    sub_1C7030CDC(v212, &qword_1EC216D30);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_75_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v37 = 0;
    v198 = 0;
    goto LABEL_33;
  }

  if (!*(v206 + 16))
  {

    goto LABEL_32;
  }

  v35 = v31;
  v36 = OUTLINED_FUNCTION_76_18();
  sub_1C6FB632C(v36);
  v31 = v22;
  sub_1C75504FC();

  if (sub_1C705FC40(0, v22))
  {

    v198 = 0;
    LODWORD(v31) = v35;
    v37 = 0;
  }

  else
  {
    v102 = OUTLINED_FUNCTION_94_2();
    sub_1C7392888(v102, v103);
    v37 = v104;
    v106 = v105;

    OUTLINED_FUNCTION_26_43();
    v198 = v106;
    MEMORY[0x1CCA5CD70](v37, v106);
    MEMORY[0x1CCA5CD70](v212[0], v212[1]);

    v22 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB474C();
      v22 = v185;
    }

    OUTLINED_FUNCTION_74_14();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v107);
      sub_1C6FB474C();
      v22 = v186;
    }

    OUTLINED_FUNCTION_49_26();
    OUTLINED_FUNCTION_88_14(v108);
    v208 = v37;
    v209 = v198;
  }

LABEL_33:
  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750(v38, v39);

  if (!v212[3])
  {
    sub_1C7030CDC(v212, &qword_1EC216D30);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D38);
  OUTLINED_FUNCTION_75_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v40 = v206;
  if (sub_1C705FC40(3u, v22) || sub_1C705FC40(0, v22))
  {

    goto LABEL_39;
  }

  if (!*(v40 + 16))
  {

    goto LABEL_151;
  }

  v109 = OUTLINED_FUNCTION_76_18();
  sub_1C6FB632C(v109);
  v110 = *(v40 + 32);

  if (v110 < 0)
  {
    __break(1u);
    goto LABEL_171;
  }

  v111 = PHStringForMemoryMood();
  if (!v111)
  {
LABEL_151:
    if (qword_1EDD0ED88 == -1)
    {
LABEL_152:
      v162 = sub_1C754FF1C();
      __swift_project_value_buffer(v162, &dword_1EDD28D48);
      v163 = sub_1C754FEEC();
      sub_1C755119C();
      v164 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v164, v165))
      {
        OUTLINED_FUNCTION_96_0();
        LODWORD(v31) = v22;
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_59_24(&dword_1C6F5C000, v166, v167, "(Apple Music Search) searchPromptGenerator: There was a mood but unable to parse it out");
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      goto LABEL_155;
    }

LABEL_171:
    OUTLINED_FUNCTION_0_35();
    swift_once();
    goto LABEL_152;
  }

  v112 = v111;
  sub_1C755068C();
  LODWORD(v31) = v22;

  v113 = OUTLINED_FUNCTION_455();
  sub_1C7392888(v113, v114);
  v37 = v115;
  v117 = v116;

  OUTLINED_FUNCTION_26_43();
  MEMORY[0x1CCA5CD70](v37, v117);
  MEMORY[0x1CCA5CD70](v212[0], v212[1]);

  v208 = v37;
  v209 = v117;
  v198 = v117;
LABEL_155:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB474C();
    v22 = v187;
  }

  OUTLINED_FUNCTION_74_14();
  if (v30)
  {
    OUTLINED_FUNCTION_15_2(v168);
    sub_1C6FB474C();
    v22 = v188;
  }

  OUTLINED_FUNCTION_49_26();
  OUTLINED_FUNCTION_88_14(v169);
LABEL_39:
  v41 = sub_1C755068C();
  sub_1C6FE3750(v41, v42);

  if (v212[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_75_15();
    if (swift_dynamicCast())
    {
      if (*(v206 + 16))
      {
        sub_1C7388F28(v206, &v208, &v214);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB474C();
          v22 = v180;
        }

        v31 = *(v22 + 16);
        v43 = *(v22 + 24);
        if (v31 >= v43 >> 1)
        {
          OUTLINED_FUNCTION_15(v43);
          sub_1C6FB474C();
          v22 = v181;
        }

        LOBYTE(v14) = 0;
        *(v22 + 16) = v31 + 1;
        *(v22 + v31 + 32) = 2;
        LODWORD(v31) = 1;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C7030CDC(v212, &qword_1EC216D30);
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_71_15();
  sub_1C6FE3750(v44, v45);

  v194 = v17;
  v199 = v22;
  if (v212[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_102_13();
      if (v46)
      {
        if (!v198 || !sub_1C705FC40(3u, v199))
        {
          goto LABEL_96;
        }

        v47 = HIBYTE(v198) & 0xF;
        if ((v198 & 0x2000000000000000) == 0)
        {
          v47 = v37 & 0xFFFFFFFFFFFFLL;
        }

        if (!v47 || (v48 = sub_1C75506FC(), v190 = v49, v212[0] = v48, v212[1] = v49, OUTLINED_FUNCTION_94_2(), v50 = sub_1C75506FC(), LODWORD(v202) = v31, v37 = v51, v206 = v50, v207 = v51, sub_1C6FB5E8C(), v52 = sub_1C75515AC(), , LODWORD(v31) = v202, , (v52 & 1) == 0))
        {
LABEL_96:
          OUTLINED_FUNCTION_26_43();
          v95 = OUTLINED_FUNCTION_94_2();
          MEMORY[0x1CCA5CD70](v95);

          MEMORY[0x1CCA5CD70](v212[0], v212[1]);

          v96 = v199;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB474C();
            v96 = v182;
          }

          v97 = v195;
          v99 = *(v96 + 16);
          v98 = *(v96 + 24);
          if (v99 >= v98 >> 1)
          {
            OUTLINED_FUNCTION_15_2(v98);
            sub_1C6FB474C();
            v96 = v183;
          }

          *(v96 + 16) = v99 + 1;
          v199 = v96;
          *(v96 + v99 + 32) = 2;
          LODWORD(v202) = 1;
          goto LABEL_123;
        }

        if (qword_1EDD0ED88 != -1)
        {
          OUTLINED_FUNCTION_0_35();
          swift_once();
        }

        v53 = sub_1C754FF1C();
        __swift_project_value_buffer(v53, &dword_1EDD28D48);
        v54 = sub_1C754FEEC();
        sub_1C755117C();
        v55 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v55, v56))
        {
          OUTLINED_FUNCTION_96_0();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_59_24(&dword_1C6F5C000, v57, v58, "(Apple Music Search) Genre is mood dupe so skip adding it to the search prompt");
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        if ((v14 & 1) == 0)
        {
LABEL_103:
          LODWORD(v202) = v31;
LABEL_122:
          v97 = v195;
LABEL_123:
          v212[0] = v210;
          v212[1] = v211;
          sub_1C75504FC();
          v124 = v196;
          sub_1C754D7FC();
          sub_1C6FB5E8C();
          v125 = sub_1C755154C();
          v127 = v126;
          (*(v197 + 8))(v124, v97);

          v212[0] = v125;
          v212[1] = v127;
          v206 = 8224;
          v207 = 0xE200000000000000;
          v204 = 32;
          v205 = 0xE100000000000000;
          OUTLINED_FUNCTION_2_80();
          v14 = sub_1C755155C();
          v65 = v128;

          sub_1C75504FC();

          v210 = v14;
          v211 = v65;

          v129 = HIBYTE(v65) & 0xF;
          if ((v65 & 0x2000000000000000) == 0)
          {
            v129 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v129)
          {

            if (qword_1EDD0ED88 != -1)
            {
              OUTLINED_FUNCTION_0_35();
              swift_once();
            }

            v136 = sub_1C754FF1C();
            __swift_project_value_buffer(v136, &dword_1EDD28D48);
            v137 = sub_1C754FEEC();
            v138 = sub_1C755119C();
            v139 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v139, v140))
            {
              OUTLINED_FUNCTION_96_0();
              v141 = swift_slowAlloc();
              *v141 = 0;
              _os_log_impl(&dword_1C6F5C000, v137, v138, "(Apple Music Search) searchPromptGenerator: The search prompt is empty", v141, 2u);
              v142 = OUTLINED_FUNCTION_2_44();
              MEMORY[0x1CCA5F8E0](v142);
            }

            sub_1C70EB0F0();
            OUTLINED_FUNCTION_9_10();
            swift_allocError();
            OUTLINED_FUNCTION_66_22(v143, 8);
            swift_willThrow();
          }

          v203 = v5;
          sub_1C755068C();
          OUTLINED_FUNCTION_71_15();
          sub_1C6FE3750(v130, v131);

          v37 = v194;
          if (v212[3])
          {
            sub_1C7030CDC(v212, &qword_1EC216D30);
            v132 = sub_1C755068C();
            sub_1C6FE3750(v132, v133);

            v134 = v212[3];
            sub_1C7030CDC(v212, &qword_1EC216D30);
            v135 = v202 ^ 1;
            if (v134)
            {
              v135 = 1;
            }

            v71 = v199;
            if (v135)
            {
LABEL_139:
              v148 = qword_1EDD0ED88;
              swift_bridgeObjectRetain_n();
              sub_1C75504FC();
              if (v148 != -1)
              {
                goto LABEL_165;
              }

              goto LABEL_140;
            }
          }

          else
          {

            sub_1C7030CDC(v212, &qword_1EC216D30);
            v71 = v199;
            if ((v202 & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          type metadata accessor for MusicLocalizer();
          v144 = OUTLINED_FUNCTION_113_13("PIFMusicSynonymsForSong");
          v145 = OUTLINED_FUNCTION_113_13("PIFMusicSynonymsForBeat");
          v212[0] = v144;
          sub_1C6FD2568(v145);
          v14 = sub_1C72CB24C(v212[0], v14, v65);
          v147 = v146;

          v65 = v147;
          v210 = v14;
          v211 = v147;
          if (sub_1C7391F74())
          {
            OUTLINED_FUNCTION_114_13(544239444);
            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](0x73676E6F7320, 0xE600000000000000);

            v14 = v212[0];
            v65 = v212[1];
            v210 = v212[0];
            v211 = v212[1];
          }

          goto LABEL_139;
        }
      }

      else
      {

        if ((v14 & 1) == 0)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_66;
    }
  }

  else
  {
    sub_1C7030CDC(v212, &qword_1EC216D30);
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_103;
  }

LABEL_66:
  v189 = sub_1C7392B2C();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v59 = sub_1C754FF1C();
  v190 = __swift_project_value_buffer(v59, &dword_1EDD28D48);
  v60 = sub_1C754FEEC();
  v61 = sub_1C755118C();
  v62 = OUTLINED_FUNCTION_72();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v203;
  if (v64)
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_59_24(&dword_1C6F5C000, v66, v67, "(Apple Music Search) searchPromptGenerator: Adding music search keywords to the Apple Music search term");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v68 = sub_1C75504FC();
  v212[0] = sub_1C71CC894(v68);
  sub_1C738C30C(v212);
  v69 = v212[0];
  v70 = sub_1C6FB6304();
  v71 = 0;
  v202 = v69 & 0xC000000000000001;
  v203 = v70;
  v14 = MEMORY[0x1E69E7CC0];
  v17 = v201;
  while (1)
  {
    if (v203 == v71)
    {

      sub_1C75504FC();
      v79 = sub_1C754FEEC();
      v80 = sub_1C755117C();

      if (os_log_type_enabled(v79, v80))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_12_66();
        v81 = swift_slowAlloc();
        v212[0] = v81;
        *v61 = 136315138;
        v82 = MEMORY[0x1CCA5D090](v14, MEMORY[0x1E69E6158]);
        v17 = sub_1C6F765A4(v82, v83, v212);

        *(v61 + 4) = v17;
        _os_log_impl(&dword_1C6F5C000, v79, v80, "(Apple Music Search) searchPromptGenerator: candidate keywords = %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v84 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v84);
      }

      v85 = v199;
      v86 = *(v14 + 16);
      if (!v86)
      {

        LODWORD(v202) = 0;
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB474C();
        v85 = v176;
      }

      v88 = *(v85 + 16);
      v87 = *(v85 + 24);
      if (v88 >= v87 >> 1)
      {
        OUTLINED_FUNCTION_15_2(v87);
        sub_1C6FB474C();
        v85 = v177;
      }

      OUTLINED_FUNCTION_73_19();
      *(v85 + 16) = v88 + 1;
      v88[v85 + 32] = 4;
      MEMORY[0x1CCA5CD70](0x662073676E6F7320, v17);
      v199 = v85;
      if (v189 >= v86)
      {
        v100 = sub_1C75504FC();
        v101 = v14;
        goto LABEL_120;
      }

      if ((v189 & 0x8000000000000000) == 0)
      {
        sub_1C74B833C(0);
        v88 = v89;
        v91 = v90;
        v93 = v92;
        if ((v92 & 1) == 0)
        {
          goto LABEL_95;
        }

        v17 = v5;
        sub_1C7551DEC();
        OUTLINED_FUNCTION_69_1();
        swift_unknownObjectRetain_n();
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          swift_unknownObjectRelease();
          v118 = MEMORY[0x1E69E7CC0];
        }

        v119 = *(v118 + 16);

        if (__OFSUB__(v93 >> 1, v91))
        {
          __break(1u);
        }

        else if (v119 == (v93 >> 1) - v91)
        {
          v101 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v5 = v17;
          OUTLINED_FUNCTION_73_19();
          if (!v101)
          {
            v100 = swift_unknownObjectRelease();
            v101 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_120;
        }

        swift_unknownObjectRelease();
        v5 = v17;
        OUTLINED_FUNCTION_73_19();
LABEL_95:
        sub_1C739C274();
        v101 = v94;
        v100 = swift_unknownObjectRelease();
LABEL_120:
        v212[0] = 0x747265636E6F43;
        v212[1] = 0xE700000000000000;
        MEMORY[0x1EEE9AC00](v100);
        v120 = sub_1C70735F4();

        if (v120)
        {

          v212[0] = v210;
          v212[1] = v211;
          v206 = 0x662073676E6F7320;
          v207 = v17;
          v204 = 0x73676E6F7320;
          v205 = 0xE600000000000000;
          sub_1C6FB5E8C();
          OUTLINED_FUNCTION_2_80();
          v121 = sub_1C755155C();
          v123 = v122;

          LODWORD(v202) = 0;
          v210 = v121;
          v211 = v123;
          goto LABEL_122;
        }

        v158 = v101[2];
        v97 = v195;
        if (v158 < 2)
        {
          if (!v158)
          {

            v170 = sub_1C754FEEC();
            v171 = sub_1C755119C();
            v172 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v172, v173))
            {
              OUTLINED_FUNCTION_96_0();
              v174 = swift_slowAlloc();
              OUTLINED_FUNCTION_92_0(v174);
              _os_log_impl(&dword_1C6F5C000, v170, v171, "(Apple Music Search) searchPromptGenerator: Got 0 search keywords", v88, 2u);
              v175 = OUTLINED_FUNCTION_4_0();
              MEMORY[0x1CCA5F8E0](v175);
            }

            goto LABEL_149;
          }

          sub_1C6FB632C(0);
          v159 = v101[4];
          v161 = v101[5];
          sub_1C75504FC();
        }

        else
        {
          v212[0] = v101;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          sub_1C703328C();
          v159 = sub_1C75505FC();
          v161 = v160;
        }

        MEMORY[0x1CCA5CD70](v159, v161);

LABEL_149:
        LODWORD(v202) = 0;
        goto LABEL_123;
      }

      __break(1u);
LABEL_167:
      OUTLINED_FUNCTION_15_2(v23);
      sub_1C6FB474C();
      v22 = v184;
      goto LABEL_10;
    }

    if (v202)
    {
      v61 = MEMORY[0x1CCA5DDD0](v71, v69);
    }

    else
    {
      if (v71 >= *(v69 + 16))
      {
        goto LABEL_164;
      }

      v61 = *(v69 + 8 * v71 + 32);
    }

    if (__OFADD__(v71, 1))
    {
      break;
    }

    v206 = v61;
    v72 = v5;
    sub_1C7393048(&v206, v212);

    v65 = v212[1];
    if (v212[1])
    {
      v37 = v5;
      v73 = v212[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v14 = v77;
      }

      v75 = *(v14 + 16);
      v74 = *(v14 + 24);
      v61 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        OUTLINED_FUNCTION_15(v74);
        sub_1C6FB1814();
        v14 = v78;
      }

      *(v14 + 16) = v61;
      v76 = v14 + 16 * v75;
      *(v76 + 32) = v73;
      *(v76 + 40) = v65;
      v5 = v72;
      v17 = v201;
    }

    ++v71;
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  OUTLINED_FUNCTION_0_35();
  swift_once();
LABEL_140:
  v149 = sub_1C754FF1C();
  __swift_project_value_buffer(v149, &dword_1EDD28D48);
  sub_1C75504FC();
  sub_1C75504FC();
  v150 = sub_1C754FEEC();
  v151 = sub_1C755117C();

  if (os_log_type_enabled(v150, v151))
  {
    OUTLINED_FUNCTION_13_3();
    v152 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v202 = swift_slowAlloc();
    v206 = v202;
    *v152 = 136315138;
    v212[0] = 0;
    v212[1] = 0xE000000000000000;
    sub_1C755180C();

    OUTLINED_FUNCTION_114_13(0x3D74706D6F7270);
    MEMORY[0x1CCA5CD70](0x547972657571202CLL, 0xED00003D73657079);
    v153 = MEMORY[0x1CCA5D090](v71, &type metadata for AppleMusicSearchQueryType);
    MEMORY[0x1CCA5CD70](v153);

    v154 = sub_1C6F765A4(v212[0], v212[1], &v206);

    *(v152 + 4) = v154;
    _os_log_impl(&dword_1C6F5C000, v150, v151, "(Apple Music Search) searchPromptGenerator: appleMusicSearchPrompt = %s", v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v202);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v37 = v194;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v155 = v37 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v156 = (v155 + *(type metadata accessor for StoryMusicCurationDiagnostics() + 76));
  *v156 = v14;
  v156[1] = v65;

  v157 = v193;
  *v193 = v14;
  v157[1] = v65;
  v157[2] = v71;
  return result;
}

uint64_t sub_1C738EC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1C754F38C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C738ECEC, 0, 0);
}

uint64_t sub_1C738ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  __swift_project_boxed_opaque_existential_1(*(v18 + 72), *(*(v18 + 72) + 24));
  sub_1C754F1CC();
  v21 = sub_1C7391F74();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v22 = sub_1C754FF1C();
  *(v18 + 112) = OUTLINED_FUNCTION_23_2(v22, &dword_1EDD28D48);
  sub_1C75504FC();
  v23 = sub_1C754FEEC();
  v24 = sub_1C755117C();

  if (OUTLINED_FUNCTION_140_0())
  {
    v26 = *(v18 + 56);
    v25 = *(v18 + 64);
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v28 = swift_slowAlloc();
    a9 = v28;
    *v27 = 67109378;
    *(v27 + 4) = v21;
    *(v27 + 8) = 2080;
    *(v27 + 10) = sub_1C6F765A4(v26, v25, &a9);
    _os_log_impl(&dword_1C6F5C000, v23, v24, "(Apple Music Search) Call Apple Music Smart search (includeNaturalLanguageResults=%{BOOL}d) for prompt %s)", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v30 = *(v18 + 56);
  v29 = *(v18 + 64);
  type metadata accessor for AppleMusicSmartSearch();
  *(v18 + 16) = v30;
  *(v18 + 24) = v29;
  *(v18 + 32) = &unk_1F46AA158;
  *(v18 + 40) = 10;
  *(v18 + 48) = v21;
  sub_1C75504FC();
  v31 = swift_task_alloc();
  *(v18 + 120) = v31;
  *v31 = v18;
  v31[1] = sub_1C738EF14;
  OUTLINED_FUNCTION_88_0();

  return static AppleMusicSmartSearch.searchCatalogForSongs(with:)(v32);
}

uint64_t sub_1C738EF14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C738F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10[16] + 16);
  if (v11)
  {
    v12 = sub_1C754FEEC();
    sub_1C755117C();
    v13 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_13_3();
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v11;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v22 = v10[12];
    v21 = v10[13];
    v23 = v10[11];
    v24 = v10[9];

    OUTLINED_FUNCTION_70(v24, v24[3]);
    OUTLINED_FUNCTION_109_0();
    sub_1C754F1AC();
    (*(v22 + 8))(v21, v23);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_88_0();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {

    v34 = sub_1C754FEEC();
    sub_1C755119C();
    v35 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_96_0();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v37);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v43, 4);
    swift_willThrow();
    OUTLINED_FUNCTION_80_0(v10[9], *(v10[9] + 24));
    OUTLINED_FUNCTION_109_0();
    sub_1C754F1AC();
    v44 = OUTLINED_FUNCTION_9_52();
    v45(v44);

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_88_0();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
  }
}

uint64_t sub_1C738F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_80_0(*(v10 + 72), *(*(v10 + 72) + 24));
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v11 = OUTLINED_FUNCTION_9_52();
  v12(v11);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t StoryMusicCurator.filterOutExplicitIfNeeded(songs:queryInfo:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v16[2] = a3;
  sub_1C75504FC();
  sub_1C706D018(sub_1C7394808, v16, v5);
  v7 = v6;
  if ((static StoryMusicCurator.isUserAllowedExplicitContent()() & 1) == 0 || !*(*(a3 + 56) + 16))
  {

    goto LABEL_10;
  }

  v8 = *(v7 + 16);

  if (!v8)
  {
LABEL_10:
    type metadata accessor for AppleMusicSmartSearch();
    return static AppleMusicSmartSearch.filterOutExplicit(songs:)(a1);
  }

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v9 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v9, &dword_1EDD28D48);
  v10 = sub_1C754FEEC();
  v11 = sub_1C755117C();
  v12 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_96_0();
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C6F5C000, v10, v11, "(Apple Music Search) Not filtering titles on explicit content", v14, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C75504FC();
  return a1;
}

uint64_t sub_1C738F460(uint64_t a1, uint64_t a2)
{
  *(v3 + 880) = v2;
  *(v3 + 872) = a2;
  *(v3 + 864) = a1;
  *(v3 + 912) = 0;
  v4 = swift_task_alloc();
  *(v3 + 888) = v4;
  *v4 = v3;
  v4[1] = sub_1C738F510;

  return StoryMusicCurator.requestRecentlyUsedSongs(for:eventRecorder:)();
}

uint64_t sub_1C738F510()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 896) = v0;

  if (!v0)
  {
    *(v4 + 904) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C738F614()
{
  v107 = v0;
  v2 = sub_1C744EDAC(v0[113], *(v0[109] + 64));

  if (qword_1EDD0ED88 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v3, &dword_1EDD28D48);
  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755118C();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_13_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v1 = swift_slowAlloc();
    v106[0] = v1;
    *v6 = 136315138;
    v7 = MEMORY[0x1CCA5D090](v2, MEMORY[0x1E69E6158]);
    v9 = sub_1C6F765A4(v7, v8, v106);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "(Apple Music Search) recentlyUsedIds = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    v10 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v11 = 0;
  v12 = v0[108];
  v13 = *(v12 + 16);
  v94 = v12;
  v14 = (v12 + 32);
  v98 = MEMORY[0x1E69E7CC0];
  buf = (v12 + 32);
LABEL_5:
  v15 = &v14[192 * v11];
  while (v13 != v11)
  {
    if (v11 >= v13)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    memcpy(v0 + 2, v15, 0xC0uLL);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_59;
    }

    v1 = v0[4];
    v0[104] = v0[3];
    v0[105] = v1;
    *(swift_task_alloc() + 16) = v0 + 104;
    sub_1C7080654((v0 + 2), (v0 + 26));
    sub_1C75504FC();
    OUTLINED_FUNCTION_109_0();
    v16 = sub_1C70735F4();

    if (!v16)
    {
      v17 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106[0] = v98;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716E4AC();
        v17 = v106[0];
      }

      v19 = *(v17 + 16);
      v1 = v19 + 1;
      if (v19 >= *(v17 + 24) >> 1)
      {
        OUTLINED_FUNCTION_23_45();
        sub_1C716E4AC();
        v17 = v106[0];
      }

      *(v17 + 16) = v1;
      v98 = v17;
      memcpy((v17 + 192 * v19 + 32), v0 + 2, 0xC0uLL);
      ++v11;
      v14 = buf;
      goto LABEL_5;
    }

    sub_1C70806B0((v0 + 2));
    ++v11;
    v15 += 192;
  }

  if (*(v98 + 16))
  {
    v104 = *(v98 + 16);
    v20 = 0;
    v21 = v94 + 32;
    bufa = MEMORY[0x1E69E7CC0];
    v95 = v94 + 32;
LABEL_18:
    v22 = (v21 + 192 * v20);
    while (v13 != v20)
    {
      if (v20 >= v13)
      {
        goto LABEL_60;
      }

      memcpy(v0 + 50, v22, 0xC0uLL);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_61;
      }

      v1 = v0[52];
      v0[106] = v0[51];
      v0[107] = v1;
      *(swift_task_alloc() + 16) = v0 + 106;
      sub_1C7080654((v0 + 50), (v0 + 74));
      sub_1C75504FC();
      v24 = sub_1C70735F4();

      if (v24)
      {
        v25 = bufa;
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v106[0] = bufa;
        if ((v26 & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C716E4AC();
          v25 = v106[0];
        }

        v27 = *(v25 + 16);
        v1 = v27 + 1;
        if (v27 >= *(v25 + 24) >> 1)
        {
          OUTLINED_FUNCTION_23_45();
          sub_1C716E4AC();
          v25 = v106[0];
        }

        *(v25 + 16) = v1;
        bufa = v25;
        memcpy((v25 + 192 * v27 + 32), v0 + 50, 0xC0uLL);
        v20 = v23;
        v21 = v95;
        goto LABEL_18;
      }

      sub_1C70806B0((v0 + 50));
      ++v20;
      v22 += 192;
    }

    v28 = bufa;

    v29 = sub_1C754FEEC();
    v30 = sub_1C755117C();

    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_13_3();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v32 = swift_slowAlloc();
      v33 = v32;
      v105 = v32;
      v34 = &unk_1C755E000;
      *v31 = 136315138;
      v35 = *(bufa + 2);
      v36 = MEMORY[0x1E69E7CC0];
      if (v35)
      {
        v93 = v32;
        v96 = v30;
        v102 = v29;
        v106[0] = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v36 = v106[0];
        v37 = *(v106[0] + 16);
        v38 = 16 * v37;
        v39 = (bufa + 48);
        do
        {
          v41 = *(v39 - 1);
          v40 = *v39;
          v106[0] = v36;
          v42 = *(v36 + 24);
          sub_1C75504FC();
          if (v37 >= v42 >> 1)
          {
            OUTLINED_FUNCTION_321();
            sub_1C6F7ED9C();
            v36 = v106[0];
          }

          *(v36 + 16) = v37 + 1;
          v43 = v36 + v38;
          *(v43 + 32) = v41;
          *(v43 + 40) = v40;
          v38 += 16;
          v39 += 24;
          ++v37;
          --v35;
        }

        while (v35);
        v34 = &unk_1C755E000;
        v28 = bufa;
        v29 = v102;
        v30 = v96;
        v33 = v93;
      }

      MEMORY[0x1CCA5D090](v36, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_100_16();

      v62 = OUTLINED_FUNCTION_455();
      v65 = sub_1C6F765A4(v62, v63, v64);

      *(v31 + 4) = v65;
      _os_log_impl(&dword_1C6F5C000, v29, v30, "(Apple Music Search) Used song songs Ids: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      v34 = &unk_1C755E000;
    }

    v66 = *(v28 + 2);
    if (v66)
    {
      v106[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_65_23();
      v67 = 0;
      v68 = v106[0];
      v69 = *(v106[0] + 16);
      v70 = 16 * v69;
      do
      {
        v72 = *&bufa[v67 + 40];
        v71 = *&bufa[v67 + 48];
        v106[0] = v68;
        v73 = *(v68 + 24);
        sub_1C75504FC();
        if (v69 >= v73 >> 1)
        {
          OUTLINED_FUNCTION_23_45();
          sub_1C6F7ED9C();
          v68 = v106[0];
        }

        *(v68 + 16) = v69 + 1;
        v74 = v68 + v70;
        *(v74 + 32) = v72;
        *(v74 + 40) = v71;
        v70 += 16;
        v67 += 192;
        ++v69;
        --v66;
      }

      while (v66);

      v34 = &unk_1C755E000;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v75 = v0[110] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v75 + *(type metadata accessor for StoryMusicCurationDiagnostics() + 104)) = v68;

    v61 = v98;
    v76 = sub_1C754FEEC();
    v77 = sub_1C755118C();

    if (os_log_type_enabled(v76, v77))
    {
      v103 = v77;
      OUTLINED_FUNCTION_13_3();
      v78 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v97 = swift_slowAlloc();
      v105 = v97;
      bufb = v78;
      *v78 = v34[350];
      v106[0] = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v79 = 0;
      v80 = v106[0];
      v81 = *(v106[0] + 16);
      v82 = 16 * v81;
      do
      {
        v83 = *(v98 + v79 + 40);
        v84 = *(v98 + v79 + 48);
        v106[0] = v80;
        v85 = *(v80 + 24);
        sub_1C75504FC();
        if (v81 >= v85 >> 1)
        {
          OUTLINED_FUNCTION_23_45();
          sub_1C6F7ED9C();
          v80 = v106[0];
        }

        *(v80 + 16) = v81 + 1;
        v86 = v80 + v82;
        *(v86 + 32) = v83;
        *(v86 + 40) = v84;
        v82 += 16;
        v79 += 192;
        ++v81;
        --v104;
      }

      while (v104);
      v87 = MEMORY[0x1CCA5D090](v80, MEMORY[0x1E69E6158]);
      v89 = v88;

      v90 = sub_1C6F765A4(v87, v89, &v105);

      *(bufb + 4) = v90;
      _os_log_impl(&dword_1C6F5C000, v76, v103, "(Apple Music Search) Unused songs Ids: %s", bufb, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v61 = v98;
    }

    else
    {
    }
  }

  else
  {

    v44 = sub_1C754FEEC();
    sub_1C755117C();
    v45 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_66();
      v47 = swift_slowAlloc();
      v106[0] = v47;
      *v1 = 136315138;
      *(v1 + 4) = sub_1C6F765A4(0xD000000000000044, 0x80000001C75ACED0, v106);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v53 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v53);
      v54 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v54);
    }

    v55 = v0[108];
    v56 = v0[110] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    swift_beginAccess();
    v57 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 132);
    sub_1C6FB0600();
    v58 = *(*(v56 + v57) + 16);
    sub_1C6FB0EFC();
    v59 = *(v56 + v57);
    *(v59 + 16) = v58 + 1;
    v60 = v59 + 16 * v58;
    *(v60 + 32) = 0xD000000000000044;
    *(v60 + 40) = 0x80000001C75ACED0;
    *(v56 + v57) = v59;
    swift_endAccess();
    v106[0] = v55;
    sub_1C75504FC();
    sub_1C70CFF78();
    v61 = v106[0];
  }

  OUTLINED_FUNCTION_116();

  return v91(v61);
}

uint64_t sub_1C7390010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[105] = a3;
  v4[106] = v3;
  v4[104] = a1;
  v4[107] = *v3;
  v4[108] = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1C7390068, 0, 0);
}

void sub_1C7390068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0ED88 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v14 = sub_1C754FF1C();
    v12[109] = __swift_project_value_buffer(v14, &dword_1EDD28D48);
    v15 = sub_1C754FEEC();
    v16 = sub_1C755117C();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_96_0();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_92_0(v17);
      _os_log_impl(&dword_1C6F5C000, v15, v16, "(Apple Music Search) Run Song Safety validation", v13, 2u);
      v18 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v18);
    }

    if ((static StoryMusicCurator.isUserAllowedExplicitContent()() & 1) == 0 || !sub_1C705FC40(0, v12[108]))
    {
      OUTLINED_FUNCTION_80_0((v12[106] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_safetyController), *(v12[106] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_safetyController + 24));
      v39 = swift_task_alloc();
      v12[110] = v39;
      *v39 = v12;
      v39[1] = sub_1C7390514;
      OUTLINED_FUNCTION_44();

      v44(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
      return;
    }

    v19 = sub_1C754FEEC();
    sub_1C755117C();
    v20 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_96_0();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v22);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v28 = v12[104];

    v29 = *(v28 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    v73 = v12;
    if (v29)
    {
      v31 = v12[104];
      v75[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_83_9();
      v32 = v75[0];
      v33 = *(v75[0] + 16);
      v34 = 16 * v33;
      v35 = (v31 + 48);
      do
      {
        v36 = *(v35 - 1);
        v13 = *v35;
        v75[0] = v32;
        v37 = *(v32 + 24);
        sub_1C75504FC();
        if (v33 >= v37 >> 1)
        {
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C();
          v32 = v75[0];
        }

        *(v32 + 16) = v33 + 1;
        v38 = v32 + v34;
        *(v38 + 32) = v36;
        *(v38 + 40) = v13;
        v34 += 16;
        v35 += 24;
        ++v33;
        --v29;
      }

      while (v29);
      v12 = v73;
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v48 = v12[104];
    v49 = v12[106] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    v72 = type metadata accessor for StoryMusicCurationDiagnostics();
    *(v49 + *(v72 + 116)) = v32;

    sub_1C75504FC();
    sub_1C7033F04(10, v48);
    v12 = (v52 >> 1);
    v53 = (v52 >> 1) - v51;
    if (__OFSUB__(v52 >> 1, v51))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v71 = v49;
    if (!v53)
    {
      break;
    }

    v54 = v50;
    v55 = v51;
    sub_1C6F7ED9C();
    if ((v53 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v56 = v30;
    v57 = (v54 + 192 * v55);
    while (v55 < v12)
    {
      memcpy(__dst, v57, sizeof(__dst));
      memcpy(v75, __dst, sizeof(v75));
      v58 = StoryMusicCurationSong.description.getter();
      v60 = v59;
      v13 = *(v56 + 16);
      v61 = *(v56 + 24);
      if (v13 >= v61 >> 1)
      {
        OUTLINED_FUNCTION_15(v61);
        sub_1C6F7ED9C();
      }

      *(v56 + 16) = v13 + 1;
      v62 = v56 + 16 * v13;
      *(v62 + 32) = v58;
      *(v62 + 40) = v60;
      if ((v12 - 1) == v55)
      {
        swift_unknownObjectRelease();
        goto LABEL_29;
      }

      ++v55;
      v57 += 192;
    }

    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  swift_unknownObjectRelease();
  v56 = MEMORY[0x1E69E7CC0];
LABEL_29:
  *(v71 + *(v72 + 120)) = v56;

  OUTLINED_FUNCTION_43();
  sub_1C75504FC();
  OUTLINED_FUNCTION_44();

  v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12);
}

uint64_t sub_1C7390514()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 888) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C7390604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v14 = v13[104];
  sub_1C7388CEC(v13[111]);
  OUTLINED_FUNCTION_98_5();

  v15 = sub_1C706D154(v12);
  v16 = *(v14 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v114 = v15;
  v119 = v16;
  if (v16)
  {
    v18 = v13[104];
    v123[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_18_54();
    sub_1C6F7ED9C();
    v17 = v123[0];
    v19 = *(v123[0] + 16);
    v20 = 16 * v19;
    v21 = (v18 + 48);
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      v123[0] = v17;
      v24 = *(v17 + 24);
      sub_1C75504FC();
      if (v19 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_177();
        sub_1C6F7ED9C();
        v17 = v123[0];
      }

      *(v17 + 16) = v19 + 1;
      v25 = v17 + v20;
      *(v25 + 32) = v23;
      *(v25 + 40) = v22;
      v20 += 16;
      v21 += 24;
      ++v19;
      --v16;
    }

    while (v16);
    v26 = v114;
    v16 = v119;
  }

  else
  {
    v26 = v15;
  }

  v27 = sub_1C706D154(v17);
  v113 = sub_1C7238810(v26, v27);
  v28 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v29 = v13[104];
    v123[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_18_54();
    sub_1C6F7ED9C();
    v28 = v123[0];
    v30 = *(v123[0] + 16);
    v31 = 16 * v30;
    v32 = (v29 + 48);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v123[0] = v28;
      v35 = *(v28 + 24);
      sub_1C75504FC();
      if (v30 >= v35 >> 1)
      {
        sub_1C6F7ED9C();
        v28 = v123[0];
      }

      *(v28 + 16) = v30 + 1;
      v36 = v28 + v31;
      *(v36 + 32) = v34;
      *(v36 + 40) = v33;
      v31 += 16;
      v32 += 24;
      ++v30;
      --v16;
    }

    while (v16);
    v26 = v114;
  }

  v37 = v13[104];
  v38 = sub_1C706D154(v28);
  sub_1C75504FC();
  v39 = sub_1C75504FC();
  v40 = sub_1C70738FC(v39, v26);
  v41 = sub_1C7238810(v40, v38);

  v42 = 0;
  v43 = v37 + 32;
  v44 = MEMORY[0x1E69E7CC0];
LABEL_15:
  while (v42 != v119)
  {
    if (v42 >= v119)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }

    memcpy(v13 + 2, (v43 + 192 * v42), 0xC0uLL);
    v45 = __OFADD__(v42++, 1);
    if (v45)
    {
      goto LABEL_75;
    }

    if (*(v41 + 16))
    {
      v47 = v13[3];
      v46 = v13[4];
      sub_1C7551F3C();
      sub_1C7080654((v13 + 2), (v13 + 26));
      sub_1C75504FC();
      sub_1C75505AC();
      v48 = sub_1C7551FAC();
      v49 = ~(-1 << *(v41 + 32));
      do
      {
        v50 = v48 & v49;
        if (((*(v41 + 56 + (((v48 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v49)) & 1) == 0)
        {
          sub_1C70806B0((v13 + 2));

          goto LABEL_15;
        }

        v51 = (*(v41 + 48) + 16 * v50);
        if (*v51 == v47 && v51[1] == v46)
        {
          break;
        }

        v53 = sub_1C7551DBC();
        v48 = v50 + 1;
      }

      while ((v53 & 1) == 0);

      __dst[0] = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716E4AC();
        v44 = __dst[0];
      }

      v55 = *(v44 + 16);
      v54 = *(v44 + 24);
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_15(v54);
        sub_1C716E4AC();
        v44 = __dst[0];
      }

      *(v44 + 16) = v55 + 1;
      memcpy((v44 + 192 * v55 + 32), v13 + 2, 0xC0uLL);
    }
  }

  v118 = v44;
  v56 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  v116 = v43;
LABEL_33:
  while (v56 != v119)
  {
    if (v56 >= v119)
    {
      goto LABEL_76;
    }

    memcpy(v13 + 50, (v43 + 192 * v56), 0xC0uLL);
    v45 = __OFADD__(v56++, 1);
    if (v45)
    {
      goto LABEL_77;
    }

    if (*(v114 + 16))
    {
      v58 = v57;
      v60 = v13[51];
      v59 = v13[52];
      sub_1C7551F3C();
      sub_1C7080654((v13 + 50), (v13 + 74));
      sub_1C75504FC();
      sub_1C75505AC();
      v61 = sub_1C7551FAC();
      v62 = ~(-1 << *(v114 + 32));
      do
      {
        v63 = v61 & v62;
        if (((*(v114 + 56 + (((v61 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v62)) & 1) == 0)
        {
          sub_1C70806B0((v13 + 50));

          v57 = v58;
          v43 = v116;
          goto LABEL_33;
        }

        v64 = (*(v114 + 48) + 16 * v63);
        if (*v64 == v60 && v64[1] == v59)
        {
          break;
        }

        v66 = sub_1C7551DBC();
        v61 = v63 + 1;
      }

      while ((v66 & 1) == 0);

      v57 = v58;
      __dst[0] = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716E4AC();
        v57 = __dst[0];
      }

      v43 = v116;
      v68 = *(v57 + 16);
      v67 = *(v57 + 24);
      if (v68 >= v67 >> 1)
      {
        OUTLINED_FUNCTION_15(v67);
        OUTLINED_FUNCTION_321();
        sub_1C716E4AC();
        v57 = __dst[0];
      }

      *(v57 + 16) = v68 + 1;
      memcpy((v57 + 192 * v68 + 32), v13 + 50, 0xC0uLL);
    }
  }

  v120 = v57;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v69 = sub_1C754FEEC();
  v70 = sub_1C755117C();
  v71 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v71, v72))
  {
    OUTLINED_FUNCTION_98();
    v73 = swift_slowAlloc();
    *v73 = 134218496;
    *(v73 + 4) = *(v114 + 16);

    *(v73 + 12) = 2048;
    *(v73 + 14) = *(v113 + 16);

    *(v73 + 22) = 2048;
    v74 = *(v41 + 16);

    *(v73 + 24) = v74;

    _os_log_impl(&dword_1C6F5C000, v69, v70, "(Apple Music Search) sanitizeAppleMusicSongs: safe: %ld unsafe: %ld unchecked: %ld", v73, 0x20u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v75 = v13[106];
  v76 = sub_1C71CD85C(v114);
  v77 = v75 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v78 = type metadata accessor for StoryMusicCurationDiagnostics();
  *(v77 + v78[27]) = v76;

  v117 = v77;
  *(v77 + v78[28]) = sub_1C71CD85C(v113);

  v79 = v44;
  v80 = *(v44 + 16);
  v115 = v78;
  if (v80)
  {
    v123[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23();
    v81 = 0;
    v82 = v123[0];
    v83 = *(v123[0] + 16);
    v84 = 16 * v83;
    do
    {
      v85 = *(v79 + v81 + 40);
      v86 = *(v79 + v81 + 48);
      v123[0] = v82;
      v87 = *(v82 + 24);
      sub_1C75504FC();
      if (v83 >= v87 >> 1)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C();
        v82 = v123[0];
      }

      *(v82 + 16) = v83 + 1;
      v88 = v82 + v84;
      *(v88 + 32) = v85;
      *(v88 + 40) = v86;
      v84 += 16;
      v81 += 192;
      ++v83;
      --v80;
      v79 = v118;
    }

    while (v80);

    v78 = v115;
  }

  else
  {

    v82 = MEMORY[0x1E69E7CC0];
  }

  v89 = v117;
  *(v117 + v78[29]) = v82;

  sub_1C7033F04(10, v120);
  v93 = (v92 >> 1) - v91;
  if (__OFSUB__(v92 >> 1, v91))
  {
    goto LABEL_79;
  }

  if (v93)
  {
    v94 = v90;
    v95 = v91;
    v96 = v92 >> 1;
    v121 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    if ((v93 & 0x8000000000000000) == 0)
    {
      v97 = v121;
      v98 = (v94 + 192 * v95);
      while (v95 < v96)
      {
        memcpy(__dst, v98, sizeof(__dst));
        memcpy(v123, __dst, sizeof(v123));
        v99 = StoryMusicCurationSong.description.getter();
        v101 = v100;
        v103 = *(v121 + 16);
        v102 = *(v121 + 24);
        if (v103 >= v102 >> 1)
        {
          OUTLINED_FUNCTION_15(v102);
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C();
        }

        *(v121 + 16) = v103 + 1;
        v104 = v121 + 16 * v103;
        *(v104 + 32) = v99;
        *(v104 + 40) = v101;
        if (v96 - 1 == v95)
        {
          swift_unknownObjectRelease();
          v78 = v115;
          v89 = v117;
          goto LABEL_71;
        }

        ++v95;
        v98 += 192;
      }

      goto LABEL_78;
    }

    goto LABEL_80;
  }

  swift_unknownObjectRelease();
  v97 = MEMORY[0x1E69E7CC0];
LABEL_71:
  *(v89 + v78[30]) = v97;

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_44();

  v107(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12);
}

uint64_t StoryMusicCurator.inflateAndSort(songs:using:sortUpToIndex:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  memcpy(v1 + 2, v4, 0x80uLL);
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  v5[1] = sub_1C7390F54;
  v6 = OUTLINED_FUNCTION_0_11();

  return sub_1C73920A4(v6, v7);
}

uint64_t sub_1C7390F54()
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
  v5[22] = v9;
  v5[23] = v0;

  if (v0)
  {
    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v5[24] = v3;
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

void sub_1C7391088()
{
  v185 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  __dst[0] = 0xD000000000000002;
  __dst[1] = 0x80000001C759F2D0;
  MEMORY[0x1CCA5CD70](v1, v3);
  MEMORY[0x1CCA5CD70](32032, 0xE200000000000000);
  v4 = static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicJson:from:songType:)(0xD00000000000001CLL, 0x80000001C759F2D0, 0xD000000000000017, 0x80000001C759F2F0, __dst);
  if (v2)
  {

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_19_37();

    __asm { BRAA            X1, X16 }
  }

  v7 = v4;
  v8 = v0[18];

  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  buf = v7;
  if (v9)
  {
    v11 = v0[18];
    __dst[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_83_9();
    v10 = __dst[0];
    v12 = *(__dst[0] + 16);
    v13 = 16 * v12;
    v14 = (v11 + 48);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      __dst[0] = v10;
      v17 = *(v10 + 24);
      sub_1C75504FC();
      if (v12 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_55_28();
        OUTLINED_FUNCTION_177();
        sub_1C6F7ED9C();
        v10 = __dst[0];
      }

      *(v10 + 16) = v12 + 1;
      v18 = v10 + v13;
      *(v18 + 32) = v16;
      *(v18 + 40) = v15;
      v13 += 16;
      v14 += 24;
      ++v12;
      --v9;
    }

    while (v9);
    v7 = buf;
  }

  __dst[0] = v7;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C710B628(__dst, v10);
  v19 = v0[19];

  v20 = __dst[0];
  v21 = StoryMusicCurator.sortByMoodUpToIndexOverride(_:)(v19);
  if (!v21)
  {

    if (qword_1EDD0ED88 == -1)
    {
LABEL_22:
      v36 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v36, &dword_1EDD28D48);
      v37 = sub_1C754FEEC();
      sub_1C755118C();
      v38 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_96_0();
        v40 = swift_slowAlloc();
        OUTLINED_FUNCTION_37_0(v40);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v41, v42, v43, v44, v45, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_94:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_19_37();

      __asm { BRAA            X2, X16 }
    }

LABEL_98:
    OUTLINED_FUNCTION_0_35();
    swift_once();
    goto LABEL_22;
  }

  v22 = *(v20 + 16);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = *(v20 + 16);
  }

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v24 = sub_1C754FF1C();
  __swift_project_value_buffer(v24, &dword_1EDD28D48);
  v25 = sub_1C754FEEC();
  v26 = sub_1C755117C();
  v27 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_13_3();
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = v23;
    _os_log_impl(&dword_1C6F5C000, v25, v26, "(Apple Music Search) Sorting songs by mood up to adjusted index %ld", v29, 0xCu);
    v30 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v30);
  }

  sub_1C74B833C(0);
  v32 = v31;
  v34 = v33;
  v172 = v20;
  if (v33)
  {
    sub_1C7551DEC();
    OUTLINED_FUNCTION_98_5();
    swift_unknownObjectRetain_n();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      swift_unknownObjectRelease();
      v46 = MEMORY[0x1E69E7CC0];
    }

    v47 = *(v46 + 16);

    if (__OFSUB__(v34 >> 1, v32))
    {
      __break(1u);
    }

    else if (v47 == (v34 >> 1) - v32)
    {
      swift_dynamicCastClass();
      OUTLINED_FUNCTION_98_5();
      swift_unknownObjectRelease();
      v20 = v172;
      v175 = v26;
      if (v26)
      {
LABEL_32:
        if (*(v20 + 16) >= v23)
        {
          sub_1C74B833C(v23);
          v49 = v48;
          v51 = v50;
          if (v50)
          {
            sub_1C7551DEC();
            OUTLINED_FUNCTION_98_5();
            swift_unknownObjectRetain_n();
            v53 = swift_dynamicCastClass();
            if (!v53)
            {
              swift_unknownObjectRelease();
              v53 = MEMORY[0x1E69E7CC0];
            }

            v54 = *(v53 + 16);

            if (__OFSUB__(v51 >> 1, v49))
            {
              __break(1u);
            }

            else if (v54 == (v51 >> 1) - v49)
            {
              swift_dynamicCastClass();
              OUTLINED_FUNCTION_98_5();
              swift_unknownObjectRelease();
              if (v26)
              {
LABEL_42:
                memcpy(__dst, v0 + 2, sizeof(__dst));
                __dst[0] = static StoryMusicCurationSong.sortSongsByMood(_:mood:)(v175, __dst);

                v170 = v26;
                sub_1C6FD3CF4(v55);
                v171 = __dst[0];
                sub_1C75504FC();
                v56 = sub_1C754FEEC();
                v57 = sub_1C755118C();

                if (os_log_type_enabled(v56, v57))
                {
                  OUTLINED_FUNCTION_13_3();
                  v58 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v59 = swift_slowAlloc();
                  __dst[0] = v59;
                  *v58 = 136315138;
                  v60 = MEMORY[0x1CCA5D090](v10, MEMORY[0x1E69E6158]);
                  v62 = v61;

                  v63 = sub_1C6F765A4(v60, v62, __dst);

                  *(v58 + 4) = v63;
                  OUTLINED_FUNCTION_8_1();
                  _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v59);
                  v69 = OUTLINED_FUNCTION_4_0();
                  MEMORY[0x1CCA5F8E0](v69);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                }

                else
                {
                }

                v70 = v172;
                sub_1C75504FC();
                v71 = sub_1C754FEEC();
                v72 = sub_1C755118C();

                if (os_log_type_enabled(v71, v72))
                {
                  OUTLINED_FUNCTION_13_3();
                  v73 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v166 = swift_slowAlloc();
                  v184[0] = v166;
                  v74 = &unk_1C755E000;
                  *v73 = 136315138;
                  v75 = *(buf + 2);
                  if (v75)
                  {
                    v162 = v73;
                    v163 = v72;
                    v164 = v71;
                    OUTLINED_FUNCTION_32_35();
                    sub_1C6F7ED9C();
                    v76 = 0;
                    v77 = __dst[0];
                    v78 = *(__dst[0] + 16);
                    v79 = 16 * v78;
                    do
                    {
                      v80 = *&buf[v76 + 40];
                      v81 = *&buf[v76 + 48];
                      __dst[0] = v77;
                      v82 = *(v77 + 24);
                      sub_1C75504FC();
                      if (v78 >= v82 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        OUTLINED_FUNCTION_321();
                        sub_1C6F7ED9C();
                        v77 = __dst[0];
                      }

                      *(v77 + 16) = v78 + 1;
                      v83 = v77 + v79;
                      *(v83 + 32) = v80;
                      *(v83 + 40) = v81;
                      v79 += 16;
                      v76 += 192;
                      ++v78;
                      --v75;
                    }

                    while (v75);

                    v70 = v172;
                    v74 = &unk_1C755E000;
                    v71 = v164;
                    v72 = v163;
                    v73 = v162;
                  }

                  else
                  {

                    v77 = MEMORY[0x1E69E7CC0];
                  }

                  v84 = MEMORY[0x1CCA5D090](v77, MEMORY[0x1E69E6158]);
                  v86 = v85;

                  v87 = sub_1C6F765A4(v84, v86, v184);

                  *(v73 + 4) = v87;
                  _os_log_impl(&dword_1C6F5C000, v71, v72, "(Apple Music Search) songsInflated  = %s", v73, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v166);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                }

                else
                {

                  v74 = &unk_1C755E000;
                }

                v88 = sub_1C754FEEC();
                v89 = sub_1C755118C();

                if (os_log_type_enabled(v88, v89))
                {
                  OUTLINED_FUNCTION_13_3();
                  v90 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v91 = swift_slowAlloc();
                  v92 = v91;
                  v184[0] = v91;
                  *v90 = v74[350];
                  if (v22)
                  {
                    v165 = v91;
                    v167 = v90;
                    bufa = v89;
                    __dst[0] = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_18_54();
                    sub_1C6F7ED9C();
                    v93 = 0;
                    v94 = __dst[0];
                    v95 = *(__dst[0] + 16);
                    v96 = 16 * v95;
                    do
                    {
                      v98 = *&v172[v93 + 40];
                      v97 = *&v172[v93 + 48];
                      __dst[0] = v94;
                      v99 = *(v94 + 24);
                      sub_1C75504FC();
                      if (v95 >= v99 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        sub_1C6F7ED9C();
                        v94 = __dst[0];
                      }

                      *(v94 + 16) = v95 + 1;
                      v100 = v94 + v96;
                      *(v100 + 32) = v98;
                      *(v100 + 40) = v97;
                      v96 += 16;
                      v93 += 192;
                      ++v95;
                      --v22;
                    }

                    while (v22);

                    v74 = &unk_1C755E000;
                    v89 = bufa;
                    v92 = v165;
                    v90 = v167;
                  }

                  else
                  {

                    v94 = MEMORY[0x1E69E7CC0];
                  }

                  v101 = MEMORY[0x1CCA5D090](v94, MEMORY[0x1E69E6158]);
                  v70 = v102;

                  v103 = sub_1C6F765A4(v101, v70, v184);

                  *(v90 + 4) = v103;
                  _os_log_impl(&dword_1C6F5C000, v88, v89, "(Apple Music Search) sortedInflated = %s", v90, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v92);
                  v104 = OUTLINED_FUNCTION_2_44();
                  MEMORY[0x1CCA5F8E0](v104);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                }

                else
                {
                }

                v105 = v175;

                v106 = sub_1C754FEEC();
                v107 = sub_1C755118C();

                if (os_log_type_enabled(v106, v107))
                {
                  OUTLINED_FUNCTION_13_3();
                  v108 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v109 = swift_slowAlloc();
                  v110 = v109;
                  v184[0] = v109;
                  *v108 = v74[350];
                  v111 = *(v175 + 16);
                  if (v111)
                  {
                    v168 = v109;
                    v173 = v108;
                    bufb = v107;
                    OUTLINED_FUNCTION_32_35();
                    sub_1C6F7ED9C();
                    v70 = 0;
                    v112 = __dst[0];
                    v113 = *(__dst[0] + 16);
                    v114 = 16 * v113;
                    do
                    {
                      v115 = *&v70[v105 + 40];
                      v116 = *&v70[v105 + 48];
                      __dst[0] = v112;
                      v117 = *(v112 + 24);
                      sub_1C75504FC();
                      if (v113 >= v117 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        sub_1C6F7ED9C();
                        v112 = __dst[0];
                      }

                      *(v112 + 16) = v113 + 1;
                      v118 = v112 + v114;
                      *(v118 + 32) = v115;
                      *(v118 + 40) = v116;
                      v114 += 16;
                      v70 += 192;
                      ++v113;
                      --v111;
                      v105 = v175;
                    }

                    while (v111);

                    v107 = bufb;
                    v108 = v173;
                    v110 = v168;
                  }

                  else
                  {

                    v112 = MEMORY[0x1E69E7CC0];
                  }

                  MEMORY[0x1CCA5D090](v112, MEMORY[0x1E69E6158]);
                  OUTLINED_FUNCTION_100_16();

                  v120 = OUTLINED_FUNCTION_455();
                  v123 = sub_1C6F765A4(v120, v121, v122);

                  *(v108 + 4) = v123;
                  _os_log_impl(&dword_1C6F5C000, v106, v107, "(Apple Music Search) sliceToSort    = %s", v108, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v110);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();

                  v119 = v171;
                  v74 = &unk_1C755E000;
                }

                else
                {

                  v119 = v171;
                }

                v124 = sub_1C754FEEC();
                v125 = sub_1C755118C();

                if (os_log_type_enabled(v124, v125))
                {
                  OUTLINED_FUNCTION_13_3();
                  swift_slowAlloc();
                  OUTLINED_FUNCTION_12_66();
                  v176 = swift_slowAlloc();
                  v184[0] = v176;
                  bufc = v70;
                  *v70 = v74[350];
                  v126 = *(v170 + 16);
                  if (v126)
                  {
                    v169 = v125;
                    __dst[0] = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_18_54();
                    sub_1C6F7ED9C();
                    v127 = 0;
                    v128 = __dst[0];
                    v129 = *(__dst[0] + 16);
                    v130 = 16 * v129;
                    v131 = v170;
                    do
                    {
                      v132 = *(v131 + v127 + 40);
                      v133 = *(v131 + v127 + 48);
                      __dst[0] = v128;
                      v134 = *(v128 + 24);
                      sub_1C75504FC();
                      if (v129 >= v134 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        OUTLINED_FUNCTION_321();
                        sub_1C6F7ED9C();
                        v131 = v170;
                        v128 = __dst[0];
                      }

                      *(v128 + 16) = v129 + 1;
                      v135 = v128 + v130;
                      *(v135 + 32) = v132;
                      *(v135 + 40) = v133;
                      v130 += 16;
                      v127 += 192;
                      ++v129;
                      --v126;
                    }

                    while (v126);

                    v119 = v171;
                    v74 = &unk_1C755E000;
                    v125 = v169;
                  }

                  else
                  {

                    v128 = MEMORY[0x1E69E7CC0];
                  }

                  v136 = MEMORY[0x1CCA5D090](v128, MEMORY[0x1E69E6158]);
                  v138 = v137;

                  v139 = sub_1C6F765A4(v136, v138, v184);

                  *(bufc + 4) = v139;
                  _os_log_impl(&dword_1C6F5C000, v124, v125, "(Apple Music Search) sliceNotSorted = %s", bufc, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v176);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  v140 = OUTLINED_FUNCTION_4_0();
                  MEMORY[0x1CCA5F8E0](v140);
                }

                else
                {
                }

                sub_1C75504FC();
                v141 = sub_1C754FEEC();
                v142 = sub_1C755118C();

                if (os_log_type_enabled(v141, v142))
                {
                  OUTLINED_FUNCTION_13_3();
                  v143 = swift_slowAlloc();
                  OUTLINED_FUNCTION_98();
                  v144 = swift_slowAlloc();
                  v145 = v144;
                  v184[0] = v144;
                  *v143 = v74[350];
                  v146 = *(v119 + 16);
                  v147 = MEMORY[0x1E69E7CC0];
                  if (v146)
                  {
                    v174 = v144;
                    v177 = v143;
                    bufd = v142;
                    __dst[0] = MEMORY[0x1E69E7CC0];
                    sub_1C6F7ED9C();
                    v147 = __dst[0];
                    v148 = *(__dst[0] + 16);
                    v149 = 16 * v148;
                    v150 = (v119 + 48);
                    do
                    {
                      v151 = *(v150 - 1);
                      v152 = *v150;
                      __dst[0] = v147;
                      v153 = *(v147 + 24);
                      sub_1C75504FC();
                      if (v148 >= v153 >> 1)
                      {
                        OUTLINED_FUNCTION_55_28();
                        OUTLINED_FUNCTION_137_0();
                        sub_1C6F7ED9C();
                        v147 = __dst[0];
                      }

                      *(v147 + 16) = v148 + 1;
                      v154 = v147 + v149;
                      *(v154 + 32) = v151;
                      *(v154 + 40) = v152;
                      v149 += 16;
                      v150 += 24;
                      ++v148;
                      --v146;
                    }

                    while (v146);
                    v142 = bufd;
                    v145 = v174;
                    v143 = v177;
                  }

                  v155 = MEMORY[0x1CCA5D090](v147, MEMORY[0x1E69E6158]);
                  v157 = v156;

                  v158 = sub_1C6F765A4(v155, v157, v184);

                  *(v143 + 4) = v158;
                  _os_log_impl(&dword_1C6F5C000, v141, v142, "(Apple Music Search) finalSongs     = %s", v143, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v145);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  v159 = OUTLINED_FUNCTION_2_44();
                  MEMORY[0x1CCA5F8E0](v159);
                }

                goto LABEL_94;
              }

              v26 = MEMORY[0x1E69E7CC0];
LABEL_41:
              swift_unknownObjectRelease();
              goto LABEL_42;
            }

            swift_unknownObjectRelease();
          }

          sub_1C739CEA0();
          v26 = v52;
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_98;
      }

      v175 = MEMORY[0x1E69E7CC0];
LABEL_31:
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    swift_unknownObjectRelease();
    v20 = v172;
  }

  sub_1C739CEA0();
  v175 = v35;
  goto LABEL_31;
}

BOOL sub_1C7391F74()
{
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  if (byte_1EC218F88 == 1)
  {
    return 0;
  }

  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  swift_beginAccess();
  v2 = type metadata accessor for AppleMusicSubscriptionState();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) || !*(v1 + 16))
  {
    return 0;
  }

  else
  {
    v5 = sub_1C75506FC();
    MEMORY[0x1EEE9AC00](v5);
    v3 = sub_1C70735F4();
  }

  return v3;
}

uint64_t sub_1C73920A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73920D4()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = (v1 + 48);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v0[5] = v4;
    if (!v2)
    {
      break;
    }

    v6 = *(v3 - 1);
    v5 = *v3;
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v4 = v9;
    }

    v7 = *(v4 + 16);
    if (v7 >= *(v4 + 24) >> 1)
    {
      OUTLINED_FUNCTION_177();
      sub_1C6FB1814();
      v4 = v10;
    }

    *(v4 + 16) = v7 + 1;
    v8 = v4 + 16 * v7;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;
    v3 += 24;
    --v2;
  }

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_1C7392200;
  OUTLINED_FUNCTION_88_0();

  return StoryMusicCurator.requestAndCacheAppleMusicSongs(with:eventRecorder:)();
}

uint64_t sub_1C7392200(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_6_4();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14();
  *v10 = v9;
  v7[7] = v2;

  if (!v2)
  {
    v7[8] = a2;
    v7[9] = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C739231C()
{
  OUTLINED_FUNCTION_42();

  v1 = v0[1];
  v3 = v0[8];
  v2 = v0[9];

  return v1(v2, v3);
}

uint64_t sub_1C7392380()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

Swift::UInt __swiftcall StoryMusicCurator.sortByMoodUpToIndexOverride(_:)(Swift::UInt a1)
{
  v2 = objc_opt_self();
  v3 = [v2 appleMusicSmartSearchMode];
  v4 = sub_1C755068C();
  v6 = v5;

  v45 = v4;
  v46 = v6;
  sub_1C6FB5E8C();
  LOBYTE(v3) = sub_1C75515AC();

  if ((v3 & 1) == 0)
  {
    return a1;
  }

  v7 = [v2 appleMusicSmartSearchMode];
  v8 = sub_1C755068C();
  v10 = v9;

  v11 = static StoryMusicCurator.dictionaryFromCommasString(using:)(v8, v10);

  if (!*(v11 + 16) || (sub_1C75504FC(), sub_1C6F78124(0xD000000000000015, 0x80000001C75ACDC0), v13 = v12, , (v13 & 1) == 0) || (v14 = sub_1C6FE0F8C(0xD000000000000015, 0x80000001C75ACDC0, v11), !v15))
  {
LABEL_80:

    return a1;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  v19 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v20 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_80;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {

    v23 = sub_1C71CD354(v16, v17, 10);
    v38 = v43;
LABEL_73:

    if ((v38 & 1) == 0)
    {
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v39 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v39, &dword_1EDD28D48);
      v40 = sub_1C754FEEC();
      v41 = sub_1C755117C();
      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_13_3();
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v23;
        _os_log_impl(&dword_1C6F5C000, v40, v41, "(Apple Music Search) sortByMoodUpToIndexOverride = %lu", v42, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      return v23;
    }

    return a1;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {

    if ((v16 & 0x1000000000000000) != 0)
    {
      result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1C75518FC();
      v19 = v44;
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_9();
              if (!v25 && v24)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_92_15();
              if (!v25)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_91_16();
              v23 = v32 + v31;
              if (__CFADD__(v32, v31))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_10_23();
              if (v25)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_70;
        }

        goto LABEL_71;
      }

      goto LABEL_86;
    }

    if (v22 != 45)
    {
      if (v19)
      {
        v23 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            if (!is_mul_ok(v23, 0xAuLL))
            {
              goto LABEL_71;
            }

            v24 = __CFADD__(10 * v23, v35);
            v23 = 10 * v23 + v35;
            if (v24)
            {
              goto LABEL_71;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_71:
      v23 = 0;
      v28 = 1;
      goto LABEL_72;
    }

    if (v19 >= 1)
    {
      if (v19 != 1)
      {
        v23 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_9();
            if (!v25 && v24)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_92_15();
            if (!v25)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_91_16();
            v23 = v27 - v26;
            if (v27 < v26)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_23();
            if (v25)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_70:
        v28 = 0;
LABEL_72:
        v38 = v28;
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v45 = v16;
  v46 = v17 & 0xFFFFFFFFFFFFFFLL;
  if (v16 != 43)
  {
    if (v16 != 45)
    {
      if (v18)
      {
        v23 = 0;
        v36 = &v45;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          if (!is_mul_ok(v23, 0xAuLL))
          {
            break;
          }

          v24 = __CFADD__(10 * v23, v37);
          v23 = 10 * v23 + v37;
          if (v24)
          {
            break;
          }

          v36 = (v36 + 1);
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_71;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        OUTLINED_FUNCTION_95_18();
        while (1)
        {
          OUTLINED_FUNCTION_1_9();
          if (!v25 && v24)
          {
            break;
          }

          OUTLINED_FUNCTION_92_15();
          if (!v25)
          {
            break;
          }

          OUTLINED_FUNCTION_91_16();
          v23 = v30 - v29;
          if (v30 < v29)
          {
            break;
          }

          OUTLINED_FUNCTION_10_23();
          if (v25)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_85;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      OUTLINED_FUNCTION_95_18();
      while (1)
      {
        OUTLINED_FUNCTION_1_9();
        if (!v25 && v24)
        {
          break;
        }

        OUTLINED_FUNCTION_92_15();
        if (!v25)
        {
          break;
        }

        OUTLINED_FUNCTION_91_16();
        v23 = v34 + v33;
        if (__CFADD__(v34, v33))
        {
          break;
        }

        OUTLINED_FUNCTION_10_23();
        if (v25)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_87:
  __break(1u);
  return result;
}

void sub_1C7392888(void *a1, uint64_t a2)
{
  v4 = sub_1C754D84C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C75504DC();
  v27 = a1;
  v28 = a2;
  sub_1C754D7FC();
  sub_1C6FB5E8C();
  v8 = sub_1C755151C();
  (*(v5 + 8))(v7, v4);
  v9 = 0;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v8 + 40 + 16 * v9);
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    ++v9;
    v13 = *(v12 - 1);
    v14 = *v12;
    v12 += 2;
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v25 = a2;
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v11;
      v17 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v11 = v27;
      }

      v18 = v11[2];
      if (v18 >= v11[3] >> 1)
      {
        sub_1C6F7ED9C();
        v11 = v27;
      }

      v11[2] = v18 + 1;
      v19 = &v11[2 * v18];
      v19[4] = v13;
      v19[5] = v14;
      a1 = v17;
      a2 = v25;
      goto LABEL_2;
    }
  }

  v20 = v11[2];
  if (v20 <= 1)
  {
    if (v20)
    {
      v22 = v11[4];
      v21 = v11[5];
      sub_1C75504FC();

      sub_1C6FE0F8C(v22, v21, v26);
      v24 = v23;

      if (v24)
      {
      }
    }

    else
    {

      sub_1C75504FC();
    }
  }

  else
  {
    sub_1C75504FC();
  }
}

uint64_t sub_1C7392B2C()
{
  v0 = objc_opt_self();
  v1 = [v0 appleMusicSmartSearchMode];
  v2 = sub_1C755068C();
  v4 = v3;

  v48 = v2;
  v49 = v4;
  sub_1C6FB5E8C();
  LOBYTE(v1) = sub_1C75515AC();

  if ((v1 & 1) == 0)
  {
    return 2;
  }

  v5 = [v0 appleMusicSmartSearchMode];
  v6 = sub_1C755068C();
  v8 = v7;

  v9 = static StoryMusicCurator.dictionaryFromCommasString(using:)(v6, v8);

  if (!*(v9 + 16))
  {
    goto LABEL_74;
  }

  sub_1C75504FC();
  sub_1C6F78124(0x4364726F7779656BLL, 0xEC000000746E756FLL);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_74;
  }

  v12 = sub_1C6FE0F8C(0x4364726F7779656BLL, 0xEC000000746E756FLL, v9);
  if (!v13)
  {
    goto LABEL_74;
  }

  v14 = v12;
  v15 = v13;
  v16 = HIBYTE(v13) & 0xF;
  v17 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v18 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_74:

    return 2;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    sub_1C71CBAA8(v14, v15, 10);
    v22 = v45;
    v40 = v46;
LABEL_67:

    if ((v40 & 1) == 0)
    {
      if (qword_1EDD0ED88 != -1)
      {
        swift_once();
      }

      v41 = sub_1C754FF1C();
      __swift_project_value_buffer(v41, &dword_1EDD28D48);
      v42 = sub_1C754FEEC();
      v43 = sub_1C755118C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v22;
        _os_log_impl(&dword_1C6F5C000, v42, v43, "(Apple Music Search) searchKeywordCount: Using custom keywordCount = %ld", v44, 0xCu);
        MEMORY[0x1CCA5F8E0](v44, -1, -1);
      }

      return v22;
    }

    return 2;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {

    if ((v14 & 0x1000000000000000) != 0)
    {
      result = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1C75518FC();
      v17 = v47;
    }

    v20 = *result;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v21 = v17 - 1;
        if (v17 != 1)
        {
          v22 = 0;
          if (result)
          {
            v29 = (result + 1);
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_65;
              }

              v31 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_65;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_65;
              }

              ++v29;
              if (!--v21)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_65;
      }

      goto LABEL_81;
    }

    if (v20 != 45)
    {
      if (v17)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_65;
            }

            v36 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v17)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_65:
      v22 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_66;
    }

    if (v17 >= 1)
    {
      v21 = v17 - 1;
      if (v17 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = (result + 1);
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_65;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_65;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_64:
        LOBYTE(v21) = 0;
LABEL_66:
        v40 = v21;
        goto LABEL_67;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v48 = v14;
  v49 = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v16)
      {
        v22 = 0;
        v37 = &v48;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v16)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_65;
    }

    if (v16)
    {
      v21 = v16 - 1;
      if (v16 != 1)
      {
        v22 = 0;
        v26 = &v48 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v21)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_80;
  }

  if (v16)
  {
    v21 = v16 - 1;
    if (v16 != 1)
    {
      v22 = 0;
      v32 = &v48 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v21)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

void sub_1C7393048(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v15);
  v5 = v16;
  if (v16)
  {
    v18 = v2;
    v6 = v15;
    v7 = v17;
    sub_1C75504FC();
    v8 = sub_1C705CB28(1, v7);

    if (v8 || (sub_1C75504FC(), v9 = sub_1C705CB28(2, v7), , v9))
    {
      sub_1C75504FC();
      sub_1C72B9804(v6, v5);
      *a2 = v6;
      a2[1] = v5;
      return;
    }

    sub_1C72B9804(v6, v5);
  }

  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v10 = sub_1C754FF1C();
  __swift_project_value_buffer(v10, &dword_1EDD28D48);

  v11 = sub_1C754FEEC();
  v12 = sub_1C755119C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C6F765A4(*(v4 + 16), *(v4 + 24), &v15);
    _os_log_impl(&dword_1C6F5C000, v11, v12, "(Apple Music Search) searchPromptGenerator: Got an unresolved keyword: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
    MEMORY[0x1CCA5F8E0](v13, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t StoryMusicCurator.generateMusicSearchKeywords(forStoryPrompt:keywords:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  sub_1C754F2FC();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73932F4()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 104);
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_70(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_1C754F15C();
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  v5 = type metadata accessor for MusicKeywordsGeneratorEmbedded();
  *v4 = v0;
  v4[1] = sub_1C739344C;

  return MEMORY[0x1EEE2A6A0](v0 + 56, "MusicCurator.initEmbeddings", 27, 2, &unk_1C7585A80, v3, v2, v5);
}

uint64_t sub_1C739344C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C739354C()
{
  OUTLINED_FUNCTION_42();
  v0[18] = v0[7];
  sub_1C754F30C();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1C7393620;

  return sub_1C743E970();
}

uint64_t sub_1C7393620()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7393724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v22 = sub_1C754FF1C();
  __swift_project_value_buffer(v22, &dword_1EDD28D48);
  sub_1C75504FC();
  sub_1C75504FC();
  v23 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_141();

  if (OUTLINED_FUNCTION_140_0())
  {
    v24 = *(v18 + 160);
    v25 = *(v18 + 80);
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_66();
    v26 = swift_slowAlloc();
    a9 = v26;
    *v19 = 134218242;
    *(v19 + 4) = *(v25 + 16);

    *(v19 + 12) = 2080;
    v27 = type metadata accessor for MusicKeywordCompletion();
    v28 = MEMORY[0x1CCA5D090](v24, v27);
    sub_1C6F765A4(v28, v29, &a9);
    OUTLINED_FUNCTION_86_14();
    *(v19 + 14) = v25;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v35 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v35);
    v36 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v36);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v18 + 16);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1C73938D0()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7393940()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73939B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C73939D4, 0, 0);
}

uint64_t sub_1C73939D4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache);
  v2 = *(v0 + 40);
  *(v0 + 72) = 2;
  v3 = *(v2 + 8);
  type metadata accessor for MusicKeywordsGeneratorEmbedded();
  swift_allocObject();
  v4 = v1;
  sub_1C75504FC();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1C7393AD8;
  v6 = *(v0 + 32);

  return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v1, (v0 + 72), v6, v3);
}

uint64_t sub_1C7393AD8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7393BDC()
{
  **(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_43();
  return v1();
}

uint64_t static StoryMusicCurator.dictionaryFromCommasString(using:)(uint64_t a1, unint64_t a2)
{
  v45[0] = 44;
  v42 = v45;
  sub_1C75504FC();
  v5 = sub_1C71ABD80(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C70551E4, v41, a1, a2);
  v46 = v2;
  v6 = *(v5 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_32_35();
    sub_1C6F7ED9C();
    v7 = v45[0];
    v8 = v5 + 56;
    do
    {
      sub_1C75504FC();
      v9 = OUTLINED_FUNCTION_0_11();
      v10 = MEMORY[0x1CCA5CC40](v9);
      v12 = v11;

      v45[0] = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_15(v13);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C();
        v7 = v45[0];
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v8 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v7 + 16);
  if (!v16)
  {

    return sub_1C75504DC();
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    for (i = (v7 + 40 + 16 * v17); ; i += 2)
    {
      if (v16 == v17)
      {

        return v18;
      }

      if (v17 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v20 = *i;
      v45[0] = *(i - 1);
      v45[1] = v20;
      v43 = 58;
      v44 = 0xE100000000000000;
      sub_1C6FB5E8C();
      sub_1C75504FC();
      v21 = sub_1C755152C();
      if (v21[2] == 2)
      {
        break;
      }

      ++v17;
    }

    v22 = v21[5];
    v40 = v21[4];
    v23 = v21[7];
    v38 = v21[6];
    sub_1C75504FC();
    sub_1C75504FC();

    swift_isUniquelyReferenced_nonNull_native();
    v45[0] = v18;
    v39 = v22;
    v24 = sub_1C6F78124(v40, v22);
    if (__OFADD__(v18[2], (v25 & 1) == 0))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v26 = v24;
    v37 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
    if ((sub_1C7551A2C() & 1) == 0)
    {
      v29 = v37;
LABEL_20:
      v18 = v45[0];
      if (v29)
      {
        v30 = (*(v45[0] + 56) + 16 * v26);
        *v30 = v38;
        v30[1] = v23;

LABEL_24:
        ++v17;

        continue;
      }

      *(v45[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v31 = (v18[6] + 16 * v26);
      *v31 = v40;
      v31[1] = v39;
      v32 = (v18[7] + 16 * v26);
      *v32 = v38;
      v32[1] = v23;
      v33 = v18[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (!v34)
      {
        v18[2] = v35;
        goto LABEL_24;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    break;
  }

  v27 = sub_1C6F78124(v40, v39);
  v29 = v37;
  if ((v37 & 1) == (v28 & 1))
  {
    v26 = v27;
    goto LABEL_20;
  }

LABEL_31:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7393FC8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C73940A8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C70CCF4C(0, v3, 1, a1);
  }
}

void sub_1C73940A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v6) + 32);
        v10 = *(*(*a3 + 8 * v8) + 32);
        v11 = v6 + 2;
        v12 = v10;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (v12 >= *(*(*a3 + 8 * v11++) + 32));
          v12 = *(*(*a3 + 8 * v13) + 32);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 32) >= *(v24 + 32))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6FB17EC();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = *(v67 + 1);
          sub_1C7394688((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          sub_1C7423CF4(v67 + 16, v70 - 1 - v33, &v31[2 * v33]);
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C739455C(&v79, *a1, a3);
LABEL_89:
}

uint64_t sub_1C739455C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C7394688((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C7394688(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    v10 = OUTLINED_FUNCTION_455();
    sub_1C7423CF8(v10);
    v11 = &a4[8 * v8];
    while (1)
    {
      if (a4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v6;
      if (*(*a4 + 32) >= *(*v6 + 32))
      {
        break;
      }

      v14 = v7 == v6;
      v6 += 8;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v13 = *a4;
    v14 = v7 == a4;
    a4 += 8;
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v13;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2);
  v11 = &a4[8 * v9];
LABEL_15:
  v15 = v6 - 8;
  for (v5 -= 8; v11 > a4 && v6 > v7; v5 -= 8)
  {
    v17 = *(v11 - 1);
    if (*(*v15 + 32) < *(v17 + 32))
    {
      v14 = v5 + 8 == v6;
      v6 -= 8;
      if (!v14)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v11 != v5 + 8)
    {
      *v5 = v17;
    }

    v11 -= 8;
  }

LABEL_28:
  v18 = (v11 - a4) / 8;
  if (v6 != a4 || v6 >= &a4[8 * v18])
  {
    memmove(v6, a4, 8 * v18);
  }

  return 1;
}

uint64_t sub_1C7394840()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C6F738F4;

  return sub_1C73939B0(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_53_32()
{
  *(v1[15] + v1[20] + *(v1[21] + 88)) = v0;
}

uint64_t OUTLINED_FUNCTION_86_14()
{
}

uint64_t OUTLINED_FUNCTION_108_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_109_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 16) = a9;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_110_11()
{

  return sub_1C6FB6330(v1, v2 == 0, v0);
}

void *OUTLINED_FUNCTION_111_13()
{

  return memcpy((v0 + 144), (v0 + 16), 0x80uLL);
}

void OUTLINED_FUNCTION_112_8()
{

  sub_1C739CEA0();
}

uint64_t OUTLINED_FUNCTION_113_13@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedStringsList(forKey:)(0xD000000000000017, (a1 - 32) | 0x8000000000000000);
}

void OUTLINED_FUNCTION_114_13(uint64_t a1@<X8>)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_116_14()
{

  JUMPOUT(0x1CCA5D090);
}

uint64_t OUTLINED_FUNCTION_117_10(float a1)
{
  *v1 = a1;

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_118_11()
{
}

uint64_t sub_1C7394BB8()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC25B7B8 = result;
  return result;
}

uint64_t sub_1C7394C20()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B7C0);
  __swift_project_value_buffer(v0, qword_1EC25B7C0);
  if (qword_1EC214060 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC25B7B8;
  return sub_1C754FF2C();
}

BOOL static AppleMusicPrivacyPromptStateTracker.isDisclosureNeeded()()
{
  v0 = [objc_opt_self() appleMusicMCPrivacyDisclosureState];
  v1 = sub_1C755068C();
  v3 = v2;

  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if (qword_1EC214068 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, qword_1EC25B7C0);
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v7 = sub_1C755117C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v9 = OUTLINED_FUNCTION_3_98(4.8149e-34, v13);

      *(v8 + 4) = v9;
      OUTLINED_FUNCTION_19(&dword_1C6F5C000, v10, v11, "[Music] Apple Music Privacy Disclosure not needed. disclosureState = %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }
  }

  else
  {
  }

  return v4 == 0;
}

void static AppleMusicPrivacyPromptStateTracker.reset()()
{
  if (qword_1EC214068 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, qword_1EC25B7C0);
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "[Music] Disclosure state is reset.", v3, 2u);
    OUTLINED_FUNCTION_109();
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = OUTLINED_FUNCTION_4_88();
  [v4 removeObjectForKey_];
}

void static AppleMusicPrivacyPromptStateTracker.markShown(with:)()
{
  if (qword_1EC214068 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, qword_1EC25B7C0);
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *(v3 + 4) = OUTLINED_FUNCTION_3_98(4.8149e-34, v11);
    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v4, v5, "[Warning-Music] [Music] newDisclosureState='%s'");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1C755065C();
  v10 = OUTLINED_FUNCTION_4_88();
  v8 = sub_1C755068C();
  sub_1C70F8CFC(v7, v10, v8, v9, v6);
}

_BYTE *storeEnumTagSinglePayload for AppleMusicPrivacyPromptStateTracker(_BYTE *result, int a2, int a3)
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

uint64_t AsyncStreamWorker.__allocating_init(priority:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AsyncStreamWorker.init(priority:)(a1);
  return v2;
}

uint64_t sub_1C73951CC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0AD08);
  __swift_project_value_buffer(v0, qword_1EDD0AD08);
  return sub_1C754FEFC();
}

uint64_t AsyncStreamWorker.init(priority:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B030);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B038);
  OUTLINED_FUNCTION_3_0();
  v33 = v10;
  v34 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v31 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B040);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId) = 0;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B048);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v3);
  v22 = v36;
  sub_1C7550D6C();
  (*(v5 + 8))(v8, v3);
  v23 = v33;
  v24 = v34;
  (*(v33 + 16))(v2 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation, v22, v34);
  v25 = v32;
  (*(v14 + 16))(v18, v21, v32);
  v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v14 + 32))(v27 + v26, v18, v25);
  v28 = v35;
  v29 = sub_1C7395CA4(0, 0, v35, &unk_1C7585B18, v27);
  sub_1C6F678CC(v28);
  (*(v23 + 8))(v36, v24);
  (*(v14 + 8))(v21, v25);
  result = v31;
  *(v31 + 112) = v29;
  return result;
}

uint64_t sub_1C73955A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B060);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7395670, 0, 0);
}

uint64_t sub_1C7395670()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B040);
  sub_1C7550DBC();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_84(v1);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v2);
}

uint64_t sub_1C739571C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7395804()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
LABEL_9:

    OUTLINED_FUNCTION_43();

    return v11();
  }

  if (sub_1C7550E5C())
  {
    sub_1C6F6E5B4(v1);
    if (qword_1EDD0AD00 != -1)
    {
      OUTLINED_FUNCTION_2_109();
    }

    v3 = sub_1C754FF1C();
    __swift_project_value_buffer(v3, qword_1EDD0AD08);
    v4 = sub_1C754FEEC();
    v5 = sub_1C755118C();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C6F5C000, v4, v5, "Cancelling all pending tasks", v10, 2u);
      OUTLINED_FUNCTION_109();
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_9;
  }

  v14 = (v1 + *v1);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1C7395A38;

  return v14();
}

uint64_t sub_1C7395A38()
{
  OUTLINED_FUNCTION_123();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *(v1 + 72);
  v5 = *v0;
  *v3 = *v0;

  sub_1C6F6E5B4(v4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v5;
  OUTLINED_FUNCTION_5_84();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t sub_1C7395BB4()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B040) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2(v7);
  *v8 = v9;
  v8[1] = sub_1C6F739D4;

  return sub_1C73955A4(v2, v5, v6, v0 + v4);
}

uint64_t sub_1C7395CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  sub_1C70A3CFC(a3, v24 - v10);
  v12 = sub_1C7550D5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6F678CC(v11);
  }

  else
  {
    sub_1C7550D4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C7550C8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C755071C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t AsyncStreamWorker.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B038);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation;
  (*(v4 + 16))(&v12 - v7, v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation, v2, v6);
  sub_1C7550D9C();
  v10 = *(v4 + 8);
  v10(v8, v2);

  sub_1C7550E1C();

  v10((v1 + v9), v2);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncStreamWorker.__deallocating_deinit()
{
  AsyncStreamWorker.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7396098(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_77(sub_1C73960B8, 0);
}

uint64_t sub_1C73960B8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C73961AC;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1C73961AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73962B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B058);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - v14;
  v20[1] = OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskStreamContinuation;
  (*(v7 + 16))(v10, a1, v6, v13);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v21;
  v18[1] = a4;
  v23 = &unk_1C7585BE0;
  v24 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B038);
  sub_1C7550D8C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1C73964F0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 24) = a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_1C73965DC;

  return v6();
}

uint64_t sub_1C73965DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73966DC()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050);
  sub_1C7550CAC();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C739674C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050);
  sub_1C7550C9C();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73967F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_77(sub_1C7396810, v2);
}

uint64_t sub_1C7396810()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId;
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18PhotosIntelligence17AsyncStreamWorker_taskId) = v5;
    if (qword_1EDD0AD00 == -1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_2_109();
LABEL_3:
  v6 = sub_1C754FF1C();
  v7 = __swift_project_value_buffer(v6, qword_1EDD0AD08);

  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v1 + v2);

    _os_log_impl(&dword_1C6F5C000, v8, v7, "Enqueuing task: %ld", v10, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = *(v1 + v2);
  v14 = swift_allocObject();
  v0[5] = v14;
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = v11;

  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = sub_1C73969E4;

  return sub_1C7396098(&unk_1C7585B38, v14);
}

uint64_t sub_1C73969E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = *(v3 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1C7396B0C, v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v7();
  }
}

uint64_t sub_1C7396B0C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7396B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7396B8C, 0, 0);
}

uint64_t sub_1C7396B8C()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EDD0AD00 != -1)
  {
    OUTLINED_FUNCTION_2_109();
  }

  v1 = sub_1C754FF1C();
  v0[5] = __swift_project_value_buffer(v1, qword_1EDD0AD08);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v6, v7, "Executing task: %ld");
    OUTLINED_FUNCTION_109();
  }

  v8 = v0[3];

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1C7396D14;

  return v11();
}