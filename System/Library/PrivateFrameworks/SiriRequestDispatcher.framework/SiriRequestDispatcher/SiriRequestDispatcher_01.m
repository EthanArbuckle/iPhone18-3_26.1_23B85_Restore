uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_222E16068(v3, v4, a3);
}

uint64_t InsightRequestSummaryLogger.init()()
{
  sub_222E2C6B8(0, &qword_28131F190, 0x277D86200);
  sub_222E400A4();

  return sub_222E3FB24();
}

uint64_t InsightRequestSummaryLogger.emitMarker(assistantId:sessionId:requestId:component:marker:)(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v40 = a4;
  v38 = a1;
  v14 = sub_222E3F794();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a8;
  (*(v15 + 16))(v18, a3, v14);
  sub_222E3FC24();
  sub_222E3FC24();
  sub_222E3FC24();
  v19 = sub_222E3FB04();
  v20 = sub_222E3FFC4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v21;
    v37 = swift_slowAlloc();
    v44 = v37;
    *v21 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D568, &qword_222E419A0);
    v22 = swift_allocObject();
    v34 = a6;
    v23 = v22;
    *(v22 + 16) = xmmword_222E41980;
    *(v22 + 32) = 0x6E61747369737361;
    *(v22 + 40) = 0xEB00000000644974;
    *(v22 + 48) = v38;
    *(v22 + 56) = a2;
    v35 = a2;
    v38 = v19;
    *(v22 + 64) = 0x496E6F6973736573;
    *(v22 + 72) = 0xE900000000000064;
    sub_222E16B10(&qword_28131FF80, MEMORY[0x277CC95F0]);
    sub_222E3FC24();
    v24 = v20;
    v23[10] = sub_222E40264();
    v23[11] = v25;
    v23[12] = 0x4974736575716572;
    v23[13] = 0xE900000000000064;
    v23[14] = v40;
    v23[15] = a5;
    v23[16] = 0x6E656E6F706D6F63;
    v23[17] = 0xE900000000000074;
    v23[18] = v34;
    v23[19] = a7;
    v23[20] = 0x72656B72616DLL;
    v23[21] = 0xE600000000000000;
    v42 = 0;
    v43 = 0xE000000000000000;
    v41 = v39;
    sub_222E3FC24();
    sub_222E3FC24();
    sub_222E40214();
    v26 = v43;
    v23[22] = v42;
    v23[23] = v26;
    v27 = static InsightRequestSummaryLogger.constructLogJsonString(_:)(v23);
    v29 = v28;

    v30 = sub_222E16068(v27, v29, &v44);

    v31 = v36;
    *(v36 + 1) = v30;
    v19 = v38;
    _os_log_impl(&dword_222E12000, v38, v24, "%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  return (*(v15 + 8))(v18, v14);
}

uint64_t InsightRequestSummaryKey.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222E3FC24();
  return v1;
}

uint64_t sub_222E2C1E8@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = InsightRequestSummaryKey.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_222E2C228@<X0>(uint64_t *a1@<X8>)
{
  result = InsightRequestSummaryKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Marker.hashValue.getter()
{
  v1 = *v0;
  sub_222E40334();
  MEMORY[0x223DD0B60](v1);
  return sub_222E40354();
}

uint64_t sub_222E2C420()
{
  v1 = *v0;
  sub_222E40334();
  MEMORY[0x223DD0B60](v1);
  return sub_222E40354();
}

unint64_t sub_222E2C464(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_222E3FAA4();
  sub_222E16B10(&qword_27D04D578, MEMORY[0x277D5D298]);
  v5 = sub_222E3FC84();

  return sub_222E2C4FC(a1, v5);
}

unint64_t sub_222E2C4FC(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_222E3FAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_222E16B10(&qword_27D04D7C0, MEMORY[0x277D5D298]);
    v10 = sub_222E3FC94();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_222E2C6B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_222E2C6FC()
{
  result = qword_27D04D570;
  if (!qword_27D04D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D570);
  }

  return result;
}

uint64_t sub_222E2C778()
{
  result = sub_222E3FB14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InsightRequestSummaryMessageDescription(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Marker(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Marker(_BYTE *result, unsigned int a2, unsigned int a3)
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

NSObject *sub_222E2CA3C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_222E3F794();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v16)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v25 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v25, qword_28131FFA0);
    v17 = sub_222E3FB04();
    v26 = sub_222E3FFA4();
    if (os_log_type_enabled(v17, v26))
    {
      v27 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v27 = 136315394;
      v28 = sub_222E40074();
      v30 = sub_222E16068(v28, v29, &v56);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = sub_222E40074();
      v33 = sub_222E16068(v31, v32, &v56);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_222E12000, v17, v26, "Failed to create RequestLink event for source component: %s and target component: %s", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    goto LABEL_14;
  }

  v17 = v16;
  v55 = a3;
  v18 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v18)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v34 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v34, qword_28131FFA0);
    v35 = sub_222E3FB04();
    v36 = sub_222E3FFA4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_10();
      v38 = OUTLINED_FUNCTION_9_0();
      v56 = v38;
      *v37 = 136315138;
      v39 = sub_222E40074();
      v41 = sub_222E16068(v39, v40, &v56);

      *(v37 + 4) = v41;
      OUTLINED_FUNCTION_8_2(&dword_222E12000, v42, v43, "Failed to create source link event for source component: %s");
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

LABEL_14:
    return 0;
  }

  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v20)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v45 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v45, qword_28131FFA0);
    v46 = sub_222E3FB04();
    v47 = sub_222E3FFA4();
    if (OUTLINED_FUNCTION_3_2(v47))
    {
      v48 = OUTLINED_FUNCTION_10();
      v49 = OUTLINED_FUNCTION_9_0();
      v56 = v49;
      *v48 = 136315138;
      v50 = sub_222E40074();
      v52 = sub_222E16068(v50, v51, &v56);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_222E12000, v46, a4, "Failed to create target link event for target component: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_7();
    }

    return 0;
  }

  v21 = v20;
  [v19 setComponent_];
  sub_222E1BB7C();
  v54 = a4;
  v22 = *(v11 + 16);
  v22(v15, a2, v8);
  v23 = sub_222E1BBC0(v15);
  [v19 setUuid_];

  [v21 setComponent_];
  v22(v15, v54, v8);
  v24 = sub_222E1BBC0(v15);
  [v21 setUuid_];

  [v17 setSource:v19];
  [v17 setTarget:v21];

  return v17;
}

uint64_t sub_222E2CF20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D730, qword_222E41B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *IntelligenceFlowFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "IFOrchestration";
  }

  else
  {
    return "IntelligenceFlow";
  }
}

uint64_t IntelligenceFlowFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for IntelligenceFlowFeatureFlags;
  v4[4] = sub_222E2D094();
  LOBYTE(v4[0]) = v1;
  v2 = sub_222E3F7A4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_222E2D094()
{
  result = qword_28131F608[0];
  if (!qword_28131F608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28131F608);
  }

  return result;
}

uint64_t IntelligenceFlowFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_222E40334();
  MEMORY[0x223DD0B60](v1);
  return sub_222E40354();
}

unint64_t sub_222E2D184()
{
  result = qword_27D04D580;
  if (!qword_27D04D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D580);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222E2D2FC()
{
  v0 = sub_222E3FB14();
  __swift_allocate_value_buffer(v0, qword_28131FFA0);
  __swift_project_value_buffer(v0, qword_28131FFA0);
  sub_222E2B954();
  sub_222E400A4();
  return sub_222E3FB24();
}

uint64_t sub_222E2D390()
{
  v0 = sub_222E3FB14();
  __swift_allocate_value_buffer(v0, qword_28131FF88);
  __swift_project_value_buffer(v0, qword_28131FF88);
  sub_222E2B954();
  sub_222E400A4();
  return sub_222E3FB24();
}

char *MessageDispatchingBridgeBase.init(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v11 = qword_28131FFE8;
  v12 = *(*v7 + 80);
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
  OUTLINED_FUNCTION_34_1();
  sub_222E3FE04();
  *&v7[v11] = sub_222E3FC04();
  v13 = qword_28131FFC8;
  sub_222E3FE04();
  *&v7[v13] = sub_222E3FC04();
  v14 = qword_28131FFE0;
  type metadata accessor for MessageDispatchingBridgeBase.CommandHandlerBase();
  sub_222E3FC54();
  OUTLINED_FUNCTION_34_1();
  sub_222E3FE04();
  *&v7[v14] = sub_222E3FC04();
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  sub_222E19C30(a3, (v7 + 32));
  *(v7 + 9) = a4;
  *(v7 + 10) = a5;
  sub_222E19C30(a6, (v7 + 88));
  v15 = qword_28131FFC0;
  v16 = sub_222E3FB14();
  OUTLINED_FUNCTION_4(v16);
  (*(v17 + 32))(&v7[v15], a7);
  return v7;
}

void sub_222E2D6C8()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_222E3FB14();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *v3;
  (*(v9 + 16))(v13 - v12, v5, v6);
  v16 = OUTLINED_FUNCTION_9_2();
  sub_222E2ECEC(v16, v17, v1, v14, v18);
  (*(v9 + 8))(v5, v6);
  OUTLINED_FUNCTION_12();
}

unint64_t MessageHandlerType.rawValue.getter()
{
  result = 0x636972656E6567;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x4674736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MessageDispatchingBridgeBase.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  v3 = qword_28131FFC0;
  v4 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_0(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + qword_28131FFE8);

  v7 = *(v0 + qword_28131FFC8);

  v8 = *(v0 + qword_28131FFE0);

  return v0;
}

uint64_t sub_222E2D954()
{
  v1 = *v0;
  sub_222E22984();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_32_1();
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
  v3 = sub_222E3FC44();

  v10[5] = v3;
  v10[2] = v2;
  v4 = sub_222E3FC34();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D590, &unk_222E41C90);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_222E2E81C(sub_222E2F2F8, v10, v4, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  return v8;
}

uint64_t sub_222E2DA88()
{
  v1 = *v0;
  sub_222E1E620();
  v2 = *(v1 + 80);
  type metadata accessor for MessageDispatchingBridgeBase.CommandHandlerBase();
  sub_222E3FC54();
  sub_222E3FC24();
  OUTLINED_FUNCTION_30_1();

  sub_222E3FC14();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  return sub_222E3FE24();
}

uint64_t sub_222E2DB64()
{
  v1 = *v0;
  sub_222E1E620();
  v2 = *(v1 + 80);
  type metadata accessor for MessageDispatchingBridgeBase.CommandHandlerBase();
  OUTLINED_FUNCTION_32_1();
  sub_222E3FC54();
  sub_222E3FC24();
  sub_222E3FC64();

  if (!v4)
  {
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_34_1();
    sub_222E3FE04();
    sub_222E3FC04();
  }

  OUTLINED_FUNCTION_31_2();
  sub_222E3FC24();

  OUTLINED_FUNCTION_31_2();
  sub_222E3FC14();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_2();
  return sub_222E3FE24();
}

void sub_222E2DCD0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v2 = *v0;
  v3 = sub_222E3FB14();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  swift_getMetatypeMetadata();
  v12 = sub_222E3FCF4();
  v14 = v13;
  sub_222E22984();
  v22[0] = v12;
  v22[1] = v14;
  v15 = *(v2 + 80);
  OUTLINED_FUNCTION_32_1();
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
  OUTLINED_FUNCTION_30_1();
  sub_222E3FC24();
  sub_222E3FC64();

  if (v23)
  {

    sub_222E3FC24();
    v16 = sub_222E3FB04();
    v17 = sub_222E3FFA4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_10();
      v19 = OUTLINED_FUNCTION_9_0();
      v22[0] = v19;
      *v18 = 136446210;
      v20 = sub_222E16068(v12, v14, v22);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_222E12000, v16, v17, "Message type: %{public}s is already registered with bridge", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_7();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandler();
    (*(v6 + 16))(v11, v1 + qword_28131FFC0, v3);
    LOBYTE(v22[0]) = 0;

    sub_222E2D6C8();
    v24 = v14;
    v25 = v21;
    v23 = v12;
    swift_beginAccess();
    sub_222E3FC54();
    sub_222E3FC74();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_12();
}

void sub_222E2DF90()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = sub_222E3FB14();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v51 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v51 groupIdentifier];
  if (v14)
  {
    v15 = v14;
    v50 = v3;
    v16 = sub_222E3FCB4();
    v18 = v17;

    v19 = [v51 encodedClassName];
    if (v19)
    {
      v48 = v8;
      v49 = sub_222E3FCB4();
      v21 = v20;

      sub_222E1E620();
      v52 = v16;
      v53 = v18;
      v47 = *(v4 + 80);
      type metadata accessor for MessageDispatchingBridgeBase.CommandHandlerBase();
      sub_222E3FC54();
      OUTLINED_FUNCTION_13_1();
      sub_222E3FC24();
      sub_222E3FC64();

      v22 = v54;
      if (!v54)
      {
        OUTLINED_FUNCTION_34_1();
        sub_222E3FE04();
        v22 = sub_222E3FC04();
      }

      v58 = v22;
      v23 = v49;
      v52 = v49;
      v53 = v21;
      sub_222E3FC24();
      sub_222E3FC64();

      v24 = v16;
      if (v54)
      {

        sub_222E3FC24();
        sub_222E3FC24();
        v25 = sub_222E3FB04();
        v26 = sub_222E3FFA4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = OUTLINED_FUNCTION_29();
          v52 = OUTLINED_FUNCTION_45();
          *v27 = 136446466;
          *(v27 + 4) = sub_222E16068(v16, v18, &v52);
          *(v27 + 12) = 2082;
          *(v27 + 14) = sub_222E16068(v49, v21, &v52);
          _os_log_impl(&dword_222E12000, v25, v26, "Replacing already registered method to handle command: %{public}s:%{public}s, replacing", v27, 0x16u);
          swift_arrayDestroy();
          v23 = v49;
          OUTLINED_FUNCTION_7();
          v24 = v16;
          OUTLINED_FUNCTION_7();
        }
      }

      type metadata accessor for MessageDispatchingBridgeBase.CommandHandler();
      (*(v48 + 16))(v13, v1 + qword_28131FFC0, v5);
      v57 = sub_222E2EC78();
      v52 = v23;
      v53 = v21;

      sub_222E3FBF4();

      v55 = v18;
      v56 = v58;
      v54 = v24;
      swift_beginAccess();
      sub_222E3FC54();
      sub_222E3FC24();
      sub_222E3FBF4();
      swift_endAccess();

      goto LABEL_15;
    }

    v28 = sub_222E3FB04();
    v35 = sub_222E3FFA4();
    if (os_log_type_enabled(v28, v35))
    {
      v36 = OUTLINED_FUNCTION_10();
      v31 = OUTLINED_FUNCTION_9_0();
      v52 = v31;
      *v36 = 136446210;
      v54 = v50;
      swift_getMetatypeMetadata();
      v37 = sub_222E3FCF4();
      v39 = sub_222E16068(v37, v38, &v52);

      *(v36 + 4) = v39;
      goto LABEL_14;
    }
  }

  else
  {

    v28 = sub_222E3FB04();
    v29 = sub_222E3FFA4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_10();
      v31 = OUTLINED_FUNCTION_9_0();
      v52 = v31;
      *v30 = 136446210;
      v54 = v3;
      swift_getMetatypeMetadata();
      v32 = sub_222E3FCF4();
      v34 = sub_222E16068(v32, v33, &v52);

      *(v30 + 4) = v34;
LABEL_14:
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();

LABEL_15:
      OUTLINED_FUNCTION_12();
      return;
    }
  }

  OUTLINED_FUNCTION_12();
}

uint64_t MessageDispatchingBridgeBase.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28131FFC0;
  v4 = sub_222E3FB14();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void MessageDispatchingBridgeBase.__allocating_init(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_222E3FB14();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  sub_222E15C70(v8, v24);
  sub_222E15C70(v2, v23);
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v13, qword_28131FFA0);
  (*(v16 + 16))(v21, v22, v13);
  (*(v0 + 240))(v12, v10, v24, v6, v4, v23, v21);
  __swift_destroy_boxed_opaque_existential_0(v2);
  __swift_destroy_boxed_opaque_existential_0(v8);
  OUTLINED_FUNCTION_12();
}

uint64_t MessageDispatchingBridgeBase.__allocating_init(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v14 = OUTLINED_FUNCTION_28_1();
  MessageDispatchingBridgeBase.init(_:_:_:_:_:_:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_222E2E81C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_222E3FF54();
  if (!v26)
  {
    return sub_222E3FE04();
  }

  v48 = v26;
  v52 = sub_222E401F4();
  v39 = sub_222E40204();
  sub_222E401A4();
  result = sub_222E3FF44();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_222E3FF74();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_222E401E4();
      result = sub_222E3FF64();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222E2EC40(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t sub_222E2EC78()
{
  v0 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_31_2();
  sub_222E2EED0(v1, v2, v3);
  return v0;
}

uint64_t sub_222E2ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  OUTLINED_FUNCTION_28_1();
  v7 = OUTLINED_FUNCTION_9_2();
  return sub_222E2ED48(v7, v8, v9, a4, a5);
}

uint64_t sub_222E2ED48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char *a5)
{
  v7 = *a5;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3 & 1;
  v8 = qword_28131FFD8;
  v9 = sub_222E3FB14();
  (*(*(v9 - 8) + 32))(v5 + v8, a4, v9);
  *(v5 + 16) = v7;
  return v5;
}

uint64_t sub_222E2EDE4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_222E19234();
  v4 = qword_28131FFD8;
  v5 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_0(v5);
  v7 = *(v6 + 8);

  return v7(v0 + v4);
}

