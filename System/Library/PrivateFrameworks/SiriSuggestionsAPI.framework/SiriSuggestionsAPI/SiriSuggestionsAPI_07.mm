uint64_t sub_1BFA96940()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_29_5();
  v2(v1);
  sub_1BFAA445C(v0, &qword_1EBDFC180, &qword_1BFAB7640);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA969D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(type metadata accessor for SiriSuggestions.SuggestionList() - 8);
  v8[7] = v9;
  v8[8] = *(v9 + 64);
  v8[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  v8[10] = v10;
  v11 = *(v10 - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  v8[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v14 = sub_1BFAAE3F8();
  v8[16] = v14;
  v15 = *(v14 - 8);
  v8[17] = v15;
  v16 = *(v15 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA96BA8, 0, 0);
}

uint64_t sub_1BFA96BA8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v19 = v0[16];
  v20 = v0[14];
  v4 = v0[11];
  v5 = v0[10];
  v22 = v0[13];
  v23 = v0[9];
  v25 = v0[12];
  v26 = v0[8];
  v6 = v0[3];
  v21 = v0[4];
  v24 = v0[7];
  v7 = v0[2];
  sub_1BFAAE3E8();
  v8 = sub_1BFAAE398();
  v10 = v9;
  v0[19] = v8;
  v0[20] = v9;
  (*(v1 + 8))(v2, v19);
  v11 = *(v4 + 16);
  v11(v3, v7, v5);
  *(v3 + *(v20 + 44)) = v6;
  v12 = (v3 + *(v20 + 48));
  *v12 = v8;
  v12[1] = v10;
  v11(v22, v7, v5);
  sub_1BFAA196C(v21, v23);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v25 + *(v24 + 80) + v13) & ~*(v24 + 80);
  v15 = swift_allocObject();
  v0[21] = v15;
  (*(v4 + 32))(v15 + v13, v22, v5);
  sub_1BFAA1A2C(v23, v15 + v14);

  v16 = OUTLINED_FUNCTION_93();

  return MEMORY[0x1EEE6DFA0](v16, v17, 0);
}

uint64_t sub_1BFA96D6C()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[21];
  v2 = v0[3];
  OUTLINED_FUNCTION_114_1(v0[19], v0[20]);

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA96DE8()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  (*(v0 + 40))(v2);
  sub_1BFAA445C(v2, &qword_1EBDFC128, &qword_1BFAB75C0);

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA96EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  sub_1BFAA196C(a3, &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  return sub_1BFAAFA68();
}

uint64_t sub_1BFA96F7C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_85();

    return v13();
  }
}

uint64_t sub_1BFA97098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA970BC, 0, 0);
}

uint64_t sub_1BFA970BC()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[5];
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50_5(v2);
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  sub_1BFAAF498();
  *v6 = v0;
  v6[1] = sub_1BFA971A8;
  v7 = v0[2];
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_104_1();

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BFA971A8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_85();

    return v13();
  }
}

uint64_t sub_1BFA972C4()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_85();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1BFA97320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  v7[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = sub_1BFAAE3F8();
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA97490, 0, 0);
}

uint64_t sub_1BFA97550()
{
  OUTLINED_FUNCTION_40();
  v0 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_114_1(v0, v1);

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA975C4()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_29_5();
  v2(v1);
  sub_1BFAA445C(v0, &qword_1EBDFC1A0, &qword_1BFAB7688);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA97658(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_1BFAAFA58();
}

uint64_t sub_1BFA976B0()
{
  v0 = type metadata accessor for SiriSuggestions.SuggestionList();
  v1 = *(*(v0 - 1) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v24 - v8;
  v10 = sub_1BFAAE3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v24 - v18;
  __swift_allocate_value_buffer(v0, qword_1EDCC7620);
  v20 = __swift_project_value_buffer(v0, qword_1EDCC7620);
  v21 = sub_1BFAAF288();
  v27[3] = sub_1BFAAECE8();
  v27[4] = sub_1BFA00780(&qword_1EDCC74A8, 255, MEMORY[0x1E69D2F48]);
  v27[0] = v21;
  sub_1BFAAE3E8();
  sub_1BF9F94C4(v27, v26);
  (*(v11 + 16))(v16, v19, v10);
  v22 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v22);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&v25);
  (*(v11 + 8))(v19, v10);
  __swift_destroy_boxed_opaque_existential_2Tm(v27);
  *v4 = v25;
  sub_1BF9F97E4(v26, (v4 + 8));
  (*(v11 + 32))(&v4[v0[6]], v16, v10);
  *&v4[v0[7]] = 0xBFF0000000000000;
  sub_1BFA01D64(v9, &v4[v0[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
  return sub_1BFAA1A2C(v4, v20);
}

uint64_t SiriSuggestionsXPCClient.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_96();
}

id sub_1BFA979D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1BFAAF858();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void *SiriSuggestionsXPCClient.__allocating_init(connection:xpcInterface:)()
{
  OUTLINED_FUNCTION_58_0();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_60_1();
  return SiriSuggestionsXPCClient.init(connection:xpcInterface:)(v0, v1);
}

void *SiriSuggestionsXPCClient.init(connection:xpcInterface:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v2[4] = 0x6E65696C43435058;
  v2[5] = 0xE900000000000074;
  type metadata accessor for ContinuationsManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
  *(v7 + 112) = sub_1BFAAF7D8();
  v2[3] = v7;

  v8 = sub_1BFA97BC8(a1, a2, v7);

  if (v8)
  {
    v2[2] = v8;
  }

  else
  {
    v9 = v2[3];

    v10 = v2[5];

    OUTLINED_FUNCTION_96();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_1BFA97BC8(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() interfaceWithProtocol_];
  [a2 setInterface:v6 forSelector:sel_getSuggestionsForAppWithAppBundleId_placementId_entities_intentsToSuggest_bridge_completionHandler_ argumentIndex:4 ofReply:0];
  [a1 setRemoteObjectInterface_];
  v24 = sub_1BFA9F9EC;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1BFA9F9F8;
  v23 = &block_descriptor_209;
  v7 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler_];
  _Block_release(v7);
  v24 = sub_1BFA9FA3C;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1BFA9F9F8;
  v23 = &block_descriptor_212;
  v8 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler_];
  _Block_release(v8);
  [a1 resume];
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1BFAAF688();
  __swift_project_value_buffer(v9, qword_1EDCC8B70);
  v10 = a1;
  v11 = sub_1BFAAF668();
  v12 = sub_1BFAAFB78();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1BF9F6000, v11, v12, "Established async %@", v13, 0xCu);
    sub_1BFAA445C(v14, &qword_1EBDFBA28, &qword_1BFAB28C0);
    MEMORY[0x1BFB618C0](v14, -1, -1);
    MEMORY[0x1BFB618C0](v13, -1, -1);
  }

  v24 = sub_1BFAA43A4;
  v25 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1BFA9FDF0;
  v23 = &block_descriptor_215;
  v16 = _Block_copy(&aBlock);

  v17 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1BFAAFBF8();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A8, &qword_1BFAB76B8);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BFA97F80(uint64_t a1)
{
  v3 = *v1;
  v2[14] = a1;
  v2[15] = v3;
  v4 = sub_1BFAAEF98();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA98064, 0, 0);
}

uint64_t sub_1BFA98064()
{
  v49 = v0;
  v1 = v0[16];
  v2 = v0[14];
  v3 = sub_1BFAAF7D8();
  if (v2)
  {
    v4 = v0[14];
    if (qword_1EDCC8BC0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v5 = sub_1BFAAF688();
      OUTLINED_FUNCTION_126_0(v5, qword_1EDCC8B70);

      v6 = sub_1BFAAF668();
      v7 = sub_1BFAAFB78();

      v47 = v4;
      v42 = v3;
      if (os_log_type_enabled(v6, v7))
      {
        v8 = OUTLINED_FUNCTION_51_0();
        v9 = OUTLINED_FUNCTION_31_4();
        v48[0] = v9;
        *v8 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
        v10 = sub_1BFAAF7C8();
        v12 = sub_1BF9F88A8(v10, v11, v48);

        *(v8 + 4) = v12;
        OUTLINED_FUNCTION_30_2(&dword_1BF9F6000, v13, v14, "Adding cachedData to supporting call: %s");
        __swift_destroy_boxed_opaque_existential_2Tm(v9);
        v4 = v47;
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_28();
      }

      v46 = v0;
      v15 = v0[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC140, &unk_1BFAB7E40);
      v16 = sub_1BFAAFD28();
      v0 = v16;
      v17 = 0;
      v18 = v4 + 64;
      v19 = 1 << *(v4 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v4 + 64);
      v3 = (v19 + 63) >> 6;
      v43 = v16 + 64;
      v44 = v15;
      v45 = v16;
      if (!v21)
      {
        break;
      }

      while (1)
      {
        v22 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_14:
        v25 = v22 | (v17 << 6);
        v26 = v46[18];
        v27 = v46[16];
        v28 = *(v4 + 56);
        v29 = (*(v4 + 48) + 16 * v25);
        v30 = *v29;
        v4 = v29[1];
        sub_1BFA27F7C(v28 + 48 * v25, (v46 + 2));
        sub_1BFA27F7C((v46 + 2), (v46 + 8));

        sub_1BFAAEF88();
        __swift_destroy_boxed_opaque_existential_2Tm(v46 + 2);
        *(v43 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v0 = v45;
        v31 = (v45[6] + 16 * v25);
        *v31 = v30;
        v31[1] = v4;
        (*(v44 + 32))(v45[7] + *(v44 + 72) * v25, v26, v27);
        v32 = v45[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          break;
        }

        v45[2] = v34;
        v4 = v47;
        if (!v21)
        {
          goto LABEL_9;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      OUTLINED_FUNCTION_5();
    }

LABEL_9:
    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v17 >= v3)
      {
        break;
      }

      v24 = *(v18 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v42;
    sub_1BFAA21EC(v0, sub_1BFAA217C, 0, isUniquelyReferenced_nonNull_native, v48);
    v0 = v46;
  }

  v36 = sub_1BFA98434();
  v38 = v37;

  v39 = v0[18];

  v40 = v0[1];

  return v40(v36, v38);
}

uint64_t sub_1BFA98434()
{
  v0 = sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3(v0);
  swift_allocObject();
  sub_1BFAAE268();
  sub_1BFAAE248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC170, &unk_1BFAB7610);
  sub_1BFAA37F0();
  v1 = sub_1BFAAE258();

  return v1;
}

uint64_t SiriSuggestionsXPCClient.getAutoCompletePhrase(query:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA98510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = v10[6];
  v11 = v10[7];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[3];
  v16 = *(v11 + 24);
  OUTLINED_FUNCTION_78_3();
  v17 = swift_allocObject();
  v10[8] = v17;
  v17[2] = v11;
  v17[3] = v15;
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = v12;
  OUTLINED_FUNCTION_47_5(&dword_1BFAB7200);

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v10[9] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_88_3(v18);
  OUTLINED_FUNCTION_138();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1BFA98614()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    OUTLINED_FUNCTION_85();

    return v13();
  }
}

uint64_t sub_1BFA98730()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_85();
  v3 = *(v0 + 80);

  return v2();
}

void sub_1BFA9878C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = &v16 - v8;
  v17 = *(a2 + 16);
  v10 = sub_1BFAAF858();
  v11 = sub_1BFAAF858();
  sub_1BFA01D14(a1, v9, &qword_1EBDFC1A0, &qword_1BFAB7688);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1BFA01D64(v9, v14 + v12, &qword_1EBDFC1A0, &qword_1BFAB7688);
  *(v14 + v13) = a2;
  aBlock[4] = sub_1BFAA3FAC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFA98B44;
  aBlock[3] = &block_descriptor_197;
  v15 = _Block_copy(aBlock);

  [v17 getAutocompletePhraseWithQuery:v10 using:v11 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1BFA98998(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BFAAF498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = a3;
    sub_1BFA95B60(a3, &qword_1EBDFC1A0, &qword_1BFAB7688, &unk_1F3F0C048, &unk_1BFAB76A8, v14, v15, v16, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11]);
  }

  v17 = *(a5 + 16);
  swift_getObjectType();
  sub_1BFAA7830();
  sub_1BFA94DC0(v12);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1BFA98B44(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = sub_1BFAAE338();
  v10 = v9;

  v11 = a3;
  v6(v8, v10, a3);

  sub_1BF9FDC2C(v8, v10);
}

uint64_t SiriSuggestionsXPCClient.getSuggestionsForApp(for:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB90, &qword_1BFAB3AB0);
  v1[5] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_100();
  v8 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BFA98CA0()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  *(swift_task_alloc() + 16) = *(v0 + 24);
  type metadata accessor for SiriSuggestions.SuggestionList();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_1BFAAFB38();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_136();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1BFA98D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v5 = sub_1BFAAEF58();
  v73 = *(v5 - 1);
  v74 = v5;
  v6 = *(v73 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v65 - v11;
  v13 = sub_1BFAAED58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v20 = *(v19 - 8);
  v68 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v65 - v22;
  type metadata accessor for ContinuationBasedXPCBridge();
  v70 = v20;
  v24 = *(v20 + 16);
  v77 = v19;
  v78 = a1;
  v66 = v24;
  v67 = v20 + 16;
  v24(v23, a1, v19);
  v69 = v23;
  v25 = sub_1BFA99520();
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v26 = sub_1BFAAF688();
  v27 = __swift_project_value_buffer(v26, qword_1EDCC8B70);
  v28 = *(v14 + 16);
  v75 = a2;
  v28(v18, a2, v13);
  v71 = v27;
  v29 = sub_1BFAAF668();
  v30 = sub_1BFAAFB78();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v65 = v12;
    v32 = v31;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315138;
    sub_1BFA00780(&qword_1EDCC7030, 255, MEMORY[0x1E69D2F60]);
    v34 = sub_1BFAAFEE8();
    v35 = v25;
    v37 = v36;
    (*(v14 + 8))(v18, v13);
    v38 = sub_1BF9F88A8(v34, v37, aBlock);
    v25 = v35;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_1BF9F6000, v29, v30, "Making XPC request for in app suggestions for: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v33);
    MEMORY[0x1BFB618C0](v33, -1, -1);
    v39 = v32;
    v12 = v65;
    MEMORY[0x1BFB618C0](v39, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v18, v13);
  }

  v65 = *(v76 + 16);
  sub_1BFAAED28();
  sub_1BFAAEF28();
  v40 = v74;
  v41 = *(v73 + 8);
  v41(v12, v74);
  v42 = sub_1BFAAF858();

  v43 = v72;
  sub_1BFAAED28();
  sub_1BFAAEF38();
  v45 = v44;
  v46 = (v41)(v43, v40);
  if (v45)
  {
    v47 = sub_1BFAAF858();
  }

  else
  {
    v47 = 0;
  }

  v48 = MEMORY[0x1BFB5FF80](v46);
  v49 = sub_1BFA99670(v48);
  v51 = v50;
  v74 = v25;

  v52 = sub_1BFAAE328();
  sub_1BF9FDC2C(v49, v51);
  v53 = sub_1BFAAED38();
  v54 = sub_1BFA998D8(v53);
  v56 = v55;

  if (v56 >> 60 == 15)
  {
    v57 = 0;
  }

  else
  {
    v57 = sub_1BFAAE328();
    sub_1BFA1B9DC(v54, v56);
  }

  v58 = v69;
  v59 = v77;
  v66(v69, v78, v77);
  v60 = v70;
  v61 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v62 = swift_allocObject();
  (*(v60 + 32))(v62 + v61, v58, v59);
  aBlock[4] = sub_1BFAA3CE8;
  aBlock[5] = v62;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFAA4518;
  aBlock[3] = &block_descriptor_182;
  v63 = _Block_copy(aBlock);
  v64 = v74;

  [v65 getSuggestionsForAppWithAppBundleId:v42 placementId:v47 entities:v52 intentsToSuggest:v57 bridge:v64 completionHandler:v63];

  _Block_release(v63);
}

id sub_1BFA99520()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  OUTLINED_FUNCTION_2_3(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  v11 = *(v4 + 16);
  v12 = OUTLINED_FUNCTION_93();
  v13(v12);
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC190, &qword_1BFAB7668));
  v15 = sub_1BFAA0654(v10, sub_1BFAA1544, 0);
  v16 = objc_allocWithZone(v1);
  *&v16[OBJC_IVAR____TtC18SiriSuggestionsAPI26ContinuationBasedXPCBridge_baseBridge] = v15;
  v22.receiver = v16;
  v22.super_class = v1;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_46();
  v20(v19);
  return v17;
}

