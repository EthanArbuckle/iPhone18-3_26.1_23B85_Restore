Swift::Void __swiftcall Apple_Parsec_Search_ConversationContextManagementPolicy.clearLrcThreadPolicy()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC3900, &qword_1B9687970);
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0) + 20);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.lrcThreads.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Search_SearchConversationContext.managementPolicy.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  OUTLINED_FUNCTION_28_2(v0 + *(v9 + 24), v8);
  v10 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_57(v8);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v10 + 20);
    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_57(v8);
    if (!v11)
    {
      return sub_1B8D9207C(v8, &qword_1EBAC3908, &qword_1B9687978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_46();
    return sub_1B9081890();
  }

  return result;
}

uint64_t sub_1B9081890()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B90818E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_208();
  sub_1B9081498();
  return a7(v7);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.managementPolicy.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC3908, &qword_1B9687978);
  OUTLINED_FUNCTION_1_46();
  sub_1B9081890();
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Search_SearchConversationContext.managementPolicy.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v6);
  v8 = OUTLINED_FUNCTION_53_6(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v10);
  *(v1 + 32) = __swift_coroFrameAllocStub(v10);
  v11 = *(type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0) + 24);
  *(v1 + 40) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  OUTLINED_FUNCTION_44_7(v12, v13);
  OUTLINED_FUNCTION_75(v5);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v0 + 20);
    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_75(v5);
    if (!v14)
    {
      sub_1B8D9207C(v5, &qword_1EBAC3908, &qword_1B9687978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_46();
    OUTLINED_FUNCTION_461();
    sub_1B9081890();
  }

  return sub_1B9081B40;
}

void sub_1B9081B7C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[2];
  v18 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    sub_1B9081498();
    sub_1B8D9207C(v11 + v7, a3, a4);
    sub_1B9081890();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
    sub_1B90814EC();
  }

  else
  {
    sub_1B8D9207C(v11 + v7, a3, a4);
    sub_1B9081890();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  }

  free(v9);
  free(v8);
  free(v18);

  free(v6);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.hasManagementPolicy.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 24));
  v8 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Search_SearchConversationContext.clearManagementPolicy()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC3908, &qword_1B9687978);
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B9081D8C()
{
  v2 = OUTLINED_FUNCTION_27();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(v0, v1 + v4, v6);
}

uint64_t sub_1B9081E1C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Search_SearchConversationContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Search_SearchConversationContext(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9081EE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC38A0);
  __swift_project_value_buffer(v0, qword_1EBAC38A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "used_frequency";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "last_used_timestamp";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "long_persistence_ttl";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 10;
  *v17 = "summary";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_LRConversationThread.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
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
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9082258();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B908230C();
        break;
      case 10:
        v5 = OUTLINED_FUNCTION_432();
        sub_1B90823C0(v5, v6, v2, v1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9082258()
{
  v0 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 32);
  sub_1B964C110();
  sub_1B9082F08(&qword_1EBABD1B8, MEMORY[0x1E69AA900]);
  return sub_1B964C580();
}

uint64_t sub_1B908230C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 36);
  sub_1B964C220();
  sub_1B9082F08(&qword_1EBAC3918, MEMORY[0x1E69AAB70]);
  return sub_1B964C580();
}

uint64_t sub_1B90823C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v46 = a3;
  v45 = a2;
  v5 = sub_1B964C180();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC39D8, &unk_1B96880B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v38 - v25;
  __swift_storeEnumTagSinglePayload(&v38 - v25, 1, 1, v5);
  v27 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 24);
  v40 = a1;
  v38 = v27;
  sub_1B8DD9078(a1 + v27, v14, &qword_1EBAC38F0, &qword_1B9687960);
  v39 = v15;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBAC38F0, &qword_1B9687960);
    v29 = v44;
  }

  else
  {
    sub_1B9081890();
    sub_1B9081890();
    sub_1B8D9207C(v26, &qword_1EBAC39D8, &unk_1B96880B0);
    v30 = v44;
    v31 = *(v44 + 32);
    v31(v10, v19, v5);
    v31(v26, v10, v5);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v5);
    v29 = v30;
  }

  sub_1B9082F08(&qword_1EBAC3910, MEMORY[0x1E69AA9A0]);
  v32 = v42;
  sub_1B964C580();
  if (v32)
  {
    v33 = v26;
    return sub_1B8D9207C(v33, &qword_1EBAC39D8, &unk_1B96880B0);
  }

  sub_1B8DD9078(v26, v24, &qword_1EBAC39D8, &unk_1B96880B0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
  {
    sub_1B8D9207C(v26, &qword_1EBAC39D8, &unk_1B96880B0);
    v33 = v24;
    return sub_1B8D9207C(v33, &qword_1EBAC39D8, &unk_1B96880B0);
  }

  v35 = *(v29 + 32);
  v35(v41, v24, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v26, &qword_1EBAC39D8, &unk_1B96880B0);
  v36 = v40;
  v37 = v38;
  sub_1B8D9207C(v40 + v38, &qword_1EBAC38F0, &qword_1B9687960);
  v35((v36 + v37), v41, v5);
  return __swift_storeEnumTagSinglePayload(v36 + v37, 0, 1, v39);
}

