uint64_t sub_1BFA26C58(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1BFA269DC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_1BFA26F40();
        goto LABEL_25;
      }

      sub_1BFA270A4(v10 + 1);
    }

    v12 = *v5;
    v13 = *(*v5 + 40);
    sub_1BFAAFF98();
    MEMORY[0x1BFB611E0](a3 & 1);
    sub_1BFAAF908();
    result = sub_1BFAAFFE8();
    v14 = -1 << *(v12 + 32);
    a4 = result & ~v14;
    if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v15 = ~v14;
      do
      {
        v16 = *(v12 + 48) + 24 * a4;
        v18 = *v16;
        v17 = *(v16 + 8);
        if (*(v16 + 16))
        {
          if (a3)
          {
            if (v18 == v9 && v17 == a2)
            {
              goto LABEL_28;
            }

LABEL_23:
            v21 = *v16;
            v22 = *(v16 + 8);
            v23 = sub_1BFAAFF08();
            sub_1BF9FC17C();
            sub_1BF9FC17C();
            sub_1BF9FC184();
            result = sub_1BF9FC184();
            if (v23)
            {
              goto LABEL_29;
            }

            goto LABEL_24;
          }
        }

        else if ((a3 & 1) == 0)
        {
          if (v18 == v9 && v17 == a2)
          {
            goto LABEL_28;
          }

          goto LABEL_23;
        }

        sub_1BF9FC17C();
        sub_1BF9FC17C();
        sub_1BF9FC184();
        result = sub_1BF9FC184();
LABEL_24:
        a4 = (a4 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_25:
  v24 = *v29;
  *(*v29 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = v9;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3 & 1;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_28:
    sub_1BF9FC17C();
    sub_1BF9FC17C();
    sub_1BF9FC184();
    sub_1BF9FC184();
LABEL_29:
    result = sub_1BFAAFF28();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_1BFA26F40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB890, &unk_1BFAB1950);
  v2 = *v0;
  v3 = sub_1BFAAFC08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v4 + 48) + 8 * v17;
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v20;
        result = sub_1BF9FC17C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BFA270A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB890, &unk_1BFAB1950);
  result = sub_1BFAAFC18();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v6 + 40);
        sub_1BFAAFF98();
        MEMORY[0x1BFB611E0](v20);

        sub_1BFAAF908();
        result = sub_1BFAAFFE8();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 24 * v25;
        *v30 = v18;
        *(v30 + 8) = v19;
        *(v30 + 16) = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BFA272F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BFAA211C((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_1BFA27330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22();
  v7 = v6;
  v9 = *(v8 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21 - v16;
  (*(v7 + 32))(&v21 - v16);
  type metadata accessor for LocalStateStoreClient();
  v18 = swift_allocObject();
  (*(v7 + 16))(v14, v17, a3);
  v19 = sub_1BFA27488(v14, &unk_1BFAB1930, 0, v18, a3, a4);
  (*(v7 + 8))(v17, a3);
  return v19;
}

void *sub_1BFA27488(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB880, &qword_1BFAB1938);
  sub_1BFA27F28();
  a4[14] = sub_1BFAAF7D8();
  sub_1BF9FA474(&v13, (a4 + 15));
  a4[20] = a2;
  a4[21] = a3;
  return a4;
}

unint64_t sub_1BFA27588()
{
  result = qword_1EDCC7118;
  if (!qword_1EDCC7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7118);
  }

  return result;
}

uint64_t sub_1BFA275DC(uint64_t a1)
{
  result = sub_1BF9FD8A4(&qword_1EDCC7BE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BFA27620(uint64_t a1)
{
  *(a1 + 8) = sub_1BF9FD8A4(&qword_1EDCC7BF0);
  result = sub_1BF9FD8A4(&qword_1EDCC7BE8);
  *(a1 + 32) = result;
  return result;
}

uint64_t dispatch thunk of LocalStateStoreClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_4(v4);

  return v8(v6);
}

uint64_t dispatch thunk of LocalStateStoreClient.getNextSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_51();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  v7 = *(v6 + 160);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_41(v9);
  *v10 = v11;
  v10[1] = sub_1BF9FDF08;

  return v13(v5, v3, v1);
}

uint64_t dispatch thunk of LocalStateStoreClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)()
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 192);
  v15 = v0 + 192;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  v4[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_0();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of LocalStateStoreClient.flush(for:)()
{
  OUTLINED_FUNCTION_51();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  v5 = *(v4 + 200);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_45(v8);

  return v11(v3, v1);
}

uint64_t dispatch thunk of StoreCache.description.getter()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 136);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_45(v4);

  return v7();
}

uint64_t sub_1BFA27C44()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t sub_1BFA27D38()
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_1();
  v1 = *(v0 + 8);
  v15 = v0 + 8;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_45(v4);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_0();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t sub_1BFA27E40()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  OUTLINED_FUNCTION_24_0();

  return v7(v2);
}

unint64_t sub_1BFA27F28()
{
  result = qword_1EDCC7990;
  if (!qword_1EDCC7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7990);
  }

  return result;
}

uint64_t sub_1BFA27F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1BFA27FE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{
  *(a1 + 8) = sub_1BFA24750;
  v2 = *(v1 + 472);
  return v1 + 408;
}

uint64_t OUTLINED_FUNCTION_13_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48) + 24 * a2;
  v5 = *v4;
  *(v2 + 200) = *v4;
  v6 = *(v4 + 8);
  *(v2 + 208) = v6;
  v7 = *(v4 + 16);
  *(v2 + 130) = v7;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  *(v2 + 128) = v7;

  return sub_1BF9FC17C();
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_52_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_0()
{
}

SiriSuggestionsAPI::EventConfig __swiftcall EventConfig.init(eventBuffersize:relevanceTimeWindowSecs:)(Swift::Int eventBuffersize, Swift::Double relevanceTimeWindowSecs)
{
  *v2 = eventBuffersize;
  *(v2 + 8) = relevanceTimeWindowSecs;
  result.relevanceTimeWindowSecs = relevanceTimeWindowSecs;
  result.eventBuffersize = eventBuffersize;
  return result;
}

uint64_t dispatch thunk of EventSuggestionsProvider.getSuggestionsForApp(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1BFA18718;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EventSuggestionsProvider.disconnect(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BFA28458;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for EventConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EventConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

id sub_1BFA2845C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = sub_1BFAAF858();
  v12 = CSSiriRecordRouteFromAudioSource();

  if (v12)
  {
    v13 = sub_1BFAAF868();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = sub_1BFAAF858();
  v17 = CSSiriPlaybackRouteFromAudioDestination();

  if (v17)
  {
    v49 = sub_1BFAAF868();
    v19 = v18;
  }

  else
  {
    v49 = 0;
    v19 = 0xE000000000000000;
  }

  if (sub_1BFA289A4(a3, a4, a5, a6))
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v20 = sub_1BFAAF688();
    __swift_project_value_buffer(v20, qword_1EDCC77C8);
    v21 = sub_1BFAAF668();
    v22 = sub_1BFAAFB78();
    if (os_log_type_enabled(v21, v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_2(&dword_1BF9F6000, v23, v24, "Has audioInjection, assigning builtin values");
      OUTLINED_FUNCTION_94();
    }

    v25 = *MEMORY[0x1E69C81C8];
    v13 = sub_1BFAAF868();
    v27 = v26;

    v28 = *MEMORY[0x1E69C8188];
    v49 = sub_1BFAAF868();
    v30 = v29;

    v15 = v27;
    v19 = v30;
  }

  v31 = [objc_opt_self() sharedInstance];
  sub_1BFAAFBF8();
  swift_unknownObjectRelease();
  sub_1BFA29F7C();
  if (swift_dynamicCast())
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v32 = sub_1BFAAF688();
    __swift_project_value_buffer(v32, qword_1EDCC77C8);

    v33 = sub_1BFAAF668();
    v34 = sub_1BFAAFB78();

    if (os_log_type_enabled(v33, v34))
    {
      v47 = v13;
      v35 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v35 = 136316162;
      *(v35 + 4) = sub_1BF9F88A8(a3, a4, v51);
      *(v35 + 12) = 2080;

      v36 = sub_1BF9F88A8(v47, v15, v51);

      *(v35 + 14) = v36;
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_1BF9F88A8(a5, a6, v51);
      *(v35 + 32) = 2080;

      v37 = sub_1BF9F88A8(v49, v19, v51);

      *(v35 + 34) = v37;
      *(v35 + 42) = 2080;
      *(v35 + 44) = sub_1BF9F88A8(a1, a2, v51);
      _os_log_impl(&dword_1BF9F6000, v33, v34, "Successfully got CSAttSiriMagusSupportedPolicy.sharedInstance. Checking is magusSupported with values\nOriginal audioSource: %s\nTranslated audioSource: %s\nOriginal audioDestination: %s\nTranslated audioDestination: %s\nInputOrigin: %s", v35, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    else
    {
    }

    v44 = sub_1BFAAF858();

    v45 = sub_1BFAAF858();

    v39 = sub_1BFAAF858();

    v43 = [v50 isMagusSupportedWithInputOrigin:v44 recordRoute:v45 playbackRoute:v39];
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v38 = sub_1BFAAF688();
    __swift_project_value_buffer(v38, qword_1EDCC77C8);
    v39 = sub_1BFAAF668();
    v40 = sub_1BFAAFB78();
    if (os_log_type_enabled(v39, v40))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_2(&dword_1BF9F6000, v41, v42, "Unable to get CSAttSiriMagusSupportedPolicy.sharedInstance");
      OUTLINED_FUNCTION_94();
    }

    v43 = 0;
  }

  return v43;
}

uint64_t sub_1BFA289A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() sharedPreferences];
  v9 = [v8 programmableAudioInjectionEnabled];

  if (qword_1EDCC77C0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BFAAF688();
  __swift_project_value_buffer(v10, qword_1EDCC77C8);
  v11 = sub_1BFAAF668();
  v12 = sub_1BFAAFB78();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_1BF9F6000, v11, v12, "programmableAudioInjectionEnabled: %{BOOL}d", v13, 8u);
    MEMORY[0x1BFB618C0](v13, -1, -1);
  }

  v14 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = *MEMORY[0x1E69C81A8];
    if (sub_1BFAAF868() == a3 && v16 == a4)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1BFAAFF08();
    }
  }

  else
  {
    v18 = 1;
  }

  v19 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v9;
  }

  return v20 & v18;
}

void *SiriFeatureSupportPolicyProvider.__allocating_init()()
{
  v0 = type metadata accessor for CoreSpeechPolicyProvider();
  v12[3] = v0;
  v12[4] = &off_1F3F08AE8;
  v12[0] = swift_allocObject();
  v1 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1Tm(v12, v0);
  OUTLINED_FUNCTION_22();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v1[5] = v0;
  v1[6] = &off_1F3F08AE8;
  v1[2] = v10;
  v1[7] = sub_1BFA28C80;
  v1[8] = 0;
  __swift_destroy_boxed_opaque_existential_2Tm(v12);
  return v1;
}

id sub_1BFA28C80()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

Swift::Bool __swiftcall SiriFeatureSupportPolicyProvider.isMagusSupported()()
{
  v38 = sub_1BFAAE7F8();
  OUTLINED_FUNCTION_22();
  v1 = v0;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8C8, &qword_1BFAB1A30) - 8) + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38 - v12;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8D0, &qword_1BFAB1A38) - 8) + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    sub_1BFAAE758();

    sub_1BFAAF4C8();

    v19 = sub_1BFAAE7C8();
    OUTLINED_FUNCTION_9_2(v18, 1, v19);
    if (!v20)
    {
      v21 = sub_1BFAAE7B8();
      v23 = v22;
      (*(*(v19 - 8) + 8))(v18, v19);
      goto LABEL_6;
    }

    sub_1BF9FAB40(v18, &qword_1EBDFB8D0, &qword_1BFAB1A38);
  }

  v21 = 0;
  v23 = 0xE000000000000000;
LABEL_6:
  if (sub_1BFAAE778())
  {
    sub_1BFAAE758();

    sub_1BFAAF508();

    v24 = sub_1BFAAE908();
    OUTLINED_FUNCTION_9_2(v13, 1, v24);
    if (!v20)
    {
      v25 = sub_1BFAAE8F8();
      v27 = v26;
      (*(*(v24 - 8) + 8))(v13, v24);
      goto LABEL_11;
    }

    sub_1BF9FAB40(v13, &qword_1EBDFB8C8, &qword_1BFAB1A30);
  }

  v25 = 0;
  v27 = 0xE000000000000000;
LABEL_11:
  if (sub_1BFAAE778())
  {
    sub_1BFAAE758();

    sub_1BFAAF4D8();

    v28 = sub_1BFAAE7D8();
    v30 = v29;
    (*(v1 + 8))(v8, v38);
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = *__swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
  v32 = sub_1BFA2845C(v28, v30, v21, v23, v25, v27);

  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = sub_1BFAAF688();
  __swift_project_value_buffer(v33, qword_1EDCC77C8);
  v34 = sub_1BFAAF668();
  v35 = sub_1BFAAFB78();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = v32 & 1;
    _os_log_impl(&dword_1BF9F6000, v34, v35, "isMagusSupported: %{BOOL}d", v36, 8u);
    OUTLINED_FUNCTION_94();
  }

  return v32 & 1;
}

Swift::Bool __swiftcall SiriFeatureSupportPolicyProvider.isPanIndiaSupported()()
{
  v1 = v0;
  v133 = sub_1BFAAE888();
  OUTLINED_FUNCTION_22();
  v119 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2();
  v118 = v8 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8D8, &qword_1BFAB1A40);
  OUTLINED_FUNCTION_0(v121);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11, v12);
  v123 = &v117 - v13;
  v14 = sub_1BFAAE428();
  OUTLINED_FUNCTION_22();
  v125 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_2();
  v122 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8E0, &qword_1BFAB1A48);
  OUTLINED_FUNCTION_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v117 - v27;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB698, &qword_1BFAB1A50);
  v29 = OUTLINED_FUNCTION_0(v129);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  OUTLINED_FUNCTION_8_0();
  v128 = v33;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_7_3();
  v134 = v36;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_7_3();
  v120 = v39;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_7_3();
  v124 = v42;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v43, v44);
  v136 = &v117 - v45;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8E8, &qword_1BFAB1A58);
  v46 = OUTLINED_FUNCTION_0(v127);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46, v49);
  OUTLINED_FUNCTION_8_0();
  v126 = v50;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_7_3();
  v132 = v53;
  OUTLINED_FUNCTION_4_1();
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v58 = &v117 - v57;
  v60 = MEMORY[0x1EEE9AC00](v56, v59);
  v62 = &v117 - v61;
  MEMORY[0x1EEE9AC00](v60, v63);
  v65 = &v117 - v64;
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    sub_1BFAAE768();

    sub_1BFAAE898();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = 1;
  v135 = v65;
  __swift_storeEnumTagSinglePayload(v65, v66, 1, v14);
  if (sub_1BFAAE778())
  {
    sub_1BFAAE758();

    v68 = v136;
    sub_1BFAAF4F8();

    v67 = 0;
  }

  else
  {
    v68 = v136;
  }

  __swift_storeEnumTagSinglePayload(v68, v67, 1, v133);
  v69 = sub_1BFAAE778();
  if (v69)
  {
    sub_1BFAAE758();

    v131 = sub_1BFAAF518();
    v71 = v70;
  }

  else
  {
    v131 = 0;
    v71 = 0;
  }

  v72 = v135;
  v73 = *(v0 + 64);
  v74 = (*(v1 + 56))(v69);
  v75 = sub_1BFAAF858();
  v130 = [v74 multilingualResponseEnabledForLanguage_];

  sub_1BFAAE408();
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v14);
  v76 = *(v22 + 48);
  sub_1BFA29E68(v72, v28, &qword_1EBDFB8E8, &qword_1BFAB1A58);
  sub_1BFA29E68(v62, &v28[v76], &qword_1EBDFB8E8, &qword_1BFAB1A58);
  OUTLINED_FUNCTION_9_2(v28, 1, v14);
  if (v79)
  {
    sub_1BF9FAB40(v62, &qword_1EBDFB8E8, &qword_1BFAB1A58);
    OUTLINED_FUNCTION_9_2(&v28[v76], 1, v14);
    v77 = v132;
    if (v79)
    {
      sub_1BF9FAB40(v28, &qword_1EBDFB8E8, &qword_1BFAB1A58);
      v28 = v136;
      v78 = v134;
      if (!v71)
      {
LABEL_29:
        LODWORD(v80) = 0;
        goto LABEL_41;
      }

      goto LABEL_22;
    }

LABEL_19:
    sub_1BF9FAB40(v28, &qword_1EBDFB8E0, &qword_1BFAB1A48);
    LODWORD(v80) = 0;
    v28 = v136;
    v78 = v134;
    goto LABEL_41;
  }

  sub_1BFA29E68(v28, v58, &qword_1EBDFB8E8, &qword_1BFAB1A58);
  OUTLINED_FUNCTION_9_2(&v28[v76], 1, v14);
  if (v79)
  {
    sub_1BF9FAB40(v62, &qword_1EBDFB8E8, &qword_1BFAB1A58);
    (*(v125 + 8))(v58, v14);
    v77 = v132;
    goto LABEL_19;
  }

  v117 = v71;
  v81 = v125;
  v82 = v122;
  (*(v125 + 32))(v122, &v28[v76], v14);
  sub_1BFA29EC8(&qword_1EDCC6F88, MEMORY[0x1E6969770]);
  v83 = sub_1BFAAF848();
  v84 = *(v81 + 8);
  v71 = v81 + 8;
  v77 = v84;
  v84(v82, v14);
  v78 = &qword_1BFAB1A58;
  sub_1BF9FAB40(v62, &qword_1EBDFB8E8, &qword_1BFAB1A58);
  v84(v58, v14);
  sub_1BF9FAB40(v28, &qword_1EBDFB8E8, &qword_1BFAB1A58);
  LODWORD(v80) = 0;
  if ((v83 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_6_3();
  if (!v71)
  {
    goto LABEL_41;
  }

LABEL_22:
  if (v131 == 0x4E495F6968 && v71 == 0xE500000000000000)
  {
    v87 = v133;
    v80 = v123;
    v86 = v130;
  }

  else
  {
    v86 = v130 | ~sub_1BFAAFF08();
    v87 = v133;
    v80 = v123;
  }

  v88 = v124;
  if (v86)
  {
    goto LABEL_29;
  }

  sub_1BFAAE868();
  __swift_storeEnumTagSinglePayload(v88, 0, 1, v87);
  v89 = *(v121 + 48);
  sub_1BFA29E68(v28, v80, &qword_1EBDFB698, &qword_1BFAB1A50);
  sub_1BFA29E68(v88, v80 + v89, &qword_1EBDFB698, &qword_1BFAB1A50);
  OUTLINED_FUNCTION_9_2(v80, 1, v87);
  if (!v79)
  {
    v90 = v120;
    sub_1BFA29E68(v80, v120, &qword_1EBDFB698, &qword_1BFAB1A50);
    OUTLINED_FUNCTION_9_2(v80 + v89, 1, v87);
    if (!v91)
    {
      v92 = v119;
      v93 = v118;
      (*(v119 + 32))(v118, v80 + v89, v87);
      sub_1BFA29EC8(&qword_1EDCC6F70, MEMORY[0x1E69D3550]);
      v94 = sub_1BFAAF848();
      v95 = *(v92 + 8);
      v95(v93, v87);
      sub_1BF9FAB40(v124, &qword_1EBDFB698, &qword_1BFAB1A50);
      v95(v120, v87);
      v96 = v80;
      LODWORD(v80) = v94;
      sub_1BF9FAB40(v96, &qword_1EBDFB698, &qword_1BFAB1A50);
      goto LABEL_40;
    }

    sub_1BF9FAB40(v88, &qword_1EBDFB698, &qword_1BFAB1A50);
    (*(v119 + 8))(v90, v87);
LABEL_38:
    sub_1BF9FAB40(v80, &qword_1EBDFB8D8, &qword_1BFAB1A40);
    LODWORD(v80) = 0;
    goto LABEL_40;
  }

  sub_1BF9FAB40(v88, &qword_1EBDFB698, &qword_1BFAB1A50);
  OUTLINED_FUNCTION_9_2(v80 + v89, 1, v87);
  if (!v79)
  {
    goto LABEL_38;
  }

  sub_1BF9FAB40(v80, &qword_1EBDFB698, &qword_1BFAB1A50);
  LODWORD(v80) = 1;
LABEL_40:
  v72 = v135;
LABEL_41:
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v97 = sub_1BFAAF688();
  v98 = __swift_project_value_buffer(v97, qword_1EDCC77C8);
  sub_1BFA29E68(v72, v77, &qword_1EBDFB8E8, &qword_1BFAB1A58);
  sub_1BFA29E68(v28, v78, &qword_1EBDFB698, &qword_1BFAB1A50);

  v133 = v98;
  v99 = sub_1BFAAF668();
  v100 = sub_1BFAAFB78();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v139[0] = swift_slowAlloc();
    *v101 = 136315906;
    LODWORD(v132) = v80;
    sub_1BFA29E68(v77, v126, &qword_1EBDFB8E8, &qword_1BFAB1A58);
    v102 = sub_1BFAAF8B8();
    v104 = v103;
    sub_1BF9FAB40(v77, &qword_1EBDFB8E8, &qword_1BFAB1A58);
    v105 = sub_1BF9F88A8(v102, v104, v139);

    *(v101 + 4) = v105;
    *(v101 + 12) = 1024;
    *(v101 + 14) = v130;
    *(v101 + 18) = 2080;
    v137 = v131;
    v138 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8F0, &qword_1BFAB1A60);
    v106 = sub_1BFAAF8B8();
    v108 = sub_1BF9F88A8(v106, v107, v139);

    *(v101 + 20) = v108;
    *(v101 + 28) = 2080;
    v109 = v134;
    sub_1BFA29E68(v134, v128, &qword_1EBDFB698, &qword_1BFAB1A50);
    v110 = sub_1BFAAF8B8();
    v80 = v111;
    v28 = v136;
    sub_1BF9FAB40(v109, &qword_1EBDFB698, &qword_1BFAB1A50);
    v112 = sub_1BF9F88A8(v110, v80, v139);
    LOBYTE(v80) = v132;

    *(v101 + 30) = v112;
    v72 = v135;
    _os_log_impl(&dword_1BF9F6000, v99, v100, "Checking isPanIndiaSupported with values\nSiri locale: %s\nEnglish and Hindi enabled: %{BOOL}d\nDetected language: %s\nResponse mode: %s", v101, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    sub_1BF9FAB40(v78, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BF9FAB40(v77, &qword_1EBDFB8E8, &qword_1BFAB1A58);
  }

  v113 = sub_1BFAAF668();
  v114 = sub_1BFAAFB78();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 67109120;
    *(v115 + 4) = v80 & 1;
    _os_log_impl(&dword_1BF9F6000, v113, v114, "isPanIndiaSupported: %{BOOL}d", v115, 8u);
    v72 = v135;
    OUTLINED_FUNCTION_94();
  }

  sub_1BF9FAB40(v28, &qword_1EBDFB698, &qword_1BFAB1A50);
  sub_1BF9FAB40(v72, &qword_1EBDFB8E8, &qword_1BFAB1A58);
  return v80 & 1;
}

uint64_t SiriFeatureSupportPolicyProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

void *sub_1BFA29DC0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1BFA29E38@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1BFA29E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BFA29EC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BFA29F7C()
{
  result = qword_1EDCC63E8;
  if (!qword_1EDCC63E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC63E8);
  }

  return result;
}

void OUTLINED_FUNCTION_6_3()
{
  v1 = *(v0 - 120);
  v2 = *(v0 - 136);
  v3 = *(v0 - 152);
  v4 = *(v0 - 272);
}

uint64_t sub_1BFA29FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6);
  v18 = *v11;
  v19 = v12;
  v20 = *(v11 + 24);
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    v13 = sub_1BFAAE758();
  }

  else
  {
    v13 = 0;
  }

  if (sub_1BFAAE778())
  {
    v14 = sub_1BFAAE768();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1BFA794C4(v13, v14);

  result = sub_1BFA2A104(v9, v8, v7, a4, 0, &v18, v15 & 1);
  if (v6)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1BFA2A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6);
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  *v50 = *v12;
  LOBYTE(v51) = v15;
  v52 = v14;
  v53 = v13;
  v80 = v16;
  sub_1BFA2A3D0(v8, v16, v50, __src);
  memcpy(__dst, __src, 0xE1uLL);
  if (sub_1BFA2B544(__dst) == 1)
  {
    return 0;
  }

  if ((a7 & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v37 = sub_1BFAAF688();
    __swift_project_value_buffer(v37, qword_1EDCC7478);
    v38 = sub_1BFAAF668();
    v39 = sub_1BFAAFB78();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1BF9F6000, v38, v39, "Presenting snippet for annoucement.", v40, 2u);
      MEMORY[0x1BFB618C0](v40, -1, -1);
    }

    OUTLINED_FUNCTION_2_2(v41, v42, v43, v44, v45, v46, v47, v48, v50[0], v50[1], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], __src[24], __src[25]);
    v29 = sub_1BFA2A9A8(v10, v9, v50);
    if (v7)
    {
      sub_1BFA20F44(__src, &qword_1EBDFB8F8, &qword_1BFAB1C08);
      return v9;
    }

    v9 = v29;
LABEL_18:
    OUTLINED_FUNCTION_2_2(v29, v30, v31, v32, v33, v34, v35, v36, v50[0], v50[1], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], __src[24], __src[25]);
    sub_1BFA2AAE0(v50, v8);
    sub_1BFA20F44(__src, &qword_1EBDFB8F8, &qword_1BFAB1C08);
    return v9;
  }

  if (sub_1BFA79AF0(v14, v13))
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v17 = sub_1BFAAF688();
    __swift_project_value_buffer(v17, qword_1EDCC7478);
    v18 = sub_1BFAAF668();
    v19 = sub_1BFAAFB78();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BF9F6000, v18, v19, "Presenting dialog for annoucement.", v20, 2u);
      MEMORY[0x1BFB618C0](v20, -1, -1);
    }

    OUTLINED_FUNCTION_2_2(v21, v22, v23, v24, v25, v26, v27, v28, v50[0], v50[1], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], __src[24], __src[25]);
    v29 = sub_1BFA2A81C(v50);
    v9 = 0;
    goto LABEL_18;
  }

  sub_1BFA20F44(__src, &qword_1EBDFB8F8, &qword_1BFAB1C08);
  return 0;
}

void *sub_1BFA2A3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  if ((sub_1BFAAF028() & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v20 = sub_1BFAAF688();
    __swift_project_value_buffer(v20, qword_1EDCC7478);
    v16 = sub_1BFAAF668();
    v17 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "FeatureAnnouncement feature flag is not enabled. Returning nil ACE view";
    goto LABEL_21;
  }

  v13 = v4[27];
  v14 = v5[28];
  swift_getObjectType();
  if ((sub_1BFAAF0B8() & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v21 = sub_1BFAAF688();
    __swift_project_value_buffer(v21, qword_1EDCC7478);
    v16 = sub_1BFAAF668();
    v17 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "UserDefaults 'announcementsEnabled' set to false: Returning nil FeatureAnnouncement ACE view";
    goto LABEL_21;
  }

  __src[0] = v7;
  __src[1] = v8;
  LOBYTE(__src[2]) = v9;
  __src[3] = v10;
  __src[4] = v11;
  if ((sub_1BFA79C98(__src) & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v22 = sub_1BFAAF688();
    __swift_project_value_buffer(v22, qword_1EDCC7478);
    v16 = sub_1BFAAF668();
    v17 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "FeatureAnnouncement not applicable for current Siri execution. Returning nil ACE view";
    goto LABEL_21;
  }

  sub_1BFA2B438(&v29);
  if (v29 == 2)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v15 = sub_1BFAAF688();
    __swift_project_value_buffer(v15, qword_1EDCC7478);
    v16 = sub_1BFAAF668();
    v17 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "No feature type qualified for announcement. Returning nil Ace view";
    goto LABEL_21;
  }

  v27[0] = v29 & 1;
  sub_1BF9F94C4((v5 + 22), __src);

  sub_1BFA7C804(a1, a2, v27, __src, v28);
  if (sub_1BFA2B7D8(v28) != 1)
  {
    memcpy(v27, v28, 0x88uLL);
    sub_1BFA2B7F0(v27);
    memcpy(__src, v27, 0xE1uLL);
    nullsub_1(__src);
    return memcpy(a4, __src, 0xE1uLL);
  }

  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v24 = sub_1BFAAF688();
  __swift_project_value_buffer(v24, qword_1EDCC7478);
  v16 = sub_1BFAAF668();
  v17 = sub_1BFAAFB78();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Unable to init FeatureAnnouncementDataModel";
LABEL_21:
    _os_log_impl(&dword_1BF9F6000, v16, v17, v19, v18, 2u);
    MEMORY[0x1BFB618C0](v18, -1, -1);
  }

LABEL_22:

  sub_1BFA2B7A8(__src);
  return memcpy(a4, __src, 0xE1uLL);
}

uint64_t sub_1BFA2A81C(void *__src)
{
  memcpy(__dst, __src, 0xE1uLL);
  v1 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  if (sub_1BFA2B568(__dst) == 2)
  {
    v2 = sub_1BFA074AC(__dst);
    sub_1BFA2B574();
    sub_1BFA52E68(v2[9], v2[10], v2[11], v2[12]);
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC7478);
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB78();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BF9F6000, v4, v5, "Generated supplemental SAUIAddViews with empty snippet and annoucement dialog.", v6, 2u);
      MEMORY[0x1BFB618C0](v6, -1, -1);
    }

    MEMORY[0x1BFB60C00]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BFAAFA08();
    }

    sub_1BFAAFA38();
    return v8;
  }

  return v1;
}

id sub_1BFA2A9A8(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_1BFAAE3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &__dst[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, a3, sizeof(__dst));
  sub_1BFAAE3E8();
  v12 = sub_1BFAAE398();
  v14 = v13;
  (*(v7 + 8))(v11, v6);
  v15 = sub_1BFA7CD74(a1, a2, v12, v14);

  return v15;
}

uint64_t sub_1BFA2AAE0(const void *a1, void (*a2)(_BYTE *, _BYTE *, uint64_t))
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v31[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v31[-v12];
  v14 = sub_1BFAAE3F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v31[-v21];
  memcpy(__dst, a1, 0xE1uLL);
  result = sub_1BFA2B568(__dst);
  if (result == 2)
  {
    v24 = *(sub_1BFA074AC(__dst) + 16);
    v25 = *(v2 + 80);
    v33 = v2;
    v26 = __swift_project_boxed_opaque_existential_1((v2 + 56), v25);
    v32 = v24;
    v27 = *v26;
    sub_1BFA450DC();

    sub_1BFAAE388();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      return sub_1BFA20F44(v13, &qword_1EBDFB570, &qword_1BFAB1F50);
    }

    else
    {
      v34 = *(v15 + 32);
      v34(v22, v13, v14);
      v28 = sub_1BFAAFA98();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v28);
      (*(v15 + 16))(v19, v22, v14);
      v29 = (*(v15 + 80) + 41) & ~*(v15 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = v33;
      *(v30 + 40) = v32;
      v34((v30 + v29), v19, v14);

      sub_1BFA0C8A4();

      return (*(v15 + 8))(v22, v14);
    }
  }

  return result;
}

uint64_t sub_1BFA2AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_1BFAAE3F8();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA2AF14, 0, 0);
}

uint64_t sub_1BFA2AF14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);
  sub_1BFAAE3E8();
  v4 = v3[20];
  v5 = v3[21];
  __swift_project_boxed_opaque_existential_1(v3 + 17, v4);
  v6 = (v2 & 1) == 0;
  if (v2)
  {
    v7 = 0x6169646E496E6170;
  }

  else
  {
    v7 = 0x737567616DLL;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  v9 = *(v5 + 16);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_1BFA2B090;
  v12 = *(v0 + 48);

  return v14(v12, v7, v8, v4, v5);
}

uint64_t sub_1BFA2B090()
{
  OUTLINED_FUNCTION_40();
  v1 = *(*v0 + 56);
  *(*v0 + 72);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BFA2B19C, 0, 0);
}

uint64_t sub_1BFA2B19C()
{
  v1 = v0[2];
  v2 = v1[20];
  v3 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v2);
  v4 = *(v3 + 40);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1BFA2B2D0;
  v7 = v0[6];
  v8 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_1BFA2B2D0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(*v0 + 64);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BFA2B3C0, 0, 0);
}

uint64_t sub_1BFA2B3C0()
{
  OUTLINED_FUNCTION_40();
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

id sub_1BFA2B438@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = *__swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v5 = sub_1BF9F8E78(0x737567616DLL, 0xE500000000000000);
  v6 = *__swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  result = sub_1BF9F8E78(0x6169646E496E6170, 0xE800000000000000);
  v8 = result;
  if ((v5 & 1) != 0 || (v9 = *__swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]), result = SiriFeatureSupportPolicyProvider.isMagusSupported()(), (result & 1) == 0))
  {
    if ((v8 & 1) != 0 || (v11 = *__swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]), result = SiriFeatureSupportPolicyProvider.isPanIndiaSupported()(), (result & 1) == 0))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  *a1 = v10;
  return result;
}

uint64_t sub_1BFA2B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  result = sub_1BFA29FE4(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1BFA2B544(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (((2 * v1) & 0x7C) != 0)
  {
    return 128 - ((2 * v1) & 0x7C | (v1 >> 6));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BFA2B574()
{
  result = qword_1EBDFB900;
  if (!qword_1EBDFB900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDFB900);
  }

  return result;
}

uint64_t sub_1BFA2B5B8(uint64_t a1)
{
  v4 = *(sub_1BFAAE3F8() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BFA2B6C0;

  return sub_1BFA2AE50(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1BFA2B6C0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1BFA2B7D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BFA2B840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1BFA2B988;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BFA2B988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_1BFA2BA9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB748, &unk_1BFAB1510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB1C20;
  v1 = *MEMORY[0x1E69C8338];
  *(inited + 32) = sub_1BFAAF868();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x1E69C8308];
  *(inited + 48) = sub_1BFAAF868();
  *(inited + 56) = v4;
  v5 = *MEMORY[0x1E69C8318];
  *(inited + 64) = sub_1BFAAF868();
  *(inited + 72) = v6;
  result = sub_1BFA7A2E4(inited);
  qword_1EDCC6D58 = result;
  return result;
}

uint64_t sub_1BFA2BB38()
{
  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {
    return 0;
  }

  v0 = sub_1BFAAE758();

  return v0;
}

uint64_t sub_1BFA2BB88(char a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 137) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BFA2BCA8, 0, 0);
}

uint64_t sub_1BFA2BCA8()
{
  v20 = v0;
  v1 = *(v0 + 64);
  v17 = *(v0 + 48);
  v2 = *(v0 + 137);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v18 = *(v0 + 136);
  v19 = v1;
  v10 = (*(v5 + 8))(v8, v9, v3, v4, v2, &v17, v7);
  v12 = v11;
  v14 = v13;

  v15 = *(v0 + 8);

  return v15(v10, v12, v14);
}

void *sub_1BFA2BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v8 = *a4;
  v7 = *(a4 + 8);
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  v11 = *(a4 + 32);
  v25 = *a4;
  v26 = v7;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  if (sub_1BF9FF22C(&v25))
  {
    v24 = a2;
    v12 = v4[5];
    v13 = v4[6];
    v23 = __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
    v14 = sub_1BFAAE398();
    v25 = v8;
    v26 = v7;
    v27 = v9;
    v28 = v10;
    v29 = v11;
    v15 = v23;
    v17 = (*(v13 + 8))(v30, v24, v14, v16, 0, &v25, v12, v13);
    if (!v5)
    {
      v15 = v17;
    }
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v18 = sub_1BFAAF688();
    __swift_project_value_buffer(v18, qword_1EDCC77C8);
    v19 = sub_1BFAAF668();
    v20 = sub_1BFAAFB78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BF9F6000, v19, v20, "[SiriHintsViewService] Suggestions are not applicable for current Siri execution. Returning nil", v21, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    return 0;
  }

  return v15;
}

uint64_t SiriSuggestions.SuggestionList.init(suggestions:sourceOwner:generationId:)@<X0>(size_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  v15 = sub_1BFAAE3F8();
  v16 = OUTLINED_FUNCTION_2_3(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  OUTLINED_FUNCTION_4_0();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v34 - v27;
  v35 = a2;
  sub_1BF9F94C4(a2, v38);
  v29 = *(v18 + 16);
  v34 = a3;
  v29(v28, a3, v15);
  sub_1BF9F94C4(v38, v37);
  v29(v24, v28, v15);
  v30 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v30);
  v36 = a1;

  sub_1BFA1B5D0(&v36);

  v31 = *(v18 + 8);
  v31(v34, v15);
  __swift_destroy_boxed_opaque_existential_2Tm(v35);
  v31(v28, v15);
  __swift_destroy_boxed_opaque_existential_2Tm(v38);
  *a4 = v36;
  sub_1BF9F97E4(v37, (a4 + 8));
  v32 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(v18 + 32))(&a4[v32[6]], v24, v15);
  *&a4[v32[7]] = 0xBFF0000000000000;
  return sub_1BFA1B678(v14, &a4[v32[8]]);
}

uint64_t SiriSuggestions.SuggestionList.suggestions.getter()
{
  v1 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v2 = OUTLINED_FUNCTION_2_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_4_0();
  v30 = v8 - v9;
  result = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v28 - v13;
  v15 = 0;
  v16 = *v0;
  v17 = *(*v0 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v17 == v15)
    {
      return v18;
    }

    if (v15 >= *(v16 + 16))
    {
      break;
    }

    sub_1BFA1C998(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v14);
    v19 = &v14[*(v1 + 24)];
    v20 = &v19[*(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 36)];
    if (!*(v20 + 2) || (*v20 & 1) != 0)
    {
      OUTLINED_FUNCTION_1_3();
      sub_1BFA2E4F4(v14, v30, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = *(v18 + 16);
        sub_1BFA2DC10();
        v18 = v31;
      }

      v24 = *(v18 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v18 + 24) >> 1)
      {
        v29 = v24 + 1;
        sub_1BFA2DC10();
        v25 = v29;
        v18 = v31;
      }

      ++v15;
      *(v18 + 16) = v25;
      OUTLINED_FUNCTION_1_3();
      result = sub_1BFA2E4F4(v30, v26, v27);
    }

    else
    {
      result = sub_1BFA2E5F8(v14, type metadata accessor for SiriSuggestions.Suggestion);
      ++v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA2C3EC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  OUTLINED_FUNCTION_4_0();
  v28 = v9 - v10;
  result = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v27 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v17 == v16)
    {

      return v29;
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    sub_1BFA1C998(a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v15);
    v18 = v30(v15);
    if (v3)
    {
      sub_1BFA2E5F8(v15, type metadata accessor for SiriSuggestions.Suggestion);
      v26 = v29;

      return v26;
    }

    if (v18)
    {
      sub_1BFA2E4F4(v15, v28, type metadata accessor for SiriSuggestions.Suggestion);
      v19 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v19 + 16);
        sub_1BFA2DC10();
        v19 = v32;
      }

      v22 = *(v19 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v19 + 24) >> 1)
      {
        v29 = v22 + 1;
        v27[1] = v22;
        sub_1BFA2DC10();
        v23 = v29;
        v19 = v32;
      }

      ++v16;
      *(v19 + 16) = v23;
      v29 = v19;
      OUTLINED_FUNCTION_1_3();
      result = sub_1BFA2E4F4(v28, v24, v25);
    }

    else
    {
      result = sub_1BFA2E5F8(v15, type metadata accessor for SiriSuggestions.Suggestion);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t SiriSuggestions.SuggestionList.generationId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.SuggestionList() + 24);
  v4 = sub_1BFAAE3F8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SiriSuggestions.SuggestionList.experimentId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriSuggestions.SuggestionList() + 32);

  return sub_1BFA2E430(v3, a1);
}

uint64_t SiriSuggestions.SuggestionList.init(suggestions:sourceOwner:generationId:generationTs:experimentId:)@<X0>(size_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v17 = a1;

  sub_1BFA1B5D0(&v17);

  *a5 = v17;
  sub_1BF9F97E4(a2, (a5 + 8));
  v11 = type metadata accessor for SiriSuggestions.SuggestionList();
  v12 = v11[6];
  v13 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0(v13);
  (*(v14 + 32))(&a5[v12], a3);
  *&a5[v11[7]] = a6;
  v15 = &a5[v11[8]];

  return sub_1BFA1B678(a4, v15);
}