uint64_t sub_1BFA99670(uint64_t a1)
{
  v33 = sub_1BFAAEF98();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v33, v4);
  v31 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC140, &unk_1BFAB7E40);
  result = sub_1BFAAFD28();
  v7 = result;
  v8 = 0;
  v36 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v2;
  v29[1] = v2 + 32;
  v30 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v36 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_1BFA27F7C(*(v36 + 56) + 48 * v19, v35);
      sub_1BFA27F7C(v35, v34);

      v23 = v31;
      sub_1BFAAEF88();
      __swift_destroy_boxed_opaque_existential_2Tm(v35);
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (v7[6] + 16 * v19);
      *v24 = v21;
      v24[1] = v22;
      result = (*(v32 + 32))(v7[7] + *(v32 + 72) * v19, v23, v33);
      v25 = v7[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v7[2] = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        v28 = sub_1BFA98434();

        return v28;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA998D8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1BFAAE278();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1BFAAE268();
  sub_1BFAAE248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB600, &qword_1BFAB7660);
  sub_1BFAA3D10();
  v4 = sub_1BFAAE258();

  return v4;
}

void *sub_1BFA999A4(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC8B70);
    v4 = v1;
    v5 = sub_1BFAAF668();
    v6 = sub_1BFAAFB88();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
      v10 = sub_1BFAAF8B8();
      v12 = sub_1BF9F88A8(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1BF9F6000, v5, v6, "Cannot provide in app suggestions because of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v8);
      MEMORY[0x1BFB618C0](v8, -1, -1);
      MEMORY[0x1BFB618C0](v7, -1, -1);
    }

    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
    return sub_1BFAAFAD8();
  }

  return result;
}

uint64_t SiriSuggestionsXPCClient.disconnect(for:)()
{
  OUTLINED_FUNCTION_40();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BFAAEF58();
  v1[4] = v3;
  OUTLINED_FUNCTION_15(v3);
  v1[5] = v4;
  v1[6] = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_100();
  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA99C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = v10[7];
  v12 = v10[4];
  v13 = v10[5];
  v14 = v10[3];
  v15 = *(v14 + 24);
  (*(v13 + 16))(v11, v10[2], v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v10[8] = v17;
  *(v17 + 16) = v14;
  (*(v13 + 32))(v17 + v16, v11, v12);
  OUTLINED_FUNCTION_47_5(&dword_1BFAB7220);

  v18 = swift_task_alloc();
  v10[9] = v18;
  *v18 = v10;
  v18[1] = sub_1BFA99D38;
  OUTLINED_FUNCTION_138();

  return v19(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1BFA99D38()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA99E38()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_85();

  return v2();
}

void sub_1BFA99E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BFAAEF58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = *(a2 + 16);
  sub_1BFAAEF28();
  v10 = sub_1BFAAF858();

  sub_1BFAAEF38();
  if (v11)
  {
    v12 = sub_1BFAAF858();
  }

  else
  {
    v12 = 0;
  }

  (*(v6 + 16))(&aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v24 = sub_1BFAA3AAC;
  v25 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1BFAA4518;
  v23 = &block_descriptor_171;
  v15 = _Block_copy(&aBlock);

  [v9 disconnectForAppWithAppBundleId:v10 placementId:v12 completionHandler:v15];
  _Block_release(v15);

  sub_1BFA95044(&qword_1EBDFC180, &qword_1BFAB7640, &unk_1F3F0BF08, &unk_1BFAB7650, v16, v17, v18, v19, aBlock, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
}

void sub_1BFA9A0C4(void *a1, uint64_t a2)
{
  v4 = sub_1BFAAEF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v11 = sub_1BFAAF688();
    __swift_project_value_buffer(v11, qword_1EDCC8B70);
    (*(v5 + 16))(v9, a2, v4);
    v12 = a1;
    v13 = sub_1BFAAF668();
    v14 = sub_1BFAAFB88();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315394;
      sub_1BFA00780(&qword_1EBDFC188, 255, MEMORY[0x1E69D30D0]);
      v17 = sub_1BFAAFEE8();
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      v20 = sub_1BF9F88A8(v17, v19, &v26);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v25 = a1;
      v21 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
      v22 = sub_1BFAAF8B8();
      v24 = sub_1BF9F88A8(v22, v23, &v26);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_1BF9F6000, v13, v14, "Unable to disconnect from %s. Remote Error: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v16, -1, -1);
      MEMORY[0x1BFB618C0](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t SiriSuggestionsXPCClient.getSuggestionsForIntents(for:)()
{
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_1BFAAFC98();
  v1[9] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[10] = v5;
  v7 = *(v6 + 64);
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v8 = sub_1BFAAFCB8();
  v1[13] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_100();
  v12 = type metadata accessor for SiriSuggestions.SuggestionList();
  v1[16] = v12;
  OUTLINED_FUNCTION_60_0(v12);
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_100();
  v15 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BFA9A4EC()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[7];
  v2 = sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3(v2);
  swift_allocObject();
  v0[18] = sub_1BFAAE268();
  sub_1BFAAE248();
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC100, &unk_1BFAB7230);
  sub_1BFAA18B4();
  OUTLINED_FUNCTION_46();
  v0[19] = sub_1BFAAE258();
  v0[20] = v3;
  if (qword_1EDCC7618 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[8];
  v7 = __swift_project_value_buffer(v0[16], qword_1EDCC7620);
  sub_1BFAA196C(v7, v4);
  sub_1BFAAFCA8();

  v8 = OUTLINED_FUNCTION_95_0();
  sub_1BFA006A8(v8, v9);
  v10 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9A7B8()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  OUTLINED_FUNCTION_40_5();
  v0[21] = sub_1BFA00780(v4, 255, v5);
  sub_1BFAAFF48();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1BFA9A898;
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[8];
  v10 = OUTLINED_FUNCTION_53(v0[17]);

  return sub_1BFA9AEC8(v10, v11, v12, v13);
}

uint64_t sub_1BFA9A898()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[23] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[12], v3[9]);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA9A9A8()
{
  v1 = *(v0 + 168);
  v21 = *(v0 + 152);
  v22 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  sub_1BFAAFF48();
  OUTLINED_FUNCTION_39_8();
  v12 = sub_1BFA00780(v10, 255, v11);
  OUTLINED_FUNCTION_86_3(v12);
  v13 = *(v6 + 8);
  v13(v7, v8);
  v13(v5, v8);

  sub_1BF9FDC2C(v21, v22);
  *(v0 + 192) = *(v0 + 16);
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_46();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BFA9AAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_72();
  a18 = v20;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v23 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v23, qword_1EDCC8B70);
  v24 = sub_1BFAAF668();
  v25 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v25))
  {
    v27 = v20[24];
    v26 = v20[25];
    v29 = v20[19];
    v28 = v20[20];
    v30 = v20[18];
    v31 = OUTLINED_FUNCTION_51_0();
    v32 = OUTLINED_FUNCTION_31_4();
    a9 = v32;
    *v31 = 136315138;
    v33 = sub_1BFAB0018();
    v35 = sub_1BF9F88A8(v33, v34, &a9);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1BF9F6000, v24, v25, "Obtaining suggestions took: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v32);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
    v36 = v29;
    v37 = v28;
  }

  else
  {
    v36 = v20[19];
    v37 = v20[20];
    v38 = v20[18];
  }

  sub_1BF9FDC2C(v36, v37);

  sub_1BFAA1A2C(v20[17], v20[6]);
  OUTLINED_FUNCTION_83_3();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_1();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_1BFA9AC50()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[8];

  v7 = OUTLINED_FUNCTION_96();
  sub_1BF9FDC2C(v7, v8);
  (*(v4 + 8))(v3, v5);
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA9ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_141();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_58();
  a16 = v18;
  v21 = v18[17];
  v22 = v18[18];
  sub_1BF9FDC2C(v18[19], v18[20]);

  sub_1BFAA19D0(v21);
  v23 = v18[23];
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v24 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v24, qword_1EDCC8B70);
  v25 = v23;
  v26 = sub_1BFAAF668();
  v27 = sub_1BFAAFB88();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_51_0();
    v29 = OUTLINED_FUNCTION_31_4();
    a9 = v29;
    *v28 = 136315138;
    v18[5] = v23;
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v31 = sub_1BFAAF8B8();
    v33 = sub_1BF9F88A8(v31, v32, &a9);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1BF9F6000, v26, v27, "Unable to get suggestions from remote service. %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v29);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_94();
  }

  if (qword_1EDCC7618 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v34 = v18[6];
  v35 = __swift_project_value_buffer(v18[16], qword_1EDCC7620);
  sub_1BFAA196C(v35, v34);

  OUTLINED_FUNCTION_83_3();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_138();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1BFA9AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for SiriSuggestions.SuggestionList() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA9AF5C, 0, 0);
}

uint64_t sub_1BFA9AF5C()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  OUTLINED_FUNCTION_89_4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = OUTLINED_FUNCTION_96();
  sub_1BFA006A8(v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[8] = v7;
  *v7 = v8;
  v7[1] = sub_1BFA9B044;
  v9 = v0[6];
  v10 = v0[3];

  return sub_1BFA9B318(v9, sub_1BFAA38B0, v4);
}

uint64_t sub_1BFA9B044()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9B144()
{
  OUTLINED_FUNCTION_40();
  sub_1BFAA33F0(*(v0 + 48), *(v0 + 16));

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA9B1B0()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_85();
  v4 = v0[9];

  return v3();
}

void sub_1BFA9B214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_1BFAAE328();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_1BFAA38BC;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BFA98B44;
  v9[3] = &block_descriptor_156;
  v8 = _Block_copy(v9);

  [v5 getSuggestionsForIntentsWithIntentQueries:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1BFA9B318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1BFA9B364, 0, 0);
}

uint64_t sub_1BFA9B364()
{
  OUTLINED_FUNCTION_58();
  v1 = *(v0[5] + 24);
  if (qword_1EDCC7618 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for SiriSuggestions.SuggestionList();
  v6 = __swift_project_value_buffer(v5, qword_1EDCC7620);
  OUTLINED_FUNCTION_89_4();
  v7 = swift_allocObject();
  v0[7] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[8] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_88_3(v8);

  return (sub_1BFA961D0)(v10, v6, sub_1BFAA3454, v7);
}

uint64_t sub_1BFA9B4A4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)()
{
  OUTLINED_FUNCTION_40();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_1BFAAFC98();
  v1[10] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_109();
  v1[13] = swift_task_alloc();
  v10 = sub_1BFAAFCB8();
  v1[14] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[15] = v11;
  v13 = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_100();
  v14 = type metadata accessor for SiriSuggestions.SuggestionList();
  v1[17] = v14;
  OUTLINED_FUNCTION_60_0(v14);
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_100();
  v17 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BFA9B6CC()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v1 = sub_1BFAAF688();
  v0[19] = __swift_project_value_buffer(v1, qword_1EDCC8B70);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v4);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_69();
  }

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1BFA9B7DC;
  v11 = v0[9];
  v12 = OUTLINED_FUNCTION_53(v0[8]);

  return sub_1BFA97F80(v12);
}

uint64_t sub_1BFA9B7DC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 160);
  v10 = *v0;
  *(v2 + 168) = v4;
  *(v2 + 176) = v5;

  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA9B8CC()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  if (v0[22] >> 60 == 15)
  {
    v1 = v0[19];
    v2 = sub_1BFAAF668();
    v3 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v3))
    {
      v4 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v4);
      OUTLINED_FUNCTION_39_0();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_69();
    }

    if (qword_1EDCC7618 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v10 = v0[5];
    v11 = __swift_project_value_buffer(v0[17], qword_1EDCC7620);
    sub_1BFAA196C(v11, v10);
    OUTLINED_FUNCTION_81_3();

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_136();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    if (qword_1EDCC7618 != -1)
    {
      OUTLINED_FUNCTION_1_11();
      v33 = v0[22];
    }

    v21 = v0[21];
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[9];
    v25 = v0[7];
    v26 = __swift_project_value_buffer(v0[17], qword_1EDCC7620);
    v0[23] = v26;
    sub_1BFAA196C(v26, v22);
    sub_1BFAAFCA8();

    v27 = OUTLINED_FUNCTION_96();
    sub_1BFA1B9C8(v27, v28);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_136();

    return MEMORY[0x1EEE6DFA0](v29, v30, v31);
  }
}

uint64_t sub_1BFA9BA74()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  OUTLINED_FUNCTION_40_5();
  v0[24] = sub_1BFA00780(v4, 255, v5);
  sub_1BFAAFF48();
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1BFA9BB58;
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v12 = OUTLINED_FUNCTION_53(v0[18]);

  return sub_1BFA9C100(v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BFA9BB58()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[13], v3[10]);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA9BC68()
{
  v1 = *(v0 + 192);
  v22 = *(v0 + 168);
  v23 = *(v0 + 176);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v21 = *(v0 + 56);
  v9 = *(v0 + 128);
  sub_1BFAAFF48();
  OUTLINED_FUNCTION_39_8();
  v12 = sub_1BFA00780(v10, 255, v11);
  OUTLINED_FUNCTION_86_3(v12);
  v13 = *(v5 + 8);
  v13(v6, v7);
  v13(v4, v7);

  sub_1BFA1B9DC(v22, v23);
  *(v0 + 216) = *(v0 + 16);
  v14 = *(v2 + 8);
  v15 = OUTLINED_FUNCTION_46();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BFA9BDA0()
{
  OUTLINED_FUNCTION_72();
  v20 = v0;
  v1 = v0[19];
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v3))
  {
    v5 = v0[27];
    v4 = v0[28];
    v7 = v0[21];
    v6 = v0[22];
    v8 = OUTLINED_FUNCTION_51_0();
    v9 = OUTLINED_FUNCTION_31_4();
    v19 = v9;
    *v8 = 136315138;
    OUTLINED_FUNCTION_28_6();
    v10 = sub_1BFAB0018();
    v12 = sub_1BF9F88A8(v10, v11, &v19);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_30_2(&dword_1BF9F6000, v13, v14, "Obtaining suggestions took: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v9);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_28();
    v15 = OUTLINED_FUNCTION_60_1();
  }

  else
  {
    v15 = v0[21];
    v16 = v0[22];
  }

  sub_1BFA1B9DC(v15, v16);

  sub_1BFAA1A2C(v0[18], v0[5]);
  OUTLINED_FUNCTION_81_3();

  OUTLINED_FUNCTION_85();

  return v17();
}

uint64_t sub_1BFA9BEDC()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[7];

  v8 = OUTLINED_FUNCTION_96();
  sub_1BFA1B9DC(v8, v9);
  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_136();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9BF78()
{
  OUTLINED_FUNCTION_58();
  v26 = v0;
  v1 = v0[26];
  v2 = v0[19];
  sub_1BFAA19D0(v0[18]);
  v3 = v1;
  v4 = sub_1BFAAF668();
  v5 = sub_1BFAAFB88();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = OUTLINED_FUNCTION_51_0();
    v8 = OUTLINED_FUNCTION_31_4();
    v25 = v8;
    *v7 = 136315138;
    v0[4] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v10 = sub_1BFAAF8B8();
    v12 = sub_1BF9F88A8(v10, v11, &v25);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v8);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_69();
  }

  v18 = v0[26];
  v19 = v0[22];
  v20 = v0[21];
  sub_1BFAA196C(v0[23], v0[5]);

  v21 = OUTLINED_FUNCTION_60_1();
  sub_1BFA1B9DC(v21, v22);
  OUTLINED_FUNCTION_81_3();

  OUTLINED_FUNCTION_85();

  return v23();
}

uint64_t sub_1BFA9C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(type metadata accessor for SiriSuggestions.SuggestionList() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA9C198, 0, 0);
}

uint64_t sub_1BFA9C198()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_78_3();
  v6 = swift_allocObject();
  v0[9] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  v6[6] = v2;

  v7 = OUTLINED_FUNCTION_96();
  sub_1BFA006A8(v7, v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[10] = v9;
  *v9 = v10;
  v9[1] = sub_1BFA9C290;
  v11 = v0[8];
  v12 = v0[3];
  OUTLINED_FUNCTION_136();

  return sub_1BFA9B318(v13, v14, v15);
}

uint64_t sub_1BFA9C290()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9C390()
{
  OUTLINED_FUNCTION_40();
  sub_1BFAA33F0(*(v0 + 64), *(v0 + 16));

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA9C3FC()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_85();
  v4 = v0[11];

  return v3();
}

void sub_1BFA9C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_1BFAAF858();
  v7 = sub_1BFAAE328();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_1BFAA452C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BFA98B44;
  v10[3] = &block_descriptor_145;
  v9 = _Block_copy(v10);

  [v5 suggestNextWithRequestId:v6 extraStateStoreProperties:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1BFA9C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v5 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v5, qword_1EDCC8B70);
  v6 = sub_1BFAAF668();
  v7 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v7))
  {
    v8 = OUTLINED_FUNCTION_44_0();
    *v8 = 0;
    _os_log_impl(&dword_1BF9F6000, v6, v7, "xpc connection executing suggestNext() to get next suggestions", v8, 2u);
    OUTLINED_FUNCTION_94();
  }

  v9 = OUTLINED_FUNCTION_95_0();
  return a4(v9);
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:properties:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1BFAAF648();
  v1[6] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_100();
  v9 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA9C710()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[8];
  v2 = sub_1BFAAF258();
  sub_1BFAAF238();

  v3 = sub_1BFAAF258();
  sub_1BFAAF268();

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1BFA9C7E0;
  v5 = v0[5];
  v6 = OUTLINED_FUNCTION_53(v0[4]);

  return sub_1BFA97F80(v6);
}