uint64_t sub_222E2EE4C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_222E19234();
  v4 = qword_28131FFD8;
  v5 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_0(v5);
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_222E2EED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = qword_28131FFD0;
  v6 = sub_222E3FB14();
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(v3 + v5, a3);
  return v3;
}

uint64_t sub_222E2EF3C()
{
  v1 = *(v0 + 24);

  v2 = qword_28131FFD0;
  v3 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_0(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

uint64_t sub_222E2EFA0()
{
  v1 = *(v0 + 24);

  v2 = qword_28131FFD0;
  v3 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_222E2F02C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

SiriRequestDispatcher::MessageHandlerType_optional __swiftcall MessageHandlerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222E40254();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222E2F118()
{
  sub_222E40334();
  sub_222E2F168();
  return sub_222E40354();
}

uint64_t sub_222E2F168()
{
  sub_222E3FD24();
}

uint64_t sub_222E2F280()
{
  sub_222E40334();
  sub_222E2F168();
  return sub_222E40354();
}

unint64_t sub_222E2F2D0@<X0>(unint64_t *a1@<X8>)
{
  result = MessageHandlerType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222E2F2F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

unint64_t sub_222E2F3BC()
{
  result = qword_27D04D5A0[0];
  if (!qword_27D04D5A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D04D5A0);
  }

  return result;
}

uint64_t sub_222E2F410()
{
  result = sub_222E3FB14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MessageDispatchingBridgeBase.registerMessageHandler<A>(_:)()
{
  return (*(*v0 + 304))();
}

{
  return (*(*v0 + 312))();
}

uint64_t sub_222E2F6BC()
{
  result = sub_222E3FB14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222E2F790()
{
  result = sub_222E3FB14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageHandlerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageHandlerType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_222E2F99C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_222E2FA04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_222E2FA44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t MessageDispatchingXPCListeningBridgeBase.__allocating_init(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  OUTLINED_FUNCTION_2_3();
  v14 = sub_222E3FB14();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E15C70(v7, v27);
  sub_222E15C70(a6, v26);
  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v22 = __swift_project_value_buffer(v14, qword_28131FFA0);
  (*(v17 + 16))(v21, v22, v14);
  (*(v8 + 352))(v11, v10, v27, v9, a5, v26, v25, v21);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t MessageDispatchingXPCListeningBridgeBase.__allocating_init(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  return MessageDispatchingXPCListeningBridgeBase.init(_:_:_:_:_:_:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MessageDispatchingXPCListeningBridgeBase.init(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a4;
  v25 = a5;
  v15 = sub_222E3FB14();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + qword_28131FFB8) = a7;
  sub_222E15C70(a3, v27);
  sub_222E15C70(a6, v26);
  (*(v18 + 16))(v22, a8, v15);
  MessageDispatchingBridgeBase.init(_:_:_:_:_:_:)(a1, a2, v27, v24, v25, v26, v22);
  (*(v18 + 8))(a8, v15);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t MessageDispatchingXPCListeningBridgeBase.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v7;
  OUTLINED_FUNCTION_2_3();
  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v13 = sub_222E3FB14();
  __swift_project_value_buffer(v13, qword_28131FFA0);
  v14 = sub_222E3FB04();
  v15 = sub_222E3FFA4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_222E12000, v14, v15, "Attempting to initialize an XPCListeningBridge without an XPCListener, this is not supported. Please use a different implementation if an XPCListener is not required. ", v16, 2u);
    MEMORY[0x223DD12D0](v16, -1, -1);
  }

  sub_222E15C70(v6, v21);
  sub_222E15C70(a6, v20);
  type metadata accessor for EmptyBridgeConnectionListener();
  [objc_allocWithZone(MEMORY[0x277CCAE90]) init];
  [objc_allocWithZone(MEMORY[0x277CCAE90]) init];
  v17 = sub_222E29BDC();
  (*(v11 + 344))(v10, v9, v21, v8, a5, v20, v17);
  return OUTLINED_FUNCTION_1_5();
}

void MessageDispatchingXPCListeningBridgeBase.__allocating_init(_:_:_:_:_:_:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t MessageDispatchingXPCListeningBridgeBase.deinit()
{
  v0 = MessageDispatchingBridgeBase.deinit();

  return v0;
}

uint64_t MessageDispatchingXPCListeningBridgeBase.__deallocating_deinit()
{
  v0 = MessageDispatchingXPCListeningBridgeBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t BridgeSubscriptionError.hashValue.getter()
{
  sub_222E40334();
  MEMORY[0x223DD0B60](0);
  return sub_222E40354();
}

uint64_t sub_222E30224()
{
  sub_222E40334();
  MEMORY[0x223DD0B60](0);
  return sub_222E40354();
}

unint64_t sub_222E30324()
{
  result = qword_27D04D640;
  if (!qword_27D04D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D640);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BridgeSubscriptionError(_BYTE *result, int a2, int a3)
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

uint64_t FeatureChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  FeatureChecker.init()();
  return v0;
}

_BYTE *FeatureChecker.init()()
{
  v0[16] = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v3[3] = &type metadata for IntelligenceFlowFeatureFlags;
  v3[4] = sub_222E2D094();
  LOBYTE(v3[0]) = 0;
  v1 = sub_222E3F7A4();
  __swift_destroy_boxed_opaque_existential_0(v3);
  v0[17] = v1 & 1;
  v0[18] = AFDeviceSupportsSAE();
  v0[19] = AFDeviceSupportsMuSessions();
  v0[20] = AFDeviceSupportsSiriMUX();
  v0[21] = AFDeviceSupportsSiriUOD();
  v0[22] = AFDeviceSupportsHybridUOD();
  v0[23] = AFOfflineDictationCapable();
  v0[24] = AFDeviceSupportsBobble();
  v0[25] = AFIsInternalInstall();
  v0[26] = AFDeviceSupportsMedoc();
  v0[27] = AFDeviceSupportsBackgroundSession();
  return v0;
}

uint64_t MUXErrors.hashValue.getter()
{
  v1 = *v0;
  sub_222E40334();
  MEMORY[0x223DD0B60](v1);
  return sub_222E40354();
}

unint64_t sub_222E309F0()
{
  result = qword_27D04D648;
  if (!qword_27D04D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MUXErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MUXErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_222E30BAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_222E382B0(*(a1 + 16), 0);
  v4 = sub_222E39B30(&v6, v3 + 4, v2, a1);
  sub_222E39C88();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_222E30C48(unsigned __int8 a1, char a2)
{
  v2 = 0x636972656E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x636972656E6567;
  switch(v4)
  {
    case 1:
      v3 = 0x8000000222E429C0;
      v5 = 0xD000000000000014;
      break;
    case 2:
      v3 = 0x8000000222E429E0;
      v5 = 0xD000000000000015;
      break;
    case 3:
      v3 = 0x8000000222E42A00;
      v5 = 0xD000000000000017;
      break;
    case 4:
      v3 = 0x8000000222E42A20;
      v5 = 0xD000000000000018;
      break;
    case 5:
      v5 = 0x4674736575716572;
      v3 = 0xEF72656873696E69;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0x8000000222E429C0;
      v2 = 0xD000000000000014;
      break;
    case 2:
      v6 = 0x8000000222E429E0;
      v2 = 0xD000000000000015;
      break;
    case 3:
      v6 = 0x8000000222E42A00;
      v2 = 0xD000000000000017;
      break;
    case 4:
      v6 = 0x8000000222E42A20;
      v2 = 0xD000000000000018;
      break;
    case 5:
      v2 = 0x4674736575716572;
      v6 = 0xEF72656873696E69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222E40294();
  }

  return v8 & 1;
}

uint64_t sub_222E30DFC()
{
  sub_222E3F9C4();
  sub_222E39C90(&unk_27D04D7B0, MEMORY[0x277D5CF58]);
  sub_222E3FDB4();
  sub_222E3FDB4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_222E40294();
  }

  return v1 & 1;
}

uint64_t sub_222E30EDC()
{
  result = AFIsATVOnly();
  byte_27D04D650 = result;
  return result;
}

char *sub_222E30EFC()
{
  if (qword_27D04D0B0 != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  return &byte_27D04D650;
}

uint64_t static MUXUtils.isATV.getter()
{
  if (qword_27D04D0B0 != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  swift_beginAccess();
  return byte_27D04D650;
}

uint64_t static MUXUtils.isATV.setter(char a1)
{
  if (qword_27D04D0B0 != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  result = swift_beginAccess();
  byte_27D04D650 = a1 & 1;
  return result;
}

uint64_t (*static MUXUtils.isATV.modify())()
{
  if (qword_27D04D0B0 != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_222E31080@<X0>(_BYTE *a1@<X8>)
{
  sub_222E30EFC();
  result = swift_beginAccess();
  *a1 = byte_27D04D650;
  return result;
}

uint64_t sub_222E310D0(char *a1)
{
  v1 = *a1;
  sub_222E30EFC();
  result = swift_beginAccess();
  byte_27D04D650 = v1;
  return result;
}

void static MUXUtils.logAllHomeMembers(from:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25_2();
  v60 = sub_222E3FAA4();
  v0 = OUTLINED_FUNCTION_0(v60);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_55();
  v59 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D658, &qword_222E42510);
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16();
  v61 = v10;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16_1();
  v58 = v12;
  v64 = 0xD000000000000019;
  v65 = 0x8000000222E43500;
  v13 = sub_222E3F814();
  v14 = 0;
  v15 = *(v13 + 64);
  v55 = v13;
  v16 = *(v13 + 32);
  OUTLINED_FUNCTION_1_6();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v56 = v22;
  v57 = v17;
  if ((v19 & v18) == 0)
  {
LABEL_3:
    v23 = v58;
    while (1)
    {
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
        OUTLINED_FUNCTION_21_1();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
        v20 = 0;
        goto LABEL_9;
      }

      v20 = *(v17 + 8 * v24);
      ++v14;
      if (v20)
      {
        v14 = v24;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_0_7();
    swift_once();
    goto LABEL_14;
  }

  while (1)
  {
    v23 = v58;
LABEL_8:
    OUTLINED_FUNCTION_48_0();
    v27 = v26 | (v25 << 6);
    (*(v2 + 16))(v59, *(v55 + 48) + *(v2 + 72) * v27, v60);
    v28 = *(*(v55 + 56) + 8 * v27);
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518) + 48);
    (*(v2 + 32))(v61, v59, v60);
    *(v61 + v29) = v28;
    OUTLINED_FUNCTION_11_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    v34 = v28;
LABEL_9:
    sub_222E397AC(v61, v23, &qword_27D04D658, &qword_222E42510);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
    OUTLINED_FUNCTION_9_3(v23);
    if (v36)
    {
      break;
    }

    v37 = *(v23 + *(v35 + 48));
    (*(v2 + 32))(v59, v23, v60);
    v63[0] = 91;
    v63[1] = 0xE100000000000000;
    OUTLINED_FUNCTION_7_3();
    sub_222E39C90(&qword_27D04D668, v38);
    v39 = sub_222E40264();
    MEMORY[0x223DD0550](v39);

    MEMORY[0x223DD0550](8250, 0xE200000000000000);
    v62 = [v37 dictionary];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D670, &unk_222E42520);
    v40 = sub_222E400B4();
    v42 = v41;

    MEMORY[0x223DD0550](v40, v42);

    MEMORY[0x223DD0550](2653, 0xE200000000000000);
    MEMORY[0x223DD0550](91, 0xE100000000000000);

    (*(v2 + 8))(v59, v60);
    v22 = v56;
    v17 = v57;
    if (!v20)
    {
      goto LABEL_3;
    }
  }

  if (qword_28131F210 != -1)
  {
    goto LABEL_19;
  }

LABEL_14:
  v47 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_2(v47, qword_28131FFA0);
  v49 = v64;
  v48 = v65;
  sub_222E3FC24();
  v50 = sub_222E3FB04();
  v51 = sub_222E3FF94();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63[0] = v53;
    *v52 = 136315138;
    v54 = sub_222E16068(v49, v48, v63);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_222E12000, v50, v51, "%s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12();
}

uint64_t static MUXUtils.isUnknownUser(withUserId:fromMUXContextMessage:)()
{
  OUTLINED_FUNCTION_53_0();
  v1 = sub_222E3F814();
  if (*(v1 + 16) && (v2 = sub_222E2C464(v0), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);

    v5 = static MUXUtils.isUnknownUser(_:)(v4);

    return v5 & 1;
  }

  else
  {

    return 1;
  }
}

void static MUXUtils.getAllUserIds(from:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v19 = sub_222E3FAA4();
  v3 = OUTLINED_FUNCTION_0(v19);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_2();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_37_1();
  v12 = sub_222E39804(v2, &selRef_homeMembers, &unk_27D04D7D0, 0x277D47390);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = sub_222E3828C(v12);
  if (!v13)
  {
LABEL_12:

LABEL_13:
    OUTLINED_FUNCTION_12();
    return;
  }

  v14 = v13;
  if (v13 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223DD0970](i, v12);
      }

      else
      {
        v16 = *(v12 + 8 * i + 32);
      }

      v17 = v16;
      sub_222E398F8(v16, &selRef_sharedUserId);
      if (v18)
      {
        sub_222E3FA74();
        sub_222E38590(v0, v10);

        (*(v5 + 8))(v0, v19);
      }

      else
      {
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25_2();
  v54 = sub_222E3FAA4();
  v0 = OUTLINED_FUNCTION_0(v54);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_16();
  v50 = v5;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_1();
  v53 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D658, &qword_222E42510);
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_1();
  v51 = v16;
  v17 = sub_222E3F814();
  v18 = *(v17 + 64);
  v45 = v17 + 64;
  v19 = *(v17 + 32);
  OUTLINED_FUNCTION_1_6();
  v22 = v21 & v20;
  v44 = (v23 + 63) >> 6;
  v52 = (v2 + 32);
  v47 = v2;
  v48 = v24;
  v49 = (v2 + 8);
  sub_222E3FC24();
  v25 = 0;
  v46 = v14;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v26 << 6);
      (*(v47 + 16))(v53, *(v48 + 48) + *(v47 + 72) * v29, v54);
      v30 = *(*(v48 + 56) + 8 * v29);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518) + 48);
      v14 = v46;
      (*(v47 + 32))();
      *(v46 + v31) = v30;
      OUTLINED_FUNCTION_11_2();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
      v36 = v30;
      v27 = v51;
LABEL_9:
      sub_222E397AC(v14, v27, &qword_27D04D658, &qword_222E42510);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
      OUTLINED_FUNCTION_9_3(v27);
      if (v38)
      {
        break;
      }

      v39 = *(v27 + *(v37 + 48));
      (*v52)(v50, v27, v54);
      sub_222E38590(v53, v50);

      (*v49)(v53, v54);
      if (!v22)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_12();
  }

  else
  {
LABEL_3:
    v27 = v51;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v44)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
        OUTLINED_FUNCTION_21_1();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
        v22 = 0;
        goto LABEL_9;
      }

      v22 = *(v45 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void static MUXUtils.getUserIdToLoggableSharedUserIdDict(from:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25_2();
  v105 = sub_222E3FAA4();
  v1 = OUTLINED_FUNCTION_0(v105);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_38_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_1();
  v96 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D658, &qword_222E42510);
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_37_1();
  v102 = sub_222E3FC04();
  v16 = sub_222E3F814();
  v17 = 0;
  v18 = *(v16 + 64);
  v97 = v3;
  v98 = v16;
  v19 = *(v16 + 32);
  OUTLINED_FUNCTION_1_6();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v106 = (v3 + 32);
  v101 = v14;
  v104 = v0;
  v99 = v25;
  v100 = v20;
  if ((v22 & v21) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      v60 = OUTLINED_FUNCTION_34_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
      OUTLINED_FUNCTION_21_1();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
      v23 = 0;
      goto LABEL_8;
    }

    v23 = *(v20 + 8 * v26);
    ++v17;
    if (v23)
    {
      v17 = v26;
LABEL_7:
      OUTLINED_FUNCTION_49_0();
      v29 = v28 | (v27 << 6);
      (*(v97 + 16))(v96, *(v98 + 48) + *(v97 + 72) * v29, v105);
      v30 = *(*(v98 + 56) + 8 * v29);
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518) + 48);
      v32 = *(v97 + 32);
      v33 = OUTLINED_FUNCTION_28_2();
      v34(v33);
      *(v14 + v31) = v30;
      OUTLINED_FUNCTION_11_2();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      v39 = v30;
      v0 = v104;
LABEL_8:
      sub_222E397AC(v14, v0, &qword_27D04D658, &qword_222E42510);
      v40 = OUTLINED_FUNCTION_34_2();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      OUTLINED_FUNCTION_9_3(v0);
      if (v43)
      {

        OUTLINED_FUNCTION_12();
        return;
      }

      v44 = *(v0 + *(v42 + 48));
      v45 = *v106;
      v46 = OUTLINED_FUNCTION_57_0();
      v47(v46);
      v48 = sub_222E3FA84();
      v50 = v49;
      v51 = sub_222E398F8(v44, &selRef_loggableMultiUserSharedUserId);
      if (!v52)
      {
        v53 = OUTLINED_FUNCTION_47_0();
        v55 = sub_222E18808(v53, v54);
        v57 = v56;

        if ((v57 & 1) == 0)
        {
          v58 = OUTLINED_FUNCTION_12_2();
          v59(v58);

          goto LABEL_12;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v82 = v102[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D558, &unk_222E41990);
        OUTLINED_FUNCTION_40_1();
        sub_222E40224();
        v83 = *(v102[6] + 16 * v55 + 8);

        v84 = *(v102[7] + 16 * v55 + 8);

        sub_222E40234();

LABEL_21:
        v85 = OUTLINED_FUNCTION_12_2();
        v86(v85);
LABEL_12:
        v20 = v100;
        v14 = v101;
        v0 = v104;
        v25 = v99;
        if (!v23)
        {
          continue;
        }

        goto LABEL_7;
      }

      v66 = v51;
      v67 = v52;
      swift_isUniquelyReferenced_nonNull_native();
      v107 = v102;
      v68 = OUTLINED_FUNCTION_47_0();
      sub_222E18808(v68, v69);
      v70 = v102[2];
      OUTLINED_FUNCTION_29_1();
      if (__OFADD__(v73, v74))
      {
        goto LABEL_27;
      }

      v103 = v72;
      v95 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D558, &unk_222E41990);
      OUTLINED_FUNCTION_40_1();
      if (sub_222E40224())
      {
        v75 = OUTLINED_FUNCTION_47_0();
        v77 = sub_222E18808(v75, v76);
        if ((v103 & 1) != (v78 & 1))
        {
          goto LABEL_29;
        }

        if (v103)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v77 = v95;
        if (v103)
        {
LABEL_19:
          v79 = v77;

          v102 = v107;
          v80 = (v107[7] + 16 * v79);
          v81 = v80[1];
          *v80 = v66;
          v80[1] = v67;

          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_10_3(&v107[v77 >> 6]);
      v88 = (v107[6] + 16 * v87);
      *v88 = v48;
      v88[1] = v50;
      v89 = (v107[7] + 16 * v87);
      *v89 = v66;
      v89[1] = v67;

      v90 = OUTLINED_FUNCTION_12_2();
      v91(v90);
      v92 = v107[2];
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        goto LABEL_28;
      }

      v102 = v107;
      v107[2] = v94;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_222E402C4();
  __break(1u);
}

uint64_t static MUXUtils.getSharedUserIdtoUserIdHashDict(from:sessionId:multiUserConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_222E3FAA4();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D658, &qword_222E42510);
  OUTLINED_FUNCTION_13_2(v8);
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E31E78);
}

uint64_t sub_222E31E78()
{
  v3 = *(v0 + 168);
  v4 = sub_222E3FC04();
  if (!v3)
  {
LABEL_13:
    v38 = *(v0 + 232);
    v37 = *(v0 + 240);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);

    v41 = *(v0 + 8);
    OUTLINED_FUNCTION_26_1();

    __asm { BRAA            X2, X16 }
  }

  v5 = *(v0 + 168);
  v6 = sub_222E3F814();
  v7 = v6;
  *(v0 + 248) = v6;
  v8 = *(v6 + 32);
  *(v0 + 312) = v8;
  v9 = -1;
  v10 = -1 << v8;
  v11 = *(v6 + 64);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  *(v0 + 256) = v4;
  if ((v9 & v11) != 0)
  {
    v12 = 0;
LABEL_9:
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_56(*(v7 + 48));
    v20(v17);
    v21 = *(*(v7 + 56) + 8 * v2);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518) + 48);
    v23 = *(v19 + 32);
    v24 = OUTLINED_FUNCTION_31();
    v25(v24);
    *(v16 + v22) = v21;
    OUTLINED_FUNCTION_11_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    v30 = v21;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = ((63 - v10) >> 6) - 1;
    while (v14 != v13)
    {
      v12 = v13 + 1;
      if (*(v6 + 72 + 8 * v13++))
      {
        goto LABEL_9;
      }
    }

    v56 = *(v0 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
    OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    v1 = 0;
  }

  *(v0 + 264) = v1;
  *(v0 + 272) = v14;
  v31 = *(v0 + 240);
  sub_222E397AC(*(v0 + 232), v31, &qword_27D04D658, &qword_222E42510);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
  OUTLINED_FUNCTION_9_3(v31);
  if (v33)
  {
    v34 = *(v0 + 248);
    v35 = *(v0 + 168);

    v36 = *(v0 + 256);
    goto LABEL_13;
  }

  v44 = *(v0 + 208);
  v45 = *(v0 + 216);
  v46 = *(v0 + 200);
  v62 = *(v0 + 192);
  v48 = *(v0 + 176);
  v47 = *(v0 + 184);

  v49 = *(v44 + 32);
  v50 = OUTLINED_FUNCTION_54_0();
  v51(v50);
  *(v0 + 280) = sub_222E3FA84();
  *(v0 + 288) = v52;
  v53 = sub_222E3FCA4();
  v54 = OUTLINED_FUNCTION_62_0(v53);
  *(v0 + 304) = v54;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_222E321EC;
  swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D680, &qword_222E42538);
  OUTLINED_FUNCTION_18_1();
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_14_1(&block_descriptor_0);
  [v62 getLoggableIdentiferForUserWithSharedUserID:v45 iCloudAltDSID:0 sessionID:v54 completion:?];
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x282200938]();
}