uint64_t SiriSuggestions.SuggestionList.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = type metadata accessor for SiriSuggestions.SuggestionList();
  v3 = OUTLINED_FUNCTION_0(v62);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v9 = OUTLINED_FUNCTION_60_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  OUTLINED_FUNCTION_4_0();
  v67 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v64 = &v59 - v17;
  v18 = sub_1BFAAE3F8();
  v19 = OUTLINED_FUNCTION_2_3(v18);
  v65 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19, v23);
  OUTLINED_FUNCTION_4_0();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v59 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB908, &qword_1BFAB1CD8);
  OUTLINED_FUNCTION_2_3(v31);
  v66 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v59 - v37;
  v39 = a1[3];
  v40 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = sub_1BFA2E4A0();
  v42 = v69;
  sub_1BFAAFFF8();
  if (!v42)
  {
    v69 = v41;
    v61 = v30;
    v60 = v26;
    v44 = v66;
    v43 = v67;
    v45 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    LOBYTE(v72[0]) = 2;
    sub_1BFA2E650(&qword_1EDCC77B8, qword_1EDCC7818);
    sub_1BFAAFE08();
    v46 = v73[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    LOBYTE(v72[0]) = 1;
    sub_1BFAAEE58();
    v47 = v38;
    v48 = v44;
    v59 = v46;
    LOBYTE(v72[0]) = 0;
    OUTLINED_FUNCTION_5_2();
    sub_1BFA2E6EC(v49, v50);
    v51 = v18;
    sub_1BFAAFE08();
    LOBYTE(v72[0]) = 3;
    sub_1BFAAFDE8();
    v53 = v52;
    sub_1BFAAED08();
    LOBYTE(v72[0]) = 4;
    v54 = v64;
    sub_1BFAAEE18();
    v55 = v65;
    v69 = v47;
    sub_1BF9F94C4(v73, v72);
    v57 = v61;
    (*(v55 + 16))(v60, v61, v51);
    sub_1BFA2E430(v54, v43);
    v71 = v59;

    sub_1BFA1B5D0(&v71);

    sub_1BF9FAB40(v64, &qword_1EBDFB670, &qword_1BFAB1CD0);
    (*(v55 + 8))(v57, v51);
    __swift_destroy_boxed_opaque_existential_2Tm(v73);
    (*(v48 + 8))(v69, v31);
    *v45 = v71;
    sub_1BF9F97E4(v72, (v45 + 8));
    v58 = v62;
    (*(v55 + 32))(&v45[*(v62 + 24)], v60, v51);
    *&v45[*(v58 + 28)] = v53;
    sub_1BFA1B678(v43, &v45[*(v58 + 32)]);
    sub_1BFA2E4F4(v45, v63, type metadata accessor for SiriSuggestions.SuggestionList);
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v70);
}

uint64_t SiriSuggestions.SuggestionList.init(copy:suggestions:)@<X0>(uint64_t a1@<X0>, size_t a2@<X1>, char *a3@<X8>)
{
  v10 = a2;

  sub_1BFA2E554(&v10);

  *a3 = v10;
  sub_1BF9F94C4(a1 + 8, (a3 + 8));
  v5 = type metadata accessor for SiriSuggestions.SuggestionList();
  v6 = v5[6];
  v7 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0(v7);
  (*(v8 + 16))(&a3[v6], a1 + v6);
  *&a3[v5[7]] = *(a1 + v5[7]);
  sub_1BFA2E430(a1 + v5[8], &a3[v5[8]]);
  return sub_1BFA2E5F8(a1, type metadata accessor for SiriSuggestions.SuggestionList);
}

uint64_t SiriSuggestions.SuggestionList.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB918, &unk_1BFAB1CF0);
  OUTLINED_FUNCTION_2_3(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA2E4A0();
  sub_1BFAB0008();
  *&v42 = *v2;
  v45 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
  sub_1BFA2E650(&qword_1EDCC6458, &qword_1EDCC6620);
  v21 = v41;
  sub_1BFAAFEB8();
  if (v21)
  {
    return (*(v13 + 8))(v19, v11);
  }

  v40 = v11;
  v41 = v13;
  v39 = v10;
  v45 = 1;
  v23 = v2[4];
  v24 = v2[5];
  v25 = __swift_project_boxed_opaque_existential_1(v2 + 1, v23);
  v26 = *(v24 + 32);
  *(&v43 + 1) = v23;
  v44 = v26;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v42);
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1Tm, v25, v23);
  OUTLINED_FUNCTION_8_1();
  sub_1BFAAEE68();
  __swift_destroy_boxed_opaque_existential_2Tm(&v42);
  v28 = type metadata accessor for SiriSuggestions.SuggestionList();
  v29 = v28[6];
  LOBYTE(v42) = 0;
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_5_2();
  sub_1BFA2E6EC(v30, v31);
  v32 = v40;
  sub_1BFAAFEB8();
  v33 = v41;
  v34 = *(v2 + v28[7]);
  LOBYTE(v42) = 3;
  sub_1BFAAFE98();
  v45 = 4;
  v35 = v39;
  sub_1BFA2E430(v2 + v28[8], v39);
  v36 = sub_1BFAAED08();
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_1BF9FAB40(v35, &qword_1EBDFB670, &qword_1BFAB1CD0);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  else
  {
    *(&v43 + 1) = v36;
    v44 = sub_1BFA2E6EC(&qword_1EBDFB920, MEMORY[0x1E69D2F50]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm(&v42);
    (*(*(v36 - 8) + 32))(v37, v35, v36);
  }

  OUTLINED_FUNCTION_8_1();
  sub_1BFAAEE28();
  (*(v33 + 8))(v19, v32);
  return sub_1BF9FAB40(&v42, &qword_1EBDFB5A8, &qword_1BFAB0A00);
}

uint64_t sub_1BFA2D3D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x69746172656E6567 && a2 == 0xEC00000064496E6FLL;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_12_5() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == OUTLINED_FUNCTION_11_3() && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0x69746172656E6567 && a2 == 0xEC00000073546E6FLL;
        if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL)
        {

          return 4;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_7();

          if (v12)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BFA2D520(char a1)
{
  result = 0x69746172656E6567;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_12_5();
      break;
    case 2:
      result = OUTLINED_FUNCTION_11_3();
      break;
    case 4:
      result = 0x656D697265707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA2D5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA2D3D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA2D5F8(uint64_t a1)
{
  v2 = sub_1BFA2E4A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA2D634(uint64_t a1)
{
  v2 = sub_1BFA2E4A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SuggestionList.init(suggestions:sourceOwner:generationId:generationTs:)@<X0>(size_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29[-v15];
  v17 = sub_1BFAAE3F8();
  v18 = OUTLINED_FUNCTION_2_3(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18, v23);
  v25 = &v29[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF9F94C4(a2, v31);
  (*(v20 + 16))(v25, a3, v17);
  v26 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v26);
  v30 = a1;

  sub_1BFA1B5D0(&v30);

  (*(v20 + 8))(a3, v17);
  __swift_destroy_boxed_opaque_existential_2Tm(a2);
  *a4 = v30;
  sub_1BF9F97E4(v31, (a4 + 8));
  v27 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(v20 + 32))(&a4[v27[6]], v25, v17);
  *&a4[v27[7]] = a5;
  return sub_1BFA1B678(v16, &a4[v27[8]]);
}

char *sub_1BFA2D8AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

char *sub_1BFA2D934(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

char *sub_1BFA2D95C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_4(a3, result);
  }

  return result;
}

uint64_t sub_1BFA2DA0C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BFA2DAF8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_0(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_14_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_14_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1BFA2DBB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB978, &qword_1BFAB1F10, MEMORY[0x1E69D2D78], MEMORY[0x1E69D2D78]);
  *v3 = result;
  return result;
}

size_t sub_1BFA2DC10()
{
  v1 = *v0;
  OUTLINED_FUNCTION_6_4();
  result = sub_1BFA2DE18(v2, v3, v4, v5, v6, v7, v8, type metadata accessor for SiriSuggestions.Suggestion);
  *v0 = result;
  return result;
}

char *sub_1BFA2DC58(char *a1, int64_t a2, char a3)
{
  result = sub_1BFA2DFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BFA2DC78(size_t a1, int64_t a2, char a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB968, &unk_1BFAB1EF0, MEMORY[0x1E69D2A98], MEMORY[0x1E69D2A98]);
  *v3 = result;
  return result;
}

size_t sub_1BFA2DCD0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB960, &qword_1BFAB4FB0, type metadata accessor for SiriAutoCompleteSuggestion, type metadata accessor for SiriAutoCompleteSuggestion);
  *v3 = result;
  return result;
}

void *sub_1BFA2DD28(void *a1, int64_t a2, char a3)
{
  result = sub_1BFA2E0E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BFA2DD48(size_t a1, int64_t a2, char a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB948, &qword_1BFAB1ED0, MEMORY[0x1E69D2F70], MEMORY[0x1E69D2F70]);
  *v3 = result;
  return result;
}

size_t sub_1BFA2DDA0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BFA2E218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BFA2DDC0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BFA2DE18(a1, a2, a3, *v3, &qword_1EBDFB940, &qword_1BFAB1EC8, MEMORY[0x1E69D2F18], MEMORY[0x1E69D2F18]);
  *v3 = result;
  return result;
}