uint64_t sub_1BFA9C7E0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 72);
  v10 = *v0;
  *(v2 + 80) = v4;
  *(v2 + 88) = v5;

  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA9C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = v10[11];
  if (v11 >> 60 == 15)
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v12 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v12, qword_1EDCC8B70);
    v13 = sub_1BFAAF668();
    v14 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_91(v14))
    {
      v15 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_29(v15);
      OUTLINED_FUNCTION_39_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_69();
    }

    v22 = v10[7];
    v21 = v10[8];
    v23 = v10[6];
    v24 = sub_1BFAAF258();
    OUTLINED_FUNCTION_62_2();

    v25 = *(v22 + 8);
    v26 = OUTLINED_FUNCTION_93();
    v27(v26);

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_138();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  else
  {
    v37 = v10[10];
    v38 = v10[5];
    v40 = v10[2];
    v39 = v10[3];
    v41 = *(v38 + 24);
    OUTLINED_FUNCTION_78_3();
    v42 = swift_allocObject();
    v10[12] = v42;
    v42[2] = v38;
    v42[3] = v40;
    v42[4] = v39;
    v42[5] = v37;
    v42[6] = v11;

    v43 = OUTLINED_FUNCTION_60_1();
    sub_1BFA1B9C8(v43, v44);
    v45 = swift_task_alloc();
    v10[13] = v45;
    *v45 = v10;
    v45[1] = sub_1BFA9CAD4;
    OUTLINED_FUNCTION_138();

    return v46(v46, v47, v48, v49, v50, v51, v52, v53, sub_1BFA007C8, a10);
  }
}

uint64_t sub_1BFA9CAD4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9CBD4()
{
  OUTLINED_FUNCTION_43();
  sub_1BFA1B9DC(v0[10], v0[11]);
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_1BFAAF258();
  OUTLINED_FUNCTION_62_2();

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);

  OUTLINED_FUNCTION_85();

  return v8();
}

uint64_t sub_1BFA9CC7C()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_1BFA1B9DC(v0[10], v0[11]);

  v5 = sub_1BFAAF258();
  sub_1BFAAF248();

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_46();
  v8(v7);

  OUTLINED_FUNCTION_85();
  v10 = v0[14];

  return v9();
}

uint64_t sub_1BFA9CD3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v20 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v15 = &v19 - v14;
  sub_1BFA01D14(a1, &v19 - v14, &qword_1EBDFC118, &qword_1BFAB7550);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_1BFA01D64(v15, v17 + v16, &qword_1EBDFC118, &qword_1BFAB7550);
  sub_1BFA9CE9C(a3, a4, a5, v20, sub_1BFAA3300, v17);
}

void sub_1BFA9CE9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1BFAAF688();
  __swift_project_value_buffer(v14, qword_1EDCC8B70);

  sub_1BFA006A8(a3, a4);
  v15 = sub_1BFAAF668();
  v16 = sub_1BFAAFB78();

  sub_1BF9FDC2C(a3, a4);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v17 = 136315394;
    *(v17 + 4) = sub_1BF9F88A8(a1, a2, aBlock);
    *(v17 + 12) = 2080;
    v18 = sub_1BFAAE318();
    v20 = a5;
    v21 = sub_1BF9F88A8(v18, v19, aBlock);

    *(v17 + 14) = v21;
    a5 = v20;
    _os_log_impl(&dword_1BF9F6000, v15, v16, "Calling Suggestions XPC service submit on request: %s, with stateStoreProperties: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB618C0](v27, -1, -1);
    MEMORY[0x1BFB618C0](v17, -1, -1);
  }

  else
  {
  }

  v22 = *(v7 + 16);
  v23 = sub_1BFAAF858();
  v24 = sub_1BFAAE328();
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  aBlock[4] = sub_1BFAA3380;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFAA4518;
  aBlock[3] = &block_descriptor_115;
  v26 = _Block_copy(aBlock);

  [v22 submitFor:v23 stateStoreProperties:v24 completion:v26];
  _Block_release(v26);
}

void sub_1BFA9D190(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1BFA9D1FC(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v16 - v11;
  sub_1BFA01D14(a1, &v16 - v11, &qword_1EBDFC128, &qword_1BFAB75C0);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1BFA01D64(v12, v14 + v13, &qword_1EBDFC128, &qword_1BFAB75C0);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  a2(sub_1BFAA36B0, v14);
}

void sub_1BFA9D354(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v51 = a5;
  v53 = a4;
  v49 = a1;
  v6 = sub_1BFAAECD8();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BFAAE8E8();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BFAAE8B8();
  v48 = *(v16 - 8);
  v17 = *(v48 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = v45 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v45 - v27;
  v52 = type metadata accessor for SiriSuggestions.SuggestionList();
  v29 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52, v30);
  v32 = v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v33 = a3;
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v34 = sub_1BFAAF688();
    __swift_project_value_buffer(v34, qword_1EDCC8B70);
    v35 = a3;
    v36 = sub_1BFAAF668();
    v37 = sub_1BFAAFB88();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54 = a3;
      v55 = v39;
      *v38 = 136315138;
      v40 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
      v41 = sub_1BFAAF8B8();
      v43 = sub_1BF9F88A8(v41, v42, &v55);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1BF9F6000, v36, v37, "Cannot provide next suggestions because of %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v39);
      MEMORY[0x1BFB618C0](v39, -1, -1);
      MEMORY[0x1BFB618C0](v38, -1, -1);
    }

    if (qword_1EDCC7618 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v52, qword_1EDCC7620);
    sub_1BFA951AC(v44);
  }

  else
  {
    v45[4] = v28;
    v45[5] = v6;
    v45[0] = v21;
    v45[1] = v15;
    v45[2] = v25;
    v45[3] = v11;
    v45[6] = v10;
    sub_1BFA9DC00();
    sub_1BFA951AC(v32);
    sub_1BFAA19D0(v32);
  }
}

uint64_t sub_1BFA9DC00()
{
  v0 = sub_1BFAAE238();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1BFAAE228();
  type metadata accessor for SiriSuggestions.SuggestionList();
  sub_1BFA00780(&qword_1EDCC7810, 255, type metadata accessor for SiriSuggestions.SuggestionList);
  sub_1BFAAE218();
}

uint64_t SiriSuggestionsXPCClient.warmup()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA9DD0C()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v1 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v1, qword_1EDCC8B70);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v4);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_69();
  }

  v10 = *(v0 + 16);

  v11 = *(v10 + 24);
  OUTLINED_FUNCTION_47_5(&dword_1BFAB7268);

  v12 = swift_task_alloc();
  *(v0 + 24) = v12;
  *v12 = v0;
  v12[1] = sub_1BFA9DE48;
  v13 = *(v0 + 16);

  return v15();
}

uint64_t sub_1BFA9DE48()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 32) = v0;

  if (!v0)
  {
    v9 = *(v3 + 16);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t SiriSuggestionsXPCClient.submitEngagement(for:with:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1BFAAE3F8();
  v1[5] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[6] = v5;
  v1[7] = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_109();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA9E1B0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9E2B0()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1BF9FDC2C(v0[11], v0[12]);

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t sub_1BFA9E334()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[13];
  sub_1BF9FDC2C(v0[11], v0[12]);

  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1BFAAF648();
  *(v1 + 96) = v7;
  OUTLINED_FUNCTION_15(v7);
  *(v1 + 104) = v8;
  v10 = *(v9 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_100();
  *(v1 + 120) = *v3;
  *(v1 + 160) = *(v3 + 16);
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA9E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v13 = *(v12 + 160);
  v15 = *(v12 + 120);
  v14 = *(v12 + 128);
  v16 = *(v12 + 112);
  v18 = *(v12 + 80);
  v17 = *(v12 + 88);
  v20 = *(v12 + 64);
  v19 = *(v12 + 72);
  v21 = sub_1BFAAF258();
  sub_1BFAAF238();

  v22 = sub_1BFAAF258();
  sub_1BFAAF268();

  v23 = *(v17 + 24);
  sub_1BFA27F7C(v18, v12 + 16);
  v24 = swift_allocObject();
  *(v12 + 136) = v24;
  *(v24 + 16) = v17;
  *(v24 + 24) = v15;
  *(v24 + 32) = v14;
  *(v24 + 40) = v13;
  *(v24 + 48) = v20;
  *(v24 + 56) = v19;
  sub_1BFA17D30((v12 + 16), (v24 + 64));

  OUTLINED_FUNCTION_95_0();
  sub_1BF9FC17C();
  OUTLINED_FUNCTION_47_5(&dword_1BFAB7268);

  v25 = swift_task_alloc();
  *(v12 + 144) = v25;
  *v25 = v12;
  v25[1] = sub_1BFA9E5EC;
  OUTLINED_FUNCTION_25_1();

  return v26(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1BFA9E5EC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (!v0)
  {
    v9 = *(v3 + 136);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9E6EC()
{
  OUTLINED_FUNCTION_43();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_1BFAAF258();
  OUTLINED_FUNCTION_62_2();

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);

  OUTLINED_FUNCTION_85();

  return v8();
}

uint64_t sub_1BFA9E78C()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = sub_1BFAAF258();
  OUTLINED_FUNCTION_62_2();

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);

  OUTLINED_FUNCTION_85();
  v10 = v0[19];

  return v9();
}

uint64_t sub_1BFA9E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[1] = a7;
  v21[2] = a8;
  v21[0] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v17 = v21 - v16;
  v21[3] = a3;
  v21[4] = a4;
  v22 = a5 & 1;
  sub_1BFA01D14(a1, v21 - v16, &qword_1EBDFC118, &qword_1BFAB7550);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  sub_1BFA01D64(v17, v19 + v18, &qword_1EBDFC118, &qword_1BFAB7550);
  SiriSuggestionsXPCClient.submit(for:propertyKey:propertyValue:completion:)();
}

void sub_1BFA9EA18(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t SiriSuggestionsXPCClient.refreshService()()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA9EAB8()
{
  OUTLINED_FUNCTION_43();
  v1 = *(*(v0 + 16) + 24);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA9EB80;
  v3 = *(v0 + 16);

  return (sub_1BFA007C8)();
}

uint64_t sub_1BFA9EB80()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 32) = v0;

  if (!v0)
  {
    v9 = *(v3 + 16);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9EC80()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_85();
  v3 = *(v0 + 32);

  return v2();
}

void sub_1BFA9ECDC()
{
  OUTLINED_FUNCTION_102();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v10 = OUTLINED_FUNCTION_15(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v23 - v16;
  v18 = *(v6 + 16);
  sub_1BFA01D14(v8, &v23 - v16, &qword_1EBDFC118, &qword_1BFAB7550);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_1BFA01D64(v17, v20 + v19, &qword_1EBDFC118, &qword_1BFAB7550);
  v25[4] = v4;
  v25[5] = v20;
  OUTLINED_FUNCTION_35_7();
  OUTLINED_FUNCTION_34_7(COERCE_DOUBLE(1107296256));
  v25[2] = v21;
  v25[3] = v2;
  v22 = _Block_copy(v25);

  [v18 *v24];
  _Block_release(v22);
  OUTLINED_FUNCTION_101();
}

uint64_t SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1BFAAE3F8();
  v1[12] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[13] = v6;
  v1[14] = *(v7 + 64);
  v1[15] = OUTLINED_FUNCTION_109();
  v1[16] = swift_task_alloc();
  v8 = sub_1BFAAEF98();
  v1[17] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[18] = v9;
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_109();
  v1[20] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BFA9EF4C()
{
  v68 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC8B70);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v4);
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_69();
  }

  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[8];

  v13 = sub_1BFAAE278();
  OUTLINED_FUNCTION_79_3(v13);
  swift_allocObject();
  v0[21] = sub_1BFAAE268();
  sub_1BFAAE248();
  v67[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
  v67[4] = sub_1BFAA1B70();
  v67[5] = sub_1BFAA1C28();
  v67[0] = v12;

  sub_1BFAAEF88();
  OUTLINED_FUNCTION_41_5();
  sub_1BFA00780(v14, 255, v15);
  OUTLINED_FUNCTION_46();
  v16 = sub_1BFAAE258();
  v0[22] = v16;
  v0[23] = v17;
  v65 = v16;
  v66 = v17;
  v18 = v0[19];
  v19 = v0[9];
  v62 = *(v0[18] + 8);
  v62(v0[20], v0[17]);
  v20 = sub_1BFAAEEF8();
  v0[5] = v20;
  v21 = MEMORY[0x1E69D3090];
  v0[6] = sub_1BFA00780(&qword_1EDCC77E0, 255, MEMORY[0x1E69D3090]);
  v0[7] = sub_1BFA00780(&qword_1EDCC64D0, 255, v21);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_54(v20);
  (*(v22 + 16))();
  sub_1BFAAEF88();
  v23 = sub_1BFAAE258();
  v0[24] = v23;
  v0[25] = v24;
  v58 = v24;
  v59 = v23;
  v25 = v0[16];
  v26 = v0[12];
  v27 = v0[13];
  v28 = v0[10];
  v62(v0[19], v0[17]);
  v29 = *(v27 + 16);
  (v29)(v25, v28, v26);
  v30 = sub_1BFAAF668();
  v31 = sub_1BFAAFB78();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[16];
  v35 = v0[12];
  v34 = v0[13];
  if (v32)
  {
    v36 = OUTLINED_FUNCTION_51_0();
    v60 = OUTLINED_FUNCTION_31_4();
    v67[0] = v60;
    *v36 = 136315138;
    OUTLINED_FUNCTION_38_6();
    sub_1BFA00780(v37, 255, v38);
    v63 = v29;
    v39 = v31;
    v40 = sub_1BFAAFEE8();
    v42 = v41;
    (*(v34 + 8))(v33, v35);
    v43 = sub_1BF9F88A8(v40, v42, v67);

    *(v36 + 4) = v43;
    v44 = v39;
    v29 = v63;
    _os_log_impl(&dword_1BF9F6000, v30, v44, "Calling Suggestions XPC service log on request: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v60);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    (*(v34 + 8))(v33, v35);
  }

  v45 = v0[15];
  v47 = v0[12];
  v46 = v0[13];
  v48 = v0[10];
  v49 = v0[11];
  v61 = v45;
  v64 = *(v49 + 24);
  v29();
  v50 = (*(v46 + 80) + 56) & ~*(v46 + 80);
  v51 = swift_allocObject();
  v0[26] = v51;
  *(v51 + 2) = v49;
  *(v51 + 3) = v65;
  *(v51 + 4) = v66;
  *(v51 + 5) = v59;
  *(v51 + 6) = v58;
  (*(v46 + 32))(&v51[v50], v61, v47);

  v52 = OUTLINED_FUNCTION_28_6();
  sub_1BFA006A8(v52, v53);
  v54 = OUTLINED_FUNCTION_96();
  sub_1BFA006A8(v54, v55);
  v56 = swift_task_alloc();
  v0[27] = v56;
  *v56 = v0;
  v56[1] = sub_1BFA9F50C;

  return sub_1BFA007C8(sub_1BFA007C8, sub_1BFAA1CE0, v51);
}

uint64_t sub_1BFA9F50C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 224) = v0;

  if (!v0)
  {
    v9 = *(v3 + 208);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA9F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v11 = v10[24];
  v12 = v10[25];
  v14 = v10[20];
  v13 = v10[21];
  v15 = v10[19];
  v17 = v10[15];
  v16 = v10[16];
  sub_1BF9FDC2C(v10[22], v10[23]);
  v18 = OUTLINED_FUNCTION_96();
  sub_1BF9FDC2C(v18, v19);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_138();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1BFA9F6B0()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  sub_1BF9FDC2C(v0[22], v0[23]);
  v5 = OUTLINED_FUNCTION_60_1();
  sub_1BF9FDC2C(v5, v6);

  v7 = v0[28];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[15];
  v10 = v0[16];

  OUTLINED_FUNCTION_85();

  return v12();
}

void sub_1BFA9F758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  v11 = sub_1BFAAE328();
  v12 = sub_1BFAAE328();
  v13 = sub_1BFAAE3B8();
  sub_1BFA01D14(a1, v9, &qword_1EBDFC118, &qword_1BFAB7550);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1BFA01D64(v9, v15 + v14, &qword_1EBDFC118, &qword_1BFAB7550);
  aBlock[4] = sub_1BFAA451C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BFAA4518;
  aBlock[3] = &block_descriptor_66;
  v16 = _Block_copy(aBlock);

  [v10 logWithSuggestions:v11 deliveryVehicle:v12 generationId:v13 completion:v16];
  _Block_release(v16);
}

uint64_t sub_1BFA9F9F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1BFA9FA48(const char *a1)
{
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v3 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v3, qword_1EDCC8B70);
  oslog = sub_1BFAAF668();
  v4 = sub_1BFAAFB88();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v5);
    _os_log_impl(&dword_1BF9F6000, oslog, v4, a1, v1, 2u);
    OUTLINED_FUNCTION_69();
  }
}