uint64_t Apple_Parsec_Search_LRConversationThread.traverse<A>(visitor:)(uint64_t *a1, uint64_t a2, int *a3)
{
  v6 = v4;
  v82 = a3;
  v83 = a2;
  v84 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v81 = v11;
  v12 = sub_1B964C180();
  v13 = OUTLINED_FUNCTION_30_1(v12);
  v79 = v14;
  v80 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v78 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38E8, &qword_1B9687958);
  OUTLINED_FUNCTION_183(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  v25 = sub_1B964C220();
  v26 = OUTLINED_FUNCTION_30_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_159();
  v38 = sub_1B964C110();
  v39 = OUTLINED_FUNCTION_30_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  v45 = v44 - v43;
  v46 = *v3;
  v47 = v3[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    v76 = v38;
    v49 = v45;
    v50 = v42;
    OUTLINED_FUNCTION_52_6();
    v3 = v84;
    result = sub_1B964C700();
    if (v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_50_8();
    v6 = v52;
    v42 = v50;
    v45 = v49;
    v38 = v76;
  }

  v75 = v42;
  v77 = v24;
  if (*(v3 + 4))
  {
    OUTLINED_FUNCTION_52_6();
    v3 = v84;
    result = sub_1B964C710();
    if (v6)
    {
      return result;
    }

    OUTLINED_FUNCTION_50_8();
  }

  v53 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8DD9078(v3 + v53[8], v5, &off_1EBAB90F0, &unk_1B964D8E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v38);
  v74 = v3;
  if (EnumTagSinglePayload == 1)
  {
    v76 = v33;
    sub_1B8D9207C(v5, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  else
  {
    v73 = v28;
    v55 = v75;
    (*(v75 + 32))(v45, v5, v38);
    OUTLINED_FUNCTION_21_12();
    sub_1B9082F08(v56, v57);
    sub_1B964C740();
    if (v6)
    {
      return (*(v55 + 8))(v45, v38);
    }

    v76 = v33;
    (*(v55 + 8))(v45, v38);
    v28 = v73;
    v3 = v74;
  }

  v58 = v77;
  sub_1B8DD9078(v3 + v53[9], v77, &qword_1EBAC38E8, &qword_1B9687958);
  if (__swift_getEnumTagSinglePayload(v58, 1, v25) == 1)
  {
    sub_1B8D9207C(v58, &qword_1EBAC38E8, &qword_1B9687958);
    v59 = v81;
  }

  else
  {
    v82 = v53;
    v60 = v76;
    (*(v28 + 32))(v76, v58, v25);
    OUTLINED_FUNCTION_19_13();
    sub_1B9082F08(v61, v62);
    sub_1B964C740();
    v63 = v28;
    v59 = v81;
    if (v6)
    {
      return (*(v63 + 8))(v60, v25);
    }

    (*(v63 + 8))(v60, v25);
    v3 = v74;
    v53 = v82;
  }

  v64 = v53;
  sub_1B8DD9078(v3 + v53[6], v59, &qword_1EBAC38F0, &qword_1B9687960);
  v65 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  v66 = __swift_getEnumTagSinglePayload(v59, 1, v65);
  v68 = v79;
  v67 = v80;
  if (v66 == 1)
  {
    sub_1B8D9207C(v59, &qword_1EBAC38F0, &qword_1B9687960);
  }

  else
  {
    v69 = v59;
    v70 = v78;
    (*(v79 + 32))(v78, v69, v80);
    sub_1B9082F08(&qword_1EBAC3910, MEMORY[0x1E69AA9A0]);
    sub_1B964C740();
    if (v6)
    {
      return (*(v68 + 8))(v70, v67);
    }

    (*(v68 + 8))(v70, v67);
    v3 = v74;
  }

  v71 = v3 + v64[7];
  return sub_1B964C290();
}

uint64_t sub_1B9082F08(unint64_t *a1, void (*a2)(uint64_t))
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

void static Apple_Parsec_Search_LRConversationThread.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v95 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  v6 = OUTLINED_FUNCTION_59_1(v95);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v92 = v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3920, &qword_1B9687980);
  OUTLINED_FUNCTION_59_1(v94);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_185();
  v96 = v20;
  v100 = sub_1B964C220();
  v21 = OUTLINED_FUNCTION_30_1(v100);
  v98 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v93 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38E8, &qword_1B9687958);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_185();
  v97 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3928, &qword_1B9687988);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_185();
  v99 = v36;
  v37 = sub_1B964C110();
  v38 = OUTLINED_FUNCTION_30_1(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_159();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  OUTLINED_FUNCTION_59_1(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v89 - v51;
  v53 = *v5 == *v3 && *(v5 + 8) == *(v3 + 8);
  if (!v53 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 16) != *(v3 + 16))
  {
    goto LABEL_37;
  }

  v89[1] = v11;
  v54 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  v101 = v3;
  v55 = *(v54 + 32);
  v56 = *(v47 + 48);
  v90 = v54;
  v91 = v5;
  sub_1B8DD9078(v5 + v55, v52, &off_1EBAB90F0, &unk_1B964D8E0);
  v57 = v101 + v55;
  v58 = v101;
  sub_1B8DD9078(v57, &v52[v56], &off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_37_0(v52);
  if (v53)
  {
    OUTLINED_FUNCTION_37_0(&v52[v56]);
    if (v53)
    {
      sub_1B8D9207C(v52, &off_1EBAB90F0, &unk_1B964D8E0);
      goto LABEL_17;
    }

LABEL_15:
    v60 = &qword_1EBAB90F8;
    v61 = &qword_1B9687990;
    v62 = v52;
LABEL_36:
    sub_1B8D9207C(v62, v60, v61);
    goto LABEL_37;
  }

  sub_1B8DD9078(v52, v1, &off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_37_0(&v52[v56]);
  if (v59)
  {
    (*(v40 + 8))(v1, v37);
    goto LABEL_15;
  }

  (*(v40 + 32))(v0, &v52[v56], v37);
  OUTLINED_FUNCTION_21_12();
  sub_1B9082F08(v63, v64);
  v65 = sub_1B964C850();
  v66 = *(v40 + 8);
  v66(v0, v37);
  v66(v1, v37);
  sub_1B8D9207C(v52, &off_1EBAB90F0, &unk_1B964D8E0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  v68 = v90;
  v67 = v91;
  v69 = *(v90 + 36);
  v70 = *(v32 + 48);
  v71 = v99;
  sub_1B8DD9078(v91 + v69, v99, &qword_1EBAC38E8, &qword_1B9687958);
  sub_1B8DD9078(v58 + v69, v71 + v70, &qword_1EBAC38E8, &qword_1B9687958);
  v72 = v100;
  OUTLINED_FUNCTION_178(v71, 1, v100);
  if (v53)
  {
    OUTLINED_FUNCTION_57(v71 + v70);
    if (v53)
    {
      sub_1B8D9207C(v71, &qword_1EBAC38E8, &qword_1B9687958);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v73 = v97;
  sub_1B8DD9078(v71, v97, &qword_1EBAC38E8, &qword_1B9687958);
  OUTLINED_FUNCTION_57(v71 + v70);
  if (v74)
  {
    (*(v98 + 8))(v73, v72);
LABEL_25:
    v60 = &qword_1EBAC3928;
    v61 = &qword_1B9687988;
    v62 = v71;
    goto LABEL_36;
  }

  v75 = v98;
  v76 = v93;
  (*(v98 + 32))(v93, v71 + v70, v72);
  OUTLINED_FUNCTION_19_13();
  sub_1B9082F08(v77, v78);
  v79 = sub_1B964C850();
  v80 = *(v75 + 8);
  v80(v76, v72);
  v80(v73, v72);
  sub_1B8D9207C(v71, &qword_1EBAC38E8, &qword_1B9687958);
  if ((v79 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  v81 = *(v68 + 24);
  v82 = *(v94 + 48);
  v83 = v96;
  sub_1B8DD9078(v67 + v81, v96, &qword_1EBAC38F0, &qword_1B9687960);
  sub_1B8DD9078(v58 + v81, v83 + v82, &qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_178(v83, 1, v95);
  if (v53)
  {
    OUTLINED_FUNCTION_37_0(v83 + v82);
    if (v53)
    {
      sub_1B8D9207C(v83, &qword_1EBAC38F0, &qword_1B9687960);
LABEL_39:
      v86 = *(v68 + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_53();
      sub_1B9082F08(v87, v88);
      sub_1B964C850();
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_1B8DD9078(v83, v92, &qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_37_0(v83 + v82);
  if (v84)
  {
    sub_1B90814EC();
LABEL_35:
    v60 = &qword_1EBAC3920;
    v61 = &qword_1B9687980;
    v62 = v83;
    goto LABEL_36;
  }

  sub_1B9081890();
  v85 = static Apple_Parsec_Search_LRConversationThread.OneOf_ContextType.== infix(_:_:)();
  OUTLINED_FUNCTION_18_13();
  sub_1B90814EC();
  OUTLINED_FUNCTION_186();
  sub_1B90814EC();
  sub_1B8D9207C(v83, &qword_1EBAC38F0, &qword_1B9687960);
  if (v85)
  {
    goto LABEL_39;
  }

LABEL_37:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90837D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39D0, type metadata accessor for Apple_Parsec_Search_LRConversationThread);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9083854(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90838C4()
{
  sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C540();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B964C710(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_LRConversationThreadManagementPolicy.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_280();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_53();
  sub_1B9082F08(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9083B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39C8, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9083C1C(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9083C8C()
{
  sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);

  return sub_1B964C5D0();
}

uint64_t sub_1B9083D3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964D050;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v14 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v14);
  (*(v15 + 104))(v12, v13);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9083F10();
    }
  }

  return result;
}

uint64_t sub_1B9083F10()
{
  v0 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0) + 20);
  type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3900, &qword_1B9687970);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0) + 20);
  v18 = v3;
  sub_1B8DD9078(v3 + v15, v10, &qword_1EBAC3900, &qword_1B9687970);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC3900, &qword_1B9687970);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    sub_1B9081890();
    sub_1B9082F08(&qword_1EBAC3948, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy);
    sub_1B964C740();
    OUTLINED_FUNCTION_24_15();
    result = sub_1B90814EC();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

void static Apple_Parsec_Search_ConversationContextManagementPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  v29 = OUTLINED_FUNCTION_59_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v32 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&a9 - v36);
  v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3950, &qword_1B9687998) - 8);
  v39 = *(*v38 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_22_3();
  v42 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v41) + 20);
  v43 = v38[14];
  OUTLINED_FUNCTION_44_7(v27 + v42, v20);
  OUTLINED_FUNCTION_44_7(v25 + v42, v20 + v43);
  OUTLINED_FUNCTION_37_0(v20);
  if (!v46)
  {
    sub_1B8DD9078(v20, v37, &qword_1EBAC3900, &qword_1B9687970);
    OUTLINED_FUNCTION_37_0(v20 + v43);
    if (!v46)
    {
      OUTLINED_FUNCTION_2_29();
      sub_1B9081890();
      if (*v37 == *v21)
      {
        v49 = *(v28 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_53();
        sub_1B9082F08(v50, v51);
        v52 = sub_1B964C850();
        sub_1B90814EC();
        sub_1B90814EC();
        sub_1B8D9207C(v20, &qword_1EBAC3900, &qword_1B9687970);
        if ((v52 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }

      sub_1B90814EC();
      sub_1B90814EC();
      v47 = &qword_1EBAC3900;
      v48 = &qword_1B9687970;
LABEL_11:
      sub_1B8D9207C(v20, v47, v48);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_24_15();
    sub_1B90814EC();
LABEL_10:
    v47 = &qword_1EBAC3950;
    v48 = &qword_1B9687998;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_0(v20 + v43);
  if (!v46)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v20, &qword_1EBAC3900, &qword_1B9687970);
LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_53();
  sub_1B9082F08(v44, v45);
  sub_1B964C850();
LABEL_12:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9084520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39C0, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90845A0(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9084610()
{
  sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy);

  return sub_1B964C5D0();
}

uint64_t sub_1B90846A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5D50);
  __swift_project_value_buffer(v0, qword_1EBAB5D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lrc_threads";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "management_policy";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_SearchConversationContext.decodeMessage<A>(decoder:)()
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

    if (result == 10)
    {
      OUTLINED_FUNCTION_9();
      sub_1B908499C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B90848FC();
    }
  }

  return result;
}

uint64_t sub_1B90848FC()
{
  type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread);
  return sub_1B964C570();
}

uint64_t sub_1B908499C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0) + 24);
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Search_SearchConversationContext.traverse<A>(visitor:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3908, &qword_1B9687978);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  v7 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Search_LRConversationThread(0), sub_1B9082F08(&qword_1EBAC3960, type metadata accessor for Apple_Parsec_Search_LRConversationThread), OUTLINED_FUNCTION_55_5(), result = sub_1B964C730(), !v1))
  {
    v12 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
    sub_1B8DD9078(v0 + *(v12 + 24), v2, &qword_1EBAC3908, &qword_1B9687978);
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAC3908, &qword_1B9687978);
    }

    else
    {
      OUTLINED_FUNCTION_1_46();
      sub_1B9081890();
      sub_1B9082F08(&qword_1EBAC3968, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy);
      OUTLINED_FUNCTION_55_5();
      sub_1B964C740();
      OUTLINED_FUNCTION_22_14();
      result = sub_1B90814EC();
      if (v1)
      {
        return result;
      }
    }

    v13 = v0 + *(v12 + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9084F68(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B9082F08(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9085048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9082F08(&qword_1EBAC39B8, type metadata accessor for Apple_Parsec_Search_SearchConversationContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90850C8(uint64_t a1)
{
  v2 = sub_1B9082F08(&qword_1EBAB5D40, type metadata accessor for Apple_Parsec_Search_SearchConversationContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9085138()
{
  sub_1B9082F08(&qword_1EBAB5D40, type metadata accessor for Apple_Parsec_Search_SearchConversationContext);

  return sub_1B964C5D0();
}

void sub_1B9085660()
{
  sub_1B90857BC(319, &qword_1ED9D1778, type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B90857BC(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B90857BC(319, &qword_1ED9CF6F0, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B90857BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9085820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B964C180();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1B9085868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C180();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1B90858C0(uint64_t a1)
{
  v2 = sub_1B964C180();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1B9085990()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9085A0C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B90857BC(319, &qword_1ED9CF7C8, type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9085AE8()
{
  sub_1B90857BC(319, &qword_1ED9CF638, type metadata accessor for Apple_Parsec_Search_LRConversationThread, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B90857BC(319, &qword_1ED9CF838, type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_30_19@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_44_7(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  if (qword_1ED9D38C0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1ED9D38C8;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Search_DevicePolicyType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (!a2)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Search_DevicePolicyType.rawValue.getter()
{
  if (v0[8])
  {
    return 2 * (*v0 != 0);
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B9085E94@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_DevicePolicyType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9085EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9093124();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_DevicePolicyType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B9085FCC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_DevicePolicyType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.secretKey.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9086034(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.secretKey.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.secretKey.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.secretKey.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086138(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.secretKey.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.countryCode.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9086204(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.countryCode.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.countryCode.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086308(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.locale.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B90863D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.locale.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.locale.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 56);
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.locale.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90864D8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.locale.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B90865A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90866A8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.getter()
{
  OUTLINED_FUNCTION_10_23();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 80);
}

uint64_t sub_1B9086770(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v8);
    *(v2 + v4) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v7 + 80);
  *(v7 + 80) = v0;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 80);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086888(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
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
      OUTLINED_FUNCTION_19_14();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_59_3();
    v15 = *(v11 + 80);
    *(v11 + 80) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.storeFront.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9086974(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.storeFront.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 96);
  *(v5 + 88) = v2;
  *(v5 + 96) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.storeFront.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 96);
  *(v1 + 48) = *(v5 + 88);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086A78(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 96);
    *(v9 + 88) = v4;
    *(v9 + 96) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.userGuid.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9086B44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.userGuid.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 112);
  *(v5 + 104) = v2;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.userGuid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086C48(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 112);
    *(v9 + 104) = v4;
    *(v9 + 112) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.timeZone.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9086D14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.timeZone.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 128);
  *(v5 + 120) = v2;
  *(v5 + 128) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.timeZone.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 128);
  *(v1 + 48) = *(v5 + 120);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086E18(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 128);
    *(v9 + 120) = v4;
    *(v9 + 128) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.skuRegion.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9086EE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 144);
  *(v5 + 136) = v2;
  *(v5 + 144) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.skuRegion.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 144);
  *(v1 + 48) = *(v5 + 136);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9086FE8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 144);
    *(v9 + 136) = v4;
    *(v9 + 144) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.calendar.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_432();
}

void sub_1B90870B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.calendar.setter();
}

void Apple_Parsec_Search_PegasusQueryContext.calendar.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 160);
  *(v5 + 152) = v2;
  *(v5 + 160) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.calendar.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 160);
  *(v1 + 48) = *(v5 + 152);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90871B8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.calendar.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B908C5D0(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 160);
    *(v9 + 152) = v4;
    *(v9 + 160) = v3;
  }

  free(v1);
}

void Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_66_2(*(v0 + 168));
}

void Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_15();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 168) = v3;
  *(v6 + 176) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 176);
  OUTLINED_FUNCTION_71_2(*(v0 + 168));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9087354()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_19_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B908C5D0(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 168) = v2;
  *(v7 + 176) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Apple_Parsec_Search_PegasusQueryContext.measurementSystem.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_66_2(*(v0 + 184));
}

void Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_15();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 184) = v3;
  *(v6 + 192) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.measurementSystem.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 192);
  OUTLINED_FUNCTION_71_2(*(v0 + 184));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90874EC()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_19_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B908C5D0(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 184) = v2;
  *(v7 + 192) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

void Apple_Parsec_Search_PegasusQueryContext.hourFormat.getter()
{
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_66_2(*(v0 + 200));
}

void Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_15();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 200) = v3;
  *(v6 + 208) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.hourFormat.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 208);
  OUTLINED_FUNCTION_71_2(*(v0 + 200));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9087684()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_19_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B908C5D0(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 200) = v2;
  *(v7 + 208) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Apple_Parsec_Search_V2_Location.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3A18, &qword_1B96880D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_17();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.location.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_108_6();
  v10 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.location.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Search_V2_Location(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0;
    *(v12 + 16) = 1;
    *(v12 + 5) = 0;
    *(v12 + 24) = 0;
    v12[4] = 0;
    *(v12 + 40) = 1;
    v14 = v12 + v8[10];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = v8[11];
    v16 = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution(0);
    OUTLINED_FUNCTION_84_6(v16);
    v17 = v8[12];
    v18 = sub_1B964C130();
    OUTLINED_FUNCTION_84_6(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A18, &qword_1B96880D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_17();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.mapsSession.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0xC000000000000000;
    v10 = a1 + *(v8 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3A20, &qword_1B96880D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.mapsSession.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_14_15();
  OUTLINED_FUNCTION_108_6();
  v10 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.mapsSession.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    *(v12 + 8) = 0;
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = 0xC000000000000000;
    v14 = v12 + *(v8 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A20, &qword_1B96880D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9087DB4()
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
    sub_1B908D914();
    v2(v3);
    sub_1B908D96C();
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

uint64_t sub_1B9087E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  OUTLINED_FUNCTION_2_30();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  OUTLINED_FUNCTION_178(v15, 1, v17);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1B8D9207C(v15, v5, v4);
  return v19;
}

void sub_1B9087F88()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v18 = OUTLINED_FUNCTION_40_0();
    *(v5 + v14) = sub_1B908C5D0(v18);
  }

  v19 = v4(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.subscriptions.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = xmmword_1B9652FE0;
    v10 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3A28, &qword_1B96880E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_18();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_108_6();
  v10 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.subscriptions.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = xmmword_1B9652FE0;
    v14 = v12 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A28, &qword_1B96880E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void Apple_Parsec_Search_PegasusQueryContext.transportationMode.getter()
{
  OUTLINED_FUNCTION_10_23();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  OUTLINED_FUNCTION_521();
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_66_2(*v2);
}

uint64_t sub_1B908847C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void Apple_Parsec_Search_PegasusQueryContext.transportationMode.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_15();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  v9 = v6 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  OUTLINED_FUNCTION_18();
  *v9 = v3;
  *(v9 + 8) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.transportationMode.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 88) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_71_2(*v0);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90885A8()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_19_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B908C5D0(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  v12 = v7 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  OUTLINED_FUNCTION_211_0();
  *v12 = v2;
  *(v12 + 8) = v3;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.getter()
{
  OUTLINED_FUNCTION_10_23();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  OUTLINED_FUNCTION_6_2();
  v4 = *v2;
  v3 = v2[1];
  v5 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v5, v6);
  return OUTLINED_FUNCTION_288();
}

void Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_21();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  OUTLINED_FUNCTION_211_0();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v2;
  v8[1] = v0;
  sub_1B8D538A0(v9, v10);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_54(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9088798(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v1[8];
    v8 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v8, v9);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
    v10 = v1[6];
    v11 = v1[7];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_163_1();
    v13 = *(v5 + v2);
    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_16();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B908C5D0(v14);
      OUTLINED_FUNCTION_168(v15);
    }

    v16 = (v13 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
    OUTLINED_FUNCTION_211_0();
    v10 = *v16;
    v11 = v16[1];
    *v16 = v4;
    v16[1] = v3;
  }

  sub_1B8D538A0(v10, v11);

  free(v1);
}

float Apple_Parsec_Search_PegasusQueryContext.uiScale.getter()
{
  OUTLINED_FUNCTION_10_23();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale;
  OUTLINED_FUNCTION_6_2();
  return *v2;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.uiScale.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v8);
    *(v2 + v4) = v7;
  }

  v9 = (v7 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  result = OUTLINED_FUNCTION_18();
  *v9 = a1;
  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.uiScale.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9088970(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_19_14();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B908C5D0(v11);
    *(v10 + v9) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  OUTLINED_FUNCTION_211_0();
  *v12 = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.internalBuild.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9088AB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_30();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v1 + v3);
}