size_t sub_1BFA2DE18(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_1BFA2DAF8(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1BFA2DFE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB748, &unk_1BFAB1510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BFA2E0E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB950, &qword_1BFAB1ED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BFA2E218(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB930, &qword_1BFAB1EB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1BFA2DA0C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for SiriSuggestions.SuggestionList()
{
  result = qword_1EDCC86D8;
  if (!qword_1EDCC86D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BFA2E430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA2E4A0()
{
  result = qword_1EDCC86F8[0];
  if (!qword_1EDCC86F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC86F8);
  }

  return result;
}

uint64_t sub_1BFA2E4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BFA2E554(size_t *a1)
{
  v2 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_60_0(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1BFA2FE30(v5);
  }

  v6 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_1BFA2EB48(v8);
  *a1 = v5;
  return result;
}

uint64_t sub_1BFA2E5F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BFA2E650(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    sub_1BFA2E6EC(a2, type metadata accessor for SiriSuggestions.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFA2E6EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BFA2E75C()
{
  sub_1BFA2E878(319, &qword_1EDCC84E0, type metadata accessor for SiriSuggestions.Suggestion, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BFA16528();
    if (v1 <= 0x3F)
    {
      sub_1BFAAE3F8();
      if (v2 <= 0x3F)
      {
        sub_1BFA2E878(319, qword_1EDCC8508, MEMORY[0x1E69D2F50], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BFA2E878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s14SuggestionListV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14SuggestionListV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BFA2EA44()
{
  result = qword_1EBDFB928;
  if (!qword_1EBDFB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB928);
  }

  return result;
}

unint64_t sub_1BFA2EA9C()
{
  result = qword_1EDCC86E8;
  if (!qword_1EDCC86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC86E8);
  }

  return result;
}

unint64_t sub_1BFA2EAF4()
{
  result = qword_1EDCC86F0;
  if (!qword_1EDCC86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC86F0);
  }

  return result;
}

uint64_t sub_1BFA2EB48(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BFAAFEC8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SiriSuggestions.Suggestion(0);
        v6 = sub_1BFAAFA28();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SiriSuggestions.Suggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BFA2EEB8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BFA2EC78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BFA2EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v34 - v15;
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v21 = &v34 - v20;
  v36 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v41 = -v23;
    v42 = v22;
    v25 = a1 - a3;
    v35 = v23;
    v26 = v22 + v23 * a3;
    while (2)
    {
      v39 = v24;
      v40 = a3;
      v37 = v26;
      v38 = v25;
      do
      {
        sub_1BFA1C998(v26, v21);
        sub_1BFA1C998(v24, v16);
        v27 = *(v8 + 44);
        v28 = v8;
        v29 = *&v21[v27];
        v30 = *&v16[v27];
        sub_1BFA2E5F8(v16, type metadata accessor for SiriSuggestions.Suggestion);
        result = sub_1BFA2E5F8(v21, type metadata accessor for SiriSuggestions.Suggestion);
        v31 = v29 < v30;
        v8 = v28;
        if (!v31)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v32 = v43;
        sub_1BFA2E4F4(v26, v43, type metadata accessor for SiriSuggestions.Suggestion);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1BFA2E4F4(v32, v24, type metadata accessor for SiriSuggestions.Suggestion);
        v24 += v41;
        v26 += v41;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v40 + 1;
      v24 = v39 + v35;
      v25 = v38 - 1;
      v26 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BFA2EEB8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v120 = a1;
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v127 = *(v6 - 8);
  v7 = *(v127 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v123 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v133 = &v118 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v136 = &v118 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v135 = &v118 - v18;
  v129 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v136 = *v120;
    if (!v136)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v130;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v110 = (v21 + 16);
      v111 = *(v21 + 16);
      while (v111 >= 2)
      {
        if (!*v129)
        {
          goto LABEL_138;
        }

        v112 = v6;
        v113 = v21;
        v6 = v21 + 16 * v111;
        v114 = *v6;
        v115 = &v110[2 * v111];
        v116 = v115[1];
        sub_1BFA2F7A8(*v129 + *(v127 + 72) * *v6, *v129 + *(v127 + 72) * *v115, *v129 + *(v127 + 72) * v116, v136);
        v21 = v112;
        if (v112)
        {
          break;
        }

        if (v116 < v114)
        {
          goto LABEL_126;
        }

        if (v111 - 2 >= *v110)
        {
          goto LABEL_127;
        }

        *v6 = v114;
        *(v6 + 8) = v116;
        v117 = *v110 - v111;
        if (*v110 < v111)
        {
          goto LABEL_128;
        }

        v111 = *v110 - 1;
        memmove(v115, v115 + 2, 16 * v117);
        *v110 = v111;
        v6 = 0;
        v21 = v113;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v21 = sub_1BFA2FC4C(v21);
    goto LABEL_102;
  }

  v118 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v134 = v6;
  while (1)
  {
    v22 = v20++;
    v121 = v22;
    if (v20 < v19)
    {
      v119 = v21;
      v23 = *v129;
      v21 = *(v127 + 72);
      v24 = *v129 + v21 * v20;
      v25 = v20;
      v26 = v135;
      v126 = v19;
      sub_1BFA1C998(v24, v135);
      v27 = v136;
      sub_1BFA1C998(v23 + v21 * v22, v136);
      v28 = *(v6 + 44);
      v29 = *(v26 + v28);
      v124 = *(v27 + v28);
      v125 = v29;
      sub_1BFA2E5F8(v27, type metadata accessor for SiriSuggestions.Suggestion);
      v30 = v26;
      v20 = v25;
      sub_1BFA2E5F8(v30, type metadata accessor for SiriSuggestions.Suggestion);
      v31 = v126;
      v32 = v22 + 2;
      v128 = v21;
      v33 = v23 + v21 * (v22 + 2);
      while (1)
      {
        v34 = v32;
        v35 = v20 + 1;
        if (v35 >= v31)
        {
          break;
        }

        LODWORD(v131) = v125 < v124;
        v21 = v35;
        v36 = v135;
        v132 = v32;
        sub_1BFA1C998(v33, v135);
        v37 = v136;
        sub_1BFA1C998(v24, v136);
        v38 = *(v6 + 44);
        v39 = *(v36 + v38);
        v40 = *(v37 + v38);
        sub_1BFA2E5F8(v37, type metadata accessor for SiriSuggestions.Suggestion);
        v41 = v36;
        v20 = v21;
        sub_1BFA2E5F8(v41, type metadata accessor for SiriSuggestions.Suggestion);
        v34 = v132;
        v31 = v126;
        v33 += v128;
        v24 += v128;
        v32 = v132 + 1;
        if (((v131 ^ (v39 >= v40)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v20 = v31;
LABEL_9:
      if (v125 < v124)
      {
        v22 = v121;
        if (v20 < v121)
        {
          goto LABEL_132;
        }

        if (v121 >= v20)
        {
          v21 = v119;
          goto LABEL_30;
        }

        if (v31 >= v34)
        {
          v42 = v34;
        }

        else
        {
          v42 = v31;
        }

        v43 = v128 * (v42 - 1);
        v44 = v128 * v42;
        v45 = v121 * v128;
        v46 = v121;
        v47 = v20;
        do
        {
          if (v46 != --v47)
          {
            v48 = *v129;
            if (!*v129)
            {
              goto LABEL_139;
            }

            sub_1BFA2E4F4(v48 + v45, v123, type metadata accessor for SiriSuggestions.Suggestion);
            v49 = v45 < v43 || v48 + v45 >= v48 + v44;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BFA2E4F4(v123, v48 + v43, type metadata accessor for SiriSuggestions.Suggestion);
          }

          ++v46;
          v43 -= v128;
          v44 -= v128;
          v45 += v128;
        }

        while (v46 < v47);
      }

      v21 = v119;
      v22 = v121;
    }

LABEL_30:
    v50 = v129[1];
    if (v20 < v50)
    {
      if (__OFSUB__(v20, v22))
      {
        goto LABEL_131;
      }

      if (v20 - v22 < v118)
      {
        break;
      }
    }

LABEL_48:
    if (v20 < v22)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = *(v21 + 16);
      sub_1BFA1F1DC();
      v21 = v107;
    }

    v64 = *(v21 + 16);
    v65 = v64 + 1;
    if (v64 >= *(v21 + 24) >> 1)
    {
      sub_1BFA1F1DC();
      v21 = v108;
    }

    *(v21 + 16) = v65;
    v66 = v21 + 32;
    v67 = (v21 + 32 + 16 * v64);
    *v67 = v121;
    v67[1] = v20;
    v132 = *v120;
    if (!v132)
    {
      goto LABEL_140;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = (v66 + 16 * (v65 - 1));
        v70 = (v21 + 16 * v65);
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v21 + 32);
          v72 = *(v21 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_68:
          if (v74)
          {
            goto LABEL_117;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_120;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_125;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v65 < 2)
        {
          goto LABEL_119;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_83:
        if (v89)
        {
          goto LABEL_122;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_124;
        }

        if (v96 < v88)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v129)
        {
          goto LABEL_137;
        }

        v100 = (v66 + 16 * (v68 - 1));
        v101 = *v100;
        v102 = (v66 + 16 * v68);
        v103 = v102[1];
        v104 = v130;
        sub_1BFA2F7A8(*v129 + *(v127 + 72) * *v100, *v129 + *(v127 + 72) * *v102, *v129 + *(v127 + 72) * v103, v132);
        v6 = v104;
        if (v104)
        {
          goto LABEL_110;
        }

        if (v103 < v101)
        {
          goto LABEL_112;
        }

        v130 = 0;
        v6 = v21;
        v21 = *(v21 + 16);
        if (v68 > v21)
        {
          goto LABEL_113;
        }

        *v100 = v101;
        v100[1] = v103;
        if (v68 >= v21)
        {
          goto LABEL_114;
        }

        v65 = v21 - 1;
        memmove((v66 + 16 * v68), v102 + 2, 16 * (v21 - 1 - v68));
        *(v6 + 16) = v21 - 1;
        v105 = v21 > 2;
        v21 = v6;
        v6 = v134;
        if (!v105)
        {
          goto LABEL_97;
        }
      }

      v75 = v66 + 16 * v65;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_115;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_116;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_118;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_121;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_129;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v129[1];
    if (v20 >= v19)
    {
      goto LABEL_100;
    }
  }

  v51 = v22 + v118;
  if (__OFADD__(v22, v118))
  {
    goto LABEL_133;
  }

  if (v51 >= v50)
  {
    v51 = v129[1];
  }

  if (v51 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v20 == v51)
  {
    goto LABEL_48;
  }

  v119 = v21;
  v52 = *(v127 + 72);
  v53 = *v129 + v52 * (v20 - 1);
  v54 = -v52;
  v55 = v22 - v20;
  v132 = *v129;
  v122 = v52;
  v56 = v132 + v20 * v52;
  v124 = v51;
LABEL_39:
  v131 = v20;
  v125 = v56;
  v126 = v55;
  v128 = v53;
  v57 = v53;
  while (1)
  {
    v58 = v135;
    sub_1BFA1C998(v56, v135);
    v59 = v136;
    sub_1BFA1C998(v57, v136);
    v60 = *(v6 + 44);
    v61 = *(v58 + v60);
    v62 = *(v59 + v60);
    sub_1BFA2E5F8(v59, type metadata accessor for SiriSuggestions.Suggestion);
    sub_1BFA2E5F8(v58, type metadata accessor for SiriSuggestions.Suggestion);
    if (v61 >= v62)
    {
      v6 = v134;
LABEL_46:
      v20 = v131 + 1;
      v53 = v128 + v122;
      v55 = v126 - 1;
      v56 = v125 + v122;
      if (v131 + 1 == v124)
      {
        v20 = v124;
        v21 = v119;
        v22 = v121;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v132)
    {
      break;
    }

    v63 = v133;
    sub_1BFA2E4F4(v56, v133, type metadata accessor for SiriSuggestions.Suggestion);
    v6 = v134;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BFA2E4F4(v63, v57, type metadata accessor for SiriSuggestions.Suggestion);
    v57 += v54;
    v56 += v54;
    v49 = __CFADD__(v55++, 1);
    if (v49)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_1BFA2F7A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v8 = *(*(v67 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v67, v9);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v12);
  v66 = &v57 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_62;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_63;
  }

  v21 = v17 / v16;
  v70 = a1;
  v69 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    sub_1BFA2DAF8(a2, v19 / v16, a4, type metadata accessor for SiriSuggestions.Suggestion);
    v37 = a4 + v22 * v16;
    v38 = -v16;
    v39 = v37;
    v61 = a1;
    v62 = a4;
    v60 = -v16;
LABEL_37:
    v40 = a2 + v38;
    v41 = a3;
    v58 = v39;
    v63 = a2 + v38;
    v64 = a2;
    while (1)
    {
      if (v37 <= a4)
      {
        v70 = a2;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v59 = v39;
      v42 = v41 + v38;
      v43 = v37 + v38;
      v44 = v66;
      v45 = v41;
      sub_1BFA1C998(v37 + v38, v66);
      v46 = v37;
      v47 = v65;
      sub_1BFA1C998(v40, v65);
      v48 = *(v67 + 44);
      v49 = *(v44 + v48);
      v50 = v47;
      v51 = *(v47 + v48);
      sub_1BFA2E5F8(v50, type metadata accessor for SiriSuggestions.Suggestion);
      sub_1BFA2E5F8(v44, type metadata accessor for SiriSuggestions.Suggestion);
      if (v49 < v51)
      {
        v37 = v46;
        v54 = v45 < v64 || v42 >= v64;
        a3 = v42;
        if (v54)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          v39 = v59;
          v38 = v60;
          a1 = v61;
          a4 = v62;
        }

        else
        {
          v38 = v60;
          v39 = v59;
          v18 = v45 == v64;
          a4 = v62;
          v55 = v63;
          a2 = v63;
          a1 = v61;
          if (!v18)
          {
            v56 = v59;
            swift_arrayInitWithTakeBackToFront();
            a2 = v55;
            v39 = v56;
          }
        }

        goto LABEL_37;
      }

      v52 = v45 < v46 || v42 >= v46;
      v53 = v42;
      if (v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v41 = v42;
        v37 = v43;
        v39 = v43;
        a1 = v61;
        a4 = v62;
        v40 = v63;
        a2 = v64;
        v38 = v60;
      }

      else
      {
        v39 = v43;
        v18 = v46 == v45;
        v41 = v42;
        v37 = v43;
        a1 = v61;
        a4 = v62;
        v40 = v63;
        a2 = v64;
        v38 = v60;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v41 = v53;
          v37 = v43;
          v39 = v43;
        }
      }
    }

    v70 = a2;
    v39 = v58;
LABEL_59:
    v68 = v39;
  }

  else
  {
    sub_1BFA2DAF8(a1, v17 / v16, a4, type metadata accessor for SiriSuggestions.Suggestion);
    v63 = a3;
    v64 = a4 + v21 * v16;
    v68 = v64;
    while (a4 < v64 && a2 < a3)
    {
      v24 = v16;
      v25 = a1;
      v26 = v66;
      sub_1BFA1C998(a2, v66);
      v27 = a4;
      v28 = a4;
      v29 = v65;
      sub_1BFA1C998(v27, v65);
      v30 = *(v67 + 44);
      v31 = *(v26 + v30);
      v32 = a2;
      v33 = *(v29 + v30);
      sub_1BFA2E5F8(v29, type metadata accessor for SiriSuggestions.Suggestion);
      sub_1BFA2E5F8(v26, type metadata accessor for SiriSuggestions.Suggestion);
      if (v31 >= v33)
      {
        a2 = v32;
        v16 = v24;
        a4 = v28 + v24;
        v34 = v25;
        if (v25 < v28 || v25 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v63;
        }

        else
        {
          a3 = v63;
          if (v25 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v69 = v28 + v24;
      }

      else
      {
        a2 = v32 + v24;
        v34 = v25;
        v35 = v25 < v32 || v25 >= a2;
        a4 = v28;
        if (v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v63;
        }

        else
        {
          a3 = v63;
          if (v25 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v16 = v24;
      }

      a1 = v34 + v16;
      v70 = a1;
    }
  }

  sub_1BFA2FC60(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_1BFA2FC60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  result = OUTLINED_FUNCTION_0(v6);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  v11 = v4 + (v5 - v4) / v9 * v9;
  if (v3 < v4 || v3 >= v11)
  {
    OUTLINED_FUNCTION_93();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    OUTLINED_FUNCTION_93();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1BFA2FD30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB770, &unk_1BFAB1F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

size_t sub_1BFA2FE30(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_6_4();
  return sub_1BFA2DE18(0, v2, 0, v3, v4, v5, v6, type metadata accessor for SiriSuggestions.Suggestion);
}

void *DefaultSELFLogger.__allocating_init()()
{
  OUTLINED_FUNCTION_58_0();
  result = swift_allocObject();
  result[2] = &unk_1BFAB1F30;
  result[3] = 0;
  result[4] = sub_1BFA301BC;
  result[5] = 0;
  return result;
}

SiriSuggestionsAPI::UIActivity_optional __swiftcall UIActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UIActivity.rawValue.getter()
{
  v1 = 0x646570706174;
  if (*v0 != 1)
  {
    v1 = 0x64657265646E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746E6573657270;
  }
}

uint64_t sub_1BFA2FFC8@<X0>(uint64_t *a1@<X8>)
{
  result = UIActivity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BFA2FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  *(v9 + 24) = *v10;
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_15_0();
  v29 = v13 + *v13;
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_41(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_45(v17);
  OUTLINED_FUNCTION_48_0();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, v29);
}

uint64_t sub_1BFA3012C()
{
  OUTLINED_FUNCTION_40();
  [objc_msgSend(objc_opt_self() sharedStream)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA301BC@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1BFAAE3B8();
  v4 = [v2 derivedIdentifierForComponentName:32 fromSourceIdentifier:v3];

  if (v4)
  {
    sub_1BFAAE3D8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BFAAE3F8();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void *DefaultSELFLogger.__allocating_init(selfEmitter:uuidMapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  OUTLINED_FUNCTION_58_0();
  result = swift_allocObject();
  result[2] = &unk_1BFAB1F40;
  result[3] = v8;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_1BFA302E8(void *a1, int *a2)
{
  v2[5] = sub_1BFA3C744(0, &qword_1EBDFB9E0, 0x1E69CF600);
  v2[2] = a1;
  v5 = a1;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_1BFA30410;

  return v9(v2 + 2);
}

uint64_t sub_1BFA30410()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_2Tm((v2 + 16));
  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA304F8()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  v6[1] = sub_1BF9FDF08;

  return sub_1BFA302E8(v2, v4);
}

uint64_t sub_1BFA305A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BFAAE3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v29 - v14;
  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  v16(a1);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_1BF9FAB40(v15, &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v18 = sub_1BFAAF688();
    __swift_project_value_buffer(v18, qword_1EDCC7478);
    (*(v6 + 16))(v10, a1, v5);
    v19 = sub_1BFAAF668();
    v20 = sub_1BFAAFB88();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      v23 = sub_1BFAAE398();
      v25 = v24;
      (*(v6 + 8))(v10, v5);
      v26 = sub_1BF9F88A8(v23, v25, &v30);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1BF9F6000, v19, v20, "error generating derived identifier for SUG from request UUID - %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v22);
      MEMORY[0x1BFB618C0](v22, -1, -1);
      MEMORY[0x1BFB618C0](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }

    v27 = 1;
  }

  else
  {
    (*(v6 + 32))(a2, v15, v5);
    v27 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v27, 1, v5);
}

NSObject *sub_1BFA308A0(uint64_t a1)
{
  v2 = sub_1BFAAE3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E69CF698]) init];
  if (!v8)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v13 = sub_1BFAAF688();
    __swift_project_value_buffer(v13, qword_1EDCC7478);
    v9 = sub_1BFAAF668();
    v14 = sub_1BFAAFB88();
    if (os_log_type_enabled(v9, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BF9F6000, v9, v14, "error initializing SUGSchemaSUGClientEvent", v15, 2u);
      MEMORY[0x1BFB618C0](v15, -1, -1);
    }

    goto LABEL_13;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E69CF6A0]) init];
  if (!v10)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v16 = sub_1BFAAF688();
    __swift_project_value_buffer(v16, qword_1EDCC7478);
    v17 = sub_1BFAAF668();
    v18 = sub_1BFAAFB88();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BF9F6000, v17, v18, "error initializing SUGSchemaSUGClientEventMetadata", v19, 2u);
      MEMORY[0x1BFB618C0](v19, -1, -1);
    }

LABEL_13:
    return 0;
  }

  v11 = v10;
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  (*(v3 + 16))(v7, a1, v2);
  v12 = sub_1BFA30B80(v7);
  [v11 setSugId_];

  [v9 setEventMetadata:v11];
  return v9;
}

id sub_1BFA30B80(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BFAAE3B8();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1BFAAE3F8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

NSObject *sub_1BFA30C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_1BFAAE3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - v15;
  sub_1BFA305A4(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1BF9FAB40(v6, &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v17 = sub_1BFAAF688();
    __swift_project_value_buffer(v17, qword_1EDCC7478);
    (*(v8 + 16))(v13, a1, v7);
    v18 = sub_1BFAAF668();
    v19 = sub_1BFAAFB88();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      sub_1BFA3C6FC(&qword_1EDCC7430, MEMORY[0x1E69695A8]);
      v22 = sub_1BFAAFEE8();
      v24 = v23;
      (*(v8 + 8))(v13, v7);
      v25 = sub_1BF9F88A8(v22, v24, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1BF9F6000, v18, v19, "Error emitting request link because of nil sugID and requestId - %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v21);
      MEMORY[0x1BFB618C0](v21, -1, -1);
      MEMORY[0x1BFB618C0](v20, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    return 0;
  }

  else
  {
    (*(v8 + 32))(v16, v6, v7);
    v26 = sub_1BFA308A0(v16);
    (*(v8 + 8))(v16, v7);
  }

  return v26;
}

uint64_t DefaultSELFLogger.logRequestLink(requestId:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1BFAAF898();
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_100();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_100();
  v10 = sub_1BFAAE3F8();
  v1[9] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA310B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_61_0();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_80();
  a22 = v24;
  v29 = v24[8];
  v28 = v24[9];
  v30 = v24[6];
  sub_1BFA305A4(v24[5], v29);
  if (__swift_getEnumTagSinglePayload(v29, 1, v28) == 1)
  {
    sub_1BF9FAB40(v24[8], &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v32 = v24[10];
    v31 = v24[11];
    v33 = v24[9];
    v34 = v24[5];
    v35 = sub_1BFAAF688();
    __swift_project_value_buffer(v35, qword_1EDCC7478);
    v36 = OUTLINED_FUNCTION_9_3();
    v37(v36);
    v38 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_35_2();
    v40 = os_log_type_enabled(v38, v39);
    v42 = v24[10];
    v41 = v24[11];
    v43 = v24[9];
    if (v40)
    {
      OUTLINED_FUNCTION_51_0();
      a13 = OUTLINED_FUNCTION_32();
      *v25 = 136315138;
      OUTLINED_FUNCTION_31_1();
      sub_1BFA3C6FC(v44, v45);
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_69_0();
      v46 = OUTLINED_FUNCTION_40_0();
      v47(v46);
      v48 = OUTLINED_FUNCTION_34_2();
      v51 = sub_1BF9F88A8(v48, v49, v50);

      *(v25 + 4) = v51;
      OUTLINED_FUNCTION_50_1(&dword_1BF9F6000, v52, v53, "Error emitting request link because of nil sugID and requestId - %s");
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {

      v80 = OUTLINED_FUNCTION_40_0();
      v81(v80);
    }

LABEL_23:
    OUTLINED_FUNCTION_86_0();

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_12_3();

    return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, log, a12, a13, a14, a15, a16);
  }

  (*(v24[10] + 32))(v24[16], v24[8], v24[9]);
  v54 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF5E8]));
  v24[17] = v54;
  if (!v54)
  {
LABEL_18:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v82 = v24[12];
    v83 = v24[9];
    v84 = v24[10];
    v85 = v24[4];
    v86 = sub_1BFAAF688();
    __swift_project_value_buffer(v86, qword_1EDCC7478);
    v87 = OUTLINED_FUNCTION_9_3();
    v88(v87);
    v89 = sub_1BFAAF668();
    v90 = sub_1BFAAFB88();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v24[16];
    v93 = v24[12];
    v95 = v24[9];
    v94 = v24[10];
    if (v91)
    {
      a12 = v24[16];
      v96 = OUTLINED_FUNCTION_51_0();
      v97 = swift_slowAlloc();
      a13 = v97;
      *v96 = 136315138;
      v98 = MEMORY[0x1BFB5F5E0]();
      v100 = v99;
      log = v95;
      v101 = *(v94 + 8);
      v101(v93, v95);
      v102 = sub_1BF9F88A8(v98, v100, &a13);

      *(v96 + 4) = v102;
      _os_log_impl(&dword_1BF9F6000, v89, v90, "Failed to initialize inRequest schema objects. requestId: %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v97);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();

      v101(a12, v95);
    }

    else
    {

      v103 = *(v94 + 8);
      v103(v93, v95);
      v103(v92, v95);
    }

    goto LABEL_23;
  }

  v55 = v54;
  v56 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v30 + 2936)];
  v24[18] = v56;
  if (!v56)
  {
    v57 = v55;
LABEL_17:

    goto LABEL_18;
  }

  v57 = v56;
  v58 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v30 + 2936)];
  v24[19] = v58;
  if (!v58)
  {

    goto LABEL_17;
  }

  v59 = v58;
  v60 = v24[15];
  v149 = v24[16];
  v61 = v24[9];
  v62 = v24[10];
  v63 = v24[4];
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  v65 = *(v62 + 16);
  v64 = v62 + 16;
  v65(v60, v63, v61);
  v66 = sub_1BFA30B80(v60);
  OUTLINED_FUNCTION_92_0(v66, sel_setUuid_);

  [v59 setComponent_];
  v67 = v149;
  v150 = v65;
  v65(v60, v67, v61);
  v68 = sub_1BFA30B80(v60);
  OUTLINED_FUNCTION_73_0(v68, sel_setUuid_);

  OUTLINED_FUNCTION_75_0([v57 setComponent_], sel_setSource_);
  [v55 setTarget_];
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v69 = v24[16];
  v71 = v24[13];
  v70 = v24[14];
  v72 = v24[9];
  v73 = v24[4];
  v74 = sub_1BFAAF688();
  __swift_project_value_buffer(v74, qword_1EDCC7478);
  v150(v70, v73, v72);
  v150(v71, v69, v72);
  v75 = v55;
  v76 = sub_1BFAAF668();
  v77 = sub_1BFAAFB78();

  if (os_log_type_enabled(v76, v77))
  {
    HIDWORD(a10) = v77;
    v78 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v78 = 136315650;
    a13 = a9;
    sub_1BFA3B24C(v75);
    log = v76;
    if (v79 >> 60 == 15)
    {
      v75 = 0;
      v64 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_69_0();
      v121 = v24[7];
      sub_1BFAAF888();
      OUTLINED_FUNCTION_34_2();
      sub_1BFAAF878();
      OUTLINED_FUNCTION_84_0();
      v122 = OUTLINED_FUNCTION_34_2();
      sub_1BFA1B9DC(v122, v123);
    }

    v125 = v24[13];
    v124 = v24[14];
    v127 = v24[9];
    v126 = v24[10];
    v24[2] = v75;
    v24[3] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB980, &qword_1BFAB1F58);
    v128 = sub_1BFAAF8B8();
    v130 = sub_1BF9F88A8(v128, v129, &a13);

    *(v78 + 4) = v130;
    *(v78 + 12) = 2080;
    MEMORY[0x1BFB5F5E0](v131);
    OUTLINED_FUNCTION_84_0();
    v132 = *(v126 + 8);
    v117 = v126 + 8;
    v118 = v132;
    (v132)(v124, v127);
    v133 = OUTLINED_FUNCTION_85_0();
    v136 = sub_1BF9F88A8(v133, v134, v135);

    *(v78 + 14) = v136;
    *(v78 + 22) = 2080;
    v138 = MEMORY[0x1BFB5F5E0](v137);
    v140 = v139;
    v141 = OUTLINED_FUNCTION_34_2();
    v132(v141);
    v142 = sub_1BF9F88A8(v138, v140, &a13);

    *(v78 + 24) = v142;
    _os_log_impl(&dword_1BF9F6000, log, BYTE4(a10), "Emitting request link: %s\nwith requestId: %s,\nsugId: %s", v78, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_20_1();
  }

  else
  {
    v114 = v24[13];
    v113 = v24[14];
    v116 = v24[9];
    v115 = v24[10];

    v119 = *(v115 + 8);
    v117 = v115 + 8;
    v118 = v119;
    (v119)(v114, v116);
    v120 = OUTLINED_FUNCTION_41_0();
    v119(v120);
  }

  v24[20] = v117;
  v24[21] = v118;
  v143 = v24[6];
  v144 = *(v143 + 24);
  OUTLINED_FUNCTION_0_5(*(v143 + 16));
  a12 = v145;
  v147 = *(v146 + 4);
  v148 = swift_task_alloc();
  v24[22] = v148;
  *v148 = v24;
  OUTLINED_FUNCTION_10_2(v148);
  OUTLINED_FUNCTION_12_3();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, log, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA318B8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA3199C()
{
  OUTLINED_FUNCTION_58();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 72);

  v7 = OUTLINED_FUNCTION_93();
  v1(v7);
  OUTLINED_FUNCTION_86_0();

  OUTLINED_FUNCTION_85();

  return v8();
}

uint64_t DefaultSELFLogger.logRequestLink(turnId:sugId:)()
{
  OUTLINED_FUNCTION_40();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1BFAAF898();
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_100();
  v7 = sub_1BFAAE3F8();
  v1[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_109();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA31B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_61_0();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_80();
  a22 = v25;
  v29 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF5E8]));
  v25[14] = v29;
  if (v29)
  {
    v30 = v29;
    v26 = 0x1E69CF000uLL;
    v31 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v24 + 2936)];
    v25[15] = v31;
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) (v24 + 2936)];
      v25[16] = v33;
      if (v33)
      {
        v34 = v33;
        v35 = v25[13];
        v36 = v25[8];
        v37 = v25[9];
        v38 = v25[4];
        v129 = v25[5];
        sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
        v40 = *(v37 + 16);
        v39 = v37 + 16;
        v40(v35, v38, v36);
        v41 = sub_1BFA30B80(v35);
        OUTLINED_FUNCTION_92_0(v41, sel_setUuid_);

        [v34 setComponent_];
        v42 = v129;
        v130 = v40;
        v40(v35, v42, v36);
        v43 = sub_1BFA30B80(v35);
        OUTLINED_FUNCTION_73_0(v43, sel_setUuid_);

        OUTLINED_FUNCTION_75_0([v32 setComponent_], sel_setSource_);
        [v30 setTarget_];
        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4();
        }

        v45 = v25[11];
        v44 = v25[12];
        v46 = v25[8];
        v48 = v25[4];
        v47 = v25[5];
        v49 = sub_1BFAAF688();
        __swift_project_value_buffer(v49, qword_1EDCC7478);
        v130(v44, v48, v46);
        v130(v45, v47, v46);
        v50 = v30;
        v51 = sub_1BFAAF668();
        v52 = sub_1BFAAFB78();

        if (os_log_type_enabled(v51, v52))
        {
          HIDWORD(a11) = v52;
          v53 = swift_slowAlloc();
          a10 = swift_slowAlloc();
          *v53 = 136315650;
          a13 = a10;
          sub_1BFA3B24C(v50);
          if (v54 >> 60 == 15)
          {
            v50 = 0;
            v39 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_69_0();
            v101 = v25[7];
            sub_1BFAAF888();
            OUTLINED_FUNCTION_34_2();
            sub_1BFAAF878();
            OUTLINED_FUNCTION_84_0();
            v102 = OUTLINED_FUNCTION_34_2();
            sub_1BFA1B9DC(v102, v103);
          }

          v105 = v25[11];
          v104 = v25[12];
          v107 = v25[8];
          v106 = v25[9];
          v25[2] = v50;
          v25[3] = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB980, &qword_1BFAB1F58);
          v108 = sub_1BFAAF8B8();
          v110 = sub_1BF9F88A8(v108, v109, &a13);

          *(v53 + 4) = v110;
          *(v53 + 12) = 2080;
          MEMORY[0x1BFB5F5E0](v111);
          OUTLINED_FUNCTION_84_0();
          v112 = *(v106 + 8);
          v112(v104, v107);
          v113 = OUTLINED_FUNCTION_85_0();
          v116 = sub_1BF9F88A8(v113, v114, v115);

          *(v53 + 14) = v116;
          *(v53 + 22) = 2080;
          v118 = MEMORY[0x1BFB5F5E0](v117);
          v120 = v119;
          v121 = OUTLINED_FUNCTION_34_2();
          (v112)(v121);
          v122 = sub_1BF9F88A8(v118, v120, &a13);

          *(v53 + 24) = v122;
          _os_log_impl(&dword_1BF9F6000, v51, BYTE4(a11), "Emitting request link: %s\nwith turnId: %s,\nsugId: %s", v53, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_94();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
          v96 = v25[11];
          v95 = v25[12];
          v98 = v25[8];
          v97 = v25[9];

          v99 = *(v97 + 8);
          v99(v96, v98);
          v100 = OUTLINED_FUNCTION_41_0();
          (v99)(v100);
        }

        v123 = v25[6];
        v124 = *(v123 + 24);
        OUTLINED_FUNCTION_0_5(*(v123 + 16));
        a12 = v125;
        v127 = *(v126 + 4);
        v128 = swift_task_alloc();
        v25[17] = v128;
        *v128 = v25;
        OUTLINED_FUNCTION_10_2(v128);
        OUTLINED_FUNCTION_12_3();

        return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }

    else
    {
      v32 = v30;
    }
  }

  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v56 = v25[9];
  v55 = v25[10];
  v57 = v25[8];
  v58 = v25[4];
  v59 = sub_1BFAAF688();
  __swift_project_value_buffer(v59, qword_1EDCC7478);
  v60 = OUTLINED_FUNCTION_9_3();
  v61(v60);
  v62 = sub_1BFAAF668();
  sub_1BFAAFB88();
  OUTLINED_FUNCTION_35_2();
  v64 = os_log_type_enabled(v62, v63);
  v66 = v25[9];
  v65 = v25[10];
  v67 = v25[8];
  if (v64)
  {
    OUTLINED_FUNCTION_51_0();
    v68 = OUTLINED_FUNCTION_32();
    a13 = v68;
    *v26 = 136315138;
    MEMORY[0x1BFB5F5E0]();
    OUTLINED_FUNCTION_69_0();
    v69 = *(v66 + 8);
    v70 = OUTLINED_FUNCTION_41_0();
    v71(v70);
    v72 = OUTLINED_FUNCTION_34_2();
    v75 = sub_1BF9F88A8(v72, v73, v74);

    *(v26 + 4) = v75;
    OUTLINED_FUNCTION_50_1(&dword_1BF9F6000, v76, v77, "Failed to initialize inRequest schema objects. turnId: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v68);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_20_1();
  }

  else
  {

    v78 = *(v66 + 8);
    v79 = OUTLINED_FUNCTION_41_0();
    v80(v79);
  }

  v82 = v25[12];
  v81 = v25[13];
  v84 = v25[10];
  v83 = v25[11];
  v85 = v25[7];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_12_3();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA3215C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA32240()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);

  OUTLINED_FUNCTION_85();

  return v8();
}

uint64_t DefaultSELFLogger.logRequestLink(turnId:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_100();
  v7 = sub_1BFAAE3F8();
  v1[6] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_109();
  v1[9] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA323BC()
{
  OUTLINED_FUNCTION_72();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1BFA305A4(v0[3], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_1BF9FAB40(v0[5], &qword_1EBDFB570, &qword_1BFAB1F50);
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    v8 = v0[3];
    v9 = sub_1BFAAF688();
    __swift_project_value_buffer(v9, qword_1EDCC7478);
    v10 = OUTLINED_FUNCTION_9_3();
    v11(v10);
    v12 = sub_1BFAAF668();
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_35_2();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    if (v14)
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      *v1 = 136315138;
      OUTLINED_FUNCTION_31_1();
      sub_1BFA3C6FC(v18, v19);
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_69_0();
      v20 = OUTLINED_FUNCTION_40_0();
      v21(v20);
      v22 = OUTLINED_FUNCTION_34_2();
      v25 = sub_1BF9F88A8(v22, v23, v24);

      *(v1 + 4) = v25;
      OUTLINED_FUNCTION_50_1(&dword_1BF9F6000, v26, v27, "Error emitting request link because of nil sugID - %s");
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {

      v33 = OUTLINED_FUNCTION_40_0();
      v34(v33);
    }

    v36 = v0[8];
    v35 = v0[9];
    v37 = v0[5];

    OUTLINED_FUNCTION_85();

    return v38();
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    v28 = swift_task_alloc();
    v0[10] = v28;
    *v28 = v0;
    v28[1] = sub_1BFA32654;
    v29 = v0[9];
    v30 = v0[4];
    v31 = v0[2];

    return DefaultSELFLogger.logRequestLink(turnId:sugId:)();
  }
}

uint64_t sub_1BFA32654()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA32738()
{
  OUTLINED_FUNCTION_40();
  (*(v0[7] + 8))(v0[9], v0[6]);
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t DefaultSELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 72) = *a3;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA327E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_89_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_72();
  a18 = v20;
  v23 = [objc_allocWithZone(MEMORY[0x1E69CF758]) init];
  *(v20 + 48) = v23;
  if (v23)
  {
    v24 = v23;
    v25 = *(v20 + 72);
    v26 = *(v20 + 40);
    [v23 setDeliveryVehicle_];
    v27 = *(v20 + 40);
    v29 = *(v20 + 16);
    v28 = *(v20 + 24);
    [v24 setUiActivity_];
    sub_1BFA3B2B0(v28, v24);
    v30 = sub_1BFA30C1C(v29);
    *(v20 + 56) = v30;
    if (v30)
    {
      [v30 setUiActivity:v24];
      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4();
      }

      v31 = *(v20 + 24);
      v32 = sub_1BFAAF688();
      __swift_project_value_buffer(v32, qword_1EDCC7478);

      v33 = sub_1BFAAF668();
      sub_1BFAAFB78();
      OUTLINED_FUNCTION_35_2();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v20 + 72);
        v36 = *(v20 + 24);
        swift_slowAlloc();
        a11 = OUTLINED_FUNCTION_32();
        *v29 = 134218242;
        *(v29 + 4) = *(v36 + 16);

        *(v29 + 12) = 2080;
        v37 = 0xE600000000000000;
        v38 = 0x646570706174;
        if (v35 != 1)
        {
          v38 = 0x64657265646E6572;
          v37 = 0xE800000000000000;
        }

        if (v35)
        {
          v39 = v38;
        }

        else
        {
          v39 = 0x65746E6573657270;
        }

        if (v35)
        {
          v40 = v37;
        }

        else
        {
          v40 = 0xE900000000000064;
        }

        v41 = sub_1BF9F88A8(v39, v40, &a11);

        *(v29 + 14) = v41;
        OUTLINED_FUNCTION_39_3();
        _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_20_1();
      }

      else
      {
        v65 = *(v20 + 24);
      }

      v66 = *(v20 + 40);
      v67 = *(v66 + 24);
      OUTLINED_FUNCTION_0_5(*(v66 + 16));
      a10 = v68;
      v70 = *(v69 + 4);
      v71 = swift_task_alloc();
      *(v20 + 64) = v71;
      *v71 = v20;
      OUTLINED_FUNCTION_45(v71);
      OUTLINED_FUNCTION_77_0();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
    }

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v53 = sub_1BFAAF688();
    v48 = OUTLINED_FUNCTION_56(v53, qword_1EDCC7478);
    v54 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v54))
    {
      v55 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_0(v55);
      OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v48, v28, "error generating the SUGClient Event");
      OUTLINED_FUNCTION_20_1();
    }
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v47 = sub_1BFAAF688();
    v48 = OUTLINED_FUNCTION_56(v47, qword_1EDCC7478);
    v49 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v49))
    {
      v50 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v50);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v51, v52, "Failed to initialize SUGSchemaSUGSuggestionsUIActivity object");
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_77_0();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
}