uint64_t sub_222E321EC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222E322CC);
}

uint64_t sub_222E322CC()
{
  v112 = v0;
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 296);

  if (!v3)
  {
    if (qword_28131F210 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

  if (qword_28131F210 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v6 = *(v0 + 288);
    v7 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v7, qword_28131FFA0);
    sub_222E3FC24();
    sub_222E3FC24();
    v8 = sub_222E3FB04();
    v9 = sub_222E3FF94();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 280);
      v10 = *(v0 + 288);
      v12 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v111 = v2;
      *v12 = 136315394;
      v13 = OUTLINED_FUNCTION_28_2();
      *(v12 + 4) = sub_222E16068(v13, v14, v15);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_222E16068(v4, v3, &v111);
      _os_log_impl(&dword_222E12000, v8, v9, "Got userIdHash for userId: %s, hash: %s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 256);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 160) = v18;
    v19 = OUTLINED_FUNCTION_34_2();
    sub_222E18808(v19, v20);
    v21 = *(v18 + 16);
    OUTLINED_FUNCTION_29_1();
    if (!__OFADD__(v24, v25))
    {
      break;
    }

    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_7();
    swift_once();
LABEL_12:
    v33 = *(v0 + 288);
    v34 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v34, qword_28131FFA0);
    sub_222E3FC24();
    v35 = sub_222E3FB04();
    v36 = sub_222E3FFA4();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 288);
    if (v37)
    {
      v39 = *(v0 + 280);
      v40 = *(v0 + 208);
      v3 = *(v0 + 216);
      v4 = *(v0 + 200);
      v41 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v111 = v2;
      *v41 = 136315138;
      v42 = OUTLINED_FUNCTION_54_0();
      isUniquelyReferenced_nonNull_native = sub_222E16068(v42, v43, v44);

      *(v41 + 4) = isUniquelyReferenced_nonNull_native;
      _os_log_impl(&dword_222E12000, v35, v36, "Unable to get userIdHash for userId: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();

      v45 = *(v40 + 8);
    }

    else
    {
      v48 = *(v0 + 208);
      v3 = *(v0 + 216);
      v4 = *(v0 + 200);
      v49 = *(v0 + 288);

      v50 = *(v48 + 8);
    }

    v46 = OUTLINED_FUNCTION_31();
    v47(v46);
    v51 = *(v0 + 272);
    if (*(v0 + 264))
    {
      goto LABEL_27;
    }

LABEL_16:
    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v52 >= (((1 << *(v0 + 312)) + 63) >> 6))
      {
        v54 = *(v0 + 232);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
        OUTLINED_FUNCTION_21_1();
        __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
        isUniquelyReferenced_nonNull_native = 0;
        goto LABEL_29;
      }

      v53 = *(v0 + 248);
      ++v51;
      if (*(v53 + 8 * v52 + 64))
      {
        v51 = v52;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0_7();
    swift_once();
  }

  v26 = v22;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D558, &unk_222E41990);
  if ((sub_222E40224() & 1) == 0)
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = *(v0 + 160);
    v59 = *(v0 + 288);
    if (v27)
    {
      v60 = (isUniquelyReferenced_nonNull_native[7] + 16 * v26);
      v61 = v60[1];
      *v60 = v4;
      v60[1] = v3;
    }

    else
    {
      v62 = *(v0 + 280);
      isUniquelyReferenced_nonNull_native[(v26 >> 6) + 8] |= 1 << v26;
      v63 = (isUniquelyReferenced_nonNull_native[6] + 16 * v26);
      *v63 = v62;
      v63[1] = v59;
      v64 = (isUniquelyReferenced_nonNull_native[7] + 16 * v26);
      *v64 = v4;
      v64[1] = v3;
      v65 = isUniquelyReferenced_nonNull_native[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        __break(1u);
        return MEMORY[0x282200938]();
      }

      isUniquelyReferenced_nonNull_native[2] = v67;
    }

    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v68 = *(v0 + 264);
    v51 = *(v0 + 272);
    *(v0 + 256) = isUniquelyReferenced_nonNull_native;
    if (!v68)
    {
      goto LABEL_16;
    }

LABEL_27:
    v53 = *(v0 + 248);
LABEL_28:
    v69 = *(v0 + 224);
    v70 = *(v0 + 232);
    v71 = *(v0 + 200);
    v72 = *(v0 + 208);
    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_56(*(v53 + 48));
    v73 = OUTLINED_FUNCTION_44_1();
    v74(v73);
    v75 = *(*(v53 + 56) + 8 * v2);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
    v77 = *(v76 + 48);
    v78 = *(v72 + 32);
    v79 = OUTLINED_FUNCTION_43_1();
    v80(v79);
    *(v70 + v77) = v75;
    OUTLINED_FUNCTION_15();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v76);
    v84 = v75;
LABEL_29:
    *(v0 + 264) = isUniquelyReferenced_nonNull_native;
    *(v0 + 272) = v51;
    v85 = *(v0 + 240);
    sub_222E397AC(*(v0 + 232), v85, &qword_27D04D658, &qword_222E42510);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
    OUTLINED_FUNCTION_9_3(v85);
    if (v87)
    {
      v88 = *(v0 + 248);
      v89 = *(v0 + 168);

      v90 = *(v0 + 256);
      v92 = *(v0 + 232);
      v91 = *(v0 + 240);
      v94 = *(v0 + 216);
      v93 = *(v0 + 224);

      v95 = *(v0 + 8);
      OUTLINED_FUNCTION_26_1();

      __asm { BRAA            X2, X16 }
    }

    v98 = *(v0 + 208);
    v99 = *(v0 + 216);
    v100 = *(v0 + 200);
    v110 = *(v0 + 192);
    v102 = *(v0 + 176);
    v101 = *(v0 + 184);

    v103 = *(v98 + 32);
    v104 = OUTLINED_FUNCTION_54_0();
    v105(v104);
    *(v0 + 280) = sub_222E3FA84();
    *(v0 + 288) = v106;
    v107 = sub_222E3FCA4();
    v108 = OUTLINED_FUNCTION_62_0(v107);
    *(v0 + 304) = v108;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_222E321EC;
    swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D680, &qword_222E42538);
    OUTLINED_FUNCTION_18_1();
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_14_1(&block_descriptor_0);
    [v110 getLoggableIdentiferForUserWithSharedUserID:v99 iCloudAltDSID:0 sessionID:v108 completion:?];
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x282200938]();
  }

  v28 = *(v0 + 160);
  v29 = sub_222E18808(*(v0 + 280), *(v0 + 288));
  if ((v27 & 1) == (v30 & 1))
  {
    v26 = v29;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_26_1();

  return sub_222E402C4();
}

uint64_t sub_222E329B4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_222E3FCB4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return sub_222E32A1C(v3, v4, v6);
}

uint64_t sub_222E32A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200948]();
}

void static MUXUtils.getAllKnownUserIds(from:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25_2();
  v1 = sub_222E3FAA4();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16();
  v56 = v7;
  OUTLINED_FUNCTION_29_0();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_1();
  v66 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D658, &qword_222E42510);
  v14 = OUTLINED_FUNCTION_13_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_38_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_1();
  v63 = v18;
  v19 = sub_222E3F814();
  v68 = MEMORY[0x277D84FA0];
  v21 = v19 + 64;
  v20 = *(v19 + 64);
  v22 = *(v19 + 32);
  OUTLINED_FUNCTION_1_6();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v64 = (v4 + 16);
  v67 = (v4 + 32);
  v59 = v4;
  v60 = v28;
  v62 = (v4 + 8);
  sub_222E3FC24();
  v29 = 0;
  v57 = v0;
  v58 = v11;
  v65 = v1;
  v61 = v21;
  if (v25)
  {
    while (1)
    {
      v30 = v29;
LABEL_8:
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v33 = v32 | (v30 << 6);
      v35 = v59;
      v34 = v60;
      v1 = v65;
      (*(v59 + 16))(v66, *(v60 + 48) + *(v59 + 72) * v33, v65);
      v36 = *(*(v34 + 56) + 8 * v33);
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518) + 48);
      v0 = v57;
      (*(v35 + 32))();
      *(v0 + v37) = v36;
      OUTLINED_FUNCTION_11_2();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      v42 = v36;
      v11 = v58;
      v31 = v63;