void sub_1B9088B00()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  *(v7 + v10) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.seedBuild.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9088BDC()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_19_14();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B908C5D0(v12);
    OUTLINED_FUNCTION_73_2(v13);
  }

  v14 = *v1;
  OUTLINED_FUNCTION_18();
  *(v9 + v14) = v6;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.hsEnabled.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.managedDevice.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.abTestSeed.getter()
{
  OUTLINED_FUNCTION_10_23();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.abTestSeed.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B908C5D0(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  result = OUTLINED_FUNCTION_9_3();
  *(v7 + v9) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.abTestSeed.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9088EBC(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_19_14();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B908C5D0(v11);
    OUTLINED_FUNCTION_168(v12);
  }

  v13 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_18();
  *(v8 + v13) = v3;

  free(v1);
}

void sub_1B9088F6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.siriLocale.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.siriLocale.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B908904C(void *a1)
{
  OUTLINED_FUNCTION_10_23();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_6_2();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B9089098(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.region.setter();
}

void sub_1B90890E4()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  OUTLINED_FUNCTION_16();
  v6 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v10);
    *(v5 + v6) = v9;
  }

  v11 = (v9 + *v4);
  OUTLINED_FUNCTION_211_0();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.region.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B90891FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.sil.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.sil.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B90892DC(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B90893BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.ampBaselineExperimentMetadata.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.ampBaselineExperimentMetadata.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B908949C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.siriResponseLanguageVariant.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.siriResponseLanguageVariant.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    v10 = a1 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3A30, &unk_1B96880E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_5_21();
  OUTLINED_FUNCTION_108_6();
  v10 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = MEMORY[0x1E69E7CC0];
    v14 = v12 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A30, &unk_1B96880E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B90898E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.deviceModel.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.deviceModel.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.isGenerativeModelDevice.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9089A54(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_30();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + v3);
}

void sub_1B9089A94(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Search_PegasusQueryContext.companionDevice.setter();
}

void sub_1B9089ACC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + v10);
  *(v7 + v10) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.companionDevice.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_10_23();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9089BD4(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;
    v8 = *(v1 + 56);

    v7(v9);
    v10 = *(v1 + 48);
  }

  else
  {
    v11 = v2;
    v12 = *(v1 + 64);
    v13 = *(v1 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 56);
      OUTLINED_FUNCTION_19_14();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = sub_1B908C5D0(v19);
      OUTLINED_FUNCTION_168(v20);
    }

    v21 = *v11;
    OUTLINED_FUNCTION_59_3();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v1);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.deviceMetadata.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  sub_1B8D92024();
  v8 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v10 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v8 + 24);
    v12 = type metadata accessor for Useragentpb_Firmware(0);
    __swift_storeEnumTagSinglePayload(a1 + v11, 1, 1, v12);
    result = OUTLINED_FUNCTION_178(v7, 1, v8);
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB91A8, &unk_1B964D990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_17();
    return sub_1B908D8BC();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.deviceMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_108_6();
  v10 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.deviceMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Useragentpb_DeviceMetadata(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v14 = v12 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v8 + 24);
    v16 = type metadata accessor for Useragentpb_Firmware(0);
    OUTLINED_FUNCTION_84_6(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB91A8, &unk_1B964D990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.searchOptOut.modify()
{
  v1 = OUTLINED_FUNCTION_18_3();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_102_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B908A0E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.longSecretKey.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.longSecretKey.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B908A1C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.keyboardIme.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.keyboardIme.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.weatherUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    Apple_Parsec_Search_V2_WeatherUnits.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3A38, &qword_1B96880F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_16();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.weatherUnits.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_108_6();
  v10 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Apple_Parsec_Search_PegasusQueryContext.weatherUnits.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[8] = 1;
    *(v11 + 2) = 0;
    v11[24] = 1;
    *(v11 + 4) = 0;
    v11[40] = 1;
    *(v11 + 6) = 0;
    v11[56] = 1;
    *(v11 + 8) = 0;
    v11[72] = 1;
    v13 = &v11[*(v7 + 36)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A38, &qword_1B96880F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B908A614(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_PegasusQueryContext.encryptedAuthToken.setter();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.encryptedAuthToken.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_54(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B908A6E8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v3);
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
    v9 = *(v0 + 56);
  }

  else
  {
    v10 = v4;
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      OUTLINED_FUNCTION_19_14();
      v18 = OUTLINED_FUNCTION_40_0();
      v19 = sub_1B908C5D0(v18);
      OUTLINED_FUNCTION_73_2(v19);
    }

    v20 = (v15 + *v10);
    OUTLINED_FUNCTION_211_0();
    v21 = v20[1];
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v22);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    v10 = a1 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC3A40, &qword_1B9688100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    return OUTLINED_FUNCTION_112_5();
  }

  return result;
}

uint64_t sub_1B908A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B908D914();
  return a7(v13);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_15();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B908C5D0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_108_6();
  v10 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = MEMORY[0x1E69E7CC0];
    v14 = v12 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3A40, &qword_1B9688100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_105_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t sub_1B908ACC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9095270();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B908AD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B909521C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B908ADD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90951C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B908AEBC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B908AF74@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.HourFormat.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B908B02C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_PegasusQueryContext.HourFormat.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.devicePolicies.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*Apple_Parsec_Search_AppleIntelligenceStatus.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.query.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Apple_Parsec_Search_PegasusSearchQuery.qtype.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.qtype.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1B908B21C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B908B2B0()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t (*Apple_Parsec_Search_PegasusSearchQuery.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.completions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.origins.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Search_LocalCompletionInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(v0) + 28);
  return nullsub_1;
}