uint64_t sub_1BFA9FB0C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v11 = a1;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA9FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BFA9FC20, 0, 0);
}

uint64_t sub_1BFA9FC20()
{
  OUTLINED_FUNCTION_58();
  v24 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v1 = v0[3];
  v2 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v2, qword_1EDCC8B70);
  v3 = v1;
  v4 = sub_1BFAAF668();
  v5 = sub_1BFAAFB88();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = OUTLINED_FUNCTION_51_0();
    v8 = OUTLINED_FUNCTION_31_4();
    v23 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v10 = sub_1BFAAF8B8();
    v12 = sub_1BF9F88A8(v10, v11, &v23);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_39_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v8);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_69();
  }

  v18 = v0[4];
  v19 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1BFA9FD98()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 32);
  sub_1BFA5D030(*(v0 + 24));
  OUTLINED_FUNCTION_85();

  return v2();
}

void sub_1BFA9FDF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void *SiriSuggestionsXPCClient.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t SiriSuggestionsXPCClient.__deallocating_deinit()
{
  SiriSuggestionsXPCClient.deinit();
  OUTLINED_FUNCTION_58_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA9FEB4()
{
  OUTLINED_FUNCTION_43();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_60_1();

  return SiriSuggestionsXPCClient.submitEngagement(for:with:)();
}

uint64_t sub_1BFA9FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BF9FDE28;

  return SiriSuggestionsXPCClient.getAutoCompletePhrase(query:using:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFAA0044()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_90_4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_95_0();

  return SiriSuggestionsXPCClient.submitAsync(for:propertyKey:propertyValue:)();
}

uint64_t sub_1BFAA00F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.submitAsync(for:properties:)();
}

uint64_t sub_1BFAA01A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.logShown(for:deliveryVehicle:generationId:)();
}

uint64_t sub_1BFAA0250()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.warmup()();
}

uint64_t sub_1BFAA02E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.getSuggestionsForApp(for:)();
}

uint64_t sub_1BFAA038C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.disconnect(for:)();
}

uint64_t sub_1BFAA0424()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_90_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1BF9FDE28;

  return SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t sub_1BFAA04D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.refreshService()();
}

uint64_t sub_1BFAA0564()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.getSuggestionsForIntents(for:)();
}

id BaseXPCBridge.__allocating_init(continuation:dataMapper:)()
{
  OUTLINED_FUNCTION_72_4();
  v4 = objc_allocWithZone(v1);
  return BaseXPCBridge.init(continuation:dataMapper:)(v3, v2, v0);
}

id sub_1BFAA0654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  v12 = &v3[*((*v8 & *v3) + 0x60)];
  *v12 = a2;
  *(v12 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v11 + 8))(a1, v10);
  return v13;
}

id BaseXPCBridge.init(continuation:dataMapper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_99_0();
  v9 = *(v8 + 88);
  v12 = *((v11 & v10) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v13 = sub_1BFAAFAE8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v3[v9], a1, v13);
  OUTLINED_FUNCTION_99_0();
  v16 = &v3[*(v15 + 96)];
  *v16 = a2;
  *(v16 + 1) = a3;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

uint64_t sub_1BFAA08D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v5 = type metadata accessor for SiriSuggestions.SuggestionList();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA8, &unk_1BFAB5030);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v25 - v18;
  v20 = MEMORY[0x1E69E7D40];
  v21 = *(v9 + 16);
  v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v21(v13, &v3[v25], v8);
  v22 = &v3[*((*v20 & *v3) + 0x60)];
  v23 = *(v22 + 1);
  (*v22)(a1, v26);
  sub_1BFAAFAC8();
  (*(v9 + 8))(v13, v8);
  (*(v15 + 8))(v19, v14);
  result = sub_1BFAAFAA8();
  if (result)
  {
    v27 = 0;
    return sub_1BFAAFAD8();
  }

  return result;
}

void BaseXPCBridge.process(_:)()
{
  OUTLINED_FUNCTION_102();
  v33 = v1;
  v34 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_54(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50));
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  OUTLINED_FUNCTION_103_1();
  v9 = sub_1BFAAFAE8();
  OUTLINED_FUNCTION_2_3(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - v16;
  OUTLINED_FUNCTION_103_1();
  v18 = sub_1BFAAFAB8();
  OUTLINED_FUNCTION_2_3(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v23, v24);
  (*(v11 + 16))(v17, &v0[*((v4 & v3) + 0x58)], v9);
  v25 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v32 = v0;
  v26 = &v0[v25];
  v27 = *(v26 + 1);
  (*v26)(v33, v34);
  sub_1BFAAFAC8();
  (*(v11 + 8))(v17, v9);
  v28 = *(v20 + 8);
  v29 = OUTLINED_FUNCTION_28_6();
  v30(v29);
  if (sub_1BFAAFAA8())
  {
    v35 = 0;
    OUTLINED_FUNCTION_109_1();
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFAA1044(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  return sub_1BFAAFAD8();
}

uint64_t BaseXPCBridge.connectionError(error:)(void *a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = a1;
  v6 = *((v3 & v2) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFAE8();
  return sub_1BFAAFAD8();
}

uint64_t sub_1BFAA1160()
{
  v1 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC8B70);
  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF9F6000, v3, v4, "ContinuationBasedXPCBridge continuation.finish()", v5, 2u);
    MEMORY[0x1BFB618C0](v5, -1, -1);
  }

  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  return sub_1BFAAFAD8();
}

Swift::Void __swiftcall BaseXPCBridge.finalise()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v4 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v4, qword_1EDCC8B70);
  v5 = sub_1BFAAF668();
  v6 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v6))
  {
    v7 = OUTLINED_FUNCTION_44_0();
    *v7 = 0;
    _os_log_impl(&dword_1BF9F6000, v5, v6, "ContinuationBasedXPCBridge continuation.finish()", v7, 2u);
    OUTLINED_FUNCTION_94();
  }

  v8 = *((*v2 & *v1) + 0x58);
  v9 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFAE8();
  sub_1BFAAFAD8();
}

id BaseXPCBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BFAA1460(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v5 = sub_1BFAAFAE8();
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 8))(&a1[v3]);
  v7 = *&a1[*((*v2 & *a1) + 0x60) + 8];
}

id _s18SiriSuggestionsAPI13BaseXPCBridgeCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1BFAA17DC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1BFAA1848()
{
  OUTLINED_FUNCTION_101_0();
  v2 = sub_1BFAAEF58();
  OUTLINED_FUNCTION_60_0(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1BFA99E90(v0, v4, v5);
}

unint64_t sub_1BFAA18B4()
{
  result = qword_1EDCC6448;
  if (!qword_1EDCC6448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFC100, &unk_1BFAB7230);
    sub_1BFA00780(&qword_1EDCC6510, 255, MEMORY[0x1E69D2DC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6448);
  }

  return result;
}

uint64_t sub_1BFAA196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFAA19D0(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFAA1A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFAA1B70()
{
  result = qword_1EDCC77B8;
  if (!qword_1EDCC77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    sub_1BFA00780(qword_1EDCC7818, 255, type metadata accessor for SiriSuggestions.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC77B8);
  }

  return result;
}

unint64_t sub_1BFAA1C28()
{
  result = qword_1EDCC6458;
  if (!qword_1EDCC6458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB910, &unk_1BFAB1CE0);
    sub_1BFA00780(&qword_1EDCC6620, 255, type metadata accessor for SiriSuggestions.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6458);
  }

  return result;
}

void sub_1BFAA1CE0()
{
  OUTLINED_FUNCTION_101_0();
  v2 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v2);
  v4 = *(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];

  sub_1BFA9F758(v0, v5);
}

unint64_t sub_1BFAA1D54()
{
  result = qword_1EBDFC108;
  if (!qword_1EBDFC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC108);
  }

  return result;
}

uint64_t sub_1BFAA1DA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BFA00780(&qword_1EDCC7E38, a2, type metadata accessor for SiriSuggestionsXPCClient);
  result = sub_1BFA00780(&qword_1EDCC7E30, v3, type metadata accessor for SiriSuggestionsXPCClient);
  *(a1 + 32) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsAPI0B8XPCErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BFAA1E94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BFAA1EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1BFAA1F40(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1BFAA1F70(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  result = sub_1BFAAFAE8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BFAA209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BFAAEF98();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_1BFAA211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_100_1(a1, a2, a3, a4);
  sub_1BFA27F7C(v4, v5);

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_1BFAA214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_100_1(a1, a2, a3, a4);
  sub_1BF9F8B40(v4, v5);

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_1BFAA217C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC148, &qword_1BFAB75E8) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC150, &qword_1BFAB75F0);
  result = sub_1BFAA209C(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BFAA21EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v63 = a5;
  v56 = sub_1BFAAEF98();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v56, v11);
  v52 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC158, &qword_1BFAB75F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = (v51 - v20);
  sub_1BFAA25FC(a1, a2, a3, v61);
  v57 = v61[0];
  v58 = v61[1];
  v59 = v61[2];
  v60 = v62;
  v22 = (v9 + 32);
  v51[6] = v9 + 16;
  v51[5] = v9 + 8;
  v55 = v9;
  v51[4] = v9 + 40;
  v51[2] = a1;

  v51[1] = a3;

  v53 = v21;
  v54 = v16;
  while (1)
  {
    sub_1BFAA2638(v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC150, &qword_1BFAB75F0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
    {
      sub_1BFA27FF0();
    }

    v25 = *v21;
    v24 = v21[1];
    v26 = *v22;
    (*v22)(v16, v21 + *(v23 + 48), v56);
    v27 = *v63;
    v29 = sub_1BFA01764(v25, v24);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC160, &qword_1BFAB7600);
        sub_1BFAAFCE8();
      }
    }

    else
    {
      v34 = v63;
      sub_1BFAAB198(v32, a4 & 1);
      v35 = *v34;
      v36 = sub_1BFA01764(v25, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_17;
      }

      v29 = v36;
    }

    v38 = *v63;
    if (v33)
    {
      v39 = v55;
      v40 = *(v55 + 72) * v29;
      v41 = v52;
      v42 = v22;
      v43 = v56;
      (*(v55 + 16))(v52, v38[7] + v40, v56);
      v16 = v54;
      (*(v39 + 8))(v54, v43);

      v44 = v43;
      v22 = v42;
      (*(v39 + 40))(v38[7] + v40, v41, v44);
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v45 = (v38[6] + 16 * v29);
      *v45 = v25;
      v45[1] = v24;
      v46 = v38[7] + *(v55 + 72) * v29;
      v16 = v54;
      v26(v46, v54, v56);
      v47 = v38[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_16;
      }

      v38[2] = v49;
    }

    a4 = 1;
    v21 = v53;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFAA25FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1BFAA2638@<X0>(uint64_t a1@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC148, &qword_1BFAB75E8);
  v3 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47, v4);
  v6 = &v44 - v5;
  v7 = sub_1BFAAEF98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC168, &qword_1BFAB7608);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v49 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v44 - v20;
  v22 = *v1;
  v23 = v1[1];
  v24 = v1[2];
  v25 = v1[3];
  v26 = v1[4];
  v44 = v6;
  v48 = v24;
  if (v26)
  {
    v46 = a1;
    v27 = v25;
LABEL_7:
    v45 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v27 << 6);
    v29 = (*(v22 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    (*(v8 + 16))(v12, *(v22 + 56) + *(v8 + 72) * v28, v7);
    v32 = v47;
    v33 = *(v47 + 48);
    *v21 = v30;
    *(v21 + 1) = v31;
    v34 = v12;
    v35 = v32;
    (*(v8 + 32))(&v21[v33], v34, v7);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v35);

    v36 = v45;
    a1 = v46;
LABEL_8:
    *v1 = v22;
    v1[1] = v23;
    v37 = v49;
    v1[2] = v48;
    v1[3] = v25;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_1BFA01D64(v21, v37, &qword_1EBDFC168, &qword_1BFAB7608);
    v40 = 1;
    if (__swift_getEnumTagSinglePayload(v37, 1, v35) != 1)
    {
      v41 = v37;
      v42 = v44;
      sub_1BFA01D64(v41, v44, &qword_1EBDFC148, &qword_1BFAB75E8);
      v38(v42);
      sub_1BFAA445C(v42, &qword_1EBDFC148, &qword_1BFAB75E8);
      v40 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC150, &qword_1BFAB75F0);
    return __swift_storeEnumTagSinglePayload(a1, v40, 1, v43);
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= ((v24 + 64) >> 6))
      {
        v35 = v47;
        __swift_storeEnumTagSinglePayload(&v44 - v20, 1, 1, v47);
        v36 = 0;
        goto LABEL_8;
      }

      v26 = *(v23 + 8 * v27);
      ++v25;
      if (v26)
      {
        v46 = a1;
        v25 = v27;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BFAA2988@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BF9F8B40(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_1BFA27FE0(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_1BFAA445C(v19, &qword_1EBDFC0F8, qword_1BFAB76D0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BFAA2AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1BF9FDF08;

  return sub_1BFA9669C(a1, a2, a3, a4, a5, a7, a8);
}

uint64_t sub_1BFAA2BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDF08;

  return sub_1BFA95CE4(a1, a2, a3, a4, v10);
}

uint64_t sub_1BFAA2C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDF08;

  return sub_1BFA95650(a1, a2, a3, a4);
}

uint64_t sub_1BFAA2D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDF08;

  return sub_1BFA957DC(a1, a2, a3, a4);
}

uint64_t sub_1BFAA2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDF08;

  return sub_1BFA95E58(a1, a2, a3, a4, v10);
}

uint64_t sub_1BFAA2EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_15(v10);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_101_1();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_77(v15);
  *v16 = v17;
  v16[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_138();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1BFAA2FB0()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_136();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BFAA30A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_21_8();
  return sub_1BFA9F95C(v3);
}

uint64_t sub_1BFAA3128(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_113_1(a1, a2, a3);
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_21_8();

  return a4(v7);
}

uint64_t sub_1BFAA31AC()
{
  OUTLINED_FUNCTION_72_4();
  v4 = OUTLINED_FUNCTION_113_1(v1, v2, v3);
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 80);
  return sub_1BFA97658(v0);
}