LABEL_9:
      sub_222E397AC(v0, v31, &qword_27D04D658, &qword_222E42510);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
      v43 = OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_9_3(v43);
      if (v44)
      {
        break;
      }

      v45 = *(v31 + 7322);
      (*v67)(v11, v31, v1);
      if (static MUXUtils.isUnknownUser(_:)(v45))
      {
        (*v62)(v11, v1);
      }

      else
      {
        (*v64)(v56, v11, v1);
        v46 = v66;
        v47 = OUTLINED_FUNCTION_31();
        sub_222E38590(v47, v48);

        v49 = *v62;
        v50 = v46;
        v1 = v65;
        (*v62)(v50, v65);
        v49(v11, v1);
      }

      v21 = v61;
      if (!v25)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_12();
  }

  else
  {
LABEL_3:
    v31 = v63;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
        OUTLINED_FUNCTION_21_1();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        v25 = 0;
        goto LABEL_9;
      }

      v25 = *(v21 + 8 * v30);
      ++v29;
      if (v25)
      {
        v29 = v30;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void static MUXUtils.getUserIdForPrimaryUser(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_60_0();
  a35 = v40;
  a36 = v41;
  v43 = v42;
  sub_222E3828C(v42);
  OUTLINED_FUNCTION_52();
  v61 = v43;
  v44 = v43 + 32;
  v45 = *MEMORY[0x277D483B0];
  v64 = v38;
  v65 = v46;
  v62 = v44;
  v63 = v39;
  while (1)
  {
    if (v37 == v36)
    {
LABEL_29:
      OUTLINED_FUNCTION_59_0();
      return;
    }

    if (v38)
    {
      v47 = MEMORY[0x223DD0970](v37, v61);
    }

    else
    {
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_33;
      }

      v47 = *(v44 + 8 * v37);
    }

    v48 = v47;
    if (__OFADD__(v37++, 1))
    {
      break;
    }

    v50 = sub_222E39518(v47);
    if (v50)
    {
      v51 = v50;
      v66 = v48;
      v52 = *(v50 + 16);
      if (v52)
      {
        v53 = 0;
        v54 = v50 + 32;
        while (v53 < *(v51 + 16))
        {
          sub_222E16374(v54, &a21);
          sub_222E16374(&a21, &a17);
          v55 = swift_dynamicCast();
          if (v55)
          {
            v56 = a15;
          }

          else
          {
            v56 = 0;
          }

          v57 = sub_222E3FCB4();
          if (v55 && a16)
          {
            if (v56 == v57 && a16 == v58)
            {

              __swift_destroy_boxed_opaque_existential_0(&a21);
LABEL_28:

              sub_222E39574(v66);
              goto LABEL_29;
            }

            v60 = sub_222E40294();

            __swift_destroy_boxed_opaque_existential_0(&a21);
            if (v60)
            {
              goto LABEL_28;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&a21);
          }

          ++v53;
          v54 += 32;
          if (v52 == v53)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

LABEL_24:

      v38 = v64;
      v36 = v65;
      v44 = v62;
      v39 = v63;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_222E3335C(void *a1, uint64_t *a2)
{
  result = sub_222E39518(a1);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *a2;
      v8 = result + 32;
      while (v6 < *(v4 + 16))
      {
        sub_222E16374(v8, v18);
        sub_222E16374(v18, v17);
        v9 = swift_dynamicCast();
        if (v9)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }

        v11 = sub_222E3FCB4();
        if (v9 && v16)
        {
          if (v10 == v11 && v16 == v12)
          {

            __swift_destroy_boxed_opaque_existential_0(v18);
LABEL_20:

            return 1;
          }

          OUTLINED_FUNCTION_54_0();
          v14 = sub_222E40294();

          result = __swift_destroy_boxed_opaque_existential_0(v18);
          if (v14)
          {
            goto LABEL_20;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v18);
        }

        ++v6;
        v8 += 32;
        if (v5 == v6)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:

      return 0;
    }
  }

  return result;
}

void static MUXUtils.getUserIdForUnknownUserAsString(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_60_0();
  a35 = v40;
  a36 = v41;
  v43 = v42;
  sub_222E3828C(v42);
  OUTLINED_FUNCTION_52();
  v61 = v43;
  v44 = v43 + 32;
  v45 = *MEMORY[0x277D483B8];
  v64 = v38;
  v65 = v46;
  v62 = v44;
  v63 = v39;
  while (1)
  {
    if (v37 == v36)
    {
LABEL_29:
      OUTLINED_FUNCTION_59_0();
      return;
    }

    if (v38)
    {
      v47 = MEMORY[0x223DD0970](v37, v61);
    }

    else
    {
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_33;
      }

      v47 = *(v44 + 8 * v37);
    }

    v48 = v47;
    if (__OFADD__(v37++, 1))
    {
      break;
    }

    v50 = sub_222E39518(v47);
    if (v50)
    {
      v51 = v50;
      v66 = v48;
      v52 = *(v50 + 16);
      if (v52)
      {
        v53 = 0;
        v54 = v50 + 32;
        while (v53 < *(v51 + 16))
        {
          sub_222E16374(v54, &a21);
          sub_222E16374(&a21, &a17);
          v55 = swift_dynamicCast();
          if (v55)
          {
            v56 = a15;
          }

          else
          {
            v56 = 0;
          }

          v57 = sub_222E3FCB4();
          if (v55 && a16)
          {
            if (v56 == v57 && a16 == v58)
            {

              __swift_destroy_boxed_opaque_existential_0(&a21);
LABEL_28:

              sub_222E39574(v66);
              goto LABEL_29;
            }

            v60 = sub_222E40294();

            __swift_destroy_boxed_opaque_existential_0(&a21);
            if (v60)
            {
              goto LABEL_28;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&a21);
          }

          ++v53;
          v54 += 32;
          if (v52 == v53)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

LABEL_24:

      v38 = v64;
      v36 = v65;
      v44 = v62;
      v39 = v63;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void *static MUXUtils.homeMember(withUserId:from:)()
{
  OUTLINED_FUNCTION_53_0();
  v1 = sub_222E3F814();
  if (*(v1 + 16) && (v2 = sub_222E2C464(v0), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void static MUXUtils.singleKnownUserInHome(muxContextMessage:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25_2();
  v58 = sub_222E3FAA4();
  v1 = OUTLINED_FUNCTION_0(v58);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_55();
  v55 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D658, &qword_222E42510);
  v8 = OUTLINED_FUNCTION_13_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_37_1();
  v15 = sub_222E3F814();
  v50 = 0;
  v16 = 0;
  v18 = v15 + 64;
  v17 = *(v15 + 64);
  v56 = v3;
  v57 = v15;
  v19 = *(v15 + 32);
  OUTLINED_FUNCTION_1_6();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v53 = v0;
  v54 = v13;
  v51 = v24;
  v52 = v18;
  while (v22)
  {
LABEL_7:
    OUTLINED_FUNCTION_48_0();
    v28 = v27 | (v26 << 6);
    (*(v56 + 16))(v55, *(v57 + 48) + *(v56 + 72) * v28, v58);
    v29 = *(*(v57 + 56) + 8 * v28);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
    v31 = *(v30 + 48);
    v13 = v54;
    (*(v56 + 32))(v54, v55, v58);
    *(v54 + v31) = v29;
    OUTLINED_FUNCTION_15();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
    v35 = v29;
    v0 = v53;
    v24 = v51;
    v18 = v52;
LABEL_8:
    sub_222E397AC(v13, v0, &qword_27D04D658, &qword_222E42510);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
    OUTLINED_FUNCTION_20_1(v0);
    if (v37)
    {

      goto LABEL_15;
    }

    v38 = *(v0 + *(v36 + 48));
    v39 = static MUXUtils.isUnknownUser(_:)(v38);

    if (v39)
    {
      v40 = OUTLINED_FUNCTION_35_1();
      v41(v40);
    }

    else
    {
      if (v50)
      {
        goto LABEL_17;
      }

      v46 = OUTLINED_FUNCTION_35_1();
      v47(v46);
      v50 = 1;
    }
  }

  while (1)
  {
    v25 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D660, &qword_222E42518);
      OUTLINED_FUNCTION_21_1();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      v22 = 0;
      goto LABEL_8;
    }

    v22 = *(v18 + 8 * v25);
    ++v16;
    if (v22)
    {
      v16 = v25;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_17:

  v48 = OUTLINED_FUNCTION_35_1();
  v49(v48);
LABEL_15:
  OUTLINED_FUNCTION_12();
}

void static MUXUtils.convertToUserIDToSpeechPackageDict(sharedUserIdToSpeechRecognitionDict:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_25_2();
  v76 = sub_222E3FAA4();
  v1 = OUTLINED_FUNCTION_0(v76);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16();
  v73 = v4;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v5);
  v7 = v68 - v6;
  v9 = v0 + 64;
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_1_6();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v70 = v16;
  v71 = (v16 + 16);
  v72 = (v16 + 8);
  v74 = v0;
  sub_222E3FC24();
  v17 = 0;
  v75 = MEMORY[0x277D84F98];
  while (1)
  {
    v18 = v17;
    if (!v13)
    {
      break;
    }

LABEL_6:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v17 << 6);
    v21 = (*(v74 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v74 + 56) + 8 * v20);
    sub_222E3FC24();
    v25 = v24;
    sub_222E3FA74();
    sub_222E2C6B8(0, &qword_27D04D688, 0x277CEF470);
    v26 = objc_allocWithZone(MEMORY[0x277CEF440]);
    v27 = v25;
    v28 = sub_222E33FF0(v25, v25, [v26 init], 1, 0.0);
    v29 = *v71;
    v30 = v73;
    (*v71)(v73, v7, v76);
    if (v28)
    {
      v69 = v28;
      v37 = v75;
      v68[1] = swift_isUniquelyReferenced_nonNull_native();
      v77 = v37;
      sub_222E2C464(v30);
      v38 = v37[2];
      LODWORD(v75) = v39;
      OUTLINED_FUNCTION_29_1();
      if (__OFADD__(v41, v42))
      {
        goto LABEL_22;
      }

      v43 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D690, &qword_222E42540);
      OUTLINED_FUNCTION_40_1();
      if (sub_222E40224())
      {
        v44 = v73;
        v45 = sub_222E2C464(v73);
        v47 = v75;
        if ((v75 & 1) != (v46 & 1))
        {
          goto LABEL_24;
        }

        v43 = v45;
      }

      else
      {
        v44 = v73;
        v47 = v75;
      }

      v57 = v77;
      v75 = v77;
      if (v47)
      {
        v58 = v77[7];
        v59 = *(v58 + 8 * v43);
        v60 = v69;
        *(v58 + 8 * v43) = v69;

        v34 = *v72;
        v35 = v44;
LABEL_9:
        v36 = v76;
        v34(v35, v76);
        v34(v7, v36);
      }

      else
      {
        OUTLINED_FUNCTION_10_3(&v77[v43 >> 6]);
        v61 = v44;
        v62 = v76;
        v29(v57[6] + *(v70 + 72) * v43, v61, v76);
        v63 = v69;
        *(v57[7] + 8 * v43) = v69;

        v64 = *(v70 + 8);
        v64(v73, v62);
        v64(v7, v62);
        v65 = v57[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_23;
        }

        v57[2] = v67;
      }
    }

    else
    {
      v31 = sub_222E2C464(v30);
      v32 = v30;
      if ((v33 & 1) == 0)
      {

        v34 = *v72;
        v35 = v30;
        goto LABEL_9;
      }

      v48 = v31;
      v49 = v75;
      LODWORD(v69) = swift_isUniquelyReferenced_nonNull_native();
      v77 = v49;
      v75 = v49[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D690, &qword_222E42540);
      OUTLINED_FUNCTION_40_1();
      sub_222E40224();
      v50 = v77;
      v51 = v77[6] + *(v70 + 72) * v48;
      v69 = *(v70 + 8);
      (v69)(v51, v76);

      OUTLINED_FUNCTION_7_3();
      sub_222E39C90(&qword_27D04D578, v52);
      v75 = v50;
      v53 = v76;
      sub_222E40234();

      v54 = v53;
      v55 = v53;
      v56 = v69;
      (v69)(v32, v54);
      v56(v7, v55);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      OUTLINED_FUNCTION_12();
      return;
    }

    v13 = *(v9 + 8 * v17);
    ++v18;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_222E402C4();
  __break(1u);
}

id sub_222E33FF0(void *a1, void *a2, void *a3, char a4, double a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecognition:a1 rawRecognition:a2 audioAnalytics:a3 isFinal:a4 & 1 utteranceStart:a5];

  return v8;
}

void static MUXUtils.voiceIdentificationSignal(withRequestId:requestType:isPersonalRequest:isServerFallback:voiceIdClassification:voiceIdOverridden:selectedUserId:)()
{
  OUTLINED_FUNCTION_11();
  v63 = v0;
  v67 = v1;
  v66 = v2;
  v4 = v3;
  v65 = v5;
  v64 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6A0, &dword_222E42548);
  OUTLINED_FUNCTION_13_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = sub_222E3F794();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = sub_222E3F9C4();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  if (v4)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_7();
      swift_once();
    }

    v33 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v33, qword_28131FFA0);
    v34 = sub_222E3FB04();
    v35 = sub_222E3FF94();
    if (!OUTLINED_FUNCTION_19_2(v35))
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  (*(v27 + 104))(v32, *MEMORY[0x277D5CF40], v24);
  v36 = sub_222E30DFC();
  (*(v27 + 8))(v32, v24);
  if ((v36 & 1) == 0)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_7();
      swift_once();
    }

    v49 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v49, qword_28131FFA0);
    v34 = sub_222E3FB04();
    v50 = sub_222E3FF94();
    if (!OUTLINED_FUNCTION_19_2(v50))
    {
      goto LABEL_22;
    }

LABEL_13:
    *OUTLINED_FUNCTION_28() = 0;
    OUTLINED_FUNCTION_39_1();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_7();
    goto LABEL_22;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D477B0]) init];
  sub_222E3F784();
  v38 = sub_222E3F744();
  v40 = v39;
  (*(v18 + 8))(v23, v15);
  sub_222E39954(v38, v40, v37, &selRef_setAceId_);
  v41 = v37;
  sub_222E395E4(v8, v64, v41);

  [v41 setRecordUserAudio_];
  v42 = ((v66 - 3) < 2) & ~v67;
  v43 = OUTLINED_FUNCTION_57_0();
  sub_222E39650(v43, v44, v45, v46);
  v47 = sub_222E3FAA4();
  OUTLINED_FUNCTION_20_1(v14);
  if (v48)
  {
    sub_222E1D890(v14, &qword_27D04D6A0, &dword_222E42548);
  }

  else
  {
    LOBYTE(v23) = sub_222E3FA84();
    (*(*(v47 - 8) + 8))(v14, v47);
    if (v42 && (v63 & 1) == 0)
    {
      v59 = OUTLINED_FUNCTION_43_1();
      sub_222E39954(v59, v60, v41, v61);
      goto LABEL_23;
    }
  }

  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_7();
    swift_once();
  }

  v56 = sub_222E3FB14();
  OUTLINED_FUNCTION_4_2(v56, qword_28131FFA0);
  v34 = sub_222E3FB04();
  v57 = sub_222E3FF94();
  if (OUTLINED_FUNCTION_19_2(v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 67109376;
    *(v58 + 4) = v42;
    *(v58 + 8) = 1024;
    *(v58 + 10) = v63 & 1;
    _os_log_impl(&dword_222E12000, v34, v23, "Not updating selectedSharedUserId in VoiceIdentificationSignal because either selectedUserId is nil or isConfidentEnough: %{BOOL}d, voiceIDOverridden: %{BOOL}d", v58, 0xEu);
    OUTLINED_FUNCTION_7();
  }

LABEL_22:

LABEL_23:
  OUTLINED_FUNCTION_12();
}

void static MUXUtils.generateUserIdentificationMessageForTextRequest(inputOrigin:userSessionState:muxContextMessage:multiUserTextBasedRootTRPCandidateRequestMessage:)()
{
  OUTLINED_FUNCTION_11();
  v146 = v0;
  v147 = v1;
  v139 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6A8, &qword_222E42550);
  OUTLINED_FUNCTION_13_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  v130 = &v129 - v7;
  OUTLINED_FUNCTION_42_0();
  v8 = sub_222E3FA54();
  v9 = OUTLINED_FUNCTION_0(v8);
  v132 = v10;
  v133 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16();
  v129 = v13;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_1();
  v131 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6A0, &dword_222E42548);
  OUTLINED_FUNCTION_13_2(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v19);
  v134 = &v129 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6B0, &qword_222E42558);
  OUTLINED_FUNCTION_13_2(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v24);
  v138 = &v129 - v25;
  OUTLINED_FUNCTION_42_0();
  v140 = sub_222E3FA14();
  v26 = OUTLINED_FUNCTION_0(v140);
  v135 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_55();
  v136 = v30;
  OUTLINED_FUNCTION_42_0();
  v31 = sub_222E3F9B4();
  v32 = OUTLINED_FUNCTION_0(v31);
  v145 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_55();
  v137 = v36;
  v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6B8, &qword_222E42560) - 8);
  v38 = *(*v37 + 64);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v129 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D6C0, &unk_222E42568);
  v43 = OUTLINED_FUNCTION_13_2(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_16();
  v141 = v46;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v47);
  v49 = &v129 - v48;
  v50 = sub_222E3FAA4();
  v51 = OUTLINED_FUNCTION_0(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3();
  v58 = v57 - v56;
  sub_222E3FA94();
  v59 = sub_222E3FA84();
  v61 = v60;
  v142 = *(v53 + 8);
  v143 = v53 + 8;
  v144 = v50;
  v142(v58, v50);
  v62 = v145;
  v150 = v59;
  v151 = v61;
  v149 = 0;
  v148 = 0;
  (*(v145 + 104))(v49, *MEMORY[0x277D5CE80], v31);
  OUTLINED_FUNCTION_15();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v31);
  v66 = v37[14];
  v67 = &unk_222E42568;
  sub_222E39650(v146, v41, &unk_27D04D6C0, &unk_222E42568);
  sub_222E39650(v49, &v41[v66], &unk_27D04D6C0, &unk_222E42568);
  OUTLINED_FUNCTION_20_1(v41);
  if (!v69)
  {
    v67 = v141;
    sub_222E39650(v41, v141, &unk_27D04D6C0, &unk_222E42568);
    OUTLINED_FUNCTION_20_1(&v41[v66]);
    if (!v69)
    {
      v89 = v137;
      (*(v62 + 32))(v137, &v41[v66], v31);
      sub_222E39C90(&qword_27D04D6D0, MEMORY[0x277D5CEA0]);
      v90 = sub_222E3FC94();
      v91 = *(v62 + 8);
      v91(v89, v31);
      sub_222E1D890(v49, &unk_27D04D6C0, &unk_222E42568);
      v91(v67, v31);
      sub_222E1D890(v41, &unk_27D04D6C0, &unk_222E42568);
      v68 = v147;
      if (v90)
      {
        goto LABEL_23;
      }

LABEL_10:
      sub_222E3F904();
      sub_222E3FA84();
      OUTLINED_FUNCTION_53_0();
      v142(v58, v144);
      v150 = v67;
      v151 = v58;

      v70 = 0;
      v148 = 1;
      v149 = 4;
      goto LABEL_11;
    }

    sub_222E1D890(v49, &unk_27D04D6C0, &unk_222E42568);
    (*(v62 + 8))(v67, v31);
    v68 = v147;
LABEL_9:
    sub_222E1D890(v41, &qword_27D04D6B8, &qword_222E42560);
    goto LABEL_10;
  }

  sub_222E1D890(v49, &unk_27D04D6C0, &unk_222E42568);
  OUTLINED_FUNCTION_20_1(&v41[v66]);
  v68 = v147;
  if (!v69)
  {
    goto LABEL_9;
  }

  sub_222E1D890(v41, &unk_27D04D6C0, &unk_222E42568);