uint64_t sub_1B908B548()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3A00);
  __swift_project_value_buffer(v0, qword_1EBAC3A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEVICE_POLICY_TYPE_UNKNOWN";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "DEVICE_POLICY_TYPE_COUNTRY_1";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B908B740()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CF4A8);
  __swift_project_value_buffer(v0, qword_1ED9CF4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1B96880C0;
  v4 = v88 + v3 + v1[14];
  *(v88 + v3) = 1;
  *v4 = "secret_key";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v88 + v3 + v2 + v1[14];
  *(v88 + v3 + v2) = 2;
  *v8 = "country_code";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v88 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  LODWORD(v4) = *MEMORY[0x1E69AADC8];
  v7();
  v11 = (v88 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "effective_system_language";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v88 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "preferred_languages";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v88 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "store_front";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v88 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "user_guid";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v88 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "time_zone";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v88 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "sku_region";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  v23 = (v88 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "calendar";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v88 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "temperature_unit";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v88 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "measurement_system";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v88 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hour_format";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  v31 = (v88 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "location";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v7();
  v33 = (v88 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "maps_session";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v88 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "subscriptions";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v88 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "transportation_mode";
  *(v38 + 1) = 19;
  v38[16] = 2;
  v7();
  v39 = (v88 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "installed_apps_signature";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v88 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "ui_scale";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  v43 = (v88 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "internal_build";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v88 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "seed_build";
  *(v46 + 1) = 10;
  v46[16] = 2;
  v7();
  v47 = (v88 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "hs_enabled";
  *(v48 + 1) = 10;
  v48[16] = 2;
  v7();
  v49 = (v88 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "managed_device";
  *(v50 + 1) = 14;
  v50[16] = 2;
  v7();
  v51 = (v88 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "ab_test_seed";
  *(v52 + 1) = 12;
  v52[16] = 2;
  v7();
  v53 = (v88 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 26;
  *v54 = "siri_locale";
  *(v54 + 1) = 11;
  v54[16] = 2;
  v7();
  v55 = (v88 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 27;
  *v56 = "region";
  *(v56 + 1) = 6;
  v56[16] = 2;
  v7();
  v57 = (v88 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 28;
  *v58 = "sil";
  *(v58 + 1) = 3;
  v58[16] = 2;
  v7();
  v59 = (v88 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 29;
  *v60 = "trial_identifiers";
  *(v60 + 1) = 17;
  v60[16] = 2;
  v7();
  v61 = (v88 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 30;
  *v62 = "amp_baseline_experiment_metadata";
  *(v62 + 1) = 32;
  v62[16] = 2;
  v7();
  v63 = (v88 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 31;
  *v64 = "siri_response_language_variant";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v88 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 32;
  *v66 = "marketplace_info";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v88 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 33;
  *v68 = "device_model";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v88 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "is_generative_model_device";
  *(v70 + 1) = 26;
  v70[16] = 2;
  v7();
  v71 = (v88 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "companion_device";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v7();
  v73 = (v88 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "device_metadata";
  *(v74 + 1) = 15;
  v74[16] = 2;
  v7();
  v75 = (v88 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "search_opt_out";
  *(v76 + 1) = 14;
  v76[16] = 2;
  v7();
  v77 = (v88 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "long_secret_key";
  *(v78 + 1) = 15;
  v78[16] = 2;
  v7();
  v79 = (v88 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "keyboard_ime";
  *(v80 + 1) = 12;
  v80[16] = 2;
  v7();
  v81 = (v88 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "weather_units";
  *(v82 + 1) = 13;
  v82[16] = 2;
  v7();
  v83 = (v88 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "encrypted_auth_token";
  *(v84 + 1) = 20;
  v84[16] = 2;
  v7();
  v85 = (v88 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 44;
  *v86 = "apple_intelligence_status";
  *(v86 + 1) = 25;
  v86[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B908C298()
{
  OUTLINED_FUNCTION_19_14();
  result = sub_1B908C328();
  qword_1ED9D38C8 = result;
  return result;
}

uint64_t sub_1B908C328()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location;
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions;
  v7 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers) = v1;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo;
  v15 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice) = v1;
  v17 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata;
  v18 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut) = 0;
  v19 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits;
  v22 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus;
  v25 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  __swift_storeEnumTagSinglePayload(v0 + v24, 1, 1, v25);
  return v0;
}

uint64_t sub_1B908C5D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v211 = v168 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v210 = v168 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v209 = v168 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v207 = v168 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v187 = v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v183 = v168 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v180 = v168 - v23;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v169 = (v1 + 64);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 80) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 88) = 0;
  v170 = (v1 + 88);
  *(v1 + 96) = 0xE000000000000000;
  *(v1 + 104) = 0;
  v171 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v172 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  v173 = (v1 + 136);
  *(v1 + 144) = 0xE000000000000000;
  *(v1 + 152) = 0;
  v174 = (v1 + 152);
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  v175 = (v1 + 168);
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  v176 = (v1 + 184);
  *(v1 + 192) = 1;
  *(v1 + 200) = 0;
  v177 = (v1 + 200);
  *(v1 + 208) = 1;
  v24 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location;
  v178 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location;
  v25 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession;
  v179 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession;
  v27 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions;
  v168[1] = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions;
  v29 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v30 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  v181 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  *v30 = 0;
  *(v30 + 8) = 1;
  v182 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature) = xmmword_1B9652FE0;
  v184 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale) = 0;
  v185 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild) = 0;
  v186 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild) = 0;
  v188 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled) = 0;
  v189 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice) = 0;
  v190 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed) = 0;
  v31 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  v191 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  v192 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v33 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  v193 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v194 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  v34 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers) = MEMORY[0x1E69E7CC0];
  v35 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata);
  v195 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  v196 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo;
  v197 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo;
  v38 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v37, 1, 1, v38);
  v39 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  v198 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v199 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice) = 0;
  v200 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice) = v34;
  v40 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata;
  v201 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata;
  v41 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v40, 1, 1, v41);
  v202 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut) = 0;
  v42 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  v203 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  v43 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  v204 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v44 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits;
  v205 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits;
  v45 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  __swift_storeEnumTagSinglePayload(v1 + v44, 1, 1, v45);
  v46 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  v206 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  *v46 = 0;
  v46[1] = 0xE000000000000000;
  v47 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus;
  v208 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus;
  v48 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  __swift_storeEnumTagSinglePayload(v1 + v47, 1, 1, v48);
  swift_beginAccess();
  v50 = *(a1 + 16);
  v49 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v50;
  *(v1 + 24) = v49;
  swift_beginAccess();
  v51 = *(a1 + 32);
  v52 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v51;
  *(v1 + 40) = v52;

  swift_beginAccess();
  v54 = *(a1 + 48);
  v53 = *(a1 + 56);
  swift_beginAccess();
  v55 = *(v1 + 56);
  *(v1 + 48) = v54;
  *(v1 + 56) = v53;

  swift_beginAccess();
  v57 = *(a1 + 64);
  v56 = *(a1 + 72);
  v58 = v169;
  swift_beginAccess();
  v59 = *(v1 + 72);
  *v58 = v57;
  *(v1 + 72) = v56;

  swift_beginAccess();
  v60 = *(a1 + 80);
  swift_beginAccess();
  v61 = *(v1 + 80);
  *(v1 + 80) = v60;

  swift_beginAccess();
  v63 = *(a1 + 88);
  v62 = *(a1 + 96);
  v64 = v170;
  swift_beginAccess();
  v65 = *(v1 + 96);
  *v64 = v63;
  *(v1 + 96) = v62;

  swift_beginAccess();
  v67 = *(a1 + 104);
  v66 = *(a1 + 112);
  v68 = v171;
  swift_beginAccess();
  v69 = *(v1 + 112);
  *v68 = v67;
  *(v1 + 112) = v66;

  swift_beginAccess();
  v71 = *(a1 + 120);
  v70 = *(a1 + 128);
  v72 = v172;
  swift_beginAccess();
  v73 = *(v1 + 128);
  *v72 = v71;
  *(v1 + 128) = v70;

  swift_beginAccess();
  v75 = *(a1 + 136);
  v74 = *(a1 + 144);
  v76 = v173;
  swift_beginAccess();
  v77 = *(v1 + 144);
  *v76 = v75;
  *(v1 + 144) = v74;

  swift_beginAccess();
  v79 = *(a1 + 152);
  v78 = *(a1 + 160);
  v80 = v174;
  swift_beginAccess();
  v81 = *(v1 + 160);
  *v80 = v79;
  *(v1 + 160) = v78;

  swift_beginAccess();
  v82 = *(a1 + 168);
  LOBYTE(v81) = *(a1 + 176);
  v83 = v175;
  swift_beginAccess();
  *v83 = v82;
  *(v1 + 176) = v81;
  swift_beginAccess();
  v84 = *(a1 + 184);
  LOBYTE(v81) = *(a1 + 192);
  v85 = v176;
  swift_beginAccess();
  *v85 = v84;
  *(v1 + 192) = v81;
  swift_beginAccess();
  v86 = *(a1 + 200);
  LOBYTE(v81) = *(a1 + 208);
  v87 = v177;
  swift_beginAccess();
  *v87 = v86;
  *(v1 + 208) = v81;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode);
  swift_beginAccess();
  v89 = *v88;
  LOBYTE(v88) = *(v88 + 8);
  v90 = v181;
  swift_beginAccess();
  *v90 = v89;
  *(v90 + 8) = v88;
  v91 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  swift_beginAccess();
  v93 = *v91;
  v92 = v91[1];
  v94 = v182;
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  *v94 = v93;
  v94[1] = v92;
  sub_1B8D91FCC(v93, v92);
  sub_1B8D538A0(v95, v96);
  v97 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  swift_beginAccess();
  v98 = *v97;
  v99 = v184;
  swift_beginAccess();
  *v99 = v98;
  v100 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
  swift_beginAccess();
  LOBYTE(v100) = *(a1 + v100);
  v101 = v185;
  swift_beginAccess();
  *(v1 + v101) = v100;
  v102 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
  swift_beginAccess();
  LOBYTE(v102) = *(a1 + v102);
  v103 = v186;
  swift_beginAccess();
  *(v1 + v103) = v102;
  v104 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
  swift_beginAccess();
  LOBYTE(v104) = *(a1 + v104);
  v105 = v188;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
  swift_beginAccess();
  LOBYTE(v106) = *(a1 + v106);
  v107 = v189;
  swift_beginAccess();
  *(v1 + v107) = v106;
  v108 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  swift_beginAccess();
  LODWORD(v108) = *(a1 + v108);
  v109 = v190;
  swift_beginAccess();
  *(v1 + v109) = v108;
  v110 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  swift_beginAccess();
  v112 = *v110;
  v111 = v110[1];
  v113 = v191;
  swift_beginAccess();
  v114 = v113[1];
  *v113 = v112;
  v113[1] = v111;

  v115 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  swift_beginAccess();
  v117 = *v115;
  v116 = v115[1];
  v118 = v192;
  swift_beginAccess();
  v119 = v118[1];
  *v118 = v117;
  v118[1] = v116;

  v120 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  swift_beginAccess();
  v122 = *v120;
  v121 = v120[1];
  v123 = v193;
  swift_beginAccess();
  v124 = v123[1];
  *v123 = v122;
  v123[1] = v121;

  v125 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  swift_beginAccess();
  v126 = *(a1 + v125);
  v127 = v194;
  swift_beginAccess();
  v128 = *(v1 + v127);
  *(v1 + v127) = v126;

  v129 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata);
  swift_beginAccess();
  v131 = *v129;
  v130 = v129[1];
  v132 = v195;
  swift_beginAccess();
  v133 = v132[1];
  *v132 = v131;
  v132[1] = v130;

  v134 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  swift_beginAccess();
  v136 = *v134;
  v135 = v134[1];
  v137 = v196;
  swift_beginAccess();
  v138 = v137[1];
  *v137 = v136;
  v137[1] = v135;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v139 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  swift_beginAccess();
  v141 = *v139;
  v140 = v139[1];
  v142 = v198;
  swift_beginAccess();
  v143 = v142[1];
  *v142 = v141;
  v142[1] = v140;

  v144 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
  swift_beginAccess();
  LOBYTE(v144) = *(a1 + v144);
  v145 = v199;
  swift_beginAccess();
  *(v1 + v145) = v144;
  v146 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  swift_beginAccess();
  v147 = *(a1 + v146);
  v148 = v200;
  swift_beginAccess();
  v149 = *(v1 + v148);
  *(v1 + v148) = v147;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v150 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
  swift_beginAccess();
  LOBYTE(v150) = *(a1 + v150);
  v151 = v202;
  swift_beginAccess();
  *(v1 + v151) = v150;
  v152 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  swift_beginAccess();
  v154 = *v152;
  v153 = v152[1];
  v155 = v203;
  swift_beginAccess();
  v156 = v155[1];
  *v155 = v154;
  v155[1] = v153;

  v157 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  swift_beginAccess();
  v159 = *v157;
  v158 = v157[1];
  v160 = v204;
  swift_beginAccess();
  v161 = v160[1];
  *v160 = v159;
  v160[1] = v158;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v162 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  swift_beginAccess();
  v164 = *v162;
  v163 = v162[1];
  v165 = v206;
  swift_beginAccess();
  v166 = v165[1];
  *v165 = v164;
  v165[1] = v163;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B908D8BC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B908D914()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B908D96C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_1B908D9E0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__location, &qword_1EBAC3A18, &qword_1B96880D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__mapsSession, &qword_1EBAC3A20, &qword_1B96880D8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__subscriptions, &qword_1EBAC3A28, &qword_1B96880E0);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature), *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature + 8));
  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale + 8);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil + 8);

  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0] + 8);

  v16 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__marketplaceInfo, &qword_1EBAC3A30, &unk_1B96880E8);
  v17 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel + 8);

  v18 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceMetadata, &qword_1EBAB91A8, &unk_1B964D990);
  v19 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey + 8);

  v20 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__weatherUnits, &qword_1EBAC3A38, &qword_1B96880F8);
  v21 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__appleIntelligenceStatus, &qword_1EBAC3A40, &qword_1B9688100);
  return v0;
}