uint64_t objectdestroy_62Tm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60(v2);
  v5 = *(v4 + 64);
  v6 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 8))(v6);
  v9 = *(v6 + *(v0 + 52));

  OUTLINED_FUNCTION_82_2();
  v10 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1BFAA3304(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_60_0(v5);
  return sub_1BFA9E9A4(a1, a2 & 1, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1BF9FDC2C(v0[5], v0[6]);
  OUTLINED_FUNCTION_78_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1BFAA33E0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  sub_1BFA9C460(a1, a2, v2[2]);
}

uint64_t sub_1BFAA33F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFAA346C()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_15(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_15(v5);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v9 = *(v0 + v4);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_77(v15);
  *v16 = v17;
  v16[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA969D4(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1BFAA35DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  OUTLINED_FUNCTION_15(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_60_0(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1BFA96EDC(a1, v1 + v5, v10);
}

uint64_t sub_1BFAA36D8()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_51_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  OUTLINED_FUNCTION_15(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for SiriSuggestions.SuggestionList();
  OUTLINED_FUNCTION_60_0(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_124();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_77(v8);
  *v9 = v10;
  v9[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_136();

  return sub_1BFA95968(v11, v12, v13, v14, v15);
}

unint64_t sub_1BFAA37F0()
{
  result = qword_1EDCC7468;
  if (!qword_1EDCC7468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFC170, &unk_1BFAB7610);
    sub_1BFA00780(&qword_1EDCC74A0, 255, MEMORY[0x1E69D30E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7468);
  }

  return result;
}

void sub_1BFAA38B0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  sub_1BFA9B214(a1, a2, v2[2]);
}

void sub_1BFAA38D8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  sub_1BF9FAE68();
}

uint64_t sub_1BFAA3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
  OUTLINED_FUNCTION_15(v13);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_31_5();
  v18 = *(v12 + 16);
  v19 = *(v12 + 24);
  v21 = *(v12 + v20);
  v23 = *(v12 + v22);
  v24 = *(v12 + v22 + 8);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_77(v25);
  *v26 = v27;
  v26[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return v33(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1BFAA3A40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
  OUTLINED_FUNCTION_60_0(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_21_8();

  return sub_1BFA96EA0();
}

void sub_1BFAA3AAC()
{
  OUTLINED_FUNCTION_101_0();
  v0 = sub_1BFAAEF58();
  OUTLINED_FUNCTION_60_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_21_8();

  sub_1BFA9A0C4(v3, v4);
}

uint64_t objectdestroy_73Tm(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_97_1(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v2 + 16);
  swift_unknownObjectRelease();
  v11 = OUTLINED_FUNCTION_60_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_1(v13);
  (*(v14 + 8))(v2 + v7);
  v15 = *(v2 + v7 + *(v3 + 52));

  v16 = *(v2 + v7 + *(v3 + 56) + 8);

  return MEMORY[0x1EEE6BDD0](v2, v7 + v9, v6 | 7);
}

uint64_t sub_1BFAA3BFC()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC180, &qword_1BFAB7640);
  OUTLINED_FUNCTION_60_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_136();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1BFAA3D10()
{
  result = qword_1EDCC6450;
  if (!qword_1EDCC6450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB600, &qword_1BFAB7660);
    sub_1BFA00780(&qword_1EDCC6518, 255, MEMORY[0x1E69D2D78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6450);
  }

  return result;
}

void sub_1BFAA3DC8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BF9FAE68();
}

uint64_t sub_1BFAA3E14()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
  OUTLINED_FUNCTION_15(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_96_1(v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_77(v8);
  *v9 = v10;
  v9[1] = sub_1BF9FDF08;
  v11 = OUTLINED_FUNCTION_27_9();

  return sub_1BFA97320(v11, v12, v13, v14, v15, v0, v1);
}

uint64_t objectdestroy_105Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1BFAA3FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_72_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_15(v12);
  v14 = v13;
  v16 = v15;
  v17 = *(v14 + 80);
  v18 = *(v16 + 64);
  OUTLINED_FUNCTION_91_3();
  v21 = *(v7 + (v20 & 0xFFFFFFFFFFFFFFF8));

  return a6(v9, v8, v6, v7 + v19, v21);
}

uint64_t sub_1BFAA408C()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_51_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_15(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1BFAAF498();
  OUTLINED_FUNCTION_60_0(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_124();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_77(v8);
  *v9 = v10;
  v9[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_136();

  return sub_1BFA95400(v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_68Tm(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_97_1(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 16);
  swift_unknownObjectRelease();
  v11 = v2 + v7;
  v12 = OUTLINED_FUNCTION_60_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_1(v14);
  (*(v15 + 8))(v11);
  v16 = *(v11 + *(v3 + 52));

  v17 = *(v11 + *(v3 + 56) + 8);

  return MEMORY[0x1EEE6BDD0](v2, v9 + 8, v6 | 7);
}

uint64_t sub_1BFAA42AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_51_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_15(v10);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_101_1();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_77(v15);
  *v16 = v17;
  v16[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_138();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1BFAA43AC()
{
  OUTLINED_FUNCTION_51();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_36_0();

  return sub_1BFA9FC00(v8, v9, v10, v5, v4);
}

uint64_t sub_1BFAA445C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = OUTLINED_FUNCTION_113_1(a1, a2, a3);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + *(a10 + 44)) = a13;
  v16 = (v13 + *(a10 + 48));
  *v16 = v14;
  v16[1] = v15;
  return a11;
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v10 = v0[10];
  v11 = v0[9];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[2];
  v12 = v0[3];

  return sub_1BFAAE3E8();
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return sub_1BFAAF248();
}

uint64_t OUTLINED_FUNCTION_81_3()
{
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
}

uint64_t OUTLINED_FUNCTION_82_2()
{
  v3 = *(v1 + *(v0 + 56) + 8);
}

uint64_t OUTLINED_FUNCTION_83_3()
{
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
}

uint64_t OUTLINED_FUNCTION_109_1()
{
  v3 = *(v1 - 120) + v0;

  return sub_1BFAAFAD8();
}

uint64_t OUTLINED_FUNCTION_110_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_113_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t dispatch thunk of SuggestionsLogger.log(from:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (OUTLINED_FUNCTION_16(a1, a2, a3, a4, a5) + 8);
  v12 = *v11 + **v11;
  v6 = (*v11)[1];
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v8 = OUTLINED_FUNCTION_0_15(v7);

  return v9(v8);
}

uint64_t dispatch thunk of SuggestionsLogger.logEngagement(for:with:invocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (OUTLINED_FUNCTION_16(a1, a2, a3, a4, a5) + 16);
  v12 = *v11 + **v11;
  v6 = (*v11)[1];
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v8 = OUTLINED_FUNCTION_0_15(v7);

  return v9(v8);
}

uint64_t SiriSuggestions.Interaction.verb.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SiriSuggestions.Interaction.requestId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SiriSuggestions.Interaction.generationId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.Interaction() + 52);
  v4 = sub_1BFAAE3F8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for SiriSuggestions.Interaction()
{
  result = qword_1EDCC6600;
  if (!qword_1EDCC6600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriSuggestions.Interaction.invocationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.Interaction() + 56);
  v4 = sub_1BFAAEEA8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:invocationType:relatedIntents:isFirstInvocationSinceOSInstalled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10_11(v32, v33, v34, v35, v36, v37);
  *(v27 + 8) = a23;
  *(v27 + 9) = a24;
  *(v27 + 12) = v29;
  *(v27 + 13) = v28;
  sub_1BF9FA474(v31, (v27 + 112));
  v38 = type metadata accessor for SiriSuggestions.Interaction();
  v39 = v38[13];
  v40 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14(v40);
  (*(v41 + 32))(&v27[v39], v30);
  v42 = v38[14];
  v43 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14(v43);
  (*(v44 + 32))(&v27[v42], a25);
  sub_1BFAA4CA8(a26, &v27[v38[15]]);
  v27[v38[16]] = a27;
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFAA4CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B0, &qword_1BFAB7740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SiriSuggestions.Interaction.description.getter()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B0, &qword_1BFAB7740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v72 - v5;
  v7 = sub_1BFAAF688();
  v8 = OUTLINED_FUNCTION_2_3(v7);
  v72 = v9;
  v73 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  OUTLINED_FUNCTION_4_0();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v72 - v18;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1BFAAF228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1B8, &qword_1BFAB7748);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BFAB6F20;
  *(v20 + 32) = 0x4974736575716572;
  *(v20 + 40) = 0xE900000000000064;
  v21 = v1[11];
  v22 = MEMORY[0x1E69E6158];
  *(v20 + 48) = v1[10];
  *(v20 + 56) = v21;
  *(v20 + 72) = v22;
  strcpy((v20 + 80), "invocationType");
  *(v20 + 95) = -18;
  v23 = type metadata accessor for SiriSuggestions.Interaction();
  v24 = v23[14];
  v25 = sub_1BFAAEEA8();
  *(v20 + 120) = v25;
  __swift_allocate_boxed_opaque_existential_1Tm((v20 + 96));
  OUTLINED_FUNCTION_54(v25);
  (*(v26 + 16))();
  *(v20 + 128) = 0x72656E776FLL;
  *(v20 + 136) = 0xE500000000000000;
  v27 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v27);
  *(v20 + 168) = v27;
  __swift_allocate_boxed_opaque_existential_1Tm((v20 + 144));
  OUTLINED_FUNCTION_54(v27);
  (*(v28 + 16))();
  *(v20 + 176) = 1651664246;
  *(v20 + 184) = 0xE400000000000000;
  if (v1[9])
  {
    v29 = v1[8];
    v30 = MEMORY[0x1E69E6158];
    v31 = v1[9];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v30 = 0;
    *(v20 + 208) = 0;
  }

  *(v20 + 192) = v29;
  *(v20 + 200) = v31;
  *(v20 + 216) = v30;
  *(v20 + 224) = 0x746E65746E69;
  *(v20 + 232) = 0xE600000000000000;
  v32 = v1[2];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1C0, &qword_1BFAB7750);
  *(v20 + 240) = v32;
  *(v20 + 264) = v33;
  strcpy((v20 + 272), "relatedIntents");
  *(v20 + 287) = -18;
  sub_1BFA1EF80(v1 + v23[15], v6, &qword_1EBDFC1B0, &qword_1BFAB7740);
  v34 = sub_1BFAAEFE8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v34) == 1)
  {

    sub_1BF9FAB40(v6, &qword_1EBDFC1B0, &qword_1BFAB7740);
    *(v20 + 288) = 0u;
    *(v20 + 304) = 0u;
  }

  else
  {
    *(v20 + 312) = v34;
    __swift_allocate_boxed_opaque_existential_1Tm((v20 + 288));
    OUTLINED_FUNCTION_54(v34);
    (*(v35 + 32))();
  }

  strcpy((v20 + 320), "generationId");
  *(v20 + 333) = 0;
  *(v20 + 334) = -5120;
  v36 = v23[13];
  v37 = sub_1BFAAE3F8();
  *(v20 + 360) = v37;
  __swift_allocate_boxed_opaque_existential_1Tm((v20 + 336));
  OUTLINED_FUNCTION_54(v37);
  (*(v38 + 16))();
  *(v20 + 368) = 0xD000000000000016;
  *(v20 + 376) = 0x80000001BFABA210;
  v39 = *(v1 + v23[16]);
  if (v39 == 2)
  {
    v40 = 0;
    *(v20 + 384) = 0;
    *(v20 + 392) = 0;
    *(v20 + 400) = 0;
  }

  else
  {
    *(v20 + 384) = v39 & 1;
    v40 = MEMORY[0x1E69E6370];
  }

  *(v20 + 408) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1C8, &unk_1BFAB7758);
  OUTLINED_FUNCTION_5_12();
  v41 = sub_1BFAAF658();
  v43 = v42;

  v44 = v73;
  v45 = *(v72 + 8);
  v45(v19, v73);
  MEMORY[0x1BFB60B80](v41, v43);

  MEMORY[0x1BFB60B80](0x536563697665640ALL, 0xEE000A3A65746174);
  v46 = v1[17];
  v47 = v1[18];
  v48 = __swift_project_boxed_opaque_existential_1(v1 + 14, v46);
  v49 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48, v48);
  OUTLINED_FUNCTION_2();
  (*(v52 + 16))(v51 - v50);
  v53 = *(v47 + 8);
  v74 = sub_1BFAAF8C8();
  v75 = v54;
  v55 = sub_1BFAAEF68();
  v57 = v56;

  MEMORY[0x1BFB60B80](v55, v57);

  MEMORY[0x1BFB60B80](0xD000000000000016, 0x80000001BFABA230);
  sub_1BFAAF228();
  v58 = v1[1];

  sub_1BFAA55F4(v59, sub_1BFAA6B00, sub_1BFAA738C);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A8, &qword_1BFAB5050);
  OUTLINED_FUNCTION_5_12();
  v60 = OUTLINED_FUNCTION_7_11();
  v62 = v61;

  v45(v15, v44);
  MEMORY[0x1BFB60B80](v60, v62);

  MEMORY[0x1BFB60B80](0xD000000000000012, 0x80000001BFABA250);
  sub_1BFAAF228();
  v63 = v1[13];
  sub_1BFAAEDA8();
  OUTLINED_FUNCTION_5_12();
  v64 = OUTLINED_FUNCTION_7_11();
  v66 = v65;
  v45(v15, v44);
  MEMORY[0x1BFB60B80](v64, v66);

  MEMORY[0x1BFB60B80](0xD000000000000015, 0x80000001BFABA270);
  sub_1BFAAF228();
  v67 = v1[12];

  sub_1BFAA55F4(v68, sub_1BFAA6A7C, sub_1BFAA71F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1D0, &qword_1BFAB7768);
  OUTLINED_FUNCTION_5_12();
  v69 = OUTLINED_FUNCTION_7_11();
  v71 = v70;

  v45(v15, v44);
  MEMORY[0x1BFB60B80](v69, v71);

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFAA554C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BFAB1400;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_1BFA1EF80(a3, v6 + 64, &qword_1EBDFBA30, &unk_1BFAB5450);

  return v6;
}

uint64_t sub_1BFAA55F4(uint64_t a1, uint64_t (*a2)(void, void), void (*a3)(_BYTE *, uint64_t, void, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  a3(v8, v6 + 32, v4, a1);
  OUTLINED_FUNCTION_6_13();
  if (a3 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

size_t sub_1BFAA5684(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BFAA6C6C(*(a1 + 16), 0, &qword_1EBDFB940, &qword_1BFAB1EC8, MEMORY[0x1E69D2F18]);
  v4 = *(*(sub_1BFAAEC98() - 8) + 80);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_6_13();
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

size_t sub_1BFAA575C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BFAA6C6C(*(a1 + 16), 0, &qword_1EBDFC1E0, &qword_1BFAB78B0, MEMORY[0x1E69D2F98]);
  v4 = *(*(sub_1BFAAEDF8() - 8) + 80);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_6_13();
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BFAA5834(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_1BFAB1C20;
  *(v2 + 56) = v3;
  *(v2 + 32) = 8224;
  *(v2 + 40) = 0xE200000000000000;
  sub_1BFA1EF80(a1, v10, &qword_1EBDFB8A8, &qword_1BFAB5050);
  v4 = v10[0];
  v5 = v10[1];
  *(v2 + 88) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  v6 = *(a1 + 40);
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), v6);
  *(v2 + 120) = v6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v2 + 96));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v6);
  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  return v2;
}

uint64_t sub_1BFAA5934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 16) = xmmword_1BFAB7730;
  *(v0 + 56) = v1;
  *(v0 + 32) = 8224;
  *(v0 + 40) = 0xE200000000000000;
  *(v0 + 88) = sub_1BFAAEFB8();
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 64));
  sub_1BFAAED78();
  sub_1BFAAED68();
  v2 = v8;
  if (v8)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 120) = v2;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 96));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1Tm, v3, v2);
    __swift_destroy_boxed_opaque_existential_2Tm(v7);
  }

  else
  {
    sub_1BF9FAB40(v7, qword_1EBDFB778, &unk_1BFAB1540);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_1BFAAED88();
  *(v0 + 152) = MEMORY[0x1E69E63B0];
  *(v0 + 128) = v5;
  return v0;
}

uint64_t sub_1BFAA5A68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_1BFAB1C20;
  *(v2 + 56) = v3;
  *(v2 + 32) = 8224;
  *(v2 + 40) = 0xE200000000000000;
  sub_1BFA1EF80(a1, v10, &qword_1EBDFC1D0, &qword_1BFAB7768);
  v4 = v10[0];
  v5 = v10[1];
  *(v2 + 88) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  v6 = *(a1 + 40);
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), v6);
  *(v2 + 120) = v6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v2 + 96));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v6);
  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  return v2;
}

void sub_1BFAA5B90()
{
  sub_1BFAA71AC(&qword_1EDCC6610);

  JUMPOUT(0x1BFB5FE90);
}

uint64_t SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for SiriSuggestions.Interaction();
  v19 = v18[14];
  v20 = *MEMORY[0x1E69D2FD0];
  v21 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14(v21);
  (*(v22 + 104))(&a9[v19], v20);
  v23 = v18[15];
  v24 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(&a9[v23], v25, v26, v24);
  *(a9 + 10) = a1;
  *(a9 + 11) = a2;
  *a9 = a4;
  *(a9 + 1) = a6;
  *(a9 + 2) = a5;
  sub_1BF9FA474(a11, (a9 + 24));
  *(a9 + 8) = a12;
  *(a9 + 9) = a13;
  *(a9 + 12) = a7;
  *(a9 + 13) = a8;
  sub_1BF9FA474(a10, (a9 + 112));
  v27 = v18[13];
  v28 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14(v28);
  result = (*(v29 + 32))(&a9[v27], a3);
  a9[v18[16]] = 0;
  return result;
}