LABEL_23:
  v92 = v138;
  sub_222E39650(v139, v138, &qword_27D04D6B0, &qword_222E42558);
  v93 = v140;
  if (__swift_getEnumTagSinglePayload(v92, 1, v140) == 1)
  {
    v94 = &qword_27D04D6B0;
    v95 = &qword_222E42558;
    v96 = v92;
LABEL_27:
    sub_222E1D890(v96, v94, v95);
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_7();
      swift_once();
    }

    v103 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v103, qword_28131FFA0);
    v74 = sub_222E3FB04();
    v104 = sub_222E3FFA4();
    if (OUTLINED_FUNCTION_19_2(v104))
    {
      *OUTLINED_FUNCTION_28() = 0;
      OUTLINED_FUNCTION_39_1();
      _os_log_impl(v105, v106, v107, v108, v109, 2u);
      OUTLINED_FUNCTION_7();
    }

    v88 = 0;
    goto LABEL_33;
  }

  v97 = v135;
  (*(v135 + 32))(v136, v92, v93);
  v98 = v134;
  sub_222E3FA04();
  v99 = v144;
  if (__swift_getEnumTagSinglePayload(v98, 1, v144) == 1)
  {
    v100 = *(v97 + 8);
    v101 = OUTLINED_FUNCTION_57_0();
    v102(v101);
    v94 = &qword_27D04D6A0;
    v95 = &dword_222E42548;
    v96 = v98;
    goto LABEL_27;
  }

  v110 = sub_222E3FA84();
  v112 = v111;
  v142(v98, v99);
  v113 = v130;
  sub_222E3F9F4();
  v114 = v113;
  v115 = v113;
  v116 = v133;
  if (__swift_getEnumTagSinglePayload(v115, 1, v133) == 1)
  {
    v118 = v131;
    v117 = v132;
    (*(v132 + 104))(v131, *MEMORY[0x277D5D230], v116);
    if (__swift_getEnumTagSinglePayload(v114, 1, v116) != 1)
    {
      sub_222E1D890(v114, &qword_27D04D6A8, &qword_222E42550);
    }
  }

  else
  {
    v118 = v131;
    v117 = v132;
    (*(v132 + 32))(v131, v114, v116);
  }

  if (sub_222E3F9E4())
  {
    v150 = v110;
    v151 = v112;

    v119 = *MEMORY[0x277D5D238];
    v147 = *(v117 + 104);
    v120 = v129;
    v147(v129, v119, v116);
    v121 = sub_222E3FA44();
    v122 = v97;
    v123 = *(v117 + 8);
    v123(v120, v116);
    v124 = 4;
    if ((v121 & 1) == 0)
    {
      v124 = 1;
    }

    v149 = v124;
    v147(v120, v119, v116);
    v125 = sub_222E3FA44();
    v123(v120, v116);
    v123(v118, v116);
    (*(v122 + 8))(v136, v140);
    v148 = v125 & 1;
  }

  else
  {

    (*(v117 + 8))(v118, v116);
    v126 = *(v97 + 8);
    v127 = OUTLINED_FUNCTION_57_0();
    v128(v127);
  }

  v70 = 1;
LABEL_11:
  v71 = swift_allocObject();
  *(v71 + 16) = &v150;
  *(v71 + 24) = &v149;
  v72 = objc_allocWithZone(MEMORY[0x277CEF520]);
  v73 = sub_222E38150(sub_222E3963C, v71);
  if (v73)
  {
    v74 = v73;
    v75 = MEMORY[0x28223BE20](v73);
    *(&v129 - 4) = v68;
    *(&v129 - 3) = v75;
    *(&v129 - 2) = &v148;
    v76 = objc_allocWithZone(sub_222E3F8F4());
    v77 = sub_222E3F854();
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_7();
      swift_once();
    }

    v78 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v78, qword_28131FFA0);
    v79 = v77;
    v80 = sub_222E3FB04();
    v81 = sub_222E3FFA4();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = OUTLINED_FUNCTION_46_0();
      *v82 = 67109378;
      *(v82 + 4) = v70;
      *(v82 + 8) = 2112;
      *(v82 + 10) = v79;
      *v83 = v77;
      v84 = v79;
      _os_log_impl(&dword_222E12000, v80, v81, "MUX: IsTypeToSiri=%{BOOL}d. Generated userIdentificationMsg=%@", v82, 0x12u);
      sub_222E1D890(v83, &qword_27D04D460, &qword_222E41680);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_7();
      swift_once();
    }

    v85 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v85, qword_28131FFA0);
    v74 = sub_222E3FB04();
    v86 = sub_222E3FFA4();
    if (!os_log_type_enabled(v74, v86))
    {
      v88 = sub_222E3963C;
      goto LABEL_33;
    }

    v87 = OUTLINED_FUNCTION_28();
    *v87 = 0;
    _os_log_impl(&dword_222E12000, v74, v86, "MUX: cannot construct AFVoiceIdScoreCard", v87, 2u);
    OUTLINED_FUNCTION_7();
  }

  v88 = sub_222E3963C;
LABEL_33:

  sub_222E19224(v88);
  OUTLINED_FUNCTION_12();
}

id sub_222E3515C(id result, void *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
    v6 = sub_222E40084();
    [v5 setSpIdUnknownUserScore_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6D8, &qword_222E42578);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222E41650;
    v8 = a2[1];
    *(inited + 32) = *a2;
    *(inited + 40) = v8;
    sub_222E3FC24();
    *(inited + 48) = sub_222E40084();
    sub_222E3FC04();
    v9 = sub_222E3FBD4();

    [v5 setSpIdKnownUserScores_];

    v11 = *a2;
    v10 = a2[1];
    sub_222E3FC24();
    v12 = sub_222E3FCA4();

    [v5 setUserClassified_];

    [v5 setUserIdentityClassification_];
    v13 = sub_222E40084();
    [v5 setLowScoreThreshold_];

    v14 = sub_222E40084();
    [v5 setHighScoreThreshold_];

    v15 = sub_222E40084();
    [v5 setDeltaScoreThreshold_];

    v16 = sub_222E40084();
    [v5 setConfidentScoreThreshold_];

    return [v5 setHasSufficientAudioProcessed_];
  }

  return result;
}

uint64_t sub_222E35380(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D730, qword_222E41B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D738, &qword_222E425E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  sub_222E3F964();
  v14 = sub_222E3F994();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_222E3F8C4();
  sub_222E3F954();
  sub_222E3F874();
  sub_222E3F934();
  v15 = sub_222E3F794();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  sub_222E3F8E4();
  sub_222E3F914();
  sub_222E3F8D4();
  v16 = a3;
  sub_222E3F894();
  [v16 userIdentityClassification];
  sub_222E3F8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D740, &qword_222E425E8);
  inited = swift_initStackObject();
  v23 = xmmword_222E41650;
  *(inited + 16) = xmmword_222E41650;
  result = sub_222E398F8(v16, &selRef_userClassified);
  if (v19)
  {
    *(inited + 32) = result;
    *(inited + 40) = v19;
    *(inited + 48) = 100;
    sub_222E3FC04();
    sub_222E3F884();
    v20 = *a4;
    sub_222E3F8B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D728, &unk_222E425D0);
    v21 = swift_initStackObject();
    *(v21 + 16) = v23;
    result = sub_222E398F8(v16, &selRef_userClassified);
    if (v22)
    {
      *(v21 + 32) = result;
      *(v21 + 40) = v22;
      sub_222E39388(v21);
      return sub_222E3F864();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_222E35EFC(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (result)
  {
    v16 = result;
    [result setSpIdAudioProcessedDuration_];
    [v16 setSpIdUnknownUserScore_];
    sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
    v17 = sub_222E3FBD4();
    [v16 setSpIdKnownUserScores_];

    [v16 setSpIdUserScoresVersion_];
    if (a7)
    {
      v18 = sub_222E3FCA4();
    }

    else
    {
      v18 = 0;
    }

    [v16 setSpIdScoreThresholdingType_];

    if (a9)
    {
      v19 = sub_222E3FCA4();
    }

    else
    {
      v19 = 0;
    }

    [v16 setSpIdAssetVersion_];

    v20 = sub_222E3FCA4();
    [v16 setUserClassified_];

    [v16 setUserIdentityClassification_];

    return [v16 setLowScoreThreshold_];
  }

  return result;
}

uint64_t Dictionary<>.toEncodableDictionary()(uint64_t a1, uint64_t a2)
{
  v126[1] = *MEMORY[0x277D85DE8];
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_55();
  v119 = v7;
  OUTLINED_FUNCTION_42_0();
  v8 = sub_222E3FAA4();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16();
  v124 = v14;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_38_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16_1();
  v104 = v17;
  v120 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v111 = sub_222E400C4();
  v18 = OUTLINED_FUNCTION_0(v111);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v113 = v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v22);
  v112 = v102 - v23;
  v25 = a1 + 64;
  v24 = *(a1 + 64);
  v26 = *(a1 + 32);
  OUTLINED_FUNCTION_1_6();
  v29 = v28 & v27;
  OUTLINED_FUNCTION_41_1();
  v123 = v30;
  v102[3] = v5 + 16;
  v117 = (v5 + 32);
  v118 = (v11 + 32);
  v110 = (v31 + 32);
  v105 = v5;
  v115 = v11;
  v108 = (v11 + 8);
  v109 = (v5 + 8);
  v106 = a1;
  sub_222E3FC24();
  v32 = 0;
  v125 = MEMORY[0x277D84F98];
  v107 = a1 + 64;
  v103 = v2;
  if (v29)
  {
LABEL_8:
    OUTLINED_FUNCTION_49_0();
    v39 = v38 | (v37 << 6);
    v40 = v106;
    v41 = v115;
    v42 = v104;
    (*(v115 + 16))(v104, *(v106 + 48) + *(v115 + 72) * v39, v8);
    v43 = v105;
    v44 = *(v40 + 56) + *(v105 + 72) * v39;
    v46 = v119;
    v45 = v120;
    (*(v105 + 16))(v119, v44, v120);
    v33 = TupleTypeMetadata2;
    v122 = *(TupleTypeMetadata2 + 48);
    v47 = *(v41 + 32);
    v48 = v113;
    v47(v113, v42, v8);
    v34 = v48;
    (*(v43 + 32))(&v48[v122], v46, v45);
    v49 = 0;
    v2 = v103;
    v35 = v112;
    goto LABEL_9;
  }

  while (2)
  {
    v34 = v113;
    v33 = TupleTypeMetadata2;
    v35 = v112;
    while (1)
    {
      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v36 >= v102[2])
      {
        break;
      }

      v29 = *(v25 + 8 * v36);
      ++v32;
      if (v29)
      {
        v32 = v36;
        goto LABEL_8;
      }
    }

    v29 = 0;
    v49 = 1;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v34, v49, 1, v33);
    v50 = *v110;
    v51 = OUTLINED_FUNCTION_34_2();
    v52(v51);
    if (__swift_getEnumTagSinglePayload(v35, 1, v33) == 1)
    {

LABEL_24:
      v100 = *MEMORY[0x277D85DE8];
      return v125;
    }

    v53 = *(v33 + 48);
    (*v118)(v2, v35, v8);
    v54 = objc_opt_self();
    v55 = v35 + v53;
    v57 = v119;
    v56 = v120;
    (*v117)(v119, v55, v120);
    v58 = sub_222E40284();
    (*v109)(v57, v56);
    v126[0] = 0;
    v59 = [v54 archivedDataWithRootObject:v58 requiringSecureCoding:1 error:v126];
    swift_unknownObjectRelease();
    v60 = v126[0];
    if (!v59)
    {
      v96 = v60;

      sub_222E3F714();

      swift_willThrow();

      v97 = *v108;
      v98 = OUTLINED_FUNCTION_58_0();
      v99(v98);
      goto LABEL_24;
    }

    v61 = sub_222E3F724();
    v63 = v62;

    v64 = v124;
    v116 = *v123;
    v116(v124, v2, v8);
    v121 = v61;
    v122 = v63;
    v65 = OUTLINED_FUNCTION_34_2();
    sub_222E39754(v65, v66);
    v67 = v125;
    swift_isUniquelyReferenced_nonNull_native();
    v126[0] = v67;
    sub_222E2C464(v64);
    v68 = v67[2];
    OUTLINED_FUNCTION_29_1();
    if (__OFADD__(v71, v72))
    {
      goto LABEL_26;
    }

    v73 = v69;
    v74 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6F0, &qword_222E42588);
    if ((sub_222E40224() & 1) == 0)
    {
      goto LABEL_15;
    }

    v75 = sub_222E2C464(v124);
    if ((v74 & 1) == (v76 & 1))
    {
      v73 = v75;
LABEL_15:
      v125 = v126[0];
      if (v74)
      {
        v77 = (*(v126[0] + 7) + 16 * v73);
        v78 = *v77;
        v79 = v77[1];
        v80 = v122;
        *v77 = v121;
        v77[1] = v80;
        sub_222E1C420(v78, v79);
        v81 = OUTLINED_FUNCTION_43_1();
        sub_222E1C420(v81, v82);
        v83 = *v108;
        (*v108)(v124, v8);
        v84 = OUTLINED_FUNCTION_58_0();
        (v83)(v84);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_10_3(v126[0] + 8 * (v73 >> 6));
      v86 = v115;
      v87 = v124;
      v116(*(v85 + 48) + *(v115 + 72) * v73, v124, v8);
      v88 = (v125[7] + 16 * v73);
      v89 = v121;
      v90 = v122;
      *v88 = v121;
      v88[1] = v90;
      sub_222E1C420(v89, v90);
      v91 = *(v86 + 8);
      v91(v87, v8);
      v92 = OUTLINED_FUNCTION_58_0();
      (v91)(v92);
      v93 = v125[2];
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (!v94)
      {
        v125[2] = v95;
LABEL_19:
        v25 = v107;
        if (v29)
        {
          goto LABEL_8;
        }

        continue;
      }

LABEL_27:
      __break(1u);
    }

    break;
  }

  result = sub_222E402C4();
  __break(1u);
  return result;
}

uint64_t Dictionary<>.decodeWithValueAs<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = sub_222E400C4();
  v5 = OUTLINED_FUNCTION_0(v84);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16();
  v83 = v8;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_1();
  v88 = v10;
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_55();
  v82 = v13;
  OUTLINED_FUNCTION_42_0();
  v14 = sub_222E3FAA4();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16();
  v95 = v20;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_16_1();
  v93 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6F8, &qword_222E42590);
  v24 = OUTLINED_FUNCTION_13_2(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_16();
  v91 = v27;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_16_1();
  v90 = v29;
  OUTLINED_FUNCTION_7_3();
  v96 = v14;
  sub_222E39C90(v30, v31);
  v32 = sub_222E3FBC4();
  v81 = a2 + 64;
  v33 = 1 << *(a2 + 32);
  v34 = -1;
  v98 = v32;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a2 + 64);
  OUTLINED_FUNCTION_41_1();
  v92 = v36;
  v94 = (v17 + 32);
  v85 = v17;
  v89 = (v17 + 8);
  v87 = a2;
  result = sub_222E3FC24();
  v38 = 0;
  v86 = a3;
  if (v35)
  {
    while (1)
    {
      v39 = v97;
      v40 = v38;
LABEL_10:
      v97 = v39;
      v42 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v43 = v42 | (v40 << 6);
      (*(v85 + 16))(v93, *(v87 + 48) + *(v85 + 72) * v43, v96);
      v44 = (*(v87 + 56) + 16 * v43);
      v45 = *v44;
      v46 = v44[1];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D700, &qword_222E42598);
      v48 = (v91 + *(v47 + 48));
      v41 = v91;
      (*(v85 + 32))(v91, v93, v96);
      *v48 = v45;
      v48[1] = v46;
      OUTLINED_FUNCTION_15();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
      sub_222E39754(v45, v46);
      a3 = v86;
LABEL_11:
      sub_222E397AC(v41, v90, &qword_27D04D6F8, &qword_222E42590);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D700, &qword_222E42598);
      if (__swift_getEnumTagSinglePayload(v90, 1, v52) == 1)
      {

        return v98;
      }

      v53 = (v90 + *(v52 + 48));
      v55 = *v53;
      v54 = v53[1];
      (*v94)(v95, v90, v96);
      sub_222E2C6B8(0, &qword_27D04D708, 0x277CCAAC8);
      OUTLINED_FUNCTION_28_2();
      sub_222E3FFD4();
      if (v97)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D710, &qword_222E425A0);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_15();
        __swift_storeEnumTagSinglePayload(v56, v57, v58, a3);
        OUTLINED_FUNCTION_50_0(&v101);
        v59 = OUTLINED_FUNCTION_34_2();
        v60(v59);
        (*v92)(v93, v95, v96);
        OUTLINED_FUNCTION_50_0(&v100);
        v61(v83, v82, a3);
        OUTLINED_FUNCTION_15();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, a3);
        sub_222E3FC54();
        sub_222E3FC74();
        v65 = OUTLINED_FUNCTION_28_2();
        sub_222E1C420(v65, v66);
        OUTLINED_FUNCTION_50_0(&v99);
        v67(v82, a3);
        result = (*v89)(v95, v96);
      }

      else
      {
        (*v89)(v95, v96);
        v68 = OUTLINED_FUNCTION_28_2();
        sub_222E1C420(v68, v69);
        OUTLINED_FUNCTION_21_1();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, a3);
        OUTLINED_FUNCTION_50_0(&v102);
        result = v73(v88, v84);
      }

      if (!v35)
      {
        goto LABEL_5;
      }
    }

    v78 = OUTLINED_FUNCTION_28_2();
    sub_222E1C420(v78, v79);
    (*v89)(v95, v96);
  }

  else
  {
LABEL_5:
    v41 = v91;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v80)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D700, &qword_222E42598);
        OUTLINED_FUNCTION_21_1();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
        v35 = 0;
        goto LABEL_11;
      }

      v35 = *(v81 + 8 * v40);
      ++v38;
      if (v35)
      {
        v39 = v97;
        v38 = v40;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall SAMultiUserInfo.toUserIdToHomeMemberDictionary()()
{
  OUTLINED_FUNCTION_11();
  v41 = sub_222E3FAA4();
  v1 = OUTLINED_FUNCTION_0(v41);
  v40 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_222E39804(v0, &selRef_homeMembers, &unk_27D04D7D0, 0x277D47390);
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v42 = sub_222E3828C(v8);
  if (!v42)
  {
LABEL_26:

LABEL_27:
    OUTLINED_FUNCTION_12();
    goto LABEL_33;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223DD0970](v10, v9);
    }

    else
    {
      if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v12 = *(v9 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_222E398F8(v12, &selRef_sharedUserId);
    if (v15)
    {
      sub_222E3FA74();
      v16 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      sub_222E2C464(v7);
      v17 = v11[2];
      OUTLINED_FUNCTION_29_1();
      if (__OFADD__(v20, v21))
      {
        goto LABEL_29;
      }

      v22 = v18;
      v23 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D718, qword_222E425A8);
      OUTLINED_FUNCTION_40_1();
      if (sub_222E40224())
      {
        v24 = sub_222E2C464(v7);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_32;
        }

        v22 = v24;
      }

      if (v23)
      {
        v26 = v11[7];
        v27 = *(v26 + 8 * v22);
        *(v26 + 8 * v22) = v16;

        (*(v40 + 8))(v7, v41);
      }

      else
      {
        OUTLINED_FUNCTION_10_3(&v11[v22 >> 6]);
        (*(v40 + 16))(v11[6] + *(v40 + 72) * v22, v7, v41);
        *(v11[7] + 8 * v22) = v16;

        (*(v40 + 8))(v7, v41);
        v35 = v11[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_31;
        }

        v11[2] = v37;
      }
    }

    else
    {
      if (qword_28131F210 != -1)
      {
        OUTLINED_FUNCTION_0_7();
        swift_once();
      }

      v28 = sub_222E3FB14();
      __swift_project_value_buffer(v28, qword_28131FFA0);
      v29 = v13;
      v30 = sub_222E3FB04();
      v31 = sub_222E3FFA4();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = OUTLINED_FUNCTION_46_0();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&dword_222E12000, v30, v31, "Ignoring HomeMemberInfo: %@ for lack of sharedUserId", v32, 0xCu);
        sub_222E1D890(v33, &qword_27D04D460, &qword_222E41680);
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_7();
      }

      else
      {
      }
    }

    ++v10;
    if (v14 == v42)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  v38 = sub_222E402C4();
  __break(1u);