uint64_t sub_1BFA32B90()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA32C74()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA32CD0(uint64_t a1)
{
  v2 = sub_1BFAAEEF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v24 - v14;
  v16 = *(v3 + 16);
  v16(&v24 - v14, a1, v2);
  v17 = (*(v3 + 88))(v15, v2);
  if (v17 != *MEMORY[0x1E69D3078])
  {
    if (v17 == *MEMORY[0x1E69D3088])
    {
      v16(v12, v15, v2);
      (*(v3 + 96))(v12, v2);
      v21 = sub_1BFAAEA48();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 88))(v12, v21);
      if (v23 == *MEMORY[0x1E69D2CE0])
      {
        v19 = 5;
        goto LABEL_3;
      }

      if (v23 == *MEMORY[0x1E69D2CD8])
      {
        v19 = 7;
        goto LABEL_3;
      }

      (*(v22 + 8))(v12, v21);
    }

    else
    {
      if (v17 == *MEMORY[0x1E69D3068])
      {
        v19 = 1;
        goto LABEL_3;
      }

      if (v17 == *MEMORY[0x1E69D3070])
      {
        v19 = 2;
        goto LABEL_3;
      }

      if (v17 == *MEMORY[0x1E69D3058])
      {
        v19 = 3;
        goto LABEL_3;
      }

      if (v17 == *MEMORY[0x1E69D3080])
      {
        v19 = 4;
        goto LABEL_3;
      }

      if (v17 == *MEMORY[0x1E69D3050])
      {
        v19 = 8;
        goto LABEL_3;
      }

      if (v17 == *MEMORY[0x1E69D3060])
      {
        v19 = 10;
        goto LABEL_3;
      }
    }

    v19 = 0;
    goto LABEL_3;
  }

  v16(v8, v15, v2);
  (*(v3 + 96))(v8, v2);
  v18 = sub_1BFAAEF58();
  (*(*(v18 - 8) + 8))(v8, v18);
  v19 = 9;
LABEL_3:
  (*(v3 + 8))(v15, v2);
  return v19;
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGenerated(generationId:suggestionList:presentationContext:)()
{
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v5);
  v1[9] = v6;
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_100();
  v9 = sub_1BFAAE3F8();
  v1[11] = v9;
  OUTLINED_FUNCTION_15(v9);
  v1[12] = v10;
  v12 = *(v11 + 64);
  v1[13] = OUTLINED_FUNCTION_100();
  v13 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1BFA33128()
{
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC7478);
  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_91(v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v5);
    OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v3, v0, "Building SELF generation log");
    OUTLINED_FUNCTION_20_1();
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69CF748]) init];
  *(v1 + 112) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(v1 + 64);
    v9 = sub_1BFA30C1C(*(v1 + 40));
    *(v1 + 120) = v9;
    if (v9)
    {
      v68 = v9;
      v10 = *(v1 + 96);
      v11 = *(v1 + 104);
      v12 = *(v1 + 88);
      v13 = *(v1 + 64);
      v14 = *(v1 + 48);
      v15 = *v14;
      v16 = sub_1BFA33794(*(v1 + 56), v14);
      v18 = v17;
      v64 = v19;
      [v7 setInvocationType_];

      v65 = v16;
      v67 = v18;
      sub_1BFA3B310(v16, v18, v7, &selRef_setGenerationTag_);
      sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
      v20 = type metadata accessor for SiriSuggestions.SuggestionList();
      (*(v10 + 16))(v11, &v14[*(v20 + 24)], v12);
      v21 = sub_1BFA30B80(v11);
      [v7 setGenerationId_];

      v22 = MEMORY[0x1E69E7CC0];
      v69 = MEMORY[0x1E69E7CC0];
      v23 = *(v15 + 16);
      v66 = v15;
      if (v23)
      {
        v24 = *(v1 + 72);
        v25 = v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v26 = *(v24 + 72);
        do
        {
          v27 = *(v1 + 80);
          v28 = *(v1 + 64);
          sub_1BFA3C644(v25, v27, type metadata accessor for SiriSuggestions.Suggestion);
          v29 = sub_1BFA34664(v27);
          v30 = sub_1BFA3C6A4(v27, type metadata accessor for SiriSuggestions.Suggestion);
          if (v29)
          {
            MEMORY[0x1BFB60C00](v30);
            OUTLINED_FUNCTION_24_4(v69);
            if (v32)
            {
              OUTLINED_FUNCTION_22_2(v31);
              sub_1BFAAFA08();
            }

            OUTLINED_FUNCTION_34_2();
            sub_1BFAAFA38();
            v22 = v69;
          }

          v25 += v26;
          --v23;
        }

        while (v23);
      }

      sub_1BFA3B1D0(v22, v7, &qword_1EDCC6400, 0x1E69CF738);
      [v68 setSuggestionsGenerated:v7];

      v33 = sub_1BFAAF668();
      v34 = sub_1BFAAFB78();

      if (os_log_type_enabled(v33, v34))
      {
        swift_slowAlloc();
        v35 = OUTLINED_FUNCTION_32();
        v69 = v35;
        *v7 = 134218242;
        *(v7 + 1) = *(v66 + 16);

        *(v7 + 6) = 2080;
        *(v1 + 16) = v65;
        *(v1 + 24) = v67;
        *(v1 + 32) = v64;
        v36 = sub_1BFAAF8B8();
        v38 = sub_1BF9F88A8(v36, v37, &v69);

        *(v7 + 14) = v38;
        OUTLINED_FUNCTION_39_3();
        _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_2Tm(v35);
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_20_1();
      }

      else
      {
      }

      v57 = *(v1 + 64);
      v58 = *(v57 + 24);
      OUTLINED_FUNCTION_0_5(*(v57 + 16));
      v60 = *(v59 + 4);
      v61 = swift_task_alloc();
      *(v1 + 128) = v61;
      *v61 = v1;
      OUTLINED_FUNCTION_10_2(v61);
      OUTLINED_FUNCTION_47_0();

      __asm { BRAA            X1, X16 }
    }

    v44 = sub_1BFAAF668();
    v49 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v49))
    {
      v50 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v50);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v51, v52, "error generating the SUGClient Event");
      OUTLINED_FUNCTION_69();
    }
  }

  else
  {
    v44 = sub_1BFAAF668();
    v45 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v45))
    {
      v46 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v46);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v47, v48, "Failed to initialize SUGSchemaSUGSuggestionsGenerated object");
      OUTLINED_FUNCTION_69();
    }
  }

  v53 = *(v1 + 104);
  v54 = *(v1 + 80);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BFA33640()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA33724()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 120);

  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t sub_1BFA33794(_BYTE *a1, uint64_t a2)
{
  v114 = a2;
  v3 = type metadata accessor for PresentationContext();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v117 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v8);
  v112 = &v109[-v9];
  v10 = sub_1BFAAED08();
  v113 = *(v10 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v109[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v109[-v18];
  v20 = sub_1BFAAEEA8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v109[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v115 = &v109[-v29];
  MEMORY[0x1EEE9AC00](v28, v30);
  v116 = v3;
  v31 = *(v3 + 20);
  v32 = *(v21 + 16);
  v118 = a1;
  v33 = &a1[v31];
  v35 = &v109[-v34];
  v32(&v109[-v34], v33, v20);
  v36 = (*(v21 + 88))(v35, v20);
  if (v36 == *MEMORY[0x1E69D2FB0])
  {
    v115 = v35;
    v32(v26, v35, v20);
    (*(v21 + 96))(v26, v20);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9D8, &qword_1BFAB2658) + 48);
    v38 = sub_1BFAAEFD8();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 88))(v26, v38);
    v41 = v20;
    if (v40 != *MEMORY[0x1E69D3118])
    {
      v56 = v40;
      v57 = *MEMORY[0x1E69D3108];
      v58 = sub_1BFAAEFF8();
      v59 = *(v58 - 8);
      v60 = v59;
      if (v56 == v57)
      {
        v61 = (*(v59 + 88))(&v26[v37], v58);
        if (v61 == *MEMORY[0x1E69D3140] || (v41 = v20, v61 == *MEMORY[0x1E69D3138]))
        {
          v62 = 0x6E61747369737361;
          (*(v21 + 8))(v115, v20);
          return v62;
        }

        (*(v60 + 8))(&v26[v37], v58);
      }

      else
      {
        (*(v59 + 8))(&v26[v37], v58);
        (*(v39 + 8))(v26, v38);
        v41 = v20;
      }

      v49 = v117;
      v48 = v118;
      goto LABEL_48;
    }

    (*(v39 + 96))(v26, v38);
    v42 = sub_1BFAAF008();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 88))(v26, v42);
    if (v44 == *MEMORY[0x1E69D3148])
    {
      v45 = sub_1BFAAEFF8();
      v46 = *(v45 - 8);
      v47 = (*(v46 + 88))(&v26[v37], v45);
      v49 = v117;
      v48 = v118;
      if (v47 == *MEMORY[0x1E69D3140] || v47 == *MEMORY[0x1E69D3138])
      {
        goto LABEL_43;
      }
    }

    else
    {
      v49 = v117;
      v48 = v118;
      if (v44 != *MEMORY[0x1E69D3150])
      {
        (*(v43 + 8))(v26, v42);
        v78 = sub_1BFAAEFF8();
        (*(*(v78 - 8) + 8))(&v26[v37], v78);
LABEL_48:
        v35 = v115;
        goto LABEL_49;
      }

      v45 = sub_1BFAAEFF8();
      v46 = *(v45 - 8);
      if ((*(v46 + 88))(&v26[v37], v45) == *MEMORY[0x1E69D3140])
      {
LABEL_43:
        v62 = 0x6E61747369737361;
        (*(v21 + 8))(v115, v41);
        return v62;
      }
    }

    (*(v46 + 8))(&v26[v37], v45);
    goto LABEL_48;
  }

  if (v36 == *MEMORY[0x1E69D2FD8] || v36 == *MEMORY[0x1E69D2FC0])
  {
    v110 = *MEMORY[0x1E69D2FC0];
    v51 = *(v21 + 8);
    v52 = v20;
    v117 = (v21 + 8);
    v111 = v51;
    v51(v35, v20);
    v53 = type metadata accessor for SiriSuggestions.SuggestionList();
    sub_1BFA29E68(v114 + *(v53 + 32), v19, &qword_1EBDFB670, &qword_1BFAB1CD0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v10) == 1)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
    }

    else
    {
      v63 = v113;
      (*(v113 + 32))(v14, v19, v10);
      v120 = 64;
      v121 = 0xE100000000000000;
      v64 = sub_1BFAAECF8();
      MEMORY[0x1BFB60B80](v64);

      v54 = v120;
      v55 = v121;
      (*(v63 + 8))(v14, v10);
    }

    v65 = 0xD000000000000012;
    v66 = v118;
    if (*v118 == 1)
    {
      v67 = 0x80000001BFAB8F20;
    }

    else
    {
      v67 = 0x80000001BFAB8F00;
      v65 = 0xD000000000000013;
    }

    v120 = v65;
    v121 = v67;
    MEMORY[0x1BFB60B80](v54, v55);

    v62 = v120;
    v72 = v115;
    (*(v21 + 104))(v115, v110, v52);
    v73 = sub_1BFAAEE98();
    v111(v72, v52);
    if ((v73 & 1) == 0)
    {
      return v62;
    }

    v74 = v116;
    v75 = &v66[*(v116 + 28)];
    v76 = v75[1];
    if (v76)
    {
      v77 = *v75 == 0x6F6C6C65486C6164 && v76 == 0xE800000000000000;
      if (v77 || (sub_1BFAAFF08() & 1) != 0)
      {
        return v62;
      }

      if (qword_1EDCC7470 != -1)
      {
        swift_once();
      }

      v97 = sub_1BFAAF688();
      __swift_project_value_buffer(v97, qword_1EDCC7478);
      v98 = v66;
      v99 = v112;
      sub_1BFA3C644(v98, v112, type metadata accessor for PresentationContext);
      v93 = sub_1BFAAF668();
      v100 = sub_1BFAAFB68();
      if (!os_log_type_enabled(v93, v100))
      {

        sub_1BFA3C6A4(v99, type metadata accessor for PresentationContext);
        return v62;
      }

      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v119 = v102;
      *v101 = 136315138;
      v103 = &v99[*(v74 + 28)];
      v104 = v103[1];
      v120 = *v103;
      v121 = v104;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8F0, &qword_1BFAB1A60);
      v105 = sub_1BFAAF8B8();
      v107 = v106;
      sub_1BFA3C6A4(v99, type metadata accessor for PresentationContext);
      v108 = sub_1BF9F88A8(v105, v107, &v119);

      *(v101 + 4) = v108;
      _os_log_impl(&dword_1BF9F6000, v93, v100, "[warning] Unknown dialogContextId for socialConversation invocation %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v102);
      MEMORY[0x1BFB618C0](v102, -1, -1);
      v96 = v101;
    }

    else
    {
      if (qword_1EDCC7470 != -1)
      {
        swift_once();
      }

      v92 = sub_1BFAAF688();
      __swift_project_value_buffer(v92, qword_1EDCC7478);
      v93 = sub_1BFAAF668();
      v94 = sub_1BFAAFB68();
      if (!os_log_type_enabled(v93, v94))
      {
        goto LABEL_66;
      }

      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_1BF9F6000, v93, v94, "[warning] dialogContextId not set in presentation context", v95, 2u);
      v96 = v95;
    }

    MEMORY[0x1BFB618C0](v96, -1, -1);