uint64_t SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:invocationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = type metadata accessor for SiriSuggestions.Interaction();
  v20 = v19[15];
  v21 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(&a9[v20], v22, v23, v21);
  *(a9 + 10) = a1;
  *(a9 + 11) = a2;
  *a9 = a4;
  *(a9 + 1) = a6;
  *(a9 + 2) = a5;
  sub_1BF9FA474(a11, (a9 + 24));
  *(a9 + 8) = a12;
  *(a9 + 9) = a13;
  *(a9 + 12) = a7;
  *(a9 + 13) = a8;
  sub_1BF9FA474(a10, (a9 + 112));
  v24 = v19[13];
  v25 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14(v25);
  (*(v26 + 32))(&a9[v24], a3);
  v27 = v19[14];
  v28 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14(v28);
  result = (*(v29 + 32))(&a9[v27], a14);
  a9[v19[16]] = 0;
  return result;
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:runningAppIds:deviceState:owner:verb:invocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, __int128 *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_102();
  v26 = v25;
  v28 = v27;
  v91 = v29;
  v89 = v31;
  v90 = v30;
  v33 = v32;
  v88 = v34;
  v87 = v35;
  v37 = v36;
  v96 = sub_1BFAAEFB8();
  v38 = OUTLINED_FUNCTION_2_3(v96);
  v92 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38, v42);
  OUTLINED_FUNCTION_2();
  v45 = v44 - v43;
  v95 = sub_1BFAAEDA8();
  v46 = OUTLINED_FUNCTION_2_3(v95);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46, v51);
  OUTLINED_FUNCTION_2();
  v54 = v53 - v52;
  v55 = sub_1BFAAE3F8();
  v56 = OUTLINED_FUNCTION_2_3(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56, v61);
  OUTLINED_FUNCTION_2();
  v86 = v63 - v62;
  (*(v58 + 16))();
  v64 = *(v26 + 16);
  if (v64)
  {
    v83 = v58;
    v84 = v33;
    v85 = v28;
    v99 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DD48(0, v64, 0);
    v65 = v99;
    v94 = *MEMORY[0x1E69D3100];
    v66 = v92 + 104;
    v93 = *(v92 + 104);
    v67 = (v26 + 40);
    do
    {
      v97 = *(v67 - 1);
      v98 = *v67;
      v68 = v66;
      v93(v45, v94, v96);

      sub_1BFAAED98();
      v70 = *(v99 + 16);
      v69 = *(v99 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1BFA2DD48(v69 > 1, v70 + 1, 1);
      }

      *(v99 + 16) = v70 + 1;
      v71 = *(v48 + 80);
      OUTLINED_FUNCTION_12_1();
      (*(v48 + 32))(v99 + v72 + *(v48 + 72) * v70, v54, v95);
      v67 += 2;
      --v64;
      v66 = v68;
    }

    while (v64);
    v58 = v83;
    v73 = v55;
    (*(v83 + 8))(v84, v55);

    v74 = a25;
    v28 = v85;
  }

  else
  {

    (*(v58 + 8))(v33, v55);
    v65 = MEMORY[0x1E69E7CC0];
    v73 = v55;
    v74 = a25;
  }

  v75 = type metadata accessor for SiriSuggestions.Interaction();
  v76 = v75[15];
  v77 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(&v37[v76], v78, v79, v77);
  *(v37 + 10) = v87;
  *(v37 + 11) = v88;
  *v37 = v90;
  *(v37 + 1) = v91;
  *(v37 + 2) = v89;
  sub_1BF9FA474(a22, (v37 + 24));
  *(v37 + 8) = a23;
  *(v37 + 9) = a24;
  *(v37 + 12) = v28;
  *(v37 + 13) = v65;
  sub_1BF9FA474(a21, (v37 + 112));
  (*(v58 + 32))(&v37[v75[13]], v86, v73);
  v80 = v75[14];
  v81 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14(v81);
  (*(v82 + 32))(&v37[v80], v74);
  v37[v75[16]] = 0;
  OUTLINED_FUNCTION_101();
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:runningAppIds:deviceState:owner:verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_102();
  v122 = v24;
  v120 = v25;
  v118 = v26;
  v115 = v27;
  v116 = v28;
  v30 = v29;
  v114 = v31;
  v113 = v32;
  v34 = v33;
  v119 = a24;
  v117 = a23;
  v121 = a22;
  v123 = a21;
  v129 = sub_1BFAAEFB8();
  v35 = OUTLINED_FUNCTION_2_3(v129);
  v125 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35, v39);
  OUTLINED_FUNCTION_2();
  v128 = v41 - v40;
  v127 = sub_1BFAAEDA8();
  v42 = OUTLINED_FUNCTION_2_3(v127);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42, v47);
  OUTLINED_FUNCTION_2();
  v107 = v49 - v48;
  v50 = sub_1BFAAEEA8();
  v51 = OUTLINED_FUNCTION_2_3(v50);
  v124 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51, v55);
  OUTLINED_FUNCTION_2();
  v58 = v57 - v56;
  v59 = sub_1BFAAE3F8();
  v60 = OUTLINED_FUNCTION_2_3(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60, v65);
  OUTLINED_FUNCTION_4_0();
  v68 = v66 - v67;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v104 - v71;
  v109 = v62;
  v73 = *(v62 + 16);
  v111 = v30;
  v73(&v104 - v71, v30, v59);
  sub_1BF9F93E8(v123, v137);
  v74 = v121;
  sub_1BF9F93E8(v121, v136);
  v75 = *MEMORY[0x1E69D2FD0];
  v76 = *(v124 + 104);
  v110 = v58;
  v77 = v58;
  v78 = v122;
  v112 = v50;
  v76(v77, v75, v50);
  v108 = v68;
  v73(v68, v72, v59);
  v79 = *(v78 + 16);
  if (v79)
  {
    v104 = v72;
    v105 = v59;
    v106 = v34;
    v135 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DD48(0, v79, 0);
    v80 = v135;
    v126 = *MEMORY[0x1E69D3100];
    v81 = v125 + 104;
    v125 = *(v125 + 104);
    v82 = (v78 + 40);
    v83 = v107;
    do
    {
      v84 = *(v82 - 1);
      v85 = *v82;
      v132 = MEMORY[0x1E69E6158];
      v133 = MEMORY[0x1E69E6190];
      v134 = MEMORY[0x1E69E6160];
      v130 = v84;
      v131 = v85;
      v86 = v81;
      (v125)(v128, v126, v129);

      sub_1BFAAED98();
      v135 = v80;
      v88 = *(v80 + 16);
      v87 = *(v80 + 24);
      v68 = v88 + 1;
      if (v88 >= v87 >> 1)
      {
        v85 = &v135;
        sub_1BFA2DD48(v87 > 1, v88 + 1, 1);
        v83 = v107;
        v80 = v135;
      }

      *(v80 + 16) = v68;
      v89 = *(v44 + 80);
      OUTLINED_FUNCTION_12_1();
      (*(v44 + 32))(v80 + v90 + *(v44 + 72) * v88, v83, v127);
      v82 += 2;
      --v79;
      v81 = v86;
    }

    while (v79);

    __swift_destroy_boxed_opaque_existential_2Tm(v121);
    __swift_destroy_boxed_opaque_existential_2Tm(v123);
    v91 = OUTLINED_FUNCTION_8_11();
    v59 = v105;
    (v85)(v91, v105);
    (v85)(v104, v59);
    v34 = v106;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_2Tm(v74);
    __swift_destroy_boxed_opaque_existential_2Tm(v123);
    v92 = OUTLINED_FUNCTION_8_11();
    (v73)(v92, v59);
    (v73)(v72, v59);
    v80 = MEMORY[0x1E69E7CC0];
  }

  v93 = v120;
  v94 = v119;
  v95 = v118;
  v96 = v117;
  v97 = type metadata accessor for SiriSuggestions.Interaction();
  v98 = v97[15];
  v99 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(v34 + v98, v100, v101, v99);
  v102 = v114;
  v34[10] = v113;
  v34[11] = v102;
  v103 = v115;
  v34[1] = v95;
  v34[2] = v103;
  *v34 = v116;
  sub_1BF9FA474(v136, (v34 + 3));
  v34[8] = v96;
  v34[9] = v94;
  v34[12] = v93;
  v34[13] = v80;
  sub_1BF9FA474(v137, (v34 + 14));
  (*(v68 + 32))(v34 + v97[13], v108, v59);
  (*(v124 + 32))(v34 + v97[14], v110, v112);
  *(v34 + v97[16]) = 0;
  OUTLINED_FUNCTION_101();
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:invocationType:relatedIntents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10_11(v31, v32, v33, v34, v35, v36);
  *(v26 + 8) = a23;
  *(v26 + 9) = a24;
  *(v26 + 12) = v28;
  *(v26 + 13) = v27;
  sub_1BF9FA474(v30, (v26 + 112));
  v37 = type metadata accessor for SiriSuggestions.Interaction();
  v38 = v37[13];
  v39 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14(v39);
  (*(v40 + 32))(&v26[v38], v29);
  v41 = v37[14];
  v42 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14(v42);
  (*(v43 + 32))(&v26[v41], a25);
  sub_1BFAA4CA8(a26, &v26[v37[15]]);
  v26[v37[16]] = 0;
  OUTLINED_FUNCTION_101();
}

void *sub_1BFAA6A7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1E8, &unk_1BFAB78B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 48);
  return v4;
}

void *sub_1BFAA6B00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1F0, &qword_1BFAB78C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 64);
  return v4;
}