LABEL_33:
  result.value._rawValue = v38;
  result.is_nil = v39;
  return result;
}

void MUXContextMessage.userIdOfPrimaryUser()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_60_0();
  a35 = v36;
  a36 = v37;
  v38 = sub_222E3F814();
  v40 = v38 + 64;
  v39 = *(v38 + 64);
  v41 = *(v38 + 32);
  OUTLINED_FUNCTION_1_6();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  v71 = *MEMORY[0x277D483B0];
  v47 = 0;
  v69 = sub_222E3FC24();
  v67 = v46;
  v68 = v38 + 64;
  while (v44)
  {
LABEL_7:
    v49 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v50 = *(*(v38 + 56) + ((v47 << 9) | (8 * v49)));
    v51 = sub_222E39518(v50);
    if (v51)
    {
      v52 = v51;
      v70 = v50;
      v53 = *(v51 + 16);
      if (v53)
      {
        v54 = 0;
        v55 = v51 + 32;
        while (v54 < *(v52 + 16))
        {
          sub_222E16374(v55, &a21);
          sub_222E16374(&a21, &a17);
          v56 = swift_dynamicCast();
          if (v56)
          {
            v57 = a15;
          }

          else
          {
            v57 = 0;
          }

          v58 = sub_222E3FCB4();
          if (v56 && a16)
          {
            if (v57 == v58 && a16 == v59)
            {

              __swift_destroy_boxed_opaque_existential_0(&a21);
LABEL_28:

              sub_222E39574(v70);
              if (v62)
              {
                sub_222E3FA74();
              }

              goto LABEL_30;
            }

            OUTLINED_FUNCTION_58_0();
            v61 = sub_222E40294();

            __swift_destroy_boxed_opaque_existential_0(&a21);
            if (v61)
            {
              goto LABEL_28;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&a21);
          }

          ++v54;
          v55 += 32;
          if (v53 == v54)
          {
            goto LABEL_24;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

LABEL_24:

      v38 = v69;
      v46 = v67;
      v40 = v68;
    }

    else
    {
    }
  }

  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v48 >= v46)
    {
      break;
    }

    v44 = *(v40 + 8 * v48);
    ++v47;
    if (v44)
    {
      v47 = v48;
      goto LABEL_7;
    }
  }

LABEL_30:
  sub_222E3FAA4();
  v63 = OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  OUTLINED_FUNCTION_59_0();
}

Swift::String __swiftcall AFUserIdentityClassfication.toAceUserIdentityClassification()()
{
  if ((v0 - 1) > 3)
  {
    v1 = MEMORY[0x277D48D78];
  }

  else
  {
    v1 = qword_2784C0D08[v0 - 1];
  }

  v2 = *v1;
  v3 = sub_222E3FCB4();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id SAConfidenceScores.toVoiceIdScoreCard()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CEF520]);
  v3 = v0;
  v4 = sub_222E38150(sub_222E397FC, v1);

  return v4;
}

void sub_222E37590(void *a1, id a2)
{
  if (a1)
  {
    [a2 processedAudioDurationMilliseconds];
    v4 = sub_222E3FF34();
    [a1 setSpIdAudioProcessedDuration_];

    sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
    v5 = sub_222E40084();
    [a1 setSpIdUnknownUserScore_];

    sub_222E377F0();
    v6 = sub_222E3FBD4();

    [a1 setSpIdKnownUserScores_];

    v7 = [a2 scoringSchemeVersion];
    [a1 setSpIdUserScoresVersion_];

    sub_222E398F8(a2, &selRef_thresholdType);
    if (v8)
    {
      v9 = sub_222E3FCA4();
    }

    else
    {
      v9 = 0;
    }

    [a1 setSpIdScoreThresholdingType_];

    sub_222E398F8(a2, &selRef_assetVersion);
    if (v10)
    {
      v11 = sub_222E3FCA4();
    }

    else
    {
      v11 = 0;
    }

    [a1 setSpIdAssetVersion_];

    sub_222E398F8(a2, &selRef_classifiedUser);
    if (v12)
    {
      v13 = sub_222E3FCA4();
    }

    else
    {
      v13 = 0;
    }

    [a1 setUserClassified_];

    [a1 setUserIdentityClassification_];
    [a2 lowScoreThreshold];
    v14 = sub_222E3FF34();
    [a1 setLowScoreThreshold_];
  }
}

uint64_t sub_222E377F0()
{
  v1 = v0;
  sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
  v2 = sub_222E3FC04();
  v3 = sub_222E39804(v1, &selRef_scores, &qword_27D04D720, 0x277D47B68);
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v30 = sub_222E3828C(v3);
  if (!v30)
  {
LABEL_21:

    return v2;
  }

  v5 = 0;
  v28 = v4;
  v29 = v4 & 0xC000000000000001;
  v27 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v29)
    {
      v6 = MEMORY[0x223DD0970](v5, v4);
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        goto LABEL_25;
      }

      v6 = *(v4 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = sub_222E398F8(v6, &selRef_sharedUserId);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      [v7 confidenceScore];
      v31 = sub_222E3FF34();
      swift_isUniquelyReferenced_nonNull_native();
      v13 = v11;
      v14 = sub_222E18808(v11, v12);
      if (__OFADD__(v2[2], (v15 & 1) == 0))
      {
        goto LABEL_24;
      }

      v16 = v14;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D6E8, &qword_222E42580);
      if (sub_222E40224())
      {
        v18 = sub_222E18808(v13, v12);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_27;
        }

        v16 = v18;
      }

      if (v17)
      {

        v20 = v2[7];
        v21 = *(v20 + 8 * v16);
        *(v20 + 8 * v16) = v31;
      }

      else
      {
        v2[(v16 >> 6) + 8] |= 1 << v16;
        v22 = (v2[6] + 16 * v16);
        *v22 = v13;
        v22[1] = v12;
        *(v2[7] + 8 * v16) = v31;

        v23 = v2[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_26;
        }

        v2[2] = v25;
      }

      v4 = v28;
    }

    else
    {
    }

    ++v5;
    if (v8 == v30)
    {
      goto LABEL_21;
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
  result = sub_222E402C4();
  __break(1u);
  return result;
}

uint64_t sub_222E37A78()
{
  v1 = sub_222E398F8(v0, &selRef_userIdentityClassification);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = *MEMORY[0x277D48D68];
    if (sub_222E3FCB4() == v3 && v4 == v6)
    {

LABEL_9:

      return 4;
    }

    v8 = sub_222E40294();

    if (v8)
    {
      goto LABEL_9;
    }

    v10 = *MEMORY[0x277D48D70];
    if (sub_222E3FCB4() == v3 && v4 == v11)
    {

LABEL_17:

      return 3;
    }

    v13 = sub_222E40294();

    if (v13)
    {
      goto LABEL_17;
    }

    v14 = *MEMORY[0x277D48D80];
    if (sub_222E3FCB4() == v3 && v4 == v15)
    {

LABEL_25:

      return 1;
    }

    v17 = sub_222E40294();

    if (v17)
    {
      goto LABEL_25;
    }

    v18 = *MEMORY[0x277D48D88];
    if (sub_222E3FCB4() == v3 && v4 == v19)
    {

LABEL_33:

      return 2;
    }

    v21 = sub_222E40294();

    if (v21)
    {
      goto LABEL_33;
    }

    v22 = *MEMORY[0x277D48D78];
    if (sub_222E3FCB4() != v3 || v4 != v23)
    {
      sub_222E40294();
    }
  }

  return 0;
}

id AFVoiceIdScoreCard.toSAConfidenceScores()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D47220]) init];
  v2 = [v0 spIdAudioProcessedDuration];
  if (v2)
  {
    v3 = v2;
    [v2 integerValue];
  }

  v4 = OUTLINED_FUNCTION_44_1();
  [v4 v5];
  v6 = [v0 spIdUserScoresVersion];
  v7 = OUTLINED_FUNCTION_44_1();
  [v7 v8];

  v9 = sub_222E37E38();
  sub_222E39954(v9, v10, v1, &selRef_setThresholdType_);
  sub_222E398F8(v0, &selRef_spIdAssetVersion);
  if (v11)
  {
    v12 = sub_222E3FCA4();
  }

  else
  {
    v12 = 0;
  }

  v13 = OUTLINED_FUNCTION_44_1();
  [v13 v14];

  sub_222E398F8(v0, &selRef_userClassified);
  if (v15)
  {
    v16 = sub_222E3FCA4();
  }

  else
  {
    v16 = 0;
  }

  v17 = OUTLINED_FUNCTION_44_1();
  [v17 v18];

  [v0 userIdentityClassification];
  v19 = AFUserIdentityClassfication.toAceUserIdentityClassification()();
  sub_222E39954(v19._countAndFlagsBits, v19._object, v1, &selRef_setUserIdentityClassification_);
  sub_222E37F34();
  sub_222E399C0(v20, v1);
  v21 = sub_222E3FA34();
  [v1 setLowScoreThreshold_];
  return v1;
}

uint64_t sub_222E37E38()
{
  v1 = sub_222E398F8(v0, &selRef_spIdScoreThresholdingType);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v1;
  v4 = v2;
  v5 = v1 == 0xD000000000000025 && 0x8000000222E43570 == v2;
  if (v5 || (sub_222E40294() & 1) != 0)
  {

LABEL_8:
    v6 = MEMORY[0x277D48DA8];
    goto LABEL_9;
  }

  if (v3 == 0xD000000000000028 && 0x8000000222E43540 == v4)
  {
  }

  else
  {
    v10 = sub_222E40294();

    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v6 = MEMORY[0x277D48DA0];
LABEL_9:
  v7 = *v6;

  return sub_222E3FCB4();
}

void sub_222E37F34()
{
  v19 = MEMORY[0x277D84F90];
  v1 = sub_222E39878(v0);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    if (v7)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        v3 = v9;
        do
        {
LABEL_9:
          v10 = __clz(__rbit64(v7)) | (v3 << 6);
          v11 = (*(v2 + 48) + 16 * v10);
          v12 = *v11;
          v13 = v11[1];
          v14 = *(*(v2 + 56) + 8 * v10);
          v15 = objc_allocWithZone(MEMORY[0x277D47B68]);
          sub_222E3FC24();
          v16 = v14;
          v17 = [v15 init];
          [v17 setConfidenceScore_];
          sub_222E39954(v12, v13, v17, &selRef_setSharedUserId_);
          v18 = v17;
          MEMORY[0x223DD05E0]();
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222E3FDF4();
          }

          v7 &= v7 - 1;
          sub_222E3FE14();
        }

        while (v7);
      }
    }

    __break(1u);
  }
}

Swift::Int32 __swiftcall AFVoiceIdScoreCard.getLowScoreThresholdOrDefault(_:)(Swift::Int32 a1)
{
  v3 = [v1 lowScoreThreshold];
  if (v3)
  {
    v4 = v3;
    a1 = [v3 intValue];
  }

  return a1;
}

id sub_222E38150(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v9[4] = sub_222E39AF0;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_222E38238;
    v9[3] = &block_descriptor_24;
    v6 = _Block_copy(v9);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);
  return v7;
}