LABEL_66:

    return v62;
  }

  v41 = v20;
  if (v36 != *MEMORY[0x1E69D2FC8])
  {
    v49 = v117;
    v48 = v118;
    if (v36 == *MEMORY[0x1E69D2FD0])
    {
      if (qword_1EDCC7470 != -1)
      {
        swift_once();
      }

      v68 = sub_1BFAAF688();
      __swift_project_value_buffer(v68, qword_1EDCC7478);
      v69 = sub_1BFAAF668();
      v70 = sub_1BFAAFB88();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_1BF9F6000, v69, v70, "unknown invocation type detected", v71, 2u);
        MEMORY[0x1BFB618C0](v71, -1, -1);
      }

      goto LABEL_54;
    }

LABEL_49:
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v79 = sub_1BFAAF688();
    __swift_project_value_buffer(v79, qword_1EDCC7478);
    sub_1BFA3C644(v48, v49, type metadata accessor for PresentationContext);
    v80 = sub_1BFAAF668();
    v81 = sub_1BFAAFB88();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = v35;
      v84 = swift_slowAlloc();
      v120 = v84;
      *v82 = 136315138;
      v85 = *(v116 + 20);
      sub_1BFA3C6FC(&qword_1EBDFB9D0, MEMORY[0x1E69D2FE0]);
      v86 = sub_1BFAAFEE8();
      v88 = v87;
      sub_1BFA3C6A4(v49, type metadata accessor for PresentationContext);
      v89 = sub_1BF9F88A8(v86, v88, &v120);

      *(v82 + 4) = v89;
      _os_log_impl(&dword_1BF9F6000, v80, v81, "Found unknown invocation type: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v84);
      v90 = v84;
      v35 = v83;
      MEMORY[0x1BFB618C0](v90, -1, -1);
      MEMORY[0x1BFB618C0](v82, -1, -1);
    }

    else
    {

      sub_1BFA3C6A4(v49, type metadata accessor for PresentationContext);
    }

LABEL_54:
    (*(v21 + 8))(v35, v41);
    return 0;
  }

  (*(v21 + 8))(v35, v20);
  return 0x7070416E69;
}

uint64_t sub_1BFA34664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v89 - v5;
  v7 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B8, &qword_1BFAB2630);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v91 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v93 = v89 - v18;
  v19 = sub_1BFAAEC98();
  v92 = *(v19 - 8);
  v20 = *(v92 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v89 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9C0, &qword_1BFAB2638);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v32 = v89 - v31;
  v97 = sub_1BFAAEDF8();
  v94 = *(v97 - 8);
  v33 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v97, v34);
  v98 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
  if (!v36)
  {
    return v36;
  }

  v95 = v6;
  v96 = v7;
  v90 = v11;
  v37 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v38 = v37[12];
  v39 = sub_1BFAAF1D8();
  sub_1BFA3B310(v39, v40, v36, &selRef_setSuggestionId_);
  v41 = sub_1BFAAF1D8();
  sub_1BFA3B310(v41, v42, v36, &selRef_setLoggingActionId_);
  v43 = [objc_allocWithZone(MEMORY[0x1E69CF730]) init];
  if (!v43)
  {
LABEL_17:
    [v36 setDeliveryVehicle_];
    [v36 setGoal_];
    v58 = a1 + v37[11];
    if ((*v58 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(*v58))
    {
      [v36 setFinalRank_];
      v59 = *(v58 + 8);
      [v36 setGoalSpecificScore_];
      [v36 setFinalScore_];
      [v36 setSuggestionTier_];
      v60 = a1 + v37[6];
      v61 = (v60 + *(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 36));
      v62 = v61[1];
      v63 = v61[2];
      v64 = v61[3];
      v65 = v61[4];
      v66 = v61[5];
      v100 = *v61;
      v101 = v62;
      v102 = v63;
      v103 = v64;
      v104 = v65;
      v105 = v66;
      sub_1BFA3C558(v100, v62, v63);
      *&v72 = COERCE_DOUBLE(sub_1BFA39B60(&v100, v67, v68, v69, v70, v71));
      v74 = v73;
      sub_1BFA3C59C(v100, v101, v102);
      v75 = *&v72;
      if (v74)
      {
        v75 = -1.0;
      }

      [v36 setSmartSuppressionScore_];
      v76 = v95;
      sub_1BFA29E68(a1 + v37[13], v95, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v77 = v96;
      if (__swift_getEnumTagSinglePayload(v76, 1, v96) == 1)
      {
        sub_1BF9FAB40(v76, &qword_1EBDFB9B0, &qword_1BFAB2628);
      }

      else
      {
        v78 = v76;
        v79 = v90;
        sub_1BFA3C5E0(v78, v90);
        [v36 setChannel_];
        [v36 setChannelScore_];
        sub_1BFA3C6A4(v79, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore);
      }

      v80 = v61[1];
      v81 = v61[2];
      v82 = v61[3];
      v83 = v61[4];
      v84 = v61[5];
      v100 = *v61;
      v101 = v80;
      v102 = v81;
      v103 = v82;
      v104 = v83;
      v105 = v84;
      sub_1BFA3C558(v100, v80, v81);
      v85 = sub_1BFA39F00(&v100);
      sub_1BFA3C59C(v100, v101, v102);
      if (v85)
      {
        [v36 setSuppressionResult_];
LABEL_29:

        return v36;
      }

      if (qword_1EDCC7470 == -1)
      {
LABEL_27:
        v86 = sub_1BFAAF688();
        __swift_project_value_buffer(v86, qword_1EDCC7478);
        v85 = sub_1BFAAF668();
        v87 = sub_1BFAAFB88();
        if (os_log_type_enabled(v85, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_1BF9F6000, v85, v87, "no policy result set on the suggestion", v88, 2u);
          MEMORY[0x1BFB618C0](v88, -1, -1);
        }

        goto LABEL_29;
      }

LABEL_42:
      swift_once();
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_42;
  }

  v44 = v43;
  sub_1BF9F94C4(a1 + v37[9], &v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
  type metadata accessor for SignalledOwner();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v45 = v99;
  sub_1BFA60FF4(*(v99 + 64), v32);
  v46 = v97;
  if (__swift_getEnumTagSinglePayload(v32, 1, v97) == 1)
  {

    sub_1BF9FAB40(v32, &qword_1EBDFB9C0, &qword_1BFAB2638);
    goto LABEL_17;
  }

  v89[1] = v45;
  (*(v94 + 32))(v98, v32, v46);
  result = sub_1BFAAEDE8();
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v48 <= -1.0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v48 < 4294967300.0)
  {
    [v44 setDepthFromActiveSignal_];
    sub_1BFAAEDC8();
    sub_1BFAAEC88();
    v92 = *(v92 + 8);
    (v92)(v27, v19);
    v49 = sub_1BFAAF2A8();
    v51 = v50;

    sub_1BFA3B310(v49, v51, v44, &selRef_setSignalValue_);
    sub_1BFAAEDC8();
    sub_1BFAAEC88();
    (v92)(v24, v19);
    sub_1BFAAF298();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9C8, &unk_1BFAB2648);
    v52 = sub_1BFAAEEC8();
    v53 = v93;
    if (swift_dynamicCast())
    {
      v54 = 1;
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
      v55 = v91;
      sub_1BFA29E68(v53, v91, &qword_1EBDFB9B8, &qword_1BFAB2630);
      v56 = *(v52 - 8);
      v57 = (*(v56 + 88))(v55, v52);
      if (v57 == *MEMORY[0x1E69D3040])
      {
LABEL_16:
        [v44 setSignalType_];
        sub_1BF9FAB40(v53, &qword_1EBDFB9B8, &qword_1BFAB2630);
        [v36 setSubscribedSignal_];

        (*(v94 + 8))(v98, v97);
        goto LABEL_17;
      }

      if (v57 == *MEMORY[0x1E69D3038])
      {
        v54 = 2;
        goto LABEL_16;
      }

      if (v57 == *MEMORY[0x1E69D3028])
      {
        v54 = 3;
        goto LABEL_16;
      }

      if (v57 == *MEMORY[0x1E69D3020])
      {
        v54 = 5;
        goto LABEL_16;
      }

      if (v57 == *MEMORY[0x1E69D3048])
      {
        v54 = 4;
        goto LABEL_16;
      }

      if (v57 == *MEMORY[0x1E69D3030])
      {
        v54 = 6;
        goto LABEL_16;
      }

      (*(v56 + 8))(v55, v52);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v53, 1, 1, v52);
    }

    v54 = 0;
    goto LABEL_16;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_1BFA35064(void (*a1)(__int128 *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(type metadata accessor for SiriAutoCompleteSuggestion(0) - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v17, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    ++v6;
    if (v17 != 1)
    {
      v16 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v8 + 16);
        sub_1BFA1F36C();
        v8 = v14;
      }

      v11 = *(v8 + 16);
      v12 = v16;
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_1BFA1F36C();
        v12 = v16;
        v8 = v15;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + 16 * v11 + 32) = v12;
      v6 = v10;
    }
  }
}

uint64_t sub_1BFA351E4(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9A0, &qword_1BFAB2620);
  v7 = OUTLINED_FUNCTION_60_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v42 - v11;
  v13 = sub_1BFAAEDA8();
  v14 = OUTLINED_FUNCTION_2_3(v13);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v48 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v46 = v22;
  v47 = &v42 - v21;
  v23 = 0;
  v24 = *(a3 + 16);
  v49 = (v22 + 32);
  v50 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v24 == v23)
    {
      return v50;
    }

    v25 = sub_1BFAAF6C8();
    OUTLINED_FUNCTION_15(v25);
    a1(a3 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v27 + 72) * v23);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1BF9FAB40(v12, &qword_1EBDFB9A0, &qword_1BFAB2620);
      ++v23;
    }

    else
    {
      v28 = *v49;
      (*v49)(v47, v12, v13);
      v45 = v28;
      v28(v48, v47, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(v50 + 16);
        v34 = OUTLINED_FUNCTION_36_1();
        sub_1BFA1F290(v34, v35, v36, v37);
        v50 = v38;
      }

      v30 = *(v50 + 16);
      v29 = *(v50 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v43 = *(v50 + 16);
        v44 = v30 + 1;
        sub_1BFA1F290(v29 > 1, v30 + 1, 1, v50);
        v30 = v43;
        v31 = v44;
        v50 = v39;
      }

      ++v23;
      v32 = v50;
      *(v50 + 16) = v31;
      v45((v32 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v30), v48, v13);
    }
  }

  v40 = v50;

  return v40;
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAnnouncement(generationId:for:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1BFAAE3F8();
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA3558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF748]) init];
  v16[9] = v17;
  if (v17)
  {
    v18 = v17;
    v19 = v16[5];
    v20 = sub_1BFA30C1C(v16[2]);
    v16[10] = v20;
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
      v16[11] = v22;
      if (v22)
      {
        v23 = v22;
        v24 = [objc_allocWithZone(MEMORY[0x1E69CF768]) init];
        v16[12] = v24;
        if (v24)
        {
          OUTLINED_FUNCTION_46_2();
          [v25 setWasSuppressed_];
          sub_1BFAAFC48();

          a12 = 0xD000000000000014;
          a13 = 0x80000001BFAB8DE0;
          v26 = OUTLINED_FUNCTION_85_0();
          MEMORY[0x1BFB60B80](v26);
          sub_1BFA3B310(0xD000000000000014, 0x80000001BFAB8DE0, v23, &selRef_setSuggestionId_);
          [v23 setDeliveryVehicle_];
          OUTLINED_FUNCTION_92_0([v23 setGoal_], sel_setSuppressionResult_);
          sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
          v27 = OUTLINED_FUNCTION_82_0();
          v28(v27);
          v29 = sub_1BFA30B80(&off_1E80FA000);
          OUTLINED_FUNCTION_73_0(v29, sel_setGenerationId_);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB988, &qword_1BFAB4930);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1BFAB1F20;
          *(v30 + 32) = v23;
          v31 = v23;
          sub_1BFA3B1D0(v30, v18, &qword_1EDCC6400, 0x1E69CF738);
          [v18 setInvocationType_];
          v32 = sub_1BFAAF858();
          OUTLINED_FUNCTION_73_0(v32, sel_setGenerationTag_);

          OUTLINED_FUNCTION_75_0(v33, sel_setSuggestionsGenerated_);
          v34 = *(a11 + 24);
          OUTLINED_FUNCTION_0_5(*(a11 + 16));
          a11 = v35;
          v37 = *(v36 + 4);
          v38 = swift_task_alloc();
          v16[13] = v38;
          *v38 = v16;
          OUTLINED_FUNCTION_45(v38);
          OUTLINED_FUNCTION_12_3();

          return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4();
        }

        v61 = sub_1BFAAF688();
        v57 = OUTLINED_FUNCTION_56(v61, qword_1EDCC7478);
        v62 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v62))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_74_0(&dword_1BF9F6000, v63, v62, "error generating the SUGSchemaSUGSuppressionResult");
          OUTLINED_FUNCTION_94();
        }
      }

      else
      {
        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4();
        }

        v56 = sub_1BFAAF688();
        v57 = OUTLINED_FUNCTION_56(v56, qword_1EDCC7478);
        v58 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v58))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_90_0(&dword_1BF9F6000, v59, v60, "error generating the SUGSchemaSUGSuggestion");
          OUTLINED_FUNCTION_28();
        }
      }
    }

    else
    {
      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4();
      }

      v53 = sub_1BFAAF688();
      v21 = OUTLINED_FUNCTION_56(v53, qword_1EDCC7478);
      v54 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_43_0(v54))
      {
        v55 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_66_0(v55);
        OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v21, v19, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_20_1();
      }
    }
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v48 = sub_1BFAAF688();
    v21 = OUTLINED_FUNCTION_56(v48, qword_1EDCC7478);
    v49 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_43_0(v49))
    {
      v50 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v50);
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v51, v52, "Failed to initialize SUGSchemaSUGSuggestionsGenerated object");
      OUTLINED_FUNCTION_69();
    }
  }

  v64 = v16[8];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_12_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA35A5C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA35B40()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForCrossDomainHint(generationId:for:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1BFAAE3F8();
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA35C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF748]) init];
  v16[9] = v17;
  if (v17)
  {
    v18 = v17;
    v19 = v16[5];
    v20 = sub_1BFA30C1C(v16[2]);
    v16[10] = v20;
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
      v16[11] = v22;
      if (v22)
      {
        v23 = v22;
        v24 = [objc_allocWithZone(MEMORY[0x1E69CF768]) init];
        v16[12] = v24;
        if (v24)
        {
          OUTLINED_FUNCTION_46_2();
          [v25 setWasSuppressed_];
          sub_1BFAAFC48();

          a12 = 0xD000000000000010;
          a13 = 0x80000001BFAB8E20;
          v26 = OUTLINED_FUNCTION_85_0();
          MEMORY[0x1BFB60B80](v26);
          sub_1BFA3B310(0xD000000000000010, 0x80000001BFAB8E20, v23, &selRef_setSuggestionId_);
          [v23 setDeliveryVehicle_];
          OUTLINED_FUNCTION_92_0([v23 setGoal_], sel_setSuppressionResult_);
          sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
          v27 = OUTLINED_FUNCTION_82_0();
          v28(v27);
          v29 = sub_1BFA30B80(&off_1E80FA000);
          OUTLINED_FUNCTION_73_0(v29, sel_setGenerationId_);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB988, &qword_1BFAB4930);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1BFAB1F20;
          *(v30 + 32) = v23;
          v31 = v23;
          sub_1BFA3B1D0(v30, v18, &qword_1EDCC6400, 0x1E69CF738);
          [v18 setInvocationType_];
          v32 = sub_1BFAAF858();
          OUTLINED_FUNCTION_73_0(v32, sel_setGenerationTag_);

          OUTLINED_FUNCTION_75_0(v33, sel_setSuggestionsGenerated_);
          v34 = *(a11 + 24);
          OUTLINED_FUNCTION_0_5(*(a11 + 16));
          a11 = v35;
          v37 = *(v36 + 4);
          v38 = swift_task_alloc();
          v16[13] = v38;
          *v38 = v16;
          OUTLINED_FUNCTION_45(v38);
          OUTLINED_FUNCTION_12_3();

          return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4();
        }

        v61 = sub_1BFAAF688();
        v57 = OUTLINED_FUNCTION_56(v61, qword_1EDCC7478);
        v62 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v62))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_74_0(&dword_1BF9F6000, v63, v62, "error generating the SUGSchemaSUGSuppressionResult");
          OUTLINED_FUNCTION_94();
        }
      }

      else
      {
        if (qword_1EDCC7470 != -1)
        {
          OUTLINED_FUNCTION_4();
        }

        v56 = sub_1BFAAF688();
        v57 = OUTLINED_FUNCTION_56(v56, qword_1EDCC7478);
        v58 = sub_1BFAAFB88();
        if (OUTLINED_FUNCTION_48(v58))
        {
          *OUTLINED_FUNCTION_44_0() = 0;
          OUTLINED_FUNCTION_90_0(&dword_1BF9F6000, v59, v60, "error generating the SUGSchemaSUGSuggestion");
          OUTLINED_FUNCTION_28();
        }
      }
    }

    else
    {
      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4();
      }

      v53 = sub_1BFAAF688();
      v21 = OUTLINED_FUNCTION_56(v53, qword_1EDCC7478);
      v54 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_43_0(v54))
      {
        v55 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_66_0(v55);
        OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v21, v19, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_20_1();
      }
    }
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v48 = sub_1BFAAF688();
    v21 = OUTLINED_FUNCTION_56(v48, qword_1EDCC7478);
    v49 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_43_0(v49))
    {
      v50 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v50);
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v51, v52, "Failed to initialize SUGSchemaSUGSuggestionsGenerated object");
      OUTLINED_FUNCTION_69();
    }
  }

  v64 = v16[8];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_12_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA36134()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA36218(uint64_t a1)
{
  v3 = sub_1BFAAF398();
  v4 = OUTLINED_FUNCTION_2_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_65_0();
  (*(v6 + 16))(v1, a1, v3);
  v10 = *(v6 + 88);
  v11 = OUTLINED_FUNCTION_93();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x1E69CE2B8])
  {
    return 1;
  }

  if (v13 == *MEMORY[0x1E69CE2C0])
  {
    return 2;
  }

  if (v13 == *MEMORY[0x1E69CE2B0])
  {
    return 3;
  }

  if (v13 == *MEMORY[0x1E69CE2D0])
  {
    return 5;
  }

  if (v13 == *MEMORY[0x1E69CE298])
  {
    return 7;
  }

  if (v13 == *MEMORY[0x1E69CE2A0])
  {
    return 8;
  }

  if (v13 == *MEMORY[0x1E69CE2C8])
  {
    return 9;
  }

  if (v13 == *MEMORY[0x1E69CE2A8])
  {
    return 6;
  }

  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_93();
  v17(v16);
  return 0;
}