uint64_t sub_1B908DC10()
{
  v0 = sub_1B908D9E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B908C5D0(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B908DD04(v11, a1, a2, a3);
}

uint64_t sub_1B908DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C();
        continue;
      case 2:
        sub_1B8DC46F4();
        continue;
      case 3:
        sub_1B8DC4778();
        continue;
      case 4:
        sub_1B8E16ACC();
        continue;
      case 5:
        sub_1B8E88AE0();
        continue;
      case 6:
        sub_1B8E6D9F8();
        continue;
      case 7:
        sub_1B8EC1004();
        continue;
      case 8:
        sub_1B8E16CDC();
        continue;
      case 9:
        sub_1B8F44964();
        continue;
      case 10:
        sub_1B8E71960();
        continue;
      case 11:
        sub_1B908E160();
        continue;
      case 12:
        sub_1B908E1F4();
        continue;
      case 13:
        sub_1B908E288();
        continue;
      case 14:
        sub_1B908E31C();
        continue;
      case 15:
        sub_1B908E3F8();
        continue;
      case 16:
        sub_1B908E4D4();
        continue;
      case 17:
        sub_1B908E5B0();
        continue;
      case 18:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature;
        v13 = MEMORY[0x1E69AAC78];
        goto LABEL_48;
      case 19:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale;
        v15 = MEMORY[0x1E69AAC88];
        goto LABEL_42;
      case 20:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
        goto LABEL_40;
      case 21:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
        goto LABEL_40;
      case 22:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
        goto LABEL_40;
      case 23:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
        goto LABEL_40;
      case 24:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
        v15 = MEMORY[0x1E69AAC98];
LABEL_42:
        sub_1B908E64C(a2, a1, a3, a4, v14, v15);
        continue;
      case 26:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale;
        goto LABEL_47;
      case 27:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region;
        goto LABEL_47;
      case 28:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil;
        goto LABEL_47;
      case 29:
        sub_1B908E6D0();
        continue;
      case 30:
        v11 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata;
        goto LABEL_47;
      case 31:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant;
        goto LABEL_47;
      case 32:
        sub_1B908E7AC();
        continue;
      case 33:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel;
        goto LABEL_47;
      case 34:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
        goto LABEL_40;
      case 35:
        sub_1B908E888();
        continue;
      case 36:
        sub_1B908E964();
        continue;
      case 37:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
LABEL_40:
        sub_1B908EA40(a2, a1, a3, a4, v12);
        continue;
      case 38:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey;
        goto LABEL_47;
      case 39:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme;
        goto LABEL_47;
      case 40:
        sub_1B908EAC0();
        continue;
      case 41:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken;
LABEL_47:
        v13 = MEMORY[0x1E69AACE0];
LABEL_48:
        sub_1B908EB9C(a2, a1, a3, a4, v11, v13);
        break;
      case 44:
        sub_1B908EC20();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B908E160()
{
  swift_beginAccess();
  sub_1B9095270();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E1F4()
{
  swift_beginAccess();
  sub_1B909521C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E288()
{
  swift_beginAccess();
  sub_1B90951C8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E31C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  sub_1B8CD2600(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E3F8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  sub_1B8CD2600(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E4D4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  sub_1B8CD2600(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E5B0()
{
  swift_beginAccess();
  sub_1B90952C4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B908E64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_174_2();
  a6(v8);
  return swift_endAccess();
}

uint64_t sub_1B908E6D0()
{
  swift_beginAccess();
  type metadata accessor for Trialpb_TrialExperiment();
  sub_1B8CD2600(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B908E7AC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  sub_1B8CD2600(&qword_1EBAB48C8, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908E888()
{
  swift_beginAccess();
  type metadata accessor for Useragentpb_CompanionDevice(0);
  sub_1B8CD2600(&qword_1EBABE1B8, type metadata accessor for Useragentpb_CompanionDevice);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B908E964()
{
  swift_beginAccess();
  type metadata accessor for Useragentpb_DeviceMetadata(0);
  sub_1B8CD2600(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B908EAC0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  sub_1B8CD2600(&qword_1EBAB4C40, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B908EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_174_2();
  a6(v8);
  return swift_endAccess();
}

uint64_t sub_1B908EC20()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B908ED60(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B908ED60(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v134 = &v131 - v5;
  v135 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  v6 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v131 - v10;
  v132 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  v11 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v139 = &v131 - v15;
  v138 = type metadata accessor for Useragentpb_DeviceMetadata(0);
  v16 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v142 = &v131 - v20;
  v141 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  v21 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v157 = &v131 - v25;
  v145 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(0);
  v26 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v147 = &v131 - v30;
  v148 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(0);
  v31 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v144 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v131 - v35;
  v37 = type metadata accessor for Apple_Parsec_Search_V2_Location(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v146 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v40 = *(a1 + 24);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 40);
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 56);
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v48 = *(a1 + 56);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 72);
  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    v51 = *(a1 + 72);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 80) + 16))
  {
    v52 = *(a1 + 80);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v53 = *(a1 + 96);
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v55 = *(a1 + 96);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v56 = *(a1 + 112);
  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v57)
  {
    v58 = *(a1 + 112);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v59 = *(a1 + 128);
  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {
    v61 = *(a1 + 128);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v62 = *(a1 + 144);
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = *(a1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    goto LABEL_44;
  }

  v64 = *(a1 + 144);

  sub_1B964C700();
  if (v1)
  {
  }

LABEL_44:
  swift_beginAccess();
  v65 = *(a1 + 160);
  v66 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v66 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {
    v67 = *(a1 + 160);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 168) || (v69 = *(a1 + 176), v155 = *(a1 + 168), v156 = v69, sub_1B9095270(), result = sub_1B964C680(), !v1))
  {
    swift_beginAccess();
    if (!*(a1 + 184) || (v70 = *(a1 + 192), v153 = *(a1 + 184), v154 = v70, sub_1B909521C(), result = sub_1B964C680(), !v1))
    {
      swift_beginAccess();
      if (!*(a1 + 200) || (v71 = *(a1 + 208), v151 = *(a1 + 200), v152 = v71, sub_1B90951C8(), result = sub_1B964C680(), !v1))
      {
        swift_beginAccess();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
        {
          sub_1B8D9207C(v36, &qword_1EBAC3A18, &qword_1B96880D0);
          v72 = v1;
        }

        else
        {
          sub_1B908D8BC();
          sub_1B8CD2600(&qword_1ED9CBFC8, type metadata accessor for Apple_Parsec_Search_V2_Location);
          sub_1B964C740();
          v72 = v1;
          if (v1)
          {
            return sub_1B908D96C();
          }

          sub_1B908D96C();
        }

        swift_beginAccess();
        v73 = v147;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v73, 1, v148) == 1)
        {
          sub_1B8D9207C(v73, &qword_1EBAC3A20, &qword_1B96880D8);
          v74 = v157;
        }

        else
        {
          sub_1B908D8BC();
          sub_1B8CD2600(&qword_1EBAC3B08, type metadata accessor for Apple_Parsec_Search_V2_MapsSession);
          sub_1B964C740();
          v74 = v157;
          if (v72)
          {
            return sub_1B908D96C();
          }

          sub_1B908D96C();
        }

        swift_beginAccess();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v74, 1, v145) == 1)
        {
          sub_1B8D9207C(v74, &qword_1EBAC3A28, &qword_1B96880E0);
        }

        else
        {
          sub_1B908D8BC();
          sub_1B8CD2600(&qword_1EBAB4B18, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions);
          sub_1B964C740();
          if (v72)
          {
            return sub_1B908D96C();
          }

          sub_1B908D96C();
        }

        v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode);
        swift_beginAccess();
        if (!*v75 || (v76 = *(v75 + 8), v149 = *v75, v150 = v76, sub_1B90952C4(), result = sub_1B964C680(), !v72))
        {
          v77 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature;
          swift_beginAccess();
          if (!sub_1B8D99EA8(*v77, *(v77 + 8)))
          {
            v78 = *v77;
            v79 = *(v77 + 8);
            sub_1B8D91FCC(v78, v79);
            sub_1B964C6A0();
            if (v72)
            {
              return sub_1B8D538A0(v78, v79);
            }

            sub_1B8D538A0(v78, v79);
          }

          v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
          swift_beginAccess();
          if (*v80 == 0.0 || (result = sub_1B964C6B0(), !v72))
          {
            v81 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
            swift_beginAccess();
            if (*(a1 + v81) == 1)
            {
              result = sub_1B964C670();
              v82 = v72;
              if (v72)
              {
                return result;
              }
            }

            else
            {
              v82 = v72;
            }

            v83 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
            swift_beginAccess();
            if (*(a1 + v83) != 1 || (result = sub_1B964C670(), !v82))
            {
              v84 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
              swift_beginAccess();
              if (*(a1 + v84) != 1 || (result = sub_1B964C670(), !v82))
              {
                v85 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
                swift_beginAccess();
                if (*(a1 + v85) != 1 || (result = sub_1B964C670(), !v82))
                {
                  v86 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
                  swift_beginAccess();
                  if (!*(a1 + v86) || (result = sub_1B964C6C0(), !v82))
                  {
                    v87 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
                    swift_beginAccess();
                    v88 = *v87;
                    v89 = v87[1];
                    v90 = HIBYTE(v89) & 0xF;
                    if ((v89 & 0x2000000000000000) == 0)
                    {
                      v90 = v88 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v90)
                    {

                      sub_1B964C700();
                      if (v82)
                      {
                      }
                    }

                    v91 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
                    swift_beginAccess();
                    v92 = *v91;
                    v93 = v91[1];
                    v94 = HIBYTE(v93) & 0xF;
                    if ((v93 & 0x2000000000000000) == 0)
                    {
                      v94 = v92 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v94)
                    {

                      sub_1B964C700();
                      if (v82)
                      {
                      }
                    }

                    v95 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
                    swift_beginAccess();
                    v96 = *v95;
                    v97 = v95[1];
                    v98 = HIBYTE(v97) & 0xF;
                    if ((v97 & 0x2000000000000000) == 0)
                    {
                      v98 = v96 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v98)
                    {

                      sub_1B964C700();
                      if (v82)
                      {
                      }
                    }

                    v99 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
                    swift_beginAccess();
                    if (*(*(a1 + v99) + 16))
                    {
                      type metadata accessor for Trialpb_TrialExperiment();
                      sub_1B8CD2600(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment);

                      sub_1B964C730();
                      if (v82)
                      {
                      }
                    }

                    v100 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0]);
                    swift_beginAccess();
                    v101 = *v100;
                    v102 = v100[1];
                    v103 = HIBYTE(v102) & 0xF;
                    if ((v102 & 0x2000000000000000) == 0)
                    {
                      v103 = v101 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v103)
                    {

                      sub_1B964C700();
                      if (v82)
                      {
                      }
                    }

                    v104 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
                    swift_beginAccess();
                    v105 = *v104;
                    v106 = v104[1];
                    v107 = HIBYTE(v106) & 0xF;
                    if ((v106 & 0x2000000000000000) == 0)
                    {
                      v107 = v105 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v107)
                    {

                      sub_1B964C700();
                      if (v82)
                      {
                      }
                    }

                    swift_beginAccess();
                    v108 = v142;
                    sub_1B8D92024();
                    if (__swift_getEnumTagSinglePayload(v108, 1, v141) == 1)
                    {
                      sub_1B8D9207C(v142, &qword_1EBAC3A30, &unk_1B96880E8);
                    }

                    else
                    {
                      sub_1B908D8BC();
                      sub_1B8CD2600(&qword_1EBAB48C8, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo);
                      sub_1B964C740();
                      if (v82)
                      {
                        return sub_1B908D96C();
                      }

                      sub_1B908D96C();
                    }

                    v109 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
                    swift_beginAccess();
                    v110 = *v109;
                    v111 = v109[1];
                    v112 = HIBYTE(v111) & 0xF;
                    if ((v111 & 0x2000000000000000) == 0)
                    {
                      v112 = v110 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v112)
                    {

                      sub_1B964C700();
                      if (v82)
                      {
                      }
                    }

                    v113 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
                    swift_beginAccess();
                    if (*(a1 + v113) != 1 || (result = sub_1B964C670(), !v82))
                    {
                      v114 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
                      swift_beginAccess();
                      if (*(*(a1 + v114) + 16))
                      {
                        type metadata accessor for Useragentpb_CompanionDevice(0);
                        sub_1B8CD2600(&qword_1EBABE1B8, type metadata accessor for Useragentpb_CompanionDevice);

                        sub_1B964C730();
                        if (v82)
                        {
                        }
                      }

                      swift_beginAccess();
                      v115 = v139;
                      sub_1B8D92024();
                      if (__swift_getEnumTagSinglePayload(v115, 1, v138) == 1)
                      {
                        sub_1B8D9207C(v139, &qword_1EBAB91A8, &unk_1B964D990);
                      }

                      else
                      {
                        sub_1B908D8BC();
                        sub_1B8CD2600(&qword_1EBABE168, type metadata accessor for Useragentpb_DeviceMetadata);
                        sub_1B964C740();
                        if (v82)
                        {
                          return sub_1B908D96C();
                        }

                        sub_1B908D96C();
                      }

                      v116 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
                      swift_beginAccess();
                      if (*(a1 + v116) != 1 || (result = sub_1B964C670(), !v82))
                      {
                        v117 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
                        swift_beginAccess();
                        v118 = *v117;
                        v119 = v117[1];
                        v120 = HIBYTE(v119) & 0xF;
                        if ((v119 & 0x2000000000000000) == 0)
                        {
                          v120 = v118 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v120)
                        {

                          sub_1B964C700();
                          if (v82)
                          {
                          }
                        }

                        v121 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
                        swift_beginAccess();
                        v122 = *v121;
                        v123 = v121[1];
                        v124 = HIBYTE(v123) & 0xF;
                        if ((v123 & 0x2000000000000000) == 0)
                        {
                          v124 = v122 & 0xFFFFFFFFFFFFLL;
                        }

                        if (!v124)
                        {
                          goto LABEL_150;
                        }

                        sub_1B964C700();
                        if (!v82)
                        {

LABEL_150:
                          swift_beginAccess();
                          v125 = v131;
                          sub_1B8D92024();
                          if (__swift_getEnumTagSinglePayload(v125, 1, v132) == 1)
                          {
                            sub_1B8D9207C(v131, &qword_1EBAC3A38, &qword_1B96880F8);
                          }

                          else
                          {
                            sub_1B908D8BC();
                            sub_1B8CD2600(&qword_1EBAB4C40, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);
                            sub_1B964C740();
                            if (v82)
                            {
                              return sub_1B908D96C();
                            }

                            sub_1B908D96C();
                          }

                          v126 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
                          swift_beginAccess();
                          v127 = *v126;
                          v128 = v126[1];
                          v129 = HIBYTE(v128) & 0xF;
                          if ((v128 & 0x2000000000000000) == 0)
                          {
                            v129 = v127 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v129)
                          {

                            sub_1B964C700();
                            if (v82)
                            {
                            }
                          }

                          swift_beginAccess();
                          v130 = v134;
                          sub_1B8D92024();
                          if (__swift_getEnumTagSinglePayload(v130, 1, v135) == 1)
                          {
                            return sub_1B8D9207C(v134, &qword_1EBAC3A40, &qword_1B9688100);
                          }

                          sub_1B908D8BC();
                          sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus);
                          sub_1B964C740();
                          return sub_1B908D96C();
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

uint64_t static Apple_Parsec_Search_PegasusQueryContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_10_23();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B9090820(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B9090820(uint64_t a1, uint64_t a2)
{
  v346 = type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0);
  v4 = OUTLINED_FUNCTION_59_1(v346);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v348 = v7;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B10, &qword_1B9688E70);
  OUTLINED_FUNCTION_59_1(v344);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v349 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A40, &qword_1B9688100);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v347 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_266_0();
  v345 = v18;
  OUTLINED_FUNCTION_201();
  v341 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  v19 = OUTLINED_FUNCTION_59_1(v341);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v342 = v22;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B18, &unk_1B9688E78);
  OUTLINED_FUNCTION_59_1(v338);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_185();
  v343 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A38, &qword_1B96880F8);
  v28 = OUTLINED_FUNCTION_183(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44_0();
  v340 = v31;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_266_0();
  v339 = v33;
  v34 = OUTLINED_FUNCTION_201();
  v335 = type metadata accessor for Useragentpb_DeviceMetadata(v34);
  v35 = OUTLINED_FUNCTION_59_1(v335);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21();
  v336 = v38;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B0, &unk_1B96670A0);
  OUTLINED_FUNCTION_59_1(v332);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_185();
  v337 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
  v44 = OUTLINED_FUNCTION_183(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44_0();
  v334 = v47;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_266_0();
  v333 = v49;
  v50 = OUTLINED_FUNCTION_201();
  v353 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(v50);
  v51 = OUTLINED_FUNCTION_59_1(v353);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_21();
  v331 = v54;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B20, &qword_1B9688E88);
  OUTLINED_FUNCTION_59_1(v350);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_185();
  v354 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A30, &unk_1B96880E8);
  v60 = OUTLINED_FUNCTION_183(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44_0();
  v351 = v63;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_266_0();
  v352 = v65;
  v66 = OUTLINED_FUNCTION_201();
  v359 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions(v66);
  v67 = OUTLINED_FUNCTION_59_1(v359);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_21();
  v355 = v70;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B28, &unk_1B9688E90);
  OUTLINED_FUNCTION_59_1(v358);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_185();
  v360 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A28, &qword_1B96880E0);
  v76 = OUTLINED_FUNCTION_183(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_44_0();
  v356 = v79;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_266_0();
  v365 = v81;
  v82 = OUTLINED_FUNCTION_201();
  v363 = type metadata accessor for Apple_Parsec_Search_V2_MapsSession(v82);
  v83 = OUTLINED_FUNCTION_59_1(v363);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_21();
  v357 = v86;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B30, &unk_1B968AE60);
  OUTLINED_FUNCTION_59_1(v362);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_185();
  v364 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A20, &qword_1B96880D8);
  v92 = OUTLINED_FUNCTION_183(v91);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_44_0();
  v361 = v95;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_266_0();
  v366 = v97;
  v98 = OUTLINED_FUNCTION_201();
  v99 = type metadata accessor for Apple_Parsec_Search_V2_Location(v98);
  v100 = OUTLINED_FUNCTION_59_1(v99);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3B38, &unk_1B9688EA0);
  OUTLINED_FUNCTION_59_1(v103);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_185();
  v367 = v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3A18, &qword_1B96880D0);
  v109 = OUTLINED_FUNCTION_183(v108);
  v111 = *(v110 + 64);
  v112 = MEMORY[0x1EEE9AC00](v109);
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v331 - v113;
  OUTLINED_FUNCTION_521();
  v115 = *(a1 + 16);
  v116 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v117 = v115 == *(a2 + 16) && v116 == *(a2 + 24);
  if (!v117 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v118 = *(a1 + 32);
  v119 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v120 = v118 == *(a2 + 32) && v119 == *(a2 + 40);
  if (!v120 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v121 = *(a1 + 48);
  v122 = *(a1 + 56);
  OUTLINED_FUNCTION_521();
  v123 = v121 == *(a2 + 48) && v122 == *(a2 + 56);
  if (!v123 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v124 = *(a1 + 64);
  v125 = *(a1 + 72);
  OUTLINED_FUNCTION_521();
  v126 = v124 == *(a2 + 64) && v125 == *(a2 + 72);
  if (!v126 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v127 = *(a1 + 80);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v127, *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v128 = *(a1 + 88);
  v129 = *(a1 + 96);
  OUTLINED_FUNCTION_521();
  v130 = v128 == *(a2 + 88) && v129 == *(a2 + 96);
  if (!v130 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v131 = *(a1 + 104);
  v132 = *(a1 + 112);
  OUTLINED_FUNCTION_521();
  v133 = v131 == *(a2 + 104) && v132 == *(a2 + 112);
  if (!v133 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v134 = *(a1 + 120);
  v135 = *(a1 + 128);
  OUTLINED_FUNCTION_521();
  v136 = v134 == *(a2 + 120) && v135 == *(a2 + 128);
  if (!v136 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v137 = *(a1 + 136);
  v138 = *(a1 + 144);
  OUTLINED_FUNCTION_521();
  v139 = v137 == *(a2 + 136) && v138 == *(a2 + 144);
  if (!v139 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v140 = *(a1 + 152);
  v141 = *(a1 + 160);
  OUTLINED_FUNCTION_521();
  v142 = v140 == *(a2 + 152) && v141 == *(a2 + 160);
  if (!v142 && (OUTLINED_FUNCTION_57_6() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v143 = *(a1 + 168);
  v144 = *(a1 + 176);
  OUTLINED_FUNCTION_521();
  v145 = *(a2 + 176);
  if (!sub_1B8D92198(v143, v144, *(a2 + 168)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v146 = *(a1 + 184);
  v147 = *(a1 + 192);
  OUTLINED_FUNCTION_521();
  v148 = *(a2 + 192);
  if (!sub_1B8D92198(v146, v147, *(a2 + 184)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v149 = *(a1 + 200);
  v150 = *(a1 + 208);
  OUTLINED_FUNCTION_521();
  v151 = *(a2 + 208);
  if (!sub_1B8D92198(v149, v150, *(a2 + 200)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v152 = *(v103 + 48);
  v153 = v367;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v153, 1, v99);
  if (v117)
  {

    sub_1B8D9207C(v114, &qword_1EBAC3A18, &qword_1B96880D0);
    OUTLINED_FUNCTION_178(v153 + v152, 1, v99);
    if (v117)
    {
      sub_1B8D9207C(v153, &qword_1EBAC3A18, &qword_1B96880D0);
      goto LABEL_60;
    }

LABEL_58:
    v155 = &qword_1EBAC3B38;
    v156 = &unk_1B9688EA0;
    v157 = v153;
LABEL_135:
    sub_1B8D9207C(v157, v155, v156);
LABEL_136:

    return 0;
  }

  OUTLINED_FUNCTION_205();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v153 + v152, 1, v99);
  if (v154)
  {

    sub_1B8D9207C(v114, &qword_1EBAC3A18, &qword_1B96880D0);
    sub_1B908D96C();
    goto LABEL_58;
  }

  sub_1B908D8BC();

  static Apple_Parsec_Search_V2_Location.== infix(_:_:)();
  v159 = v158;
  sub_1B908D96C();
  sub_1B8D9207C(v114, &qword_1EBAC3A18, &qword_1B96880D0);
  sub_1B908D96C();
  sub_1B8D9207C(v153, &qword_1EBAC3A18, &qword_1B96880D0);
  if ((v159 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_60:
  OUTLINED_FUNCTION_521();
  v160 = v366;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v161 = *(v362 + 48);
  v162 = v364;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v163 = OUTLINED_FUNCTION_355();
  v164 = v363;
  OUTLINED_FUNCTION_178(v163, v165, v363);
  if (v117)
  {
    sub_1B8D9207C(v160, &qword_1EBAC3A20, &qword_1B96880D8);
    OUTLINED_FUNCTION_178(v162 + v161, 1, v164);
    v166 = v365;
    if (v117)
    {
      sub_1B8D9207C(v162, &qword_1EBAC3A20, &qword_1B96880D8);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v162 + v161, 1, v164);
  v166 = v365;
  if (v167)
  {
    sub_1B8D9207C(v366, &qword_1EBAC3A20, &qword_1B96880D8);
    sub_1B908D96C();
LABEL_68:
    v155 = &qword_1EBAC3B30;
    v156 = &unk_1B968AE60;
    v157 = v162;
    goto LABEL_135;
  }

  sub_1B908D8BC();
  v168 = OUTLINED_FUNCTION_205();
  static Apple_Parsec_Search_V2_MapsSession.== infix(_:_:)(v168, v169);
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_189(v366);
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_86_5();
  if ((&qword_1B96880D8 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_70:
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v170 = *(v358 + 48);
  v171 = v360;
  OUTLINED_FUNCTION_81_1();
  sub_1B8D92024();
  v172 = OUTLINED_FUNCTION_355();
  v173 = v359;
  OUTLINED_FUNCTION_178(v172, v174, v359);
  if (v117)
  {
    sub_1B8D9207C(v166, &qword_1EBAC3A28, &qword_1B96880E0);
    OUTLINED_FUNCTION_178(v171 + v170, 1, v173);
    if (v117)
    {
      sub_1B8D9207C(v171, &qword_1EBAC3A28, &qword_1B96880E0);
      goto LABEL_75;
    }

    goto LABEL_134;
  }

  v259 = v356;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v171 + v170, 1, v173);
  if (v260)
  {
    sub_1B8D9207C(v166, &qword_1EBAC3A28, &qword_1B96880E0);
    sub_1B908D96C();
LABEL_134:
    v155 = &qword_1EBAC3B28;
    v156 = &unk_1B9688E90;
    v157 = v171;
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_6_18();
  v262 = v355;
  sub_1B908D8BC();
  if ((MEMORY[0x1BFADC060](*v259, v259[1], *v262, v262[1]) & 1) == 0)
  {
    sub_1B908D96C();
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v267, v268, v269);
    OUTLINED_FUNCTION_128_4();
    OUTLINED_FUNCTION_112_1();
    goto LABEL_135;
  }

  v263 = *(v173 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v264, v265);
  v266 = sub_1B964C850();
  sub_1B908D96C();
  OUTLINED_FUNCTION_189(v166);
  sub_1B908D96C();
  OUTLINED_FUNCTION_86_5();
  if ((v266 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_75:
  v175 = a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  OUTLINED_FUNCTION_521();
  v176 = *v175;
  v177 = *(v175 + 8);
  v178 = a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__transportationMode;
  OUTLINED_FUNCTION_30_11();
  v179 = *(v178 + 8);
  if (!sub_1B8D92198(v176, v177, *v178))
  {
    goto LABEL_136;
  }

  v180 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  OUTLINED_FUNCTION_521();
  v182 = *v180;
  v181 = v180[1];
  v183 = (a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__installedAppsSignature);
  OUTLINED_FUNCTION_30_11();
  v185 = *v183;
  v184 = v183[1];
  sub_1B8D91FCC(v182, v181);
  sub_1B8D91FCC(v185, v184);
  v186 = MEMORY[0x1BFADC060](v182, v181, v185, v184);
  sub_1B8D538A0(v185, v184);
  sub_1B8D538A0(v182, v181);
  if ((v186 & 1) == 0)
  {
    goto LABEL_136;
  }

  v187 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  OUTLINED_FUNCTION_521();
  v188 = *v187;
  v189 = (a2 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__uiScale);
  OUTLINED_FUNCTION_521();
  if (v188 != *v189)
  {
    goto LABEL_136;
  }

  v190 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__internalBuild;
  OUTLINED_FUNCTION_521();
  v191 = *(a1 + v190);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_43_4();
  if (!v117)
  {
    goto LABEL_136;
  }

  v192 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__seedBuild;
  OUTLINED_FUNCTION_521();
  v193 = *(a1 + v192);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_43_4();
  if (!v117)
  {
    goto LABEL_136;
  }

  v194 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__hsEnabled;
  OUTLINED_FUNCTION_521();
  v195 = *(a1 + v194);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_43_4();
  if (!v117)
  {
    goto LABEL_136;
  }

  v196 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__managedDevice;
  OUTLINED_FUNCTION_521();
  v197 = *(a1 + v196);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_43_4();
  if (!v117)
  {
    goto LABEL_136;
  }

  v198 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_521();
  LODWORD(v198) = *(a1 + v198);
  v199 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__abTestSeed;
  OUTLINED_FUNCTION_521();
  if (v198 != *(a2 + v199))
  {
    goto LABEL_136;
  }

  v200 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriLocale);
  OUTLINED_FUNCTION_79_1();
  v201 = *v200;
  v202 = v200[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v204 = v117 && v202 == v203;
  if (!v204 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  v205 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__region);
  OUTLINED_FUNCTION_79_1();
  v206 = *v205;
  v207 = v205[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v209 = v117 && v207 == v208;
  if (!v209 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  v210 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__sil);
  OUTLINED_FUNCTION_79_1();
  v211 = *v210;
  v212 = v210[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v214 = v117 && v212 == v213;
  if (!v214 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  v215 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  OUTLINED_FUNCTION_521();
  v216 = *(a1 + v215);
  v217 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__trialIdentifiers;
  OUTLINED_FUNCTION_521();
  v218 = *(a2 + v217);

  sub_1B8D8C25C();
  v220 = v219;

  if ((v220 & 1) == 0)
  {
    goto LABEL_136;
  }

  v221 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__ampBaselineExperimentMetadata[0]);
  OUTLINED_FUNCTION_79_1();
  v222 = *v221;
  v223 = v221[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v225 = v117 && v223 == v224;
  if (!v225 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  v226 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__siriResponseLanguageVariant);
  OUTLINED_FUNCTION_79_1();
  v227 = *v226;
  v228 = v226[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v230 = v117 && v228 == v229;
  if (!v230 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_3(v350);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v231 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v231, v232, v353);
  if (v117)
  {
    sub_1B8D9207C(v352, &qword_1EBAC3A30, &unk_1B96880E8);
    v233 = OUTLINED_FUNCTION_105_2(v354);
    OUTLINED_FUNCTION_178(v233, v234, v235);
    if (v117)
    {
      sub_1B8D9207C(v354, &qword_1EBAC3A30, &unk_1B96880E8);
      goto LABEL_118;
    }

    goto LABEL_145;
  }

  sub_1B8D92024();
  v270 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v270, v271, v353);
  if (v272)
  {
    sub_1B8D9207C(v352, &qword_1EBAC3A30, &unk_1B96880E8);
    sub_1B908D96C();
LABEL_145:
    v155 = &qword_1EBAC3B20;
    v156 = &qword_1B9688E88;
    v157 = v354;
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_5_21();
  v273 = v331;
  sub_1B908D8BC();
  if (*v351 != *v273 || (v274 = *(v351 + 1), v275 = *(v331 + 1), sub_1B8D74510(), (v276 & 1) == 0))
  {
    sub_1B8D9207C(v352, &qword_1EBAC3A30, &unk_1B96880E8);
    sub_1B908D96C();
    sub_1B908D96C();
    v157 = v354;
    v155 = &qword_1EBAC3A30;
    v156 = &unk_1B96880E8;
    goto LABEL_135;
  }

  v277 = *(v353 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v278, v279);
  v280 = sub_1B964C850();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v281, v282, v283);
  sub_1B908D96C();
  sub_1B908D96C();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v284, v285, v286);
  if ((v280 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_118:
  v236 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__deviceModel);
  OUTLINED_FUNCTION_79_1();
  v237 = *v236;
  v238 = v236[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v240 = v117 && v238 == v239;
  if (!v240 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  v241 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__isGenerativeModelDevice;
  OUTLINED_FUNCTION_521();
  v242 = *(a1 + v241);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_43_4();
  if (!v117)
  {
    goto LABEL_136;
  }

  v243 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  OUTLINED_FUNCTION_521();
  v244 = *(a1 + v243);
  v245 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__companionDevice;
  OUTLINED_FUNCTION_521();
  v246 = *(a2 + v245);

  sub_1B8D8C4B8(v244, v246, v247, v248, v249, v250, v251, v252, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
  v254 = v253;

  if ((v254 & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_3(v332);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v255 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v255, v256, v335);
  if (v117)
  {
    sub_1B8D9207C(v333, &qword_1EBAB91A8, &unk_1B964D990);
    v257 = OUTLINED_FUNCTION_105_2(v337);
    OUTLINED_FUNCTION_178(v257, v258, v335);
    if (v117)
    {
      sub_1B8D9207C(v337, &qword_1EBAB91A8, &unk_1B964D990);
      goto LABEL_156;
    }

    goto LABEL_154;
  }

  sub_1B8D92024();
  v287 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v287, v288, v335);
  if (v289)
  {
    sub_1B8D9207C(v333, &qword_1EBAB91A8, &unk_1B964D990);
    sub_1B908D96C();
LABEL_154:
    v155 = &qword_1EBAB91B0;
    v156 = &unk_1B96670A0;
    v157 = v337;
    goto LABEL_135;
  }

  sub_1B908D8BC();
  OUTLINED_FUNCTION_205();
  static Useragentpb_DeviceMetadata.== infix(_:_:)();
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_189(v333);
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_86_5();
  if ((&unk_1B964D990 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_156:
  v290 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__searchOptOut;
  OUTLINED_FUNCTION_521();
  v291 = *(a1 + v290);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_43_4();
  if (!v117)
  {
    goto LABEL_136;
  }

  v292 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__longSecretKey);
  OUTLINED_FUNCTION_79_1();
  v293 = *v292;
  v294 = v292[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v296 = v117 && v294 == v295;
  if (!v296 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  v297 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__keyboardIme);
  OUTLINED_FUNCTION_79_1();
  v298 = *v297;
  v299 = v297[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v301 = v117 && v299 == v300;
  if (!v301 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_3(v338);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v302 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v302, v303, v341);
  if (v117)
  {
    sub_1B8D9207C(v339, &qword_1EBAC3A38, &qword_1B96880F8);
    v304 = OUTLINED_FUNCTION_105_2(v343);
    OUTLINED_FUNCTION_178(v304, v305, v341);
    if (v117)
    {
      sub_1B8D9207C(v343, &qword_1EBAC3A38, &qword_1B96880F8);
      goto LABEL_178;
    }

    goto LABEL_176;
  }

  sub_1B8D92024();
  v306 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v306, v307, v341);
  if (v308)
  {
    sub_1B8D9207C(v339, &qword_1EBAC3A38, &qword_1B96880F8);
    sub_1B908D96C();
LABEL_176:
    v155 = &qword_1EBAC3B18;
    v156 = &unk_1B9688E78;
    v157 = v343;
    goto LABEL_135;
  }

  sub_1B908D8BC();
  v309 = OUTLINED_FUNCTION_205();
  static Apple_Parsec_Search_V2_WeatherUnits.== infix(_:_:)(v309, v310);
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_189(v339);
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_86_5();
  if ((&qword_1B96880F8 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_178:
  v311 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Search_PegasusQueryContextP33_A4E53071C28137CBB3763F7C34D4014813_StorageClass__encryptedAuthToken);
  OUTLINED_FUNCTION_79_1();
  v312 = *v311;
  v313 = v311[1];
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_54_4();
  v315 = v117 && v313 == v314;
  if (!v315 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_3(v344);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v316 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v316, v317, v346);
  if (v117)
  {

    sub_1B8D9207C(v345, &qword_1EBAC3A40, &qword_1B9688100);
    v318 = OUTLINED_FUNCTION_105_2(v349);
    OUTLINED_FUNCTION_178(v318, v319, v346);
    if (v117)
    {
      sub_1B8D9207C(v349, &qword_1EBAC3A40, &qword_1B9688100);
      return 1;
    }

    goto LABEL_192;
  }

  sub_1B8D92024();
  v320 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v320, v321, v346);
  if (v322)
  {

    sub_1B8D9207C(v345, &qword_1EBAC3A40, &qword_1B9688100);
    sub_1B908D96C();
LABEL_192:
    v323 = &qword_1EBAC3B10;
    v324 = &qword_1B9688E70;
    v325 = v349;
LABEL_198:
    sub_1B8D9207C(v325, v323, v324);
    return 0;
  }

  OUTLINED_FUNCTION_4_26();
  v326 = v348;
  sub_1B908D8BC();
  if (*v347 != *v326 || (sub_1B8D8637C(*(v347 + 1), *(v348 + 1)) & 1) == 0)
  {

    sub_1B8D9207C(v345, &qword_1EBAC3A40, &qword_1B9688100);
    sub_1B908D96C();
    sub_1B908D96C();
    v325 = v349;
    v323 = &qword_1EBAC3A40;
    v324 = &qword_1B9688100;
    goto LABEL_198;
  }

  v327 = *(v346 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v328, v329);
  v330 = sub_1B964C850();

  sub_1B8D9207C(v345, &qword_1EBAC3A40, &qword_1B9688100);
  sub_1B908D96C();
  sub_1B908D96C();
  sub_1B8D9207C(v349, &qword_1EBAC3A40, &qword_1B9688100);
  return (v330 & 1) != 0;
}

uint64_t sub_1B9092580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3B00, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9092600(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9092670()
{
  sub_1B8CD2600(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B90926F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5DC0);
  __swift_project_value_buffer(v0, qword_1EBAB5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TemperatureUnitUnknown";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TemperatureUnitCelsius";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TemperatureUnitFahrenheit";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B909291C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5DA0);
  __swift_project_value_buffer(v0, qword_1EBAB5DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MeasurementSystemUnknown";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MeasurementSystemSI";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MeasurementSystemUS";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MeasurementSystemUK";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9092B7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5DE0);
  __swift_project_value_buffer(v0, qword_1EBAB5DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HourFormatUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HourFormatTwelve";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HourFormatTwentyFour";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9092DC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5D80);
  __swift_project_value_buffer(v0, qword_1EBAB5D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_enabled";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "device_policies";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_288();
      sub_1B9093020();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_AppleIntelligenceStatus.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (sub_1B9093124(), OUTLINED_FUNCTION_102_5(), result = sub_1B964C600(), !v1))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

unint64_t sub_1B9093124()
{
  result = qword_1EBAC3A50;
  if (!qword_1EBAC3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3A50);
  }

  return result;
}

uint64_t static Apple_Parsec_Search_AppleIntelligenceStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if ((sub_1B8D8637C(*(v2 + 8), *(v3 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90932B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3AF8, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9093330(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90933A0()
{
  sub_1B8CD2600(&qword_1EBAB5D70, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus);

  return sub_1B964C5D0();
}

uint64_t sub_1B909343C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5D20);
  __swift_project_value_buffer(v0, qword_1EBAB5D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qtype";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_288();
      sub_1B9093698();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_PegasusSearchQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = *v1;
  v5 = v1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (v2 = v0, result = sub_1B964C700(), !v0))
  {
    if (sub_1B8D92198(*(v3 + 16), *(v3 + 24), 0) || (sub_1B905BAEC(), OUTLINED_FUNCTION_102_5(), result = sub_1B964C680(), !v2))
    {
      v8 = *(type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_PegasusSearchQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v0 + 24);
  if (!sub_1B8D92198(*(v1 + 16), *(v1 + 24), *(v0 + 16)))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9093930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3AF0, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90939B0(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9093A20()
{
  sub_1B8CD2600(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B9093AAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB46E8);
  __swift_project_value_buffer(v0, qword_1EBAB46E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "completions";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scores";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "origins";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.decodeMessage<A>(decoder:)()
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

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_LocalCompletionInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Search_LocalCompletionInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0 || (sub_1B8D6123C(*(v1 + 8), *(v0 + 8)) & 1) == 0 || (sub_1B8D6123C(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_47();
  sub_1B8CD2600(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9093EDC(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2600(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9093FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2600(&qword_1EBAC3AE8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B909403C(uint64_t a1)
{
  v2 = sub_1B8CD2600(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90940AC()
{
  sub_1B8CD2600(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B9094130()
{
  result = qword_1EBAC3A70;
  if (!qword_1EBAC3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3A70);
  }

  return result;
}

unint64_t sub_1B9094188()
{
  result = qword_1EBAC3A78;
  if (!qword_1EBAC3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3A78);
  }

  return result;
}

unint64_t sub_1B90941E0()
{
  result = qword_1EBAC3A80;
  if (!qword_1EBAC3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3A80);
  }

  return result;
}

unint64_t sub_1B9094268()
{
  result = qword_1ED9CF4F0;
  if (!qword_1ED9CF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4F0);
  }

  return result;
}

unint64_t sub_1B90942C0()
{
  result = qword_1ED9CF4E0;
  if (!qword_1ED9CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4E0);
  }

  return result;
}

unint64_t sub_1B9094318()
{
  result = qword_1ED9CF4E8;
  if (!qword_1ED9CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4E8);
  }

  return result;
}

unint64_t sub_1B9094370()
{
  result = qword_1ED9CF4D0;
  if (!qword_1ED9CF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4D0);
  }

  return result;
}

unint64_t sub_1B90943C8()
{
  result = qword_1ED9CF4C0;
  if (!qword_1ED9CF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4C0);
  }

  return result;
}

unint64_t sub_1B9094420()
{
  result = qword_1ED9CF4C8;
  if (!qword_1ED9CF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4C8);
  }

  return result;
}

unint64_t sub_1B9094478()
{
  result = qword_1ED9CF510;
  if (!qword_1ED9CF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF510);
  }

  return result;
}

unint64_t sub_1B90944D0()
{
  result = qword_1ED9CF500;
  if (!qword_1ED9CF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF500);
  }

  return result;
}

unint64_t sub_1B9094528()
{
  result = qword_1ED9CF508;
  if (!qword_1ED9CF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF508);
  }

  return result;
}

uint64_t sub_1B9094AC4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9094BA0()
{
  sub_1B8DD7D14(319, &qword_1ED9D39B0);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_1B9094CE0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9094D8C()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9094E30()
{
  sub_1B9095174(319, &qword_1ED9FE338, type metadata accessor for Apple_Parsec_Search_V2_Location);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_1B9095174(319, &qword_1ED9FDC38, type metadata accessor for Apple_Parsec_Search_V2_MapsSession);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_1B9095174(319, &qword_1ED9FD840, type metadata accessor for Apple_Parsec_Search_V2_Subscriptions);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_1B9095174(319, qword_1ED9F0D50, type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_1B9095174(319, qword_1ED9F25B8, type metadata accessor for Useragentpb_DeviceMetadata);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_1B9095174(319, qword_1ED9F1910, type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_1B9095174(319, qword_1ED9EB298, type metadata accessor for Apple_Parsec_Search_AppleIntelligenceStatus);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B9095174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B90951C8()
{
  result = qword_1ED9CF518;
  if (!qword_1ED9CF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF518);
  }

  return result;
}

unint64_t sub_1B909521C()
{
  result = qword_1ED9CF4D8;
  if (!qword_1ED9CF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4D8);
  }

  return result;
}

unint64_t sub_1B9095270()
{
  result = qword_1ED9CF4F8;
  if (!qword_1ED9CF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CF4F8);
  }

  return result;
}

unint64_t sub_1B90952C4()
{
  result = qword_1EBAB4610;
  if (!qword_1EBAB4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_54(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_10_23()
{
  result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_21()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_17_16()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  v0 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_84_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_86_5()
{

  return sub_1B8D9207C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_105_5()
{

  return sub_1B908D8BC();
}

uint64_t OUTLINED_FUNCTION_108_6()
{

  return sub_1B908D8BC();
}

uint64_t OUTLINED_FUNCTION_112_5()
{

  return sub_1B908D8BC();
}

uint64_t OUTLINED_FUNCTION_113_4()
{

  return sub_1B908D96C();
}

uint64_t OUTLINED_FUNCTION_128_4()
{

  return sub_1B908D96C();
}

uint64_t Apple_Parsec_Search_Error.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Search_Error() + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Apple_Parsec_Search_Error()
{
  result = qword_1ED9EDE90;
  if (!qword_1ED9EDE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Apple_Parsec_Search_StatusCode.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9095704@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_StatusCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9095738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2116C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_StatusCode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3B40 = a1;
}

uint64_t (*static Apple_Parsec_Search_StatusCode.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B909587C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_StatusCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Search_Error.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B90387E4(v2, v3, v4);
}

uint64_t Apple_Parsec_Search_Error.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t Apple_Parsec_Search_Error.message.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v2 && (v1 & 1) == 0)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v5, v6, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9095960(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Search_Error.message.setter(v1, v2);
}

uint64_t Apple_Parsec_Search_Error.message.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B903880C(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;
  return result;
}

uint64_t (*Apple_Parsec_Search_Error.message.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 0);
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_1B9031F18;
}

uint64_t Apple_Parsec_Search_Error.encryptedMessage.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v2 && (v1 & 1) != 0)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v5, v6, 1);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9095A9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8D91FCC(*a1, v2);
  return Apple_Parsec_Search_Error.encryptedMessage.setter(v1, v2);
}

uint64_t Apple_Parsec_Search_Error.encryptedMessage.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B903880C(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Search_Error.encryptedMessage.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 1);
  }

  *a1 = v6;
  a1[1] = v5;
  return sub_1B90320F8;
}

uint64_t Apple_Parsec_Search_Error.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_Error() + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Search_Error.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_Error() + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Parsec_Search_Error.OneOf_Error.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = OUTLINED_FUNCTION_461();
      sub_1B90387FC(v5, v6, 1);
      v7 = OUTLINED_FUNCTION_288();
      sub_1B90387FC(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_288();
      v10 = MEMORY[0x1BFADC060](v9);
      v11 = OUTLINED_FUNCTION_288();
      sub_1B9038824(v11, v12, 1);
      v13 = OUTLINED_FUNCTION_461();
      v15 = 1;
LABEL_11:
      sub_1B9038824(v13, v14, v15);
      return v10 & 1;
    }

LABEL_5:
    v16 = OUTLINED_FUNCTION_42_0();
    sub_1B90387FC(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v19, v20, v4);
    v21 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v21, v22, v4);
    v23 = OUTLINED_FUNCTION_42_0();
    sub_1B9038824(v23, v24, v25);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v27 = *a1;
  if (v3 != *a2 || v2 != *(a2 + 8))
  {
    v10 = sub_1B964C9F0();
    v29 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v29, v30, 0);
    v31 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v31, v32, 0);
    v33 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v33, v34, 0);
    v13 = OUTLINED_FUNCTION_461();
    v15 = 0;
    goto LABEL_11;
  }

  sub_1B90387FC(v27, v2, 0);
  v35 = OUTLINED_FUNCTION_288();
  sub_1B90387FC(v35, v36, 0);
  v37 = OUTLINED_FUNCTION_288();
  sub_1B9038824(v37, v38, 0);
  v39 = OUTLINED_FUNCTION_288();
  sub_1B9038824(v39, v40, 0);
  return 1;
}

uint64_t sub_1B9095E28()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3B48);
  __swift_project_value_buffer(v0, qword_1EBAC3B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STATUS_CODE_OK";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STATUS_CODE_ERROR";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STATUS_CODE_NORESULTS";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9096070()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3B60);
  __swift_project_value_buffer(v0, qword_1EBAC3B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encrypted_message";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_Error.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_288();
      sub_1B9035AFC();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_288();
      sub_1B9035A30(v3, v4);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Search_Error.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_65_6();
  if (v3 || ((v2 & 1) == 0 ? (result = sub_1B8DC2578(v0)) : (result = sub_1B9035C80(v0)), !v1))
  {
    v5 = v0 + *(type metadata accessor for Apple_Parsec_Search_Error() + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Search_Error.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (v3 != 255)
  {
    v53[0] = *a1;
    v53[1] = v2;
    v54 = v3;
    if (v6 != 255)
    {
      v51[0] = v5;
      v51[1] = v4;
      v7 = v6 & 1;
      v52 = v6 & 1;
      v8 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_259();
      sub_1B90387E4(v11, v12, v6);
      v13 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v13, v14, v15);
      v16 = static Apple_Parsec_Search_Error.OneOf_Error.== infix(_:_:)(v53, v51);
      v17 = OUTLINED_FUNCTION_259();
      sub_1B9038824(v17, v18, v7);
      v19 = OUTLINED_FUNCTION_461();
      sub_1B9038824(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_42_0();
      sub_1B903880C(v22, v23, v24);
      if (v16)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v29 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v32, v33, 255);
    v34 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_461();
    sub_1B9038824(v37, v38, v39);
LABEL_8:
    v40 = OUTLINED_FUNCTION_42_0();
    sub_1B903880C(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_259();
    sub_1B903880C(v43, v44, v6);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_461();
  sub_1B90387E4(v25, v26, 255);
  if (v6 != 255)
  {
    v27 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v27, v28, v6);
    goto LABEL_8;
  }

  v46 = OUTLINED_FUNCTION_259();
  sub_1B90387E4(v46, v47, 255);
  v48 = OUTLINED_FUNCTION_461();
  sub_1B903880C(v48, v49, 255);
LABEL_11:
  v50 = *(type metadata accessor for Apple_Parsec_Search_Error() + 20);
  sub_1B964C2B0();
  sub_1B8CD2648(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Search_Error.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Search_Error();
  sub_1B8CD2648(&qword_1EBAC3B78, type metadata accessor for Apple_Parsec_Search_Error);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9096624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2648(&qword_1EBAC3B98, type metadata accessor for Apple_Parsec_Search_Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90966A4(uint64_t a1)
{
  v2 = sub_1B8CD2648(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9096714()
{
  sub_1B8CD2648(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);

  return sub_1B964C5D0();
}

unint64_t sub_1B9096794()
{
  result = qword_1ED9CC380;
  if (!qword_1ED9CC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC380);
  }

  return result;
}

unint64_t sub_1B90967EC()
{
  result = qword_1ED9CC370;
  if (!qword_1ED9CC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC370);
  }

  return result;
}

unint64_t sub_1B9096844()
{
  result = qword_1ED9CC378;
  if (!qword_1ED9CC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC378);
  }

  return result;
}

unint64_t sub_1B909689C()
{
  result = qword_1EBAC3B80;
  if (!qword_1EBAC3B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3B88, &qword_1B9688F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3B80);
  }

  return result;
}

void sub_1B9096A5C()
{
  sub_1B9096AE0();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9096AE0()
{
  if (!qword_1ED9EDEA0)
  {
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9EDEA0);
    }
  }
}

unint64_t Apple_Parsec_Search_TreatmentAllocationStatus.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9096B90@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9096BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9097940();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Search_TreatmentAllocationStatus.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3BA0 = a1;
}

uint64_t sub_1B9096D0C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_TreatmentAllocationStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.experimentID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.experimentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.treatmentID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.treatmentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.namespaceID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.namespaceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void Apple_Parsec_Search_TrialIdentifiers.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_TrialIdentifiers() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Search_TrialIdentifiers()
{
  result = qword_1EBAC3C28;
  if (!qword_1EBAC3C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Search_TrialIdentifiers() + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Search_TrialIdentifiers() + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9097158()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3BA8);
  __swift_project_value_buffer(v0, qword_1EBAC3BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TREATMENT_ALLOCATION_STATUS_UNKNOWN";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TREATMENT_ALLOCATION_STATUS_ALLOCATED";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TREATMENT_ALLOCATION_STATUS_ACTIVATED";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TREATMENT_ALLOCATION_STATUS_DEACTIVATED";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90973D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3BC0);
  __swift_project_value_buffer(v0, qword_1EBAC3BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "experiment_id";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "treatment_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deployment_id";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "namespace_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "status";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.decodeMessage<A>(decoder:)()
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
      case 4:
        sub_1B964C530();
        break;
      case 3:
      case 5:
        sub_1B964C4A0();
        break;
      case 6:
        sub_1B9097798();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
    {
      if (!*(v0 + 8) || (result = OUTLINED_FUNCTION_16_9(), (v2 = v1) == 0))
      {
        v10 = v0[5];
        v11 = v0[6];
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
        {
          if (!*(v0 + 14) || (result = OUTLINED_FUNCTION_16_9(), (v2 = v1) == 0))
          {
            if (!v0[8] || (v14 = v0[8], v15 = *(v0 + 72), sub_1B9097940(), result = sub_1B964C680(), !v2))
            {
              v13 = v0 + *(type metadata accessor for Apple_Parsec_Search_TrialIdentifiers() + 40);
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B9097940()
{
  result = qword_1EBAC3BD8;
  if (!qword_1EBAC3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3BD8);
  }

  return result;
}

uint64_t static Apple_Parsec_Search_TrialIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v7 = *(a2 + 72);
  if (!sub_1B8D92198(*(a1 + 64), *(a1 + 72), *(a2 + 64)))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Search_TrialIdentifiers() + 40);
  sub_1B964C2B0();
  sub_1B8CD2690(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Search_TrialIdentifiers.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Search_TrialIdentifiers();
  sub_1B8CD2690(&qword_1EBAC3BE0, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9097BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2690(&qword_1EBAC3C38, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9097C30(uint64_t a1)
{
  v2 = sub_1B8CD2690(&qword_1EBAC3C18, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9097CA0()
{
  sub_1B8CD2690(&qword_1EBAC3C18, type metadata accessor for Apple_Parsec_Search_TrialIdentifiers);

  return sub_1B964C5D0();
}

unint64_t sub_1B9097D20()
{
  result = qword_1EBAC3BE8;
  if (!qword_1EBAC3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3BE8);
  }

  return result;
}

unint64_t sub_1B9097D78()
{
  result = qword_1EBAC3BF0;
  if (!qword_1EBAC3BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3BF0);
  }

  return result;
}

unint64_t sub_1B9097DD0()
{
  result = qword_1EBAC3BF8;
  if (!qword_1EBAC3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3BF8);
  }

  return result;
}

unint64_t sub_1B9097E28()
{
  result = qword_1EBAC3C00;
  if (!qword_1EBAC3C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3C08, &qword_1B96893C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3C00);
  }

  return result;
}

uint64_t sub_1B9097FE8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_TemplateType.rawValue.getter()
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

uint64_t sub_1B90980BC@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_V1alpha_TemplateType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90980F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90B8688();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Search_V1alpha_TemplateType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B90981DC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Search_V1alpha_TemplateType.allCases.getter();
  *a1 = result;
  return result;
}

void sub_1B909823C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_V1alpha_SearchResult.domain.setter();
}

void Apple_Parsec_Search_V1alpha_SearchResult.domain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.domain.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9098364(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.domain.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B90A6AA8(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

void Apple_Parsec_Search_V1alpha_SearchResult.templateType.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_66_2(*(v0 + 32));
}

void Apple_Parsec_Search_V1alpha_SearchResult.templateType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_46_7();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.templateType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_71_2(*(v0 + 32));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9098500()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1(v5);
  v7 = OUTLINED_FUNCTION_138_2(v6);
  v8 = *(v4 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = *(v0 + 84);
    v10 = *(v0 + 88);
    OUTLINED_FUNCTION_38_5();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90A6AA8(v11);
    OUTLINED_FUNCTION_73_2(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  OUTLINED_FUNCTION_242();

  free(v13);
}

void sub_1B90985A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_V1alpha_SearchResult.identifier.setter();
}

void Apple_Parsec_Search_V1alpha_SearchResult.identifier.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 56);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B90986A8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.identifier.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B90A6AA8(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

void sub_1B909874C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.setter();
}

void Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 72);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9098854(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B90A6AA8(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

double Apple_Parsec_Search_V1alpha_SearchResult.score.getter()
{
  OUTLINED_FUNCTION_22_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 80);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.score.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B90A6AA8(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.score.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_22_16();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B90989FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
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
    OUTLINED_FUNCTION_38_5();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90A6AA8(v11);
    OUTLINED_FUNCTION_15(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 80) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 88);
  v10 = *(v6 + 96);
  *(v6 + 88) = v2;
  *(v6 + 96) = v0;
  sub_1B8D538A0(v9, v10);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_48(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9098BE0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v1[8];
    v8 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v8, v9);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.setter();
    v10 = v1[6];
    v11 = v1[7];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_163_1();
    v13 = *(v5 + v2);
    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_13();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B90A6AA8(v14);
      OUTLINED_FUNCTION_168(v15);
    }

    OUTLINED_FUNCTION_59_3();
    v10 = *(v13 + 88);
    v11 = *(v13 + 96);
    *(v13 + 88) = v4;
    *(v13 + 96) = v3;
  }

  sub_1B8D538A0(v10, v11);

  free(v1);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.getter()
{
  OUTLINED_FUNCTION_13_17();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9098CB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.setter();
}

void Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B90A6AA8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 112);
  *(v6 + 104) = v2;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}