uint64_t sub_222E38238(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_222E3828C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void *sub_222E382B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D550, &qword_222E42600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

char *sub_222E38330(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

void *sub_222E3835C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_222E383D4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_222E38404(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_222E42500;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

char *sub_222E38468(char *a1, int64_t a2, char a3)
{
  result = sub_222E38488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222E38488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D728, &unk_222E425D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

BOOL sub_222E38590(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_222E3FAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_222E39C90(&qword_27D04D578, MEMORY[0x277D5D298]);
  v30 = a2;
  v11 = sub_222E3FC84();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_222E38BB0(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_222E39C90(&qword_27D04D7C0, MEMORY[0x277D5D298]);
    v17 = sub_222E3FC94();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_222E38858(uint64_t a1)
{
  v2 = v1;
  v41 = sub_222E3FAA4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D7C8, &qword_222E42608);
  result = sub_222E40114();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_222E38404(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_222E39C90(&qword_27D04D578, MEMORY[0x277D5D298]);
    result = sub_222E3FC84();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_222E38BB0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_222E3FAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_222E38858(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_222E39070(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_222E39C90(&qword_27D04D578, MEMORY[0x277D5D298]);
      v15 = sub_222E3FC84();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_222E39C90(&qword_27D04D7C0, MEMORY[0x277D5D298]);
        v17 = sub_222E3FC94();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_222E38E3C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_222E402B4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *sub_222E38E3C()
{
  v1 = v0;
  v2 = sub_222E3FAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D7C8, &qword_222E42608);
  v7 = *v0;
  v8 = sub_222E40104();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_222E39070(uint64_t a1)
{
  v2 = v1;
  v37 = sub_222E3FAA4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D7C8, &qword_222E42608);
  v10 = sub_222E40114();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_222E39C90(&qword_27D04D578, MEMORY[0x277D5D298]);
        result = sub_222E3FC84();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_222E39388(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D748, &unk_222E425F0);
  result = sub_222E40124();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_222E40334();
    sub_222E3FC24();
    sub_222E3FD24();
    result = sub_222E40354();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_222E40294() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_222E39518(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222E3FDE4();

  return v3;
}

uint64_t sub_222E39574(void *a1)
{
  v2 = [a1 sharedUserId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222E3FCB4();

  return v3;
}

void sub_222E395E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222E3FCA4();
  [a3 setRefId_];
}

uint64_t sub_222E39650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_61_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  OUTLINED_FUNCTION_55_0();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_222E39754(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_222E397AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_61_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_222E39804(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_222E2C6B8(0, a3, a4);
  v8 = sub_222E3FDE4();

  return v8;
}

uint64_t sub_222E39878(void *a1)
{
  v1 = [a1 spIdKnownUserScores];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
  v3 = sub_222E3FBE4();

  return v3;
}

uint64_t sub_222E398F8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_222E3FCB4();
  OUTLINED_FUNCTION_53_0();

  return v2;
}

void sub_222E39954(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_222E3FCA4();

  [a3 *a4];
}

void sub_222E399C0(uint64_t a1, void *a2)
{
  sub_222E2C6B8(0, &qword_27D04D720, 0x277D47B68);
  v3 = sub_222E3FDD4();

  [a2 setScores_];
}

_BYTE *storeEnumTagSinglePayload for MUXUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_222E39AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_222E39B30(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222E39C90(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_14_1(uint64_t a1@<X8>)
{
  v1[12] = sub_222E329B4;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1)
{
  *(v1 + 296) = a1;

  return sub_222E3FCA4();
}

uint64_t sub_222E39DA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_222E2172C(v4);
}

uint64_t sub_222E39E20(uint64_t a1, uint64_t *a2)
{
  v4 = sub_222E3FB34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_222E39F6C(v7);
}

uint64_t sub_222E39EEC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_281320020;
  swift_beginAccess();
  v4 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_222E39F6C(uint64_t a1)
{
  v3 = qword_281320020;
  swift_beginAccess();
  v4 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

void RequestAwareBridgeBase.__allocating_init(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_222E3FB14();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  sub_222E15C70(v8, v24);
  sub_222E15C70(v2, v23);
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v13, qword_28131FFA0);
  (*(v16 + 16))(v21, v22, v13);
  (*(v0 + 464))(v12, v10, v24, v6, v4, v23, 1, v21);
  __swift_destroy_boxed_opaque_existential_0(v2);
  __swift_destroy_boxed_opaque_existential_0(v8);
  OUTLINED_FUNCTION_12();
}

void RequestAwareBridgeBase.__allocating_init(_:_:_:_:_:_:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  RequestAwareBridgeBase.init(_:_:_:_:_:_:)();
}

void RequestAwareBridgeBase.init(_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v7 = v6;
  v8 = sub_222E3FB14();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  *(v0 + qword_281320028) = 0;
  OUTLINED_FUNCTION_13_3(qword_28131FCE0);
  OUTLINED_FUNCTION_24_2((v0 + qword_28131FCD8));
  v17 = qword_281320020;
  *(v0 + qword_281320020) = 500;
  v18 = *MEMORY[0x277D85178];
  v19 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v19);
  (*(v20 + 104))(v0 + v17, v18);
  v21 = qword_28131FCF0;
  *(v0 + qword_28131FCF0) = 0;
  *(v0 + qword_28131FCF8) = 1;
  *(v0 + v21) = 1;
  sub_222E15C70(v7, &v24);
  sub_222E15C70(v4, &v23);
  (*(v11 + 16))(v16, v2, v8);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_12_3(v22);

  sub_222E3A6C4();
  sub_222E3A928();
  swift_unknownObjectRelease();

  (*(v11 + 8))(v2, v8);
  __swift_destroy_boxed_opaque_existential_0(v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  OUTLINED_FUNCTION_12();
}

void RequestAwareBridgeBase.__allocating_init(withName:messagePublisher:serviceHelper:bridgeQueue:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  RequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:bridgeQueue:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)();
  OUTLINED_FUNCTION_12();
}

void RequestAwareBridgeBase.init(withName:messagePublisher:serviceHelper:bridgeQueue:conversationSessionsManaging:autoRegisterStartRequestMessageBase:logger:)()
{
  OUTLINED_FUNCTION_11();
  v23 = v2;
  v24 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_222E3FB14();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  *(v0 + qword_281320028) = 0;
  OUTLINED_FUNCTION_13_3(qword_28131FCE0);
  OUTLINED_FUNCTION_24_2((v0 + qword_28131FCD8));
  v18 = qword_281320020;
  *(v0 + qword_281320020) = 500;
  v19 = *MEMORY[0x277D85178];
  v20 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v20);
  (*(v21 + 104))(v0 + v18, v19);
  v22 = qword_28131FCF0;
  *(v0 + qword_28131FCF0) = 0;
  *(v0 + qword_28131FCF8) = v4;
  *(v0 + v22) = v4;
  sub_222E15C70(v8, &v26);
  sub_222E15C70(v6, &v25);
  (*(v12 + 16))(v17, v23, v9);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_12_3(v24);

  sub_222E3A6C4();
  sub_222E3A928();
  swift_unknownObjectRelease();

  (*(v12 + 8))(v23, v9);
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v8);
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E3A6C4()
{
  v1 = *v0;
  if (*(v0 + qword_28131FCF8) == 1)
  {
    v2 = swift_allocObject();
    v3 = *(v1 + 328);
    *(v2 + 16) = v3;
    v4 = *(v1 + 336);
    *(v2 + 24) = v4;
    OUTLINED_FUNCTION_18_2();
    v5 = swift_allocObject();
    v5[2] = v3;
    v5[3] = v4;
    v5[4] = sub_222E3BF38;
    v5[5] = v2;
    sub_222E3F834();
    sub_222E3AC70();
  }

  v6 = swift_allocObject();
  v7 = *(v1 + 328);
  *(v6 + 16) = v7;
  v8 = *(v1 + 336);
  *(v6 + 24) = v8;
  OUTLINED_FUNCTION_18_2();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = sub_222E3BF08;
  v9[5] = v6;
  sub_222E3F804();
  sub_222E3AC70();
}

uint64_t (*sub_222E3A840(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_222E3BF40;
}

uint64_t (*sub_222E3A8B4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_222E3BF84;
}

void sub_222E3A928()
{
  v1 = v0;
  v2 = sub_222E3FB34();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = v0 + qword_28131FCE0;
  v12 = *(v0 + qword_28131FCE0);
  v13 = *(v11 + 8);
  objc_allocWithZone(MEMORY[0x277CBEBD0]);
  sub_222E3FC24();
  v14 = OUTLINED_FUNCTION_14_2();
  v22 = sub_222E3BBBC(v14, v15);
  if (v22)
  {
    v16 = *(v1 + qword_28131FCD8);
    v17 = *(v1 + qword_28131FCD8 + 8);
    OUTLINED_FUNCTION_14_2();
    v18 = sub_222E3FCA4();
    v19 = [v22 stringForKey_];

    if (v19)
    {

      OUTLINED_FUNCTION_14_2();
      v20 = sub_222E3FCA4();
      v21 = [v22 integerForKey_];

      *v10 = v21;
      (*(v5 + 104))(v10, *MEMORY[0x277D85178], v2);
      sub_222E39F6C(v10);
    }

    else
    {
    }
  }
}

void sub_222E3AB14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_222E3F924();
  if (swift_dynamicCastMetatype())
  {
    osloga = sub_222E3FB04();
    v7 = sub_222E3FFA4();
    if (os_log_type_enabled(osloga, v7))
    {
      v8 = OUTLINED_FUNCTION_10();
      v9 = OUTLINED_FUNCTION_9_0();
      v15 = v9;
      *v8 = 136315138;
      v10 = sub_222E403A4();
      v12 = sub_222E16068(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_222E12000, osloga, v7, "Cannot register message of type %s type for handling on top level Bridge class. Consider registering it with an implementation of RequestProcessorBase", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7();
    }
  }

  else
  {

    a4(a1, a2, a3);
  }
}

void sub_222E3AC70()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v2 = *v0;
  v25 = *v0;
  v3 = sub_222E3FB14();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  swift_getMetatypeMetadata();
  v12 = sub_222E3FCF4();
  v14 = v13;
  sub_222E22984();
  v26 = v12;
  v27[0] = v12;
  v27[1] = v14;
  v15 = *(v2 + 328);
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase();
  sub_222E3FC24();
  sub_222E3FC64();

  if (v28)
  {

    sub_222E3FC24();
    v16 = sub_222E3FB04();
    v17 = sub_222E3FFA4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_10();
      v19 = OUTLINED_FUNCTION_9_0();
      v27[0] = v19;
      *v18 = 136315138;
      v20 = sub_222E16068(v26, v14, v27);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_222E12000, v16, v17, "Message type: %s is already registered. Ignoring this request", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    else
    {
    }
  }

  else
  {
    v21 = qword_28131FCF0;
    if ((*(v1 + qword_28131FCF0) & 1) == 0)
    {
      sub_222E3F834();
      if (swift_dynamicCastMetatype())
      {
        *(v1 + v21) = 1;
      }
    }

    v22 = *(v25 + 336);
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandler();
    (*(v6 + 16))(v11, v1 + qword_28131FFC0, v3);
    OUTLINED_FUNCTION_14_2();
    sub_222E2FAB0(v23);

    sub_222E2D6B8();
    v29 = v14;
    v30 = v24;
    v28 = v12;
    swift_beginAccess();
    sub_222E3FC54();
    sub_222E3FC74();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E3AFBC()
{
  v0 = sub_222E3FB04();
  v1 = sub_222E3FFB4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_222E12000, v0, v1, "createRequestProcessor() method from base class called. Please implement this method in your RequestProcessorBase implementation", v2, 2u);
    OUTLINED_FUNCTION_7();
  }

  return 0;
}

void sub_222E3B058()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v83 = v3;
  v84 = v4;
  v86 = v5;
  v87 = v6;
  v85 = v7;
  v9 = v8;
  v10 = sub_222E3FB54();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = sub_222E3FB84();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = sub_222E210A0();
  if (v28)
  {
    v29 = v28;
    v80 = v22;
    v81 = v18;
    v82 = v19;
    v31 = *(v28 + 64);
    v30 = *(v28 + 72);
    sub_222E3FC24();

    v32 = [v9 refId];
    if (v32)
    {
      v33 = v32;
      v78 = v13;
      v79 = v10;
      v34 = v2;
      v35 = sub_222E3FCB4();
      v37 = v36;

      if (v31 == v35 && v30 == v37)
      {

        v40 = v34;
LABEL_17:
        v59 = *(v29 + 88);
        v77 = *(v29 + 80);
        v76 = v59;

        v60 = swift_allocObject();
        v60[2] = v40;
        v60[3] = v0;
        v60[4] = v83;
        v60[5] = v84;
        v60[6] = v29;
        v60[7] = v9;
        v60[8] = v85;
        v60[9] = v86;
        v60[10] = v87;
        v88[4] = sub_222E3BC20;
        v88[5] = v60;
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 1107296256;
        OUTLINED_FUNCTION_0_2();
        v88[2] = v61;
        v88[3] = &block_descriptor_1;
        v62 = _Block_copy(v88);

        v63 = v9;
        v64 = v85;
        sub_222E1F6C8(v86);
        sub_222E3FB64();
        OUTLINED_FUNCTION_3_4();
        sub_222E16B58(v65, v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
        sub_222E1F60C();
        sub_222E400F4();
        MEMORY[0x223DD0840](v76, v27, v81, v62);
        _Block_release(v62);

        (*(v78 + 8))(v81, v79);
        (*(v80 + 8))(v27, v82);

        goto LABEL_21;
      }

      v39 = sub_222E40294();

      v40 = v34;
      if (v39)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v48 = v9;
    v49 = sub_222E3FB04();
    sub_222E3FFA4();

    if (OUTLINED_FUNCTION_28_3())
    {
      v50 = OUTLINED_FUNCTION_9_0();
      v88[0] = OUTLINED_FUNCTION_27_2();
      *v50 = 136315650;
      v51 = sub_222E403A4();
      v53 = sub_222E16068(v51, v52, v88);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v54 = [v48 refId];
      if (v54)
      {
        v55 = v54;
        v56 = sub_222E3FCB4();
        v58 = v57;
      }

      else
      {
        v58 = 0xE300000000000000;
        v56 = 7104878;
      }

      v67 = sub_222E16068(v56, v58, v88);

      *(v50 + 14) = v67;
      *(v50 + 22) = 2080;
      v68 = *(v29 + 64);
      v69 = *(v29 + 72);
      sub_222E3FC24();
      v70 = sub_222E16068(v68, v69, v88);

      *(v50 + 24) = v70;
      OUTLINED_FUNCTION_8_3();
      _os_log_impl(v71, v72, v73, v74, v75, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }
  }

  else
  {
    v41 = sub_222E3FB04();
    v42 = sub_222E3FFA4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_10();
      v44 = OUTLINED_FUNCTION_9_0();
      v88[0] = v44;
      *v43 = 136315138;
      v45 = sub_222E403A4();
      v47 = sub_222E16068(v45, v46, v88);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_222E12000, v41, v42, "There is no request processor to serve command: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7();
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E3B638(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_222E3FB04();
  v15 = sub_222E3FF94();
  if (os_log_type_enabled(v14, v15))
  {
    v28 = a4;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v27 = v29;
    *v16 = 136315138;
    v17 = sub_222E403A4();
    v19 = a2;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v23 = sub_222E16068(v17, v18, &v29);

    *(v16 + 4) = v23;
    a7 = v22;
    a6 = v21;
    a5 = v20;
    a2 = v19;
    _os_log_impl(&dword_222E12000, v14, v15, "Dispatching %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223DD12D0](v27, -1, -1);
    v24 = v16;
    a4 = v28;
    MEMORY[0x223DD12D0](v24, -1, -1);
  }

  v25 = a2(a4);
  v25(a5, a6, a7, a8);
}

void sub_222E3B7F0(void *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  sub_222E3B058();
  if ((v11 & 1) == 0)
  {

    v12 = a1;
    v13 = sub_222E3FB04();
    v14 = sub_222E3FFA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_222E16068(v5[2], v5[3], &v28);
      *(v15 + 12) = 2080;
      v27 = v12;
      v16 = [v12 debugDescription];
      v17 = sub_222E3FCB4();
      v26 = v14;
      v18 = v10;
      v20 = v19;

      v21 = sub_222E16068(v17, v20, &v28);
      v10 = v18;

      *(v15 + 14) = v21;
      v12 = v27;
      _os_log_impl(&dword_222E12000, v13, v26, "%s bridge was not able to handle: %s.", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    v22 = *(v10 + 328);
    v23 = *(v10 + 336);
    v24 = type metadata accessor for RequestAwareBridgeBase();
    WitnessTable = swift_getWitnessTable();

    Bridge.defaultHandle(_:executionContextInfo:reply:)(v12, a2, a3, a4, v24, WitnessTable);
  }
}

uint64_t sub_222E3BA38()
{
  v1 = *(v0 + qword_281320028);

  v2 = *(v0 + qword_28131FCE0 + 8);

  v3 = *(v0 + qword_28131FCD8 + 8);

  v4 = qword_281320020;
  v5 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 8);

  return v7(v0 + v4);
}

uint64_t RequestAwareBridgeBase.deinit()
{
  v0 = MessageDispatchingBridgeBase.deinit();
  v1 = *(v0 + qword_281320028);

  v2 = *(v0 + qword_28131FCE0 + 8);

  v3 = *(v0 + qword_28131FCD8 + 8);

  v4 = qword_281320020;
  v5 = sub_222E3FB34();
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t RequestAwareBridgeBase.__deallocating_deinit()
{
  v0 = RequestAwareBridgeBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_222E3BBBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_222E3FCA4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_222E3BC70()
{
  result = sub_222E3FB34();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222E3BF10()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t RequestProcessorBase.assistantId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_222E3FC24();
  return v1;
}

uint64_t RequestProcessorBase.rootLevelRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId + 8);
  sub_222E3FC24();
  return v1;
}

uint64_t sub_222E3C05C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_222E3FC24();
  return sub_222E3C0F4(v2, v3);
}

uint64_t sub_222E3C09C()
{
  v1 = (v0 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_222E3FC24();
  return v3;
}

uint64_t sub_222E3C0F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t RequestProcessorBase.__allocating_init(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_5_3();
  v11 = *(v9 + 48);
  v12 = *(v9 + 52);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_4_4();
  RequestProcessorBase.init(_:_:_:_:_:_:)(v14, v15, v16, v17, v18, v19, v20, a8, a9);
  return v13;
}

uint64_t RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v43 = sub_222E40004();
  v18 = OUTLINED_FUNCTION_4(v43);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_42_0();
  v42 = sub_222E40014();
  v21 = OUTLINED_FUNCTION_0(v42);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v38 = v27 - v26;
  OUTLINED_FUNCTION_42_0();
  v28 = sub_222E3FB84();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_3();
  *(v12 + 11) = dispatch_group_create();
  v30 = &v12[OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v12 + 12) = a1;
  *(v12 + 13) = a2;
  v31 = OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_sessionId;
  v32 = sub_222E3F794();
  OUTLINED_FUNCTION_8_4(v32);
  v34 = v33;
  (*(v33 + 16))(&v12[v31], a3, a1);
  *(v12 + 8) = a4;
  *(v12 + 9) = a5;
  sub_222E15C70(a8, (v12 + 24));
  *(v12 + 2) = a9;
  swift_beginAccess();
  *v30 = a10;
  *(v30 + 1) = a11;
  OUTLINED_FUNCTION_13_4(OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId);
  sub_222E3FC24();
  swift_unknownObjectRetain();
  sub_222E40144();

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x223DD0550](a6, a7);

  MEMORY[0x223DD0550](46, 0xE100000000000000);
  MEMORY[0x223DD0550](a4, a5);

  sub_222E3FB74();
  (*(v23 + 104))(v38, *MEMORY[0x277D85268], v42);
  sub_222E200C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D800, &qword_222E426C0);
  sub_222E20140();
  sub_222E400F4();
  sub_222E40034();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a8);
  (*(v34 + 8))(a3, a1);
  return OUTLINED_FUNCTION_9_4();
}

uint64_t sub_222E3C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  OUTLINED_FUNCTION_5_3();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_4_4();
  a12(v16);
  return v15;
}

uint64_t RequestProcessorBase.__deallocating_deinit()
{
  RequestProcessorBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RequestProcessorBase()
{
  result = qword_28131FE38;
  if (!qword_28131FE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222E3C72C()
{
  result = sub_222E3F794();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResultCandidateConstants(_BYTE *result, int a2, int a3)
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

id SASRecognition.toAFSpeechPackage(utteranceStart:processedAudioDuration:isFinal:)(char a1, double a2, double a3)
{
  v7 = sub_222E3CF8C(v3);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = sub_222E3CCA8(v7);

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = sub_222E3CFE8(v3);
  if (!v9)
  {

LABEL_7:
    if (qword_28131F210 != -1)
    {
      swift_once();
    }

    v22 = sub_222E3FB14();
    __swift_project_value_buffer(v22, qword_28131FFA0);
    v23 = sub_222E3FB04();
    v24 = sub_222E3FF94();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_222E12000, v23, v24, "Returning empty speech package as the recognition is empty.", v25, 2u);
      MEMORY[0x223DD12D0](v25, -1, -1);
    }

    result = [objc_allocWithZone(MEMORY[0x277CEF470]) init];
    v21 = result;
    if (result)
    {
      return v21;
    }

    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CEF480]);
  sub_222E3FC24();
  v12 = sub_222E3FC24();
  v13 = sub_222E3CDB4(v12, v10, a3);
  sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
  v14 = sub_222E3FC04();
  sub_222E2C6B8(0, &qword_27D04D808, 0x277CEF438);
  v15 = sub_222E3FC04();
  v16 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v17 = sub_222E3CE90(v14, v15, 1.0);
  sub_222E2C6B8(0, &qword_27D04D688, 0x277CEF470);
  v18 = v17;
  v19 = v13;
  result = sub_222E33FF0(v13, v13, v17, a1 & 1, a2);
  if (result)
  {
    v21 = result;

    return v21;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_222E3CCA8(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_222E401B4();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_222E16374(v3, v6);
    sub_222E2C6B8(0, &qword_27D04D818, 0x277CEF478);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_222E40184();
    v4 = *(v7 + 16);
    sub_222E401C4();
    sub_222E401D4();
    sub_222E40194();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id sub_222E3CDB4(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  sub_222E2C6B8(0, &qword_27D04D818, 0x277CEF478);
  v6 = sub_222E3FDD4();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_222E2C6B8(0, &qword_27D04D810, 0x277CEF4B8);
  v7 = sub_222E3FDD4();

LABEL_6:
  v8 = [v3 initWithPhrases:v6 utterances:v7 processedAudioDuration:a3];

  return v8;
}

id sub_222E3CE90(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
  v6 = sub_222E3FBD4();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_222E2C6B8(0, &qword_27D04D808, 0x277CEF438);
  v7 = sub_222E3FBD4();

LABEL_6:
  v8 = [v3 initWithSpeechRecognitionFeatures:v6 acousticFeatures:v7 snr:a3];

  return v8;
}

uint64_t sub_222E3CF8C(void *a1)
{
  v1 = [a1 af_speechPhrases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_222E3FDE4();

  return v3;
}

uint64_t sub_222E3CFE8(void *a1)
{
  v1 = [a1 af_speechUtterances];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_222E2C6B8(0, &qword_27D04D810, 0x277CEF4B8);
  v3 = sub_222E3FDE4();

  return v3;
}

uint64_t sub_222E3D058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_getMetatypeMetadata();
  v12 = sub_222E3FCF4();
  v14 = v13;
  swift_beginAccess();
  v15 = sub_222E27C34(v12, v14, *(v6 + 16));
  swift_endAccess();
  if (v15)
  {

    sub_222E3DAAC();
    return swift_willThrowTypedImpl();
  }

  else
  {
    swift_beginAccess();
    v17 = *(v7 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v7 + 16);
    sub_222E3D96C(a3, a5, v12, v14);
    *(v7 + 16) = v24;
    swift_endAccess();
    v18 = swift_allocObject();
    v19 = a6;
    v20 = v18;
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = v19;
    v18[6] = a1;
    v18[7] = a2;
    swift_beginAccess();

    v21 = *(v7 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v7 + 24);
    sub_222E3D818(&unk_222E42890, v20, v12, v14);
    *(v7 + 24) = v25;

    return swift_endAccess();
  }
}

uint64_t sub_222E3D224()
{
  v1 = v0[13];
  v2 = *(v0[14] + 32);
  (v2)(v0[15], v0[16], v0[11]);
  v3 = sub_222E40274();
  v4 = v0[15];
  if (v3)
  {
    v5 = *(v0[14] + 8);
    v6 = OUTLINED_FUNCTION_31();
    v7(v6);
  }

  else
  {
    v8 = v0[13];
    v9 = v0[11];
    v10 = swift_allocError();
    v12 = OUTLINED_FUNCTION_2_5(v10, v11);
    v2(v12);
  }

  (*(v0[20] + 8))(v0[21], v0[10]);
  v13 = v0[21];
  v14 = v0[19];
  v16 = v0[15];
  v15 = v0[16];

  OUTLINED_FUNCTION_22();

  return v17();
}

uint64_t sub_222E3D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a1;

  swift_unknownObjectRetain();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4F0, &unk_222E415A0);
  sub_222E3D058(&unk_222E42878, v16, a5, v17, a8, MEMORY[0x277D84950]);
}

uint64_t sub_222E3D458()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(*(v0 + 72) + 32);
  (v3)(v1, *(v0 + 88), *(v0 + 48));
  v4 = sub_222E40274();
  v5 = *(v0 + 80);
  if (v4)
  {
    v1 = v4;
    v6 = *(*(v0 + 72) + 8);
    v7 = OUTLINED_FUNCTION_31();
    v8(v7);
  }

  else
  {
    v9 = *(v0 + 56);
    v10 = *(v0 + 48);
    v11 = swift_allocError();
    v13 = OUTLINED_FUNCTION_2_5(v11, v12);
    v3(v13);
  }

  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  **(v0 + 64) = v1;

  OUTLINED_FUNCTION_22();

  return v16();
}

uint64_t sub_222E3D55C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_222E3D584()
{
  sub_222E3D55C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_222E3D5DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D538, &qword_222E41928);
  OUTLINED_FUNCTION_31();
  *(v0 + 16) = sub_222E3FC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D840, &qword_222E428C0);
  OUTLINED_FUNCTION_31();
  *(v0 + 24) = sub_222E3FC04();
  return v0;
}

uint64_t sub_222E3D6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_222E18808(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4D8, &unk_222E428B0);
  if ((sub_222E40224() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_222E18808(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_222E402C4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_222E3DB00(v11, a2, a3, a1, v16);

    return sub_222E3FC24();
  }
}

uint64_t sub_222E3D818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222E18808(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D828, &qword_222E42898);
  if ((sub_222E40224() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_222E18808(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_222E402C4();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_222E3DB9C(v13, a3, a4, a1, a2, v18);

    return sub_222E3FC24();
  }
}

uint64_t sub_222E3D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222E18808(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D838, &qword_222E428A8);
  result = sub_222E40224();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v5;
  result = sub_222E18808(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_222E402C4();
    __break(1u);
    return result;
  }

  v13 = result;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_222E3DB9C(v13, a3, a4, a1, a2, v18);

    return sub_222E3FC24();
  }

  return result;
}

unint64_t sub_222E3DAAC()
{
  result = qword_27D04D820;
  if (!qword_27D04D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D820);
  }

  return result;
}

unint64_t sub_222E3DB00(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_222E3DB48()
{
  result = qword_27D04D830;
  if (!qword_27D04D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D830);
  }

  return result;
}

unint64_t sub_222E3DB9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SimpleSubscriptionRegistrar.Error(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

id SASResultCandidate.toAFSpeechPackage(utteranceStart:processedAudioDuration:isFinal:)(char a1, double a2, double a3)
{
  v4 = v3;
  sub_222E2C6B8(0, &qword_27D04D6E0, 0x277CCABB0);
  v8 = sub_222E3FC04();
  sub_222E2C6B8(0, &qword_27D04D808, 0x277CEF438);
  v9 = sub_222E3FC04();
  v10 = objc_allocWithZone(MEMORY[0x277CEF440]);
  v11 = sub_222E3CE90(v8, v9, 1.0);
  v12 = [v3 recognition];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = sub_222E3CF8C(v12);
  if (!v14 || (v15 = sub_222E3CCA8(v14), , !v15))
  {

LABEL_20:
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v43 = sub_222E3FB14();
    __swift_project_value_buffer(v43, qword_28131FFA0);
    v44 = sub_222E3FB04();
    v45 = sub_222E3FFA4();
    if (OUTLINED_FUNCTION_5_4(v45))
    {
      v46 = OUTLINED_FUNCTION_28();
      *v46 = 0;
      _os_log_impl(&dword_222E12000, v44, v45, "Returning empty speech package as the recognition is empty.", v46, 2u);
      MEMORY[0x223DD12D0](v46, -1, -1);
    }

    result = [objc_allocWithZone(MEMORY[0x277CEF470]) init];
    if (result)
    {
      v42 = result;

      return v42;
    }

    __break(1u);
    goto LABEL_53;
  }

  v16 = sub_222E3CFE8(v13);
  if (!v16)
  {

    goto LABEL_20;
  }

  v17 = v16;
  v18 = objc_allocWithZone(MEMORY[0x277CEF480]);
  sub_222E3FC24();
  v19 = sub_222E3FC24();
  v87 = sub_222E3CDB4(v19, v17, a3);
  sub_222E3E44C();
  v86 = v20;
  v21 = [v3 filteredRecognition];
  if (!v21)
  {
    goto LABEL_29;
  }

  v22 = v21;
  v23 = sub_222E3CF8C(v21);
  if (!v23 || (v17 = sub_222E3CCA8(v23), , !v17))
  {

    goto LABEL_29;
  }

  v85 = sub_222E3CFE8(v22);
  if (!v85)
  {

LABEL_29:
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v47 = sub_222E3FB14();
    __swift_project_value_buffer(v47, qword_28131FFA0);
    v48 = sub_222E3FB04();
    v49 = sub_222E3FF94();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_4_5(v50);
      _os_log_impl(&dword_222E12000, v48, v49, "No filtered recognition was found in SASResulCandidate.", v17, 2u);
      OUTLINED_FUNCTION_9();
    }

    result = sub_222E3F598(v3, &selRef_resultId);
    if (v51)
    {
      v52 = sub_222E3E6E0(result, v51);
      if ((v53 & 1) == 0)
      {
        v61 = v52;
        v62 = [v3 speechProfileUsed];
        v63 = sub_222E40084();
        v64 = v63;
        if (v62)
        {
          v65 = sub_222E40094();

          v66 = v65 ^ 1;
        }

        else
        {

          v66 = 1;
        }

        v67 = objc_allocWithZone(MEMORY[0x277CEF470]);
        v68 = v11;
        v69 = v87;
        v70 = v86;
        result = sub_222E3E9D8(v87, v87, v87, v11, a1 & 1, v86, 0, v66 & 1, v61);
        if (result)
        {
          v42 = result;

          return v42;
        }

        goto LABEL_55;
      }

      v54 = sub_222E3FB04();
      v55 = sub_222E3FFA4();
      if (OUTLINED_FUNCTION_5_4(v55))
      {
        v56 = OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_4_5(v56);
        OUTLINED_FUNCTION_2_6(&dword_222E12000, v57, v55, "Missing or malformed resultId in SASResultCandidate.");
        OUTLINED_FUNCTION_9();
      }

      sub_222E2C6B8(0, &qword_27D04D688, 0x277CEF470);
      v58 = v11;
      v59 = v87;
      result = sub_222E33FF0(v87, v87, v11, a1 & 1, a2);
      if (result)
      {
        v42 = result;

        goto LABEL_39;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v24 = sub_222E3FB14();
  __swift_project_value_buffer(v24, qword_28131FFA0);
  v25 = sub_222E3FB04();
  v26 = sub_222E3FF94();
  if (OUTLINED_FUNCTION_5_4(v26))
  {
    v27 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_4_5(v27);
    OUTLINED_FUNCTION_2_6(&dword_222E12000, v28, v26, "Filtered recognition was found in SASResulCandidate.");
    MEMORY[0x223DD12D0](v17, -1, -1);
  }

  v29 = objc_allocWithZone(MEMORY[0x277CEF480]);
  sub_222E3FC24();
  sub_222E3FC24();
  v30 = sub_222E3CDB4(v17, v85, a3);
  result = sub_222E3F598(v4, &selRef_resultId);
  if (!v32)
  {
    goto LABEL_56;
  }

  v84 = v30;
  v33 = sub_222E3E6E0(result, v32);
  if (v34)
  {
    v35 = sub_222E3FB04();
    v36 = sub_222E3FFA4();
    if (OUTLINED_FUNCTION_5_4(v36))
    {
      v37 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_4_5(v37);
      OUTLINED_FUNCTION_2_6(&dword_222E12000, v38, v36, "Missing or malformed resultId in SASResultCandidate.");
      OUTLINED_FUNCTION_9();
    }

    v39 = objc_allocWithZone(MEMORY[0x277CEF470]);
    v82 = v84;
    v40 = v87;
    v41 = v11;
    result = sub_222E3EA78(v84, v87, v87, v11, a1 & 1);
    if (result)
    {
      v42 = result;

LABEL_39:
      v60 = v86;
LABEL_40:

      return v42;
    }

    goto LABEL_57;
  }

  v83 = v33;
  v71 = [v4 speechProfileUsed];
  v72 = sub_222E40084();
  v73 = v72;
  if (v71)
  {
    v74 = sub_222E40094();

    v75 = v74 ^ 1;
  }

  else
  {

    v75 = 1;
  }

  v81 = v75;
  v76 = objc_allocWithZone(MEMORY[0x277CEF470]);
  v80 = v84;
  v79 = v87;
  v78 = v86;
  v77 = v11;
  result = sub_222E3E9D8(v84, v87, v87, v11, a1 & 1, v86, 0, v81 & 1, v83);
  if (result)
  {
    v42 = result;

    v60 = v80;
    goto LABEL_40;
  }

LABEL_58:
  __break(1u);
  return result;
}

void sub_222E3E44C()
{
  v1 = sub_222E3F598(v0, &selRef_latticeRnnMitigatorModelId);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v0 latticeRnnMitigatorCalibrationScale];
    if (v5)
    {
      v6 = v5;
      LODWORD(v30) = 0;
      BYTE4(v30) = 1;
      MEMORY[0x223DD0740](v5, &v30);

      if ((BYTE4(v30) & 1) == 0)
      {
        v7 = v30;
        v8 = [v0 latticeRnnMitigatorCalibrationOffset];
        if (v8)
        {
          v9 = v8;
          LODWORD(v30) = 0;
          BYTE4(v30) = 1;
          MEMORY[0x223DD0740](v8, &v30);

          if ((BYTE4(v30) & 1) == 0)
          {
            v20 = v30;
            [v0 latticeRnnMitigatorScore];
            v22 = v21;
            [v0 latticeRnnMitigatorThreshold];
            v24 = v23;
            v25 = objc_allocWithZone(MEMORY[0x277CEF460]);
            *&v26 = v22;
            *&v27 = v24;
            LODWORD(v28) = v7;
            LODWORD(v29) = v20;
            sub_222E3EAF0(v26, v27, v28, v29, v3, v4);
            return;
          }
        }
      }
    }
  }

  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v10 = sub_222E3FB14();
  __swift_project_value_buffer(v10, qword_28131FFA0);
  v11 = v0;
  v12 = sub_222E3FB04();
  v13 = sub_222E3FF94();
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_13;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v30 = v15;
  *v14 = 136315138;
  v16 = sub_222E3F598(v11, &selRef_resultId);
  v18 = v17;

  if (v18)
  {
    v19 = sub_222E16068(v16, v18, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_222E12000, v12, v13, "Nil ModelId, CalibrationScale, or CalibrationOffset found in rc=%s.  Returning nil AFSpeechLatticeMitigatorResult.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DD12D0](v15, -1, -1);
    MEMORY[0x223DD12D0](v14, -1, -1);
LABEL_13:

    return;
  }

  __break(1u);
}

uint64_t sub_222E3E6E0(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_222E40174();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_222E3EB84(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id sub_222E3E9D8(void *a1, void *a2, void *a3, void *a4, char a5, void *a6, char a7, char a8, uint64_t a9)
{
  BYTE1(v17) = a8;
  LOBYTE(v17) = a7;
  v15 = [v9 initWithRecognition:a1 unfilteredRecognition:a2 rawRecognition:a3 audioAnalytics:a4 isFinal:a5 & 1 utteranceStart:a6 latticeMitigatorResult:v17 recognitionPaused:a9 speechProfileUsed:? resultCandidateId:?];

  return v15;
}

id sub_222E3EA78(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v10 = [v5 initWithRecognition:a1 unfilteredRecognition:a2 rawRecognition:a3 audioAnalytics:a4 isFinal:a5 & 1 utteranceStart:?];

  return v10;
}

id sub_222E3EAF0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = LODWORD(a4);
  v8 = LODWORD(a3);
  v9 = LODWORD(a2);
  v10 = LODWORD(a1);
  if (a6)
  {
    v11 = sub_222E3FCA4();
  }

  else
  {
    v11 = 0;
  }

  LODWORD(a1) = v10;
  LODWORD(a2) = v9;
  LODWORD(a3) = v8;
  LODWORD(a4) = v7;
  v12 = [v6 initWithResults:v11 score:a1 threshold:a2 calibrationScale:a3 calibrationOffset:a4];

  return v12;
}

unsigned __int8 *sub_222E3EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_222E3FC24();
  result = sub_222E3FD94();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_222E3F10C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_222E40174();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_222E3F10C(uint64_t a1, unint64_t a2)
{
  v2 = sub_222E3F178(sub_222E3F174, 0, a1, a2);
  v6 = sub_222E3F1AC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_222E3F178(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_222E3F1AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_222E3FD14();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_222E400D4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_222E15E0C(v9, 0);
  v12 = sub_222E3F30C(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_222E3FC24();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_222E3FD14();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_222E40174();
LABEL_4:

  return sub_222E3FD14();
}

unint64_t sub_222E3F30C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_222E3F51C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_222E3FD74();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_222E40174();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_222E3F51C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_222E3FD54();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_222E3F51C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_222E3FD84();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DD0580](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_222E3F598(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_222E3FCB4();

  return v4;
}

uint64_t ServerFallbackDisablingUtils.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 514;
  *(result + 24) = a1;
  return result;
}

uint64_t ServerFallbackDisablingUtils.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 514;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t ServerFallbackDisablingUtils.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}