uint64_t sub_1BFA363D0(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1BFAAE3F8();
  v6 = OUTLINED_FUNCTION_60_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_65_0();
  v10 = [objc_allocWithZone(MEMORY[0x1E69CF738]) init];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69CF740]) init];
  if (!v12)
  {
    v13 = v11;
LABEL_10:

LABEL_11:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v27 = sub_1BFAAF688();
    v28 = OUTLINED_FUNCTION_56(v27, qword_1EDCC7478);
    v29 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_43_0(v29))
    {
      v30 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v30);
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v31, v32, "error generating the SUGSchemaSUGSuggestion/SUGSchemaSUGSuggestionTier1");
      OUTLINED_FUNCTION_69();
    }

    return 0;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E69CF690]) init];
  if (!v14)
  {

    goto LABEL_10;
  }

  v15 = v14;
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  sub_1BFAAE3E8();
  v16 = sub_1BFA30B80(v2);
  [v11 setDeliveryVehicle_];
  v17 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  [v15 setAutoCompleteSuggestionSource_];
  [v11 setAutoCompleteSuggestionMetaData_];
  v18 = *a1;
  v19 = a1[1];
  result = sub_1BFAAF918();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v11 setNumCharactersInSuggestion_];

  v21 = *(sub_1BFA366A8(0x7FFFFFFFFFFFFFFFLL, 1, v18, v19) + 16);

  if (!(v21 >> 31))
  {
    [v11 setNumWordsInSuggestion_];
    v22 = v16;
    OUTLINED_FUNCTION_75_0(v22, sel_setLinkId_);
    v23 = (a1 + *(v17 + 36));
    v24 = *v23;
    v25 = v23[1];
    v26 = sub_1BFAAF858();
    [v13 setSuggestionId_];

    [v13 setLinkId_];
    return v11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1BFA366A8(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(a4) & 0xF) : (v11 = a3 & 0xFFFFFFFFFFFFLL), !v11))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1BFAAF988();
    OUTLINED_FUNCTION_72_0();
    sub_1BFA1F4E8();
    v12 = v27;
    v4 = *(v27 + 16);
    v28 = *(v27 + 24);
LABEL_34:
    v5 = v4 + 1;
    if (v4 < v28 >> 1)
    {
LABEL_35:
      *(v12 + 16) = v5;
      v29 = (v12 + 32 * v4);
      v29[4] = v6;
      v29[5] = v7;
      v29[6] = v8;
      v29[7] = v9;
      return v12;
    }

LABEL_38:
    sub_1BFA1F4E8();
    v12 = v30;
    goto LABEL_35;
  }

  v7 = 4 * v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 15;
  while (1)
  {
    for (i = v13; ; i = sub_1BFAAF928())
    {
      v8 = i >> 14;
      if (i >> 14 == v7)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_57_0();
      sub_1BFAAF978();
      v9 = v15;
      v16 = sub_1BFAAF828();

      if ((v16 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_57_0();
    }

    v18 = (v13 >> 14 == v8) & a2;
    if (v18)
    {
      goto LABEL_19;
    }

    if (v8 < v13 >> 14)
    {
      break;
    }

    v19 = sub_1BFAAF988();
    v34 = v21;
    v35 = v20;
    v33 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = *(v12 + 16);
      OUTLINED_FUNCTION_36_1();
      sub_1BFA1F4E8();
      v12 = v25;
    }

    v8 = *(v12 + 16);
    v9 = v8 + 1;
    if (v8 >= *(v12 + 24) >> 1)
    {
      sub_1BFA1F4E8();
      v12 = v26;
    }

    *(v12 + 16) = v9;
    v23 = (v12 + 32 * v8);
    v23[4] = v19;
    v23[5] = v35;
    v23[6] = v34;
    v23[7] = v33;
LABEL_19:
    OUTLINED_FUNCTION_57_0();
    v13 = sub_1BFAAF928();
    if ((v18 & 1) == 0 && *(v12 + 16) == a1)
    {
LABEL_27:
      if (v13 >> 14 == v7 && (a2 & 1) != 0)
      {

        return v12;
      }

      if (v7 < v13 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1BFAAF988();
        OUTLINED_FUNCTION_72_0();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v4 = *(v12 + 16);
          v28 = *(v12 + 24);
          goto LABEL_34;
        }
      }

      v31 = *(v12 + 16);
      OUTLINED_FUNCTION_36_1();
      sub_1BFA1F4E8();
      v12 = v32;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAutoComplete(typingWindowId:for:query:)()
{
  OUTLINED_FUNCTION_40();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_1BFAAEEF8();
  v1[7] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_100();
  v10 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_15(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_100();
  v14 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v14);
  v16 = *(v15 + 64);
  v1[12] = OUTLINED_FUNCTION_100();
  v17 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BFA36AB0()
{
  v2 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF748]));
  *(v1 + 104) = v2;
  if (!v2)
  {
LABEL_17:
    if (qword_1EDCC7470 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_18;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69CF750]) (v0 + 2936)];
  *(v1 + 112) = v4;
  if (!v4)
  {
    v5 = v3;
LABEL_16:

    goto LABEL_17;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CF688]) (v0 + 2936)];
  *(v1 + 120) = v6;
  if (!v6)
  {

    goto LABEL_16;
  }

  v7 = v6;
  v8 = *(v1 + 96);
  v9 = *(v1 + 48);
  v10 = *(v1 + 16);
  sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
  sub_1BFAAE3E8();
  v11 = sub_1BFA30B80(v8);
  *(v1 + 128) = v11;
  v12 = sub_1BFA308A0(v10);
  *(v1 + 136) = v12;
  if (!v12)
  {
LABEL_21:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v43 = sub_1BFAAF688();
    v38 = OUTLINED_FUNCTION_56(v43, qword_1EDCC7478);
    sub_1BFAAFB88();
    OUTLINED_FUNCTION_35_2();
    if (os_log_type_enabled(v38, v44))
    {
      v45 = OUTLINED_FUNCTION_44_0();
      *v45 = 0;
      _os_log_impl(&dword_1BF9F6000, v38, v9, "error generating the SUGClient Event", v45, 2u);
      OUTLINED_FUNCTION_94();
    }

    goto LABEL_26;
  }

  v13 = v12;
  v14 = *(v1 + 48);
  v15 = sub_1BFA308A0(*(v1 + 16));
  *(v1 + 144) = v15;
  if (!v15)
  {

    goto LABEL_21;
  }

  v82 = v3;
  v77 = v15;
  v78 = v13;
  v79 = v11;
  v80 = v7;
  v81 = v5;
  v16 = *(v1 + 24);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v86 = v1;
  if (v17)
  {
    v19 = *(v1 + 80);
    v20 = *(v1 + 64);
    v21 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v84 = *(v19 + 72);
    v83 = *MEMORY[0x1E69D3060];
    v22 = (v20 + 104);
    v23 = (v20 + 8);
    do
    {
      v24 = v86[11];
      v25 = v86[9];
      v27 = v86[6];
      v26 = v86[7];
      sub_1BFA3C644(v21, v24, type metadata accessor for SiriAutoCompleteSuggestion);
      (*v22)(v25, v83, v26);
      v28 = sub_1BFA363D0(v24, v25);
      v30 = v29;
      (*v23)(v25, v26);
      sub_1BFA3C6A4(v24, type metadata accessor for SiriAutoCompleteSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v18 + 16);
        OUTLINED_FUNCTION_36_1();
        sub_1BFA1F36C();
        v18 = v35;
      }

      v31 = *(v18 + 16);
      v32 = (v31 + 1);
      if (v31 >= *(v18 + 24) >> 1)
      {
        sub_1BFA1F36C();
        v18 = v36;
      }

      *(v18 + 16) = v32;
      v33 = v18 + 16 * v31;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v21 += v84;
      --v17;
    }

    while (v17);
  }

  else
  {
    v32 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v1 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v53 = 16 * v1 + 32;
  while (1)
  {
    if (v32 == v1)
    {
      v1 = 0;
      v88 = v51;
LABEL_39:
      v58 = 16 * v1 + 40;
      while (v32 != v1)
      {
        if (v1 >= *(v18 + 16))
        {
          goto LABEL_53;
        }

        v59 = *(v18 + v58);
        v58 += 16;
        ++v1;
        if (v59)
        {
          v60 = v59;
          MEMORY[0x1BFB60C00]();
          OUTLINED_FUNCTION_24_4(v88);
          if (v57)
          {
            OUTLINED_FUNCTION_22_2(v61);
            sub_1BFAAFA08();
          }

          sub_1BFAAFA38();
          v51 = v88;
          goto LABEL_39;
        }
      }

      v62 = v86[12];
      v64 = v86[4];
      v63 = v86[5];

      sub_1BFA3B1D0(v52, v82, &qword_1EDCC6400, 0x1E69CF738);
      sub_1BFAAE3E8();
      v65 = sub_1BFA30B80(v62);
      [v82 setGenerationId_];

      [v82 setInvocationType_];
      result = sub_1BFAAF918();
      if (result < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (result <= 0x7FFFFFFF)
      {
        v66 = v86[4];
        v67 = v86[5];
        [v80 setNumCharactersInQuery_];

        v68 = *(sub_1BFA366A8(0x7FFFFFFFFFFFFFFFLL, 1, v66, v67) + 16);

        if (!(v68 >> 31))
        {
          v69 = v86[6];
          [v80 setNumWordsInQuery_];
          [v82 setAutoCompleteQuery_];
          v70 = v79;
          [v82 setLinkId_];
          [v78 setSuggestionsGenerated:v82];
          sub_1BFA3B1D0(v51, v81, &qword_1EBDFB9A8, 0x1E69CF740);
          [v81 setLinkId_];

          [v77 setSugGeneratedTier1:v81];
          v71 = *(v69 + 16);
          v86[19] = v71;
          v86[20] = *(v69 + 24);
          OUTLINED_FUNCTION_0_5(v71);
          v85 = v72;
          v74 = *(v73 + 4);
          v75 = swift_task_alloc();
          v86[21] = v75;
          *v75 = v86;
          v76 = OUTLINED_FUNCTION_10_2(v75);

          return v85(v76);
        }

LABEL_57:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_57;
    }

    if (v1 >= *(v18 + 16))
    {
      break;
    }

    v54 = *(v18 + v53);
    v53 += 16;
    ++v1;
    if (v54)
    {
      v55 = v54;
      MEMORY[0x1BFB60C00]();
      OUTLINED_FUNCTION_24_4(v87);
      if (v57)
      {
        OUTLINED_FUNCTION_22_2(v56);
        sub_1BFAAFA08();
      }

      sub_1BFAAFA38();
      v52 = v87;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_4();
LABEL_18:
  v37 = sub_1BFAAF688();
  v38 = OUTLINED_FUNCTION_56(v37, qword_1EDCC7478);
  v39 = sub_1BFAAFB88();
  if (OUTLINED_FUNCTION_91(v39))
  {
    v40 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v40);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v41, v42, "Failed to initialize SUGSchemaSUGSuggestionsGenerated/SUGSchemaSUGSuggestionsGeneratedTier1/SUGSchemaSUGAutoCompleteQuery object");
    OUTLINED_FUNCTION_69();
  }

LABEL_26:

  v47 = *(v1 + 88);
  v46 = *(v1 + 96);
  v48 = *(v1 + 72);

  OUTLINED_FUNCTION_85();

  return v49();
}

uint64_t sub_1BFA371E8()
{
  OUTLINED_FUNCTION_51();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = v1[21];
  v5 = v1[19];
  v6 = v1[18];
  v7 = *v0;
  *v3 = *v0;

  OUTLINED_FUNCTION_18_3();
  v13 = v8;
  v9 = *(v5 + 4);
  v10 = swift_task_alloc();
  v2[22] = v10;
  *v10 = v7;
  v10[1] = sub_1BFA3737C;
  v11 = v1[20];

  return v13(v6);
}

uint64_t sub_1BFA3737C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA37460()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 72);

  OUTLINED_FUNCTION_85();

  return v9();
}

uint64_t DefaultSELFLogger.logUIActivityForAutoComplete(typingWindowId:uiActivity:autoCompleteSuggestions:isZeroTurn:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 144) = v5;
  *(v1 + 16) = v6;
  v7 = sub_1BFAAEEF8();
  *(v1 + 40) = v7;
  OUTLINED_FUNCTION_15(v7);
  *(v1 + 48) = v8;
  v10 = *(v9 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_100();
  v11 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v11);
  v13 = *(v12 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_100();
  *(v1 + 145) = *v3;
  v14 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

void sub_1BFA375D8()
{
  v2 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF758]));
  *(v1 + 72) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69CF760]) (v0 + 2936)];
    *(v1 + 80) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + 64);
      v7 = *(v1 + 32);
      v8 = *(v1 + 16);
      sub_1BFA3C744(0, &qword_1EDCC6FC0, 0x1E69CF640);
      sub_1BFAAE3E8();
      v9 = sub_1BFA30B80(v6);
      *(v1 + 88) = v9;
      v10 = sub_1BFA308A0(v8);
      *(v1 + 96) = v10;
      if (v10)
      {
        v11 = v10;
        v12 = *(v1 + 32);
        v13 = sub_1BFA308A0(*(v1 + 16));
        *(v1 + 104) = v13;
        if (v13)
        {
          v60 = v13;
          v61 = v9;
          v14 = *(v1 + 56);
          v15 = *(v1 + 32);
          v16 = *(v1 + 24);
          if (*(v1 + 144))
          {
            v17 = MEMORY[0x1E69D3050];
          }

          else
          {
            v17 = MEMORY[0x1E69D3060];
          }

          (*(*(v1 + 48) + 104))(*(v1 + 56), *v17, *(v1 + 40));
          v18 = swift_task_alloc();
          *(v18 + 16) = v15;
          *(v18 + 24) = v14;
          sub_1BFA35064(sub_1BFA3B37C, v18, v16);
          v20 = v19;

          v21 = 0;
          v62 = MEMORY[0x1E69E7CC0];
          v22 = *(v20 + 16);
          v23 = MEMORY[0x1E69E7CC0];
LABEL_9:
          v24 = 16 * v21 + 32;
          while (1)
          {
            if (v22 == v21)
            {
              v59 = v23;
              v35 = 0;
              v36 = MEMORY[0x1E69E7CC0];
              for (i = MEMORY[0x1E69E7CC0]; ; v36 = i)
              {
                v37 = 16 * v35 + 40;
                do
                {
                  if (v22 == v35)
                  {
                    v41 = *(v1 + 145);
                    v42 = *(v1 + 56);
                    v43 = *(v1 + 32);

                    [v3 setDeliveryVehicle_];
                    v44 = *(v1 + 32);
                    [v3 setUiActivity_];
                    v45 = v61;
                    [v3 setLinkId_];
                    sub_1BFA3B1D0(v59, v3, &qword_1EDCC6400, 0x1E69CF738);
                    [v11 setUiActivity:v3];
                    [v5 setLinkId_];

                    sub_1BFA3B1D0(v36, v5, &qword_1EBDFB9A8, 0x1E69CF740);
                    [v60 setUiActivityTier1:v5];
                    v46 = *(v44 + 16);
                    *(v1 + 112) = v46;
                    *(v1 + 120) = *(v44 + 24);
                    OUTLINED_FUNCTION_0_5(v46);
                    v48 = *(v47 + 4);
                    v49 = swift_task_alloc();
                    *(v1 + 128) = v49;
                    *v49 = v1;
                    OUTLINED_FUNCTION_10_2(v49);
                    OUTLINED_FUNCTION_47_0();

                    __asm { BRAA            X1, X16 }
                  }

                  if (v35 >= *(v20 + 16))
                  {
                    goto LABEL_41;
                  }

                  v38 = *(v20 + v37);
                  v37 += 16;
                  ++v35;
                }

                while (!v38);
                v39 = v38;
                MEMORY[0x1BFB60C00]();
                OUTLINED_FUNCTION_24_4(i);
                if (v28)
                {
                  OUTLINED_FUNCTION_22_2(v40);
                  sub_1BFAAFA08();
                }

                sub_1BFAAFA38();
              }
            }

            if (v21 >= *(v20 + 16))
            {
              break;
            }

            v25 = *(v20 + v24);
            v24 += 16;
            ++v21;
            if (v25)
            {
              v26 = v25;
              MEMORY[0x1BFB60C00]();
              OUTLINED_FUNCTION_24_4(v62);
              if (v28)
              {
                OUTLINED_FUNCTION_22_2(v27);
                sub_1BFAAFA08();
              }

              sub_1BFAAFA38();
              v23 = v62;
              goto LABEL_9;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          OUTLINED_FUNCTION_4();
LABEL_18:
          v29 = sub_1BFAAF688();
          v30 = OUTLINED_FUNCTION_56(v29, qword_1EDCC7478);
          v31 = sub_1BFAAFB88();
          if (OUTLINED_FUNCTION_91(v31))
          {
            v32 = OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_29(v32);
            OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v33, v34, "Failed to initialize SUGSchemaSUGSuggestionsUIActivity/SUGSchemaSUGSuggestionsUIActivityTier1 object");
            OUTLINED_FUNCTION_69();
          }

          goto LABEL_37;
        }
      }

      if (qword_1EDCC7470 != -1)
      {
        OUTLINED_FUNCTION_4();
      }

      v52 = sub_1BFAAF688();
      v30 = OUTLINED_FUNCTION_56(v52, qword_1EDCC7478);
      sub_1BFAAFB88();
      OUTLINED_FUNCTION_35_2();
      if (os_log_type_enabled(v30, v53))
      {
        *OUTLINED_FUNCTION_44_0() = 0;
        OUTLINED_FUNCTION_74_0(&dword_1BF9F6000, v54, v7, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_94();
      }

LABEL_37:
      v56 = *(v1 + 56);
      v55 = *(v1 + 64);

      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_47_0();

      __asm { BRAA            X1, X16 }
    }
  }

  if (qword_1EDCC7470 == -1)
  {
    goto LABEL_18;
  }

  goto LABEL_42;
}

uint64_t sub_1BFA37B10()
{
  OUTLINED_FUNCTION_51();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = v1[16];
  v5 = v1[14];
  v6 = v1[13];
  v7 = *v0;
  *v3 = *v0;

  OUTLINED_FUNCTION_18_3();
  v13 = v8;
  v9 = *(v5 + 4);
  v10 = swift_task_alloc();
  v2[17] = v10;
  *v10 = v7;
  v10[1] = sub_1BFA37CA4;
  v11 = v1[15];

  return v13(v6);
}

uint64_t sub_1BFA37CA4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA37D88()
{
  OUTLINED_FUNCTION_58();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);

  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_93();
  v10(v9);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);

  OUTLINED_FUNCTION_85();

  return v13();
}

uint64_t DefaultSELFLogger.emitPerfStartMessage(generationId:perfBlock:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  return OUTLINED_FUNCTION_2_0();
}