size_t sub_1BFAA6C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BFAA6DC4()
{
  sub_1BFAA715C(319, &qword_1EDCC6420, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BFAA7040(319, &qword_1EDCC6470, &qword_1EBDFB550, &qword_1BFAB0970);
    if (v1 <= 0x3F)
    {
      sub_1BFAA70A4(319, &qword_1EDCC84F8);
      if (v2 <= 0x3F)
      {
        sub_1BFAA715C(319, &qword_1EDCC84E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BFAA7040(319, &qword_1EDCC6468, &qword_1EBDFC1D8, ">H");
          if (v4 <= 0x3F)
          {
            sub_1BFAA70F8(319, &qword_1EDCC6440, MEMORY[0x1E69D2F70], MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1BFAA70A4(319, &qword_1EDCC6520);
              if (v6 <= 0x3F)
              {
                sub_1BFAAE3F8();
                if (v7 <= 0x3F)
                {
                  sub_1BFAAEEA8();
                  if (v8 <= 0x3F)
                  {
                    sub_1BFAA70F8(319, &qword_1EDCC64B8, MEMORY[0x1E69D3130], MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_1BFAA715C(319, &qword_1EDCC6410, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1BFAA7040(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BFAAF7F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BFAA70A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BFAA70F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BFAA715C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BFAA71AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestions.Interaction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BFAA71F0(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1BF9F8B40(*(a4 + 56) + 32 * v16, &v26);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      v22 = v26;
      v21 = v27;
      v29 = v26;
      v30 = v27;
      v28 = v25;
      *v9 = v25;
      v9[1] = v22;
      v9[2] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 3;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1BFAA738C(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1BFA27F7C(*(a4 + 56) + 48 * v16, &v27);
      *&v26 = v19;
      *(&v26 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v32 = v28;
      v33 = v29;
      v23 = v27;
      v30 = v26;
      v31 = v27;
      *v9 = v26;
      v9[1] = v23;
      v9[2] = v22;
      v9[3] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 4;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v5 = v24;
    result = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1BFAA752C()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v47 = OUTLINED_FUNCTION_2_3(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v47, v13);
  OUTLINED_FUNCTION_4_0();
  v46 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v45 = &v38 - v18;
  v20 = v1 + 64;
  v19 = *(v1 + 64);
  v44 = -1 << *(v1 + 32);
  if (-v44 < 64)
  {
    v21 = ~(-1 << -v44);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  if (!v5)
  {
    v25 = 0;
LABEL_22:
    v37 = ~v44;
    *v7 = v1;
    v7[1] = v20;
    v7[2] = v37;
    v7[3] = v25;
    v7[4] = v22;
    OUTLINED_FUNCTION_101();
    return;
  }

  v23 = v3;
  if (!v3)
  {
    v25 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v39 = v7;
    v40 = v1 + 64;
    v24 = 0;
    v25 = 0;
    v26 = (63 - v44) >> 6;
    v41 = v48 + 32;
    v42 = v48 + 16;
    v43 = v23;
    while (v24 < v23)
    {
      if (__OFADD__(v24, 1))
      {
        goto LABEL_26;
      }

      if (!v22)
      {
        v20 = v40;
        while (1)
        {
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v27 >= v26)
          {
            v22 = 0;
            v7 = v39;
            goto LABEL_22;
          }

          v22 = *(v40 + 8 * v27);
          ++v25;
          if (v22)
          {
            v49 = v24 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v49 = v24 + 1;
      v27 = v25;
LABEL_17:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v1;
      v30 = *(v1 + 56);
      v32 = v47;
      v31 = v48;
      v33 = *(v48 + 72);
      v34 = v46;
      (*(v48 + 16))(v46, v30 + v33 * (v28 | (v27 << 6)), v47);
      v35 = *(v31 + 32);
      v36 = v45;
      v35(v45, v34, v32);
      v35(v5, v36, v32);
      v23 = v43;
      v24 = v49;
      if (v49 == v43)
      {
        v25 = v27;
        v7 = v39;
        v20 = v40;
        v1 = v29;
        goto LABEL_22;
      }

      v5 += v33;
      v25 = v27;
      v1 = v29;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_1BFA27FF0();
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return sub_1BFAAF658();
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  v6[10] = a1;
  v6[11] = a2;
  v6[1] = a6;
  v6[2] = a5;
  *v6 = a4;

  return sub_1BF9FA474(v9, (v6 + 3));
}

void OUTLINED_FUNCTION_13_3()
{

  sub_1BFAA752C();
}

uint64_t sub_1BFAA7830()
{
  v0 = sub_1BFAAE238();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1BFAAE228();
  sub_1BFAAF498();
  sub_1BFAA79B0(&qword_1EBDFC210);
  sub_1BFAAE218();
}

uint64_t static SiriSuggestionsXPCInterface.encodePhrases@Sendable (_:)()
{
  v0 = sub_1BFAAE278();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1BFAAE268();
  sub_1BFAAE248();
  sub_1BFAAF498();
  sub_1BFAA79B0(&qword_1EBDFC208);
  v3 = sub_1BFAAE258();

  return v3;
}

uint64_t sub_1BFAA79B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BFAAF498();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFAA7A74()
{
  sub_1BFAAFF98();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA7ADC(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1BFAAFF98();
  a2(v5, a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA7B2C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_14();
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA7BBC()
{
  sub_1BFAAF908();
}

uint64_t sub_1BFAA7C94()
{
  sub_1BFAAF908();
}

uint64_t sub_1BFAA7CFC(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_16();
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA7D74()
{
  sub_1BFAAF908();
}

uint64_t sub_1BFAA7EA8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
    case 5:
      break;
    default:
      OUTLINED_FUNCTION_2_14();
      OUTLINED_FUNCTION_3_13();
      break;
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA7FA0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 6:
    case 8:
      OUTLINED_FUNCTION_3_13();
      break;
    default:
      break;
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA8128(uint64_t a1, char a2)
{
  sub_1BFAAFF98();
  if (!a2)
  {
    OUTLINED_FUNCTION_0_16();
  }

  sub_1BFAAF908();

  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA81B4()
{
  sub_1BFAAFF98();
  sub_1BFAAF908();

  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA825C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1BFAAFF98();
  a3(v6, a2);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA82C0()
{
  sub_1BFAAFF98();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA830C(uint64_t a1, char a2)
{
  sub_1BFAAFF98();
  if (!a2)
  {
    OUTLINED_FUNCTION_4_14();
  }

  sub_1BFAAF908();

  return sub_1BFAAFFE8();
}

unint64_t SiriSuggestionsStateStoreDefaultKeys.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x45746E65696C6173;
      break;
    case 5:
      result = 0x7453656369766564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x72656E776FLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

SiriSuggestionsAPI::SiriSuggestionsStateStoreDefaultKeys_optional __swiftcall SiriSuggestionsStateStoreDefaultKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BFAA8548()
{
  result = qword_1EBDFC218;
  if (!qword_1EBDFC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC218);
  }

  return result;
}

unint64_t sub_1BFAA8610@<X0>(unint64_t *a1@<X8>)
{
  result = SiriSuggestionsStateStoreDefaultKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsStateStoreDefaultKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsStateStoreDefaultKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BFAA8804(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000019;
  }
}

unint64_t sub_1BFAA883C(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFAA88E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BFAAEA08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA60, &qword_1BFAB3480);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  sub_1BFA44920(a1, &v24 - v17);
  (*(v9 + 16))(v13, a2, v8);
  v18 = sub_1BFAAE9C8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = a3;
  v22 = sub_1BFAAE9B8();
  (*(v9 + 8))(a2, v8);
  sub_1BFA47E18(a1);
  *(v4 + 16) = v22;
  *(v4 + 24) = a3;
  return v4;
}

BOOL static SiriSuggestions.Constants.isSiriRuntimeEnabled()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  sub_1BFAAF868();
  v2 = sub_1BFAAF8D8();
  v4 = v3;

  if (qword_1EDCC77C0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BFAAF688();
  __swift_project_value_buffer(v5, qword_1EDCC77C8);

  v6 = sub_1BFAAF668();
  v7 = sub_1BFAAFB78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1BF9F88A8(v2, v4, v15);
    _os_log_impl(&dword_1BF9F6000, v6, v7, "Got running process as %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v9);
    MEMORY[0x1BFB618C0](v9, -1, -1);
    MEMORY[0x1BFB618C0](v8, -1, -1);
  }

  v15[0] = v2;
  v15[1] = v4;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14[2] = v15;
  v12 = sub_1BFA14164(sub_1BFA14E70, v14, &unk_1F3F079D0);

  return v12;
}

uint64_t sub_1BFAA8CDC()
{
  v0 = sub_1BFAAEF58();
  __swift_allocate_value_buffer(v0, qword_1EDCC74B8);
  __swift_project_value_buffer(v0, qword_1EDCC74B8);
  return sub_1BFAAEF18();
}

uint64_t sub_1BFAA8DA0()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EDCC8BA8);
  __swift_project_value_buffer(v0, qword_1EDCC8BA8);
  v7 = MEMORY[0x1BFB61290]();
  sub_1BFAAF868();

  sub_1BFAAE2A8();

  sub_1BFAAE2C8();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1BFAA8F1C()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EDCC8B88);
  __swift_project_value_buffer(v0, qword_1EDCC8B88);
  if (qword_1EDCC8BA0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EDCC8BA8);
  (*(v1 + 16))(v6, v7, v0);
  sub_1BFAAE2C8();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1BFAA90AC()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EDCC77F8);
  __swift_project_value_buffer(v0, qword_1EDCC77F8);
  if (qword_1EDCC8BC8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EDCC8B88);
  (*(v1 + 16))(v6, v7, v0);
  sub_1BFAAE2C8();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1BFAA923C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_1BFAA9344(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1BF9F88A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1BFAA93A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC220, &unk_1BFAB7AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1BFAA9494(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE *_s9ConstantsOwst(_BYTE *result, int a2, int a3)
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

size_t sub_1BFAA9598(uint64_t a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v19, v4);
  v6 = (&v16 - v5);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DDA0(0, v7, 0);
    v8 = v20;
    v18 = sub_1BFAAEC98();
    v9 = *(v18 - 8);
    v17 = *(v9 + 16);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      v17(v6 + *(v19 + 48), v10, v18);
      *v6 = sub_1BFAAEC88();
      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1BFA2DDA0(v12 > 1, v13 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v13 + 1;
      sub_1BFAAC6FC(v6, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  v14 = sub_1BFAA9D0C(v8);
  return sub_1BFAA5684(v14);
}

uint64_t SignalledOwner.__allocating_init(rootOwner:matchedSignals:isConversationalContinuer:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_31_6();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_24_9();
  SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(v5, v6, a3);
  return v3;
}

uint64_t SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(__int128 *a1, uint64_t a2, char a3)
{
  sub_1BF9FA474(a1, v3 + 16);
  *(v3 + 64) = a2;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t SignalledOwner.__allocating_init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC228, &unk_1BFAB7AD0);
  v4 = OUTLINED_FUNCTION_2_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  v11 = v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAC130();
  sub_1BFAAFFF8();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    LOBYTE(v17[0]) = 0;
    sub_1BFAAEE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC230, &qword_1BFAB7AE0);
    v19 = 1;
    sub_1BFAAC184(&qword_1EDCC77B0, &qword_1EDCC77E8);
    sub_1BFAAFE08();
    v13 = *&v17[0];
    LOBYTE(v17[0]) = 2;
    v15 = sub_1BFAAFDD8();
    (*(v6 + 8))(v11, v3);
    sub_1BF9FA474(&v18, v17);
    OUTLINED_FUNCTION_31_6();
    v6 = swift_allocObject();
    SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(v17, v13, v15 & 1);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v6;
}

uint64_t SignalledOwner.encode(to:)(void *a1)
{
  v3 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC238, &qword_1BFAB7AE8);
  v5 = OUTLINED_FUNCTION_2_3(v21);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = &v22[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAC130();
  sub_1BFAB0008();
  v23 = 0;
  v14 = *(v3 + 40);
  v15 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v14);
  v16 = *(v15 + 32);
  v22[3] = v14;
  v22[4] = v16;
  __swift_allocate_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_54(v14);
  (*(v17 + 16))();
  sub_1BFAAEE68();
  if (v2)
  {
    (*(v7 + 8))(v12, v21);
    return __swift_destroy_boxed_opaque_existential_2Tm(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v22);
    v22[0] = *(v3 + 64);
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC230, &qword_1BFAB7AE0);
    sub_1BFAAC184(&qword_1EDCC6428, &qword_1EDCC64D8);
    v19 = v21;
    sub_1BFAAFEB8();
    v20 = *(v3 + 56);
    LOBYTE(v22[0]) = 2;
    sub_1BFAAFE88();
    return (*(v7 + 8))(v12, v19);
  }
}

uint64_t sub_1BFAA9D0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC250, &qword_1BFAB7E30);
    v3 = sub_1BFAAFD48();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BFAAC76C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

size_t sub_1BFAA9DBC(void (*a1)(uint64_t))
{
  v39 = sub_1BFAAEDF8();
  v2 = OUTLINED_FUNCTION_2_3(v39);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  OUTLINED_FUNCTION_11_11();
  v37 = v8;
  v38 = sub_1BFAAEC98();
  v9 = OUTLINED_FUNCTION_2_3(v38);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_11_11();
  v16 = *(v1 + 64);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = v15;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DDC0(0, v17, 0);
    v18 = v41;
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v22 = *(v20 + 64);
    OUTLINED_FUNCTION_12_1();
    v24 = v16 + v23;
    v35 = *(v20 + 56);
    v36 = v25;
    v26 = (v20 - 8);
    do
    {
      v27 = v20;
      v28 = v36(v37, v24, v39);
      a1(v28);
      (*v26)(v37, v39);
      v30 = *(v41 + 16);
      v29 = *(v41 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1BFA2DDC0(v29 > 1, v30 + 1, 1);
      }

      *(v41 + 16) = v30 + 1;
      v31 = *(v11 + 80);
      OUTLINED_FUNCTION_12_1();
      (*(v11 + 32))(v41 + v32 + *(v11 + 72) * v30, v19, v38);
      v24 += v35;
      --v17;
      v20 = v27;
    }

    while (v17);
  }

  v33 = sub_1BFAA9598(v18);

  return v33;
}

uint64_t SignalledOwner.getSuggestionGroup()()
{
  sub_1BFAAEA38();
  sub_1BFAAEA28();
  sub_1BFAAEA18();
}

Swift::String __swiftcall SignalledOwner.getIdentifier()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = MEMORY[0x1BFB60380](v1, v2);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t SignalledOwner.description.getter()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 16);
  return sub_1BFAAFEE8();
}

uint64_t SignalledOwner.getRoot()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  a1[3] = v3;
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  OUTLINED_FUNCTION_54(v3);
  v5 = *(v4 + 16);

  return v5();
}

uint64_t static SignalledOwner.create(owner:suggestions:isConversationalContinuer:)(uint64_t a1, uint64_t a2, int a3)
{
  v120 = a3;
  v119 = a1;
  v143 = sub_1BFAAEC98();
  v4 = OUTLINED_FUNCTION_2_3(v143);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_7_3();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_7_3();
  v150 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v119 - v21;
  v23 = sub_1BFAAEDF8();
  v24 = OUTLINED_FUNCTION_2_3(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24, v29);
  OUTLINED_FUNCTION_8_0();
  v149 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v37, v38);
  v154 = &v119 - v39;
  v40 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v41 = OUTLINED_FUNCTION_2_3(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41, v46);
  OUTLINED_FUNCTION_11_11();
  v122 = v47;
  sub_1BFAAC224();
  v142 = v23;
  v48 = sub_1BFAAF7D8();
  if (!*(a2 + 16))
  {
LABEL_26:
    sub_1BF9F93E8(v119, &v156);

    v116 = sub_1BFAA575C(v115);
    OUTLINED_FUNCTION_31_6();
    v117 = swift_allocObject();
    SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(&v156, v116, v120 & 1);

    return v117;
  }

  v49 = *(v43 + 80);
  OUTLINED_FUNCTION_12_1();
  v126 = a2 + v50;
  v125 = *(v40 + 9);
  v153 = v26 + 16;
  v148 = (v6 + 8);
  v124 = *(v43 + 72);
  v128 = (v6 + 16);
  v140 = (v26 + 8);
  v135 = v26 + 32;
  v134 = v26 + 40;
  v52 = v142;
  v51 = v143;
  v147 = v22;
  v53 = v26;
  v54 = v154;
  OUTLINED_FUNCTION_29_6();
  v141 = v26;
  v129 = v15;
  while (1)
  {
    v127 = v55;
    sub_1BFA1C998(v126 + v124 * v55, v40);
    sub_1BF9F93E8(v40 + v125, &v156);
    sub_1BFA1C9FC(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_25:
    v55 = v127 + 1;
    if (v127 + 1 == v26)
    {
      goto LABEL_26;
    }
  }

  v56 = *(v155 + 64);
  v146 = *(v56 + 16);
  if (!v146)
  {

    goto LABEL_25;
  }

  v123 = v155;
  v57 = *(v53 + 80);
  OUTLINED_FUNCTION_12_1();
  v145 = v56 + v58;

  v26 = 0;
  v144 = v56;
  while (v26 < *(v56 + 16))
  {
    v151 = *(v53 + 72);
    v152 = *(v53 + 16);
    v152(v54, v145 + v151 * v26, v52);
    v59 = v147;
    sub_1BFAAEDC8();
    v60 = sub_1BFAAEC88();
    v40 = *v148;
    (*v148)(v59, v51);
    v61 = v150;
    sub_1BFAAEDD8();
    v62 = sub_1BFAAEC88();
    v63 = v61;
    v64 = v60;
    v65 = v62;
    v40(v63, v51);
    sub_1BFAAEDE8();
    v67 = v66;
    if (v48[2] && (v68 = OUTLINED_FUNCTION_22_7(), v71 = sub_1BFA1FB54(v69, v70, v68), (v72 & 1) != 0))
    {
      v137 = v65;
      v138 = v64;
      v152(v139, v48[7] + v71 * v151, v52);
      v73 = v150;
      sub_1BFAAEDC8();
      sub_1BFAAEC88();
      v74 = v73;
      v75 = v143;
      v40(v74, v143);
      v76 = v129;
      sub_1BFAAEDC8();
      v151 = sub_1BFAAEC68();
      v40(v76, v75);
      v77 = v133;
      sub_1BFAAEDC8();
      sub_1BFAAEC68();
      v78 = OUTLINED_FUNCTION_24_9();
      (v40)(v78);
      if (__OFADD__(v151, v77))
      {
        goto LABEL_30;
      }

      v136 = v48;
      v79 = v147;
      sub_1BFAAEC78();
      sub_1BFAAEDD8();
      sub_1BFAAEC88();
      v40(v76, v75);
      sub_1BFAAEDD8();
      v151 = sub_1BFAAEC68();
      v40(v77, v75);
      v80 = v77;
      v81 = v132;
      sub_1BFAAEDC8();
      sub_1BFAAEC68();
      v82 = OUTLINED_FUNCTION_24_9();
      (v40)(v82);
      if (__OFADD__(v151, v81))
      {
        goto LABEL_31;
      }

      v83 = v150;
      sub_1BFAAEC78();
      v84 = v76;
      v85 = *v128;
      (*v128)(v84, v79, v75);
      v85(v80, v83, v75);
      sub_1BFAAEDE8();
      v86 = v130;
      sub_1BFAAEDB8();
      v87 = v131;
      v52 = v142;
      v152(v131, v86, v142);
      v88 = v136;
      swift_isUniquelyReferenced_nonNull_native();
      *&v156 = v88;
      v89 = v79;
      sub_1BFA2681C(v87, v138, v67);

      v48 = v156;
      v90 = *v140;
      (*v140)(v86, v52);
      v40(v150, v75);
      v40(v89, v75);
      v90(v139, v52);
      v54 = v154;
      v90(v154, v52);
      v51 = v75;
      v53 = v141;
      v56 = v144;
    }

    else
    {
      v152(v149, v154, v52);
      swift_isUniquelyReferenced_nonNull_native();
      *&v156 = v48;
      v91 = OUTLINED_FUNCTION_22_7();
      v94 = sub_1BFA1FB54(v92, v93, v91);
      if (__OFADD__(v48[2], (v95 & 1) == 0))
      {
        goto LABEL_28;
      }

      v52 = v94;
      v54 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB898, &qword_1BFAB7AF0);
      if (sub_1BFAAFCD8())
      {
        v96 = OUTLINED_FUNCTION_22_7();
        v99 = sub_1BFA1FB54(v97, v98, v96);
        v56 = v144;
        if ((v54 & 1) != (v100 & 1))
        {
          goto LABEL_32;
        }

        v52 = v99;
        v53 = v141;
      }

      else
      {
        v53 = v141;
        v56 = v144;
      }

      v48 = v156;
      if (v54)
      {
        v101 = *(v156 + 56) + v52 * v151;
        OUTLINED_FUNCTION_27_10(&v157);
        v103(v102);

        v104 = OUTLINED_FUNCTION_20_9();
        v105(v104);
      }

      else
      {
        *(v156 + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v106 = (v48[6] + 24 * v52);
        *v106 = v64;
        v106[1] = v65;
        *(v106 + 2) = v67;
        v107 = v48[7] + v52 * v151;
        OUTLINED_FUNCTION_27_10(&v158);
        v109(v108);
        v110 = OUTLINED_FUNCTION_20_9();
        v111(v110);
        v112 = v48[2];
        v113 = __OFADD__(v112, 1);
        v114 = v112 + 1;
        if (v113)
        {
          goto LABEL_29;
        }

        v48[2] = v114;
      }

      v51 = v143;
    }

    if (v146 == ++v26)
    {

      OUTLINED_FUNCTION_29_6();
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFAAAB98(double a1, double a2)
{
  sub_1BFAAF2C8();
  if (sub_1BFAAF2B8())
  {
    return sub_1BFAAF2B8() & (a1 == a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BFAAAC20(double a1)
{
  sub_1BFAAF2C8();
  sub_1BFAAC6B4(&qword_1EBDFB708, 255, MEMORY[0x1E69D3208]);
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_35_8();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x1BFB61210](*&v2);
}

uint64_t sub_1BFAAACD8(double a1)
{
  sub_1BFAAFF98();
  sub_1BFAAAC20(a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAAAD38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E774F746F6F72 && a2 == 0xE900000000000072;
  if (v4 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001BFABA430 == a2;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001BFAB9960 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_7();

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

uint64_t sub_1BFAAAE38(char a1)
{
  if (!a1)
  {
    return 0x656E774F746F6F72;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000019;
}

uint64_t sub_1BFAAAE98()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_1BFAAACD8(v0[2]);
}

uint64_t sub_1BFAAAEA4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_1BFAAAC20(v0[2]);
}

uint64_t sub_1BFAAAEB0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_1BFAAFF98();
  sub_1BFAAAC20(v3);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAAAF10(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  return sub_1BFAAAB98(a1[2], a2[2]);
}

uint64_t sub_1BFAAAF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFAAAD38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFAAAF68(uint64_t a1)
{
  v2 = sub_1BFAAC130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFAAAFA4(uint64_t a1)
{
  v2 = sub_1BFAAC130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignalledOwner.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t SignalledOwner.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_31_6();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFAAB0CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BFAAC6B4(&qword_1EBDFC248, a2, type metadata accessor for SignalledOwner);

  return MEMORY[0x1EEE40920](a1, v3);
}

uint64_t sub_1BFAAB148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SignalledOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1BFAAB198(uint64_t a1, char a2)
{
  v3 = v2;
  v51 = sub_1BFAAEF98();
  v6 = OUTLINED_FUNCTION_2_3(v51);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_11_11();
  v50 = v12;
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC140, &unk_1BFAB7E40);
  v48 = a2;
  v15 = sub_1BFAAFD38();
  v16 = v15;
  if (!*(v13 + 16))
  {
LABEL_35:

LABEL_36:
    *v3 = v16;
    return;
  }

  v17 = 0;
  v18 = (v13 + 64);
  v19 = 1 << *(v13 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v45 = (v8 + 16);
  v46 = v13;
  v47 = v8;
  v49 = (v8 + 32);
  v23 = v15 + 64;
  if (!v21)
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      v43 = OUTLINED_FUNCTION_14_8();
      sub_1BFA26978(v43, v44, v18);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_14:
    v27 = v24 | (v17 << 6);
    v28 = *(v13 + 56);
    v29 = (*(v13 + 48) + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v47 + 72);
    v33 = v28 + v32 * v27;
    if (v48)
    {
      (*v49)(v50, v33, v51);
    }

    else
    {
      (*v45)(v50, v33, v51);
    }

    v34 = *(v16 + 40);
    sub_1BFAAFF98();
    sub_1BFAAF908();
    v35 = sub_1BFAAFFE8() & ~(-1 << *(v16 + 32));
    if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_27:
    *(v23 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v16 + 48) + 16 * v36);
    *v41 = v31;
    v41[1] = v30;
    (*v49)(*(v16 + 56) + v32 * v36, v50, v51);
    ++*(v16 + 16);
    v13 = v46;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v40)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    if (*(v23 + 8 * v37) != -1)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
}

void sub_1BFAAB4D0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_15(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB618, &qword_1BFAB11A0);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_32_7();
  if (!v7)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  OUTLINED_FUNCTION_0_18();
  if (!v4)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v10)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v29)
    {
      OUTLINED_FUNCTION_9_9();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_16_7(v24);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v27, v28, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    OUTLINED_FUNCTION_18_13(v8);
    v13 = (v12 + 48 * v11);
    if (v29)
    {
      sub_1BFA17D30(v13, v30);
    }

    else
    {
      sub_1BFA27F7C(v13, v30);
    }

    v14 = *(v3 + 40);
    sub_1BFAAFF98();
    sub_1BFAAF908();
    v15 = sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15(v15);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_22:
    OUTLINED_FUNCTION_3_14(v17);
    OUTLINED_FUNCTION_23_8(v21);
    sub_1BFA17D30(v30, (v23 + 48 * v22));
    OUTLINED_FUNCTION_17_7();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v16)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    OUTLINED_FUNCTION_19_7(v18);
    if (!v16)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1BFAAB670(uint64_t a1)
{
  OUTLINED_FUNCTION_4_15(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC268, qword_1BFAB7E58);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_32_7();
  if (!v7)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  OUTLINED_FUNCTION_0_18();
  if (!v4)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v10)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v29)
    {
      OUTLINED_FUNCTION_9_9();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_16_7(v24);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v27, v28, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    OUTLINED_FUNCTION_18_13(v8);
    v13 = (v12 + 32 * v11);
    if (v29)
    {
      sub_1BFA27FE0(v13, v30);
    }

    else
    {
      sub_1BF9F8B40(v13, v30);
    }

    v14 = *(v3 + 40);
    sub_1BFAAFF98();
    sub_1BFAAF908();
    v15 = sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15(v15);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_22:
    OUTLINED_FUNCTION_3_14(v17);
    OUTLINED_FUNCTION_23_8(v21);
    sub_1BFA27FE0(v30, (v23 + 32 * v22));
    OUTLINED_FUNCTION_17_7();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v16)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    OUTLINED_FUNCTION_19_7(v18);
    if (!v16)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1BFAAB804(uint64_t a1)
{
  OUTLINED_FUNCTION_4_15(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC260, &qword_1BFAB7E50);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_32_7();
  if (!v7)
  {
LABEL_31:

    *v1 = v3;
    return;
  }

  v32 = v2;
  OUTLINED_FUNCTION_0_18();
  if (!v4)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v10)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v33)
    {
      OUTLINED_FUNCTION_9_9();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_16_7(v27);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v30, v31, v5);
      }

      v2[2] = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    v11 = v8 | (v6 << 6);
    v12 = v2[7];
    v13 = v2[6] + 8 * v11;
    v14 = *v13;
    v15 = *(v13 + 4);
    v16 = *(v12 + 8 * v11);
    if ((v33 & 1) == 0)
    {
    }

    v17 = *(v3 + 40);
    sub_1BFAAFF98();
    sub_1BFAAFFB8();
    if (!v15)
    {
      sub_1BFAAFFC8();
    }

    v18 = sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15(v18);
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_23:
    OUTLINED_FUNCTION_3_14(v20);
    v26 = v25 + 8 * v24;
    *v26 = v14;
    *(v26 + 4) = v15;
    *(*(v3 + 56) + 8 * v24) = v16;
    OUTLINED_FUNCTION_17_7();
    v2 = v32;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v19)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    OUTLINED_FUNCTION_19_7(v21);
    if (!v19)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1BFAAB9B4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_15(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5C8, &qword_1BFAB1150);
  sub_1BFAAFD38();
  OUTLINED_FUNCTION_32_7();
  if (!v7)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  OUTLINED_FUNCTION_0_18();
  if (!v4)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v10)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_9_9();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_16_7(v24);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v27, v28, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    OUTLINED_FUNCTION_18_13(v8);
    v13 = (v12 + 40 * v11);
    if (v3)
    {
      sub_1BF9FA474(v13, v29);
    }

    else
    {
      sub_1BF9F93E8(v13, v29);
    }

    v14 = *(v3 + 40);
    sub_1BFAAFF98();
    sub_1BFAAF908();
    v15 = sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15(v15);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_22:
    OUTLINED_FUNCTION_3_14(v17);
    OUTLINED_FUNCTION_23_8(v21);
    sub_1BF9FA474(v29, v23 + 40 * v22);
    OUTLINED_FUNCTION_17_7();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v16)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    OUTLINED_FUNCTION_19_7(v18);
    if (!v16)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1BFAABB6C(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_1BFAAEC98();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v46, v8);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC250, &qword_1BFAB7E30);
  v42 = a2;
  result = sub_1BFAAFD38();
  v13 = result;
  if (!*(v10 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v13;
    return result;
  }

  v14 = 0;
  v15 = (v10 + 64);
  v16 = 1 << *(v10 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v10 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = v3;
  v39 = (v6 + 16);
  v40 = v10;
  v41 = v6;
  v43 = (v6 + 32);
  v20 = result + 64;
  if (!v18)
  {
LABEL_9:
    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v14 >= v19)
      {
        break;
      }

      v23 = v15[v14];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v18 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_1BFA26978(0, (v37 + 63) >> 6, v15);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_14:
    v24 = v21 | (v14 << 6);
    v25 = *(v10 + 56);
    v26 = *(*(v10 + 48) + 8 * v24);
    v47 = v26;
    v44 = *(v41 + 72);
    v27 = v25 + v44 * v24;
    if (v42)
    {
      (*v43)(v45, v27, v46);
    }

    else
    {
      (*v39)(v45, v27, v46);
    }

    v28 = *(v13 + 40);
    sub_1BFAAF2C8();
    sub_1BFAAC6B4(&qword_1EBDFB708, 255, MEMORY[0x1E69D3208]);
    result = sub_1BFAAF808();
    v29 = -1 << *(v13 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v20 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v13 + 48) + 8 * v32) = v26;
    result = (*v43)(*(v13 + 56) + v44 * v32, v45, v46);
    ++*(v13 + 16);
    v10 = v40;
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v20 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1BFAABF28(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1BFAABF70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_36_9(a1, a2, a3, a4, a5, a6);
  v9 = v8 + 24 * result;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12 & 1;
  *(*(v7 + 56) + 8 * result) = v13;
  v14 = *(v7 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v16;
  }

  return result;
}

uint64_t sub_1BFAABFB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_6_14(a1, a2, a3, a4, a5);
  v10 = (v9 + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v14 = *(v13 + 56);
  v15 = sub_1BFAAE748();
  OUTLINED_FUNCTION_54(v15);
  result = (*(v16 + 32))(v14 + *(v16 + 72) * a1, a4);
  v18 = *(a5 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v20;
  }

  return result;
}

_OWORD *sub_1BFAAC048(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_6_14(a1, a2, a3, a4, a5);
  v8 = (v7 + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  result = sub_1BFA27FE0(v12, (*(v11 + 56) + 32 * v6));
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

uint64_t sub_1BFAAC098(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_6_14(a1, a2, a3, a4, a5);
  v10 = (v9 + 24 * v8);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v15 = *(v14 + 56);
  v16 = sub_1BFAAEDF8();
  OUTLINED_FUNCTION_54(v16);
  result = (*(v17 + 32))(v15 + *(v17 + 72) * a1, a4);
  v19 = *(a5 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v21;
  }

  return result;
}

unint64_t sub_1BFAAC130()
{
  result = qword_1EDCC8B60;
  if (!qword_1EDCC8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC8B60);
  }

  return result;
}

uint64_t sub_1BFAAC184(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFC230, &qword_1BFAB7AE0);
    sub_1BFAAC6B4(a2, 255, MEMORY[0x1E69D2F98]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFAAC224()
{
  result = qword_1EDCC6AF8;
  if (!qword_1EDCC6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AF8);
  }

  return result;
}

uint64_t sub_1BFAAC3E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BFAAC428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalledOwner.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BFAAC558()
{
  result = qword_1EBDFC240;
  if (!qword_1EBDFC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC240);
  }

  return result;
}

unint64_t sub_1BFAAC5B0()
{
  result = qword_1EDCC6AF0;
  if (!qword_1EDCC6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AF0);
  }

  return result;
}

unint64_t sub_1BFAAC608()
{
  result = qword_1EDCC8B50;
  if (!qword_1EDCC8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC8B50);
  }

  return result;
}

unint64_t sub_1BFAAC660()
{
  result = qword_1EDCC8B58;
  if (!qword_1EDCC8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC8B58);
  }

  return result;
}

uint64_t sub_1BFAAC6B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFAAC6FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFAAC76C(uint64_t a1, char a2, uint64_t *a3)
{
  v69 = a3;
  v5 = sub_1BFAAEC98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v59 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v67 = (&v54 - v23);
  v66 = *(a1 + 16);
  if (!v66)
  {
  }

  v24 = 0;
  v65 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v25 = *(v21 + 48);
  v63 = v6;
  v64 = v25;
  v68 = (v6 + 32);
  v57 = v6 + 16;
  v58 = v11;
  v56 = (v6 + 8);
  v55 = (v6 + 40);
  v61 = v22;
  v62 = a1;
  while (v24 < *(a1 + 16))
  {
    v26 = v67;
    sub_1BFAACBC4(v65 + *(v22 + 72) * v24, v67);
    v27 = *v26;
    v28 = *v68;
    v29 = v5;
    (*v68)(v17, v26 + v64, v5);
    v30 = *v69;
    v32 = sub_1BFA1FAA8(v27);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_19;
    }

    v36 = v31;
    if (*(v30 + 24) >= v35)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC258, &qword_1BFAB7E38);
        sub_1BFAAFCE8();
      }
    }

    else
    {
      v37 = v69;
      sub_1BFAABB6C(v35, a2 & 1);
      v38 = *v37;
      v39 = sub_1BFA1FAA8(v27);
      if ((v36 & 1) != (v40 & 1))
      {
        goto LABEL_22;
      }

      v32 = v39;
    }

    v41 = *v69;
    if (v36)
    {
      v42 = v41[7];
      v43 = *(v63 + 16);
      v60 = *(v63 + 72) * v32;
      v44 = v17;
      v45 = v58;
      v5 = v29;
      v43(v58, v42 + v60, v29);
      sub_1BFAAEC88();
      v46 = sub_1BFAAEC68();
      if (__OFADD__(v46, sub_1BFAAEC68()))
      {
        goto LABEL_21;
      }

      v47 = v59;
      sub_1BFAAEC78();
      v48 = *v56;
      (*v56)(v45, v29);
      v48(v44, v29);

      (*v55)(v41[7] + v60, v47, v29);
      v17 = v44;
    }

    else
    {
      v41[(v32 >> 6) + 8] |= 1 << v32;
      *(v41[6] + 8 * v32) = v27;
      v49 = v41[7] + *(v63 + 72) * v32;
      v5 = v29;
      v28(v49, v17, v29);
      v50 = v41[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_20;
      }

      v41[2] = v52;
    }

    ++v24;
    a2 = 1;
    v22 = v61;
    a1 = v62;
    if (v66 == v24)
    {
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1BFAAF2C8();
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFAACBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_6_14(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = *(a5 + 48);
  return result;
}

void OUTLINED_FUNCTION_27_10(uint64_t a1@<X8>)
{
  v2 = **(a1 - 256);
  v3 = *(v1 - 200);
  v4 = *(v1 - 256);
}

uint64_t dispatch thunk of OfflineSuggestionsProvider.getSuggestionsForIntents(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

SiriSuggestionsAPI::CatGlobalsHolder __swiftcall CatGlobalsHolder.init(properties:deviceName:)(Swift::OpaquePointer properties, Swift::String_optional deviceName)
{
  object = deviceName.value._object;
  countAndFlagsBits = deviceName.value._countAndFlagsBits;
  v5 = v2;
  v6 = sub_1BFA12E44(properties._rawValue);

  *v5 = v6;
  v5[1] = countAndFlagsBits;
  v5[2] = object;
  result.deviceName.value._object = v9;
  result.deviceName.value._countAndFlagsBits = v8;
  result.properties._rawValue = v7;
  return result;
}

uint64_t CatGlobalsHolder.deviceName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CatGlobalsHolder.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC270, &unk_1BFAB7EB0);
  v5 = OUTLINED_FUNCTION_2_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAD0DC();
  sub_1BFAAFFF8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D0, &qword_1BFAB1158);
    LOBYTE(v17) = 0;
    OUTLINED_FUNCTION_2_16();
    v10 = sub_1BFAAEE38();
    OUTLINED_FUNCTION_2_16();
    sub_1BFAAEE18();
    v11 = sub_1BFA13064(v10);

    v12 = sub_1BFA12E44(v11);

    v13 = OUTLINED_FUNCTION_0_19();
    v14(v13);
    *a2 = v12;
    a2[1] = v17;
    a2[2] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

unint64_t sub_1BFAAD0DC()
{
  result = qword_1EDCC75E8;
  if (!qword_1EDCC75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC75E8);
  }

  return result;
}

uint64_t CatGlobalsHolder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC278, &unk_1BFAB7EC0);
  v4 = OUTLINED_FUNCTION_2_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  v11 = &v20 - v10;
  v12 = *v1;
  v13 = v1[2];
  v20 = v1[1];
  v21 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAD0DC();
  sub_1BFAB0008();
  LOBYTE(v23[0]) = 0;
  sub_1BFA13064(v12);
  v15 = v22;
  sub_1BFAAEE48();
  if (v15)
  {
    (*(v6 + 8))(v11, v3);
  }

  else
  {
    v17 = v20;

    v24 = 1;
    if (v21)
    {
      v18 = MEMORY[0x1E69E6160];
      v19 = MEMORY[0x1E69E6158];
    }

    else
    {
      v17 = 0;
      v19 = 0;
      v18 = 0;
      v23[2] = 0;
    }

    v23[0] = v17;
    v23[1] = v21;
    v23[3] = v19;
    v23[4] = v18;

    sub_1BFAAEE28();
    (*(v6 + 8))(v11, v3);
    return sub_1BFAAD328(v23);
  }
}

uint64_t sub_1BFAAD328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5A8, &qword_1BFAB0A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriSuggestionsAPI::CatGlobalsHolder::CatPropertyKeys_optional __swiftcall CatGlobalsHolder.CatPropertyKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x69747265706F7270 && stringValue._object == 0xEA00000000007365;
  if (v5 || (sub_1BFAAFF08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x614E656369766564 && object == 0xEA0000000000656DLL)
  {

    v7 = 1;
  }

  else
  {
    v9 = sub_1BFAAFF08();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CatGlobalsHolder.CatPropertyKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

uint64_t CatGlobalsHolder.CatPropertyKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x614E656369766564;
  }

  else
  {
    result = 0x69747265706F7270;
  }

  *v0;
  return result;
}

unint64_t sub_1BFAAD560()
{
  result = qword_1EBDFC280;
  if (!qword_1EBDFC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC280);
  }

  return result;
}

unint64_t sub_1BFAAD5B8()
{
  result = qword_1EDCC75F0;
  if (!qword_1EDCC75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC75F0);
  }

  return result;
}

unint64_t sub_1BFAAD610()
{
  result = qword_1EDCC75F8;
  if (!qword_1EDCC75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC75F8);
  }

  return result;
}

uint64_t sub_1BFAAD670(uint64_t a1)
{
  v2 = sub_1BFAAD0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFAAD6AC(uint64_t a1)
{
  v2 = sub_1BFAAD0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for CatGlobalsHolder.CatPropertyKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BFAAD920(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BFAAF688();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1BFAAF278();
  return sub_1BFAAF678();
}

uint64_t sub_1BFAAD9AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1BFAAF688();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1BFAADA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFAADAAC, 0, 0);
}

uint64_t sub_1BFAADAAC()
{
  v1 = *(v0 + 56);
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_3_15(v1);
  v4 = *(MEMORY[0x1E69CE2F0] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_17(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_21(v6);

  return MEMORY[0x1EEE38600](v8);
}

uint64_t sub_1BFAADB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFAADB64()
{
  v1 = *(v0 + 56);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_3_15(v1 + 2);
  v4 = *(MEMORY[0x1E69CE2F0] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_17(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_21(v6);

  return MEMORY[0x1EEE38600](v8);
}

uint64_t sub_1BFAADC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFAADC20()
{
  v1 = *(v0 + 56);
  v2 = v1[18];
  v3 = v1[19];
  OUTLINED_FUNCTION_3_15(v1 + 15);
  v4 = *(MEMORY[0x1E69CE2F0] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_17(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_21(v6);

  return MEMORY[0x1EEE38600](v8);
}

uint64_t sub_1BFAADCC0()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BFAADDB4()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);
  return sub_1BFAAFEE8();
}

uint64_t sub_1BFAADDF0()
{
  v1 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v0[18]);
  v2 = *(v1 + 32);
  return sub_1BFAAFEE8();
}

unint64_t SiriSuggestionsXPCBridge.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SiriSuggestionsXPCClient();
  result = SiriSuggestionsXPCClient.__allocating_init()();
  v4 = result;
  if (result)
  {
    result = sub_1BFAADE98();
  }

  else
  {
    v2 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

unint64_t sub_1BFAADE98()
{
  result = qword_1EDCC7E28;
  if (!qword_1EDCC7E28)
  {
    type metadata accessor for SiriSuggestionsXPCClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7E28);
  }

  return result;
}

unint64_t sub_1BFAADEF4(uint64_t a1)
{
  result = sub_1BFAADF1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BFAADF1C()
{
  result = qword_1EBDFC2A0;
  if (!qword_1EBDFC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC2A0);
  }

  return result;
}

unint64_t sub_1BFAADF70(uint64_t a1)
{
  *(a1 + 8) = sub_1BFAADFA0();
  result = sub_1BFAADFF4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1BFAADFA0()
{
  result = qword_1EBDFC2A8;
  if (!qword_1EBDFC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC2A8);
  }

  return result;
}

unint64_t sub_1BFAADFF4()
{
  result = qword_1EBDFC2B0;
  if (!qword_1EBDFC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC2B0);
  }

  return result;
}

uint64_t sub_1BFAAE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BFA18718;

  return sub_1BFAADA84(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFAAE12C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1BFAAE16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_3_15(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 8);
  return result;
}