void sub_1BFA37E58()
{
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v3 = sub_1BFAAF688();
  v4 = __swift_project_value_buffer(v3, qword_1EDCC7478);
  v5 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_35_2();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_51_0();
  v53 = OUTLINED_FUNCTION_32();
  v8 = OUTLINED_FUNCTION_55_0(4.8149e-34);
  switch(v9)
  {
    case 1:
      v10 = 0x6172656E6567;
      goto LABEL_8;
    case 2:
      v10 = 0x756C6F736572;
LABEL_8:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v8 = OUTLINED_FUNCTION_52_1();
      break;
    case 4:
      v8 = OUTLINED_FUNCTION_63_0();
      break;
    default:
      goto LABEL_10;
  }

  while (1)
  {
LABEL_10:
    v11 = sub_1BF9F88A8(v8, v2, &v53);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_20_1();
LABEL_11:

    v17 = *(v0 + 24);
    v18 = sub_1BFA30C1C(*(v0 + 16));
    *(v0 + 32) = v18;
    if (!v18)
    {
      v43 = sub_1BFAAF668();
      v44 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_91(v44))
      {
        v45 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_29(v45);
        OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v46, v47, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_69();
      }

      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_59_0();

      __asm { BRAA            X1, X16 }
    }

    v26 = OUTLINED_FUNCTION_76_0(v18, v19, v20, v21, v22, v23, v24, v25, v50, v51, *v52, *&v52[4], v52[6]);
    OUTLINED_FUNCTION_67_0(v26);
    v28 = sub_1BFA383C8(v27);
    *(v0 + 48) = v28;
    if (v28)
    {
      swift_getObjectType();
      v29 = OUTLINED_FUNCTION_68_2();
      v30(v29);
    }

    if (v1)
    {
      swift_getObjectType();
      v31 = *(v4 + 8);
      v32 = v1;
      v33 = OUTLINED_FUNCTION_53_1();
      v31(v33);

      swift_getObjectType();
      v2 = v4 + 24;
      v34 = *(v4 + 24);
      v35 = v1;
      v36 = OUTLINED_FUNCTION_83_0();
      v34(v36);
    }

    v37 = *(v0 + 24);
    v5 = *(v37 + 24);
    OUTLINED_FUNCTION_0_5(*(v37 + 16));
    v51 = v38;
    v40 = *(v39 + 4);
    v41 = swift_task_alloc();
    *(v0 + 56) = v41;
    *v41 = v0;
    OUTLINED_FUNCTION_45(v41);
    OUTLINED_FUNCTION_59_0();
  }
}

uint64_t sub_1BFA3814C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

Swift::String __swiftcall SELFPerfBlock.description()()
{
  v1 = 0xE500000000000000;
  v2 = 0x6C61746F74;
  switch(*v0)
  {
    case 1:
      v3 = 0x6172656E6567;
      goto LABEL_5;
    case 2:
      v3 = 0x756C6F736572;
LABEL_5:
      v2 = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v1 = 0xE900000000000067;
      v2 = 0x6E697265746C6966;
      break;
    case 4:
      v1 = 0xE700000000000000;
      v2 = 0x676E696B6E6172;
      break;
    default:
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

id sub_1BFA382C4(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6C8]) init];
      break;
    case 2:
      result = [objc_allocWithZone(MEMORY[0x1E69CF718]) init];
      break;
    case 3:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6B0]) init];
      break;
    case 4:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6E0]) init];
      break;
    default:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6F8]) init];
      break;
  }

  return result;
}

id sub_1BFA383C8(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6D8]) init];
      break;
    case 2:
      result = [objc_allocWithZone(MEMORY[0x1E69CF728]) init];
      break;
    case 3:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6C0]) init];
      break;
    case 4:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6F0]) init];
      break;
    default:
      result = [objc_allocWithZone(MEMORY[0x1E69CF710]) init];
      break;
  }

  return result;
}

uint64_t DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  return OUTLINED_FUNCTION_2_0();
}

void sub_1BFA384E8()
{
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v3 = sub_1BFAAF688();
  v4 = __swift_project_value_buffer(v3, qword_1EDCC7478);
  v5 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_35_2();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_51_0();
  v53 = OUTLINED_FUNCTION_32();
  v8 = OUTLINED_FUNCTION_55_0(4.8149e-34);
  switch(v9)
  {
    case 1:
      v10 = 0x6172656E6567;
      goto LABEL_8;
    case 2:
      v10 = 0x756C6F736572;
LABEL_8:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v8 = OUTLINED_FUNCTION_52_1();
      break;
    case 4:
      v8 = OUTLINED_FUNCTION_63_0();
      break;
    default:
      goto LABEL_10;
  }

  while (1)
  {
LABEL_10:
    v11 = sub_1BF9F88A8(v8, v2, &v53);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_20_1();
LABEL_11:

    v17 = *(v0 + 24);
    v18 = sub_1BFA30C1C(*(v0 + 16));
    *(v0 + 32) = v18;
    if (!v18)
    {
      v43 = sub_1BFAAF668();
      v44 = sub_1BFAAFB88();
      if (OUTLINED_FUNCTION_91(v44))
      {
        v45 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_29(v45);
        OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v46, v47, "error generating the SUGClient Event");
        OUTLINED_FUNCTION_69();
      }

      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_59_0();

      __asm { BRAA            X1, X16 }
    }

    v26 = OUTLINED_FUNCTION_76_0(v18, v19, v20, v21, v22, v23, v24, v25, v50, v51, *v52, *&v52[4], v52[6]);
    OUTLINED_FUNCTION_67_0(v26);
    v28 = sub_1BFA38924(v27);
    *(v0 + 48) = v28;
    if (v28)
    {
      swift_getObjectType();
      v29 = OUTLINED_FUNCTION_68_2();
      v30(v29);
    }

    if (v1)
    {
      swift_getObjectType();
      v31 = *(v4 + 16);
      v32 = v1;
      v33 = OUTLINED_FUNCTION_53_1();
      v31(v33);

      swift_getObjectType();
      v2 = v4 + 24;
      v34 = *(v4 + 24);
      v35 = v1;
      v36 = OUTLINED_FUNCTION_83_0();
      v34(v36);
    }

    v37 = *(v0 + 24);
    v5 = *(v37 + 24);
    OUTLINED_FUNCTION_0_5(*(v37 + 16));
    v51 = v38;
    v40 = *(v39 + 4);
    v41 = swift_task_alloc();
    *(v0 + 56) = v41;
    *v41 = v0;
    OUTLINED_FUNCTION_45(v41);
    OUTLINED_FUNCTION_59_0();
  }
}

uint64_t sub_1BFA387DC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA388C0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_85();

  return v3();
}

id sub_1BFA38924(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6D0]) init];
      break;
    case 2:
      result = [objc_allocWithZone(MEMORY[0x1E69CF720]) init];
      break;
    case 3:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6B8]) init];
      break;
    case 4:
      result = [objc_allocWithZone(MEMORY[0x1E69CF6E8]) init];
      break;
    default:
      result = [objc_allocWithZone(MEMORY[0x1E69CF700]) init];
      break;
  }

  return result;
}

uint64_t DefaultSELFLogger.emitSUGSchemaSUGRequestFailed(generationId:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA38A3C()
{
  OUTLINED_FUNCTION_51();
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC7478);
  v3 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_35_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v5);
    OUTLINED_FUNCTION_79_0(&dword_1BF9F6000, v3, v0, "emitting failed message for");
    OUTLINED_FUNCTION_20_1();
  }

  v7 = v1[2];
  v6 = v1[3];

  v8 = sub_1BFA30C1C(v7);
  v1[4] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_78_0(objc_allocWithZone(MEMORY[0x1E69CF6F8]));
    v1[5] = v10;
    v11 = [objc_allocWithZone(MEMORY[0x1E69CF708]) (v6 + 2936)];
    v1[6] = v11;
    if (v11)
    {
      v11 = [v11 setExists_];
    }

    v12 = v1[3];
    OUTLINED_FUNCTION_75_0(v11, sel_setFailed_);
    [v9 setRequestContext:v10];
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    OUTLINED_FUNCTION_0_5(v13);
    v26 = v15;
    v17 = *(v16 + 4);
    v18 = swift_task_alloc();
    v1[7] = v18;
    *v18 = v1;
    OUTLINED_FUNCTION_45(v18);

    return v26(v9);
  }

  else
  {
    v20 = sub_1BFAAF668();
    v21 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v21))
    {
      v22 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v22);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v23, v24, "error generating the SUGClient Event");
      OUTLINED_FUNCTION_69();
    }

    OUTLINED_FUNCTION_85();

    return v25();
  }
}

uint64_t sub_1BFA38C80()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA38D64()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t DefaultSELFLogger.instrument<A>(perfBlock:generationId:invocationType:block:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = v0;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 16) = v9;
  v10 = *(v4 - 8);
  *(v1 + 72) = v10;
  v11 = *(v10 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_109();
  *(v1 + 88) = swift_task_alloc();
  v12 = sub_1BFAAEEA8();
  *(v1 + 96) = v12;
  OUTLINED_FUNCTION_15(v12);
  *(v1 + 104) = v13;
  v15 = *(v14 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_100();
  *(v1 + 195) = *v3;
  v16 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1BFA38ED8()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  (*(v1 + 104))(*(v0 + 112), *MEMORY[0x1E69D2FB8], *(v0 + 96));
  LOBYTE(v2) = sub_1BFAAEE98();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  if (v2)
  {
    v13 = (*(v0 + 40) + **(v0 + 40));
    v6 = *(*(v0 + 40) + 4);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_1BFA390A8;
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);

    return v13(v9);
  }

  else
  {
    *(v0 + 192) = *(v0 + 195);
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_11_4(v11);

    return DefaultSELFLogger.emitPerfStartMessage(generationId:perfBlock:)(v12, (v0 + 192));
  }
}

uint64_t sub_1BFA390A8()
{
  OUTLINED_FUNCTION_43();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[10];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1BFA391EC()
{
  OUTLINED_FUNCTION_51();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = v1[16];
  v5 = v1[5];
  v6 = *v0;
  *v3 = *v0;

  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v6;
  v8[1] = sub_1BFA393A8;
  v9 = v1[10];
  v10 = v1[6];

  return v12(v9);
}

uint64_t sub_1BFA393A8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_1BFA396D0;
  }

  else
  {
    v7 = sub_1BFA394AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA394AC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 195);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v4 + 32);
  *(v0 + 152) = v6;
  *(v0 + 160) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v6(v2, v3, v5);
  *(v0 + 194) = v1;
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_11_4(v7);

  return DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(v8, (v0 + 194));
}

uint64_t sub_1BFA39568()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA3964C()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 160);
  (*(v0 + 152))(*(v0 + 16), *(v0 + 88), *(v0 + 56));
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t sub_1BFA396D0()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 195))
  {
    *(v0 + 193) = *(v0 + 195);
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v2 = OUTLINED_FUNCTION_11_4(v1);

    return DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(v2, (v0 + 193));
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 176) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_11_4(v4);

    return DefaultSELFLogger.emitSUGSchemaSUGRequestFailed(generationId:)(v5);
  }
}

uint64_t sub_1BFA397C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA398AC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA39990()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[18];
  swift_willThrow();
  v2 = v0[18];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA39A10(uint64_t a1)
{
  v2 = sub_1BFAAF318();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69D32B0])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E69D32A8])
  {
    return 3;
  }

  if (v8 == *MEMORY[0x1E69D32A0])
  {
    return 2;
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

uint64_t sub_1BFA39B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 16) && *(*(a1 + 40) + 16))
  {
    v17 = *a1 & 1;
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = *(a1 + 32) & 1;
    v22 = *(a1 + 40);
    PolicyResult.getLeafPolicyResults.getter(a1, a2, a3, a4, a5, a6);
    v7 = (v6 + 64);
    v8 = *(v6 + 16) + 1;
    while (--v8)
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      if (*(v7 - 3) != 0xD000000000000016 || 0x80000001BFAB8EE0 != *(v7 - 2))
      {
        v7 += 48;
        if ((sub_1BFAAFF08() & 1) == 0)
        {
          continue;
        }
      }

      return v9;
    }
  }

  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v12 = sub_1BFAAF688();
  __swift_project_value_buffer(v12, qword_1EDCC7478);
  v13 = sub_1BFAAF668();
  v14 = sub_1BFAAFB68();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BF9F6000, v13, v14, "[warning] Smart Suppression Score not found, returning nil", v15, 2u);
    MEMORY[0x1BFB618C0](v15, -1, -1);
  }

  return 0;
}

uint64_t sub_1BFA39D20(uint64_t a1)
{
  v2 = sub_1BFAAF2E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69D3240])
  {
    v9 = 4;
  }

  else if (v8 == *MEMORY[0x1E69D3250])
  {
    v9 = 7;
  }

  else
  {
    if (v8 == *MEMORY[0x1E69D3248])
    {
      return 1;
    }

    if (v8 == *MEMORY[0x1E69D3230])
    {
      return 2;
    }

    if (v8 == *MEMORY[0x1E69D3258])
    {
      return 3;
    }

    if (v8 == *MEMORY[0x1E69D3220])
    {
      return 5;
    }

    if (v8 == *MEMORY[0x1E69D3238])
    {
      return 6;
    }

    if (v8 == *MEMORY[0x1E69D3228])
    {
      return 8;
    }

    v9 = 0;
  }

  (*(v3 + 8))(v7, v2);
  return v9;
}

void *sub_1BFA39F00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = [objc_allocWithZone(MEMORY[0x1E69CF768]) init];
  v8 = v7;
  if (v7)
  {
    if (v3)
    {
      [v7 setWasSuppressed_];
      if ([v8 wasSuppressed])
      {
        v16[0] = v2 & 1;
        v17 = v1;
        v18 = v3;
        v19 = v4;
        v20 = v6 & 1;
        v21 = v5;
        v14 = sub_1BFA39FE4(v16, v9, v10, v11, v12, v13);
        if ((v14 & 0x100000000) == 0)
        {
          [v8 setSuppressionReason_];
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

unint64_t sub_1BFA39FE4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v8 = *a1;
  if (*a1)
  {
    goto LABEL_32;
  }

  v9 = *(a1 + 5);
  v10 = a1[32];
  v11 = *(a1 + 3);
  v12 = *(a1 + 8);
  v24[0] = 0;
  v25 = v12;
  v26 = v11;
  v27 = v10;
  v28 = v9;
  sub_1BFA3A254(v24, a2, a3, a4, a5, a6, v29);
  v13 = v30;
  if (!v30)
  {
    goto LABEL_32;
  }

  v15 = v29[0];
  v14 = v29[1];

  sub_1BFA3C59C(v15, v14, v13);
  v16 = v14 == 0x6F6F546E776F6873 && v13 == 0xEC0000006E6F6F53;
  if (!v16 && (sub_1BFAAFF08() & 1) == 0)
  {
    v18 = v14 == 0x6F6F546E776F6873 && v13 == 0xEC000000796E614DLL;
    if (v18 || (sub_1BFAAFF08() & 1) != 0)
    {

      v17 = 1;
      goto LABEL_33;
    }

    v19 = v14 == 0x4579646165726C61 && v13 == 0xEE0064656761676ELL;
    if (v19 || (sub_1BFAAFF08() & 1) != 0)
    {

      v17 = 2;
      goto LABEL_33;
    }

    v20 = v14 == 0xD000000000000013 && 0x80000001BFAB8EC0 == v13;
    if (v20 || (sub_1BFAAFF08() & 1) != 0)
    {

      v17 = 4;
      goto LABEL_33;
    }

    if (v14 == 0xD000000000000016 && 0x80000001BFAB8EE0 == v13)
    {
    }

    else
    {
      v22 = sub_1BFAAFF08();

      if ((v22 & 1) == 0)
      {
LABEL_32:
        v17 = 0;
        goto LABEL_33;
      }
    }

    v17 = 12;
    goto LABEL_33;
  }

  v17 = 3;
LABEL_33:
  LOBYTE(v29[0]) = v8;
  return v17 | (v8 << 32);
}

double sub_1BFA3A254@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = *a1;
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = a1[32];
  v14 = *(a1 + 5);
  if (*(v14 + 16))
  {
    v26 = *(a1 + 3);
    v27 = *(a1 + 5);
    PolicyResult.getLeafPolicyResults.getter(v10, a2, a3, a4, a5, a6);
    v16 = v15 + 16;
    v17 = *(v15 + 16) + 1;
    while (--v17)
    {
      v18 = (v16 + 48);
      v19 = *(v16 + 16);
      v16 += 48;
      if ((v19 & 1) == 0)
      {
        v21 = *(v18 - 3);
        v20 = *(v18 - 2);
        v22 = *(v18 - 1);
        v23 = *v18;
        v24 = *(v18 + 1);

        *a7 = 0;
        a7[1] = v21;
        a7[2] = v20;
        a7[3] = v22;
        a7[4] = v23;
        a7[5] = v24;
        return result;
      }
    }

    result = 0.0;
    *(a7 + 1) = 0u;
    *(a7 + 2) = 0u;
    *a7 = 0u;
  }

  else
  {
    *a7 = v9;
    a7[1] = v11;
    a7[2] = v10;
    a7[3] = v12;
    a7[4] = v13;
    a7[5] = v14;
  }

  return result;
}

uint64_t sub_1BFA3A384()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGenerated(generationId:suggestionList:presentationContext:)();
}

uint64_t sub_1BFA3A434()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAnnouncement(generationId:for:)();
}

uint64_t sub_1BFA3A4E4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForCrossDomainHint(generationId:for:)();
}

uint64_t sub_1BFA3A594()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAutoComplete(typingWindowId:for:query:)();
}

uint64_t sub_1BFA3A654()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logRequestLink(requestId:generationId:)();
}

uint64_t sub_1BFA3A6FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logRequestLink(turnId:sugId:)();
}

uint64_t sub_1BFA3A7A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logRequestLink(turnId:generationId:)();
}

uint64_t sub_1BFA3A84C(uint64_t a1, _BYTE *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.emitPerfStartMessage(generationId:perfBlock:)(a1, a2);
}

uint64_t sub_1BFA3A8F4(uint64_t a1, _BYTE *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.emitPerfEndMessage(generationId:perfBlock:)(a1, a2);
}

uint64_t sub_1BFA3A99C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.emitSUGSchemaSUGRequestFailed(generationId:)(a1);
}

uint64_t sub_1BFA3AA34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDE28;

  return DefaultSELFLogger.instrument<A>(perfBlock:generationId:invocationType:block:)();
}

uint64_t sub_1BFA3AB1C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDE28;

  return DefaultSELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(a1, a2, a3, a4);
}

uint64_t sub_1BFA3ABDC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return DefaultSELFLogger.logUIActivityForAutoComplete(typingWindowId:uiActivity:autoCompleteSuggestions:isZeroTurn:)();
}

uint64_t SELFPerfBlock.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

void sub_1BFA3B018(uint64_t a1, uint64_t a2, uint64_t *a3, uint8_t *a4, const char *a5)
{
  if (a1 && (v6 = a4, v8 = *a3, objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) != 0))
  {
    v10 = *v6;

    [v5 v10];
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v11 = sub_1BFAAF688();
    oslog = OUTLINED_FUNCTION_56(v11, qword_1EDCC7478);
    v12 = sub_1BFAAFB88();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v13);
      _os_log_impl(&dword_1BF9F6000, oslog, v12, a5, v6, 2u);
      OUTLINED_FUNCTION_69();
    }
  }
}

uint64_t sub_1BFA3B1A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1BFA3B1D0(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  sub_1BFA3C744(0, a3, a4);
  v5 = sub_1BFAAF9D8();

  [a2 setSuggestions_];
}

uint64_t sub_1BFA3B24C(void *a1)
{
  v1 = [a1 jsonData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BFAAE338();

  return v3;
}

void sub_1BFA3B2B0(uint64_t a1, void *a2)
{
  v3 = sub_1BFAAF9D8();
  [a2 setSuggestionIds_];
}

void sub_1BFA3B310(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1BFAAF858();

  [a3 *a4];
}

uint64_t sub_1BFA3B37C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_1BFA363D0(a1, v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_1BFA3B3C0()
{
  result = qword_1EBDFB990;
  if (!qword_1EBDFB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB990);
  }

  return result;
}

unint64_t sub_1BFA3B418()
{
  result = qword_1EBDFB998;
  if (!qword_1EBDFB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB998);
  }

  return result;
}

uint64_t _s4TierOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UIActivity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of SELFLogger.logSUGSchemaSUGSuggestionsGenerated(generationId:suggestionList:presentationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  v14 = *(OUTLINED_FUNCTION_16(v9, v10, v11, v12, v13) + 8);
  OUTLINED_FUNCTION_15_0();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_41(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_10_2(v19);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_0();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of SELFLogger.logSUGSchemaSUGSuggestionsGeneratedForAnnouncement(generationId:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  v14 = *(OUTLINED_FUNCTION_16(v9, v10, v11, v12, v13) + 16);
  OUTLINED_FUNCTION_15_0();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_41(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_10_2(v19);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_0();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}