uint64_t sub_1DCCD2894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41E0, &qword_1DD0EB028);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD0DF28C();
  qword_1ECCA41D8 = result;
  return result;
}

void static ConversationEnvironment.$conversationContext.getter()
{
  if (qword_1ECCA1270 != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  sub_1DD0DCF8C();
}

uint64_t static ConversationEnvironment.conversationContext.getter()
{
  if (qword_1ECCA1270 != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  return sub_1DD0DF29C();
}

uint64_t destroy for ExecutionContext(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
}

uint64_t initializeWithCopy for ExecutionContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  return a1;
}

uint64_t *assignWithCopy for ExecutionContext(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  return a1;
}

uint64_t assignWithTake for ExecutionContext(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExecutionContext(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for ExecutionContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationEnvironment(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCCD2C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32 * v1);
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
  }

  return OUTLINED_FUNCTION_33_1();
}

char *sub_1DCCD2CD4(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    v6 = OUTLINED_FUNCTION_86();
    return MEMORY[0x1E12A72C0](v6);
  }

  result = sub_1DD0DEB3C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1DCCD2D6C()
{
  v0 = type metadata accessor for FeatureChecker();
  v1 = swift_allocObject();
  *(v1 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v21[3] = v0;
  v21[4] = &off_1F585C9F0;
  v21[0] = v1;
  v2 = type metadata accessor for ConversationSELFHelper();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v21, v0);
  v7 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v6);
  OUTLINED_FUNCTION_16();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v5[7] = v0;
  v5[8] = &off_1F585C9F0;
  v5[4] = v12;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_31_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_31_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v5[2] = sub_1DCB226E0;
  v5[3] = 0;
  sub_1DD0DCF8C();
}

void static ConversationSELFHelper.shared.getter()
{
  if (qword_1EDE4DFB8 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void sub_1DCCD2F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1DCCD3B44(a1, a2, a3, a4))
  {
    OUTLINED_FUNCTION_27_14();
    v4();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    v24 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v14);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] buildFinalExecutionContextFailedMessage failed to be emitted", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD3120(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, Class *a5, SEL *a6)
{
  sub_1DCB0D344();
  if (v11 && (v12 = v11, oslog = sub_1DCCD666C(v11, a3, a4, a5, a6), v12, oslog))
  {
    v13 = *(v6 + 16);
    v14 = *(v6 + 24);
    v13();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v15 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v15, qword_1EDE57DA0);
    oslog = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v17);
      OUTLINED_FUNCTION_44_8(&dword_1DCAFC000, v18, v19, v20, v21, v22, v23, v24, v25, oslog);
      OUTLINED_FUNCTION_62();
    }
  }
}

void sub_1DCCD3230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1DCCD3914(a1, a2, a3);
  if (v5)
  {
    oslog = v5;
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57DA0);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v8))
    {
      v9 = OUTLINED_FUNCTION_151();
      v10 = OUTLINED_FUNCTION_83();
      v19 = v10;
      *v9 = 136315138;
      v11 = sub_1DD0DE86C();
      v13 = sub_1DCB10E9C(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "[ConversationSELFHelper] Emitting execution override decision %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v14 = *(v4 + 3);
    (*(v4 + 2))(oslog);
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v15 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v15, qword_1EDE57DA0);
    oslog = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v17);
      _os_log_impl(&dword_1DCAFC000, oslog, v16, "[ConversationSELFHelper] buildExecutionOverrideMessage failed to be emitted", v3, 2u);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD33FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1DCCD3F74(a1, a2, a3))
  {
    OUTLINED_FUNCTION_27_14();
    v3();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57DA0);
    v23 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v5, v6, v7, v8, v9, v10, v11, v12, v20, v23))
    {
      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v13);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v14, v15, "[ConversationSELFHelper] actionCandidatesCollated failed to be emitted", v16, v17, v18, v19, v21, v22);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD34B4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  sub_1DCB0D344();
  if (v5 && (v6 = v5, v27 = sub_1DCCD4824(v5, a1, v4), v6, v27))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v7();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v9 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v9, qword_1EDE57DA0);
    v28 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v10, v11, v12, v13, v14, v15, v16, v17, v25, v28))
    {
      v18 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v18);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v19, v20, "[ConversationSELFHelper] DisambiguationDialogGenerated failed to be emitted", v21, v22, v23, v24, v26, v27);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD35A4()
{
  OUTLINED_FUNCTION_70();
  sub_1DCB0D344();
  if (v2 && (v3 = v2, v24 = sub_1DCCD4B98(v2, v0), v3, v24))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v4();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57DA0);
    v25 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v7, v8, v9, v10, v11, v12, v13, v14, v22, v25))
    {
      v15 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v15);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v16, v17, "[ConversationSELFHelper] DisambiguationFollowupHandled failed to be emitted", v18, v19, v20, v21, v23, v24);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD3688(uint64_t a1)
{
  sub_1DCB0D344();
  if (v3 && (v4 = v3, v25 = sub_1DCCD4D30(v3, a1), v4, v25))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v5();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57DA0);
    v26 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v8, v9, v10, v11, v12, v13, v14, v15, v23, v26))
    {
      v16 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v16);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v17, v18, "[ConversationSELFHelper] DisambiguationFailed failed to be emitted", v19, v20, v21, v22, v24, v25);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

uint64_t sub_1DCCD3770()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[12];

  OUTLINED_FUNCTION_29();
  v7 = v0[21];

  return v6();
}

uint64_t sub_1DCCD37F8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16))(0);
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 32);
    v5 = *(v4 + 24);
    (*(v4 + 16))();
  }

  v6 = *(v0 + 48);
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  v8 = *(v0 + 48);

  return v7();
}

uint64_t sub_1DCCD3888()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  v7 = OUTLINED_FUNCTION_138();
  sub_1DCB40710(v7, v8, v4);

  OUTLINED_FUNCTION_29();
  v10 = v0[15];

  return v9();
}

void sub_1DCCD3914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57DA0);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v6))
  {
    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "[ConversationSELFHelper] building execution overrride SELF objects", v7, 2u);
    OUTLINED_FUNCTION_80();
  }

  sub_1DCB0D344();
  if (v8)
  {
    v9 = v8;
    sub_1DCCD3A0C(v8, a3);
  }
}

void *sub_1DCCD3A0C(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CE9C0]) init];
  if (v4)
  {
    v5 = v4;
    [v4 setExecutionOverrideDecision_];
    [a1 setExecutionOverridesEvaluated_];

    v6 = a1;
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57DA0);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "[ConversationSELFHelper] Failed to create execution overrride SELF objects", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    return 0;
  }

  return a1;
}

void *sub_1DCCD3B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  v12 = OUTLINED_FUNCTION_19();
  sub_1DCB099BC(v12, v13, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v14)
  {
    v15 = v14;
    v16 = sub_1DCCD3C28(v14, a4, v11);
  }

  else
  {
    v16 = 0;
  }

  sub_1DCB0E9D8(v11, &qword_1ECCA2618, &unk_1DD0E5C50);
  return v16;
}

void *sub_1DCCD3C28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v32 - v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E69CEA50]) init];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(MEMORY[0x1E69CEA60]) init];
    if (v23)
    {
      v24 = v23;
      [v23 setReason_];
      [v22 setFailed_];
      sub_1DCB099BC(a3, v20, &qword_1ECCA2618, &unk_1DD0E5C50);
      if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
      {
        v25 = 0;
      }

      else
      {
        (*(v7 + 32))(v15, v20, v6);
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        (*(v7 + 16))(v12, v15, v6);
        v25 = sub_1DCB0DEDC(v12);
        (*(v7 + 8))(v15, v6);
      }

      [v22 setHypothesisId_];

      [a1 setIntentFinalExecutionContext_];
      v30 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v26 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v26, qword_1EDE57DA0);
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DCAFC000, v27, v28, "[ConversationSELFHelper] Failed to create context SELF objects", v29, 2u);
    MEMORY[0x1E12A8390](v29, -1, -1);
  }

  return 0;
}

id sub_1DCCD3F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46_8();

  OUTLINED_FUNCTION_19();
  sub_1DCB0D344();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DCCD3FE4(v4, a3);

    return v6;
  }

  else
  {

    return 0;
  }
}

id sub_1DCCD3FE4(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v81 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4210, &qword_1DD0EB1E8);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v81 - v25;
  v27 = [objc_allocWithZone(MEMORY[0x1E69CE958]) init];
  if (v27)
  {
    v85 = v10;
    v83 = v27;
    v82 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    v103 = MEMORY[0x1E69E7CC0];
    v29 = *(a2 + 64);
    v87 = a2 + 64;
    v30 = 1 << *(a2 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v29;
    v84 = (v30 + 63) >> 6;
    v33 = (v5 + 16);
    v94 = (v5 + 32);
    v90 = v5;
    v34 = (v5 + 8);

    v35 = 0;
    v92 = v26;
    v93 = v23;
    v97 = v33;
    v98 = v17;
    v86 = a2;
    v91 = v14;
    v101 = v34;
    while (1)
    {
      v100 = v28;
      if (!v32)
      {
        while (1)
        {
          v36 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v36 >= v84)
          {
            v44 = v4;
            v39 = a2;
            v96 = v35;
            v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4218, &unk_1DD0EB1F0);
            __swift_storeEnumTagSinglePayload(v23, 1, 1, v65);
            v95 = 0;
            goto LABEL_12;
          }

          v32 = *(v87 + 8 * v36);
          ++v35;
          if (v32)
          {
            v96 = v36;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v96 = v35;
      v36 = v35;
LABEL_11:
      v95 = (v32 - 1) & v32;
      v37 = __clz(__rbit64(v32)) | (v36 << 6);
      v38 = v90;
      (*(v90 + 16))(v17, *(a2 + 48) + *(v90 + 72) * v37, v4);
      v39 = a2;
      v40 = *(*(a2 + 56) + 8 * v37);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4218, &unk_1DD0EB1F0);
      v42 = *(v41 + 48);
      v43 = *(v38 + 32);
      v23 = v93;
      v44 = v4;
      v43(v93, v17, v4);
      *&v23[v42] = v40;
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v41);

      v26 = v92;
LABEL_12:
      sub_1DCCD75FC(v23, v26);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4218, &unk_1DD0EB1F0);
      if (__swift_getEnumTagSinglePayload(v26, 1, v45) == 1)
      {
        break;
      }

      v46 = *&v26[*(v45 + 48)];
      v47 = v91;
      v4 = v44;
      (*v94)(v91, v26, v44);
      v48 = [objc_allocWithZone(MEMORY[0x1E69CEAA0]) init];
      if (!v48)
      {
        v74 = v47;

        if (qword_1EDE4D8C8 != -1)
        {
          swift_once();
        }

        v75 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v75, qword_1EDE57DA0);
        v76 = sub_1DD0DD8EC();
        v77 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_1DCAFC000, v76, v77, "[ConversationSELFHelper]  Failed to create CNVSchemaCollatedActionCandidate SELF object", v78, 2u);
          MEMORY[0x1E12A8390](v78, -1, -1);
          v79 = v83;
        }

        else
        {
          v79 = v76;
          v76 = v83;
        }

        (*v34)(v74, v44);
        return 0;
      }

      v49 = v48;
      v50 = sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      v51 = v98;
      v52 = *v97;
      (*v97)(v98, v47, v4);
      v53 = v50;
      v54 = sub_1DCB0DEDC(v51);
      [v49 setPrimaryActionCandidateId_];

      v55 = *(v46 + 16);
      if (v55)
      {
        v88 = v49;
        v102 = MEMORY[0x1E69E7CC0];
        sub_1DD0DED0C();
        v56 = *(v90 + 80);
        v89 = v46;
        v57 = (v46 + ((v56 + 32) & ~v56));
        v58 = *(v90 + 72);
        v99 = v53;
        v100 = v58;
        v59 = v85;
        v60 = v98;
        do
        {
          v52(v60, v57, v4);
          v52(v59, v60, v4);
          sub_1DCB0DEDC(v59);
          (*v101)(v60, v4);
          sub_1DD0DECDC();
          v61 = *(v102 + 16);
          sub_1DD0DED1C();
          sub_1DD0DED2C();
          sub_1DD0DECEC();
          v57 += v100;
          --v55;
        }

        while (v55);

        v34 = v101;
        v62 = v102;
        a2 = v86;
        v63 = v91;
        v23 = v93;
        v49 = v88;
      }

      else
      {

        v62 = MEMORY[0x1E69E7CC0];
        v23 = v93;
        a2 = v39;
        v63 = v47;
      }

      sub_1DCCD7514(v62, v49, &qword_1EDE4D700, 0x1E69CF638, &selRef_setAlternativeActionCandidateIds_);
      v64 = v49;
      MEMORY[0x1E12A6920]();
      v17 = v98;
      v32 = v95;
      if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();

      (*v34)(v63, v4);
      v28 = v103;
      v26 = v92;
      v35 = v96;
    }

    v70 = v100;
    if (sub_1DCB08B14(v100))
    {
      v71 = v83;
      sub_1DCCD7514(v70, v83, &unk_1EDE460F8, 0x1E69CEAA0, &selRef_setCollatedActionCandidates_);
      v72 = v82;
      [v82 setActionCandidatesCollated_];

      v73 = v72;
      return v72;
    }
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
LABEL_39:
      swift_once();
    }

    v66 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v66, qword_1EDE57DA0);
    v67 = sub_1DD0DD8EC();
    v68 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1DCAFC000, v67, v68, "[ConversationSELFHelper] Failed to create CNVSchemaCNVActionCandidatesCollated SELF object", v69, 2u);
      MEMORY[0x1E12A8390](v69, -1, -1);
    }
  }

  return 0;
}

void *sub_1DCCD4824(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v32 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E69CE990]) init];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E69CE988]) init];
  if (!v18)
  {

    return 0;
  }

  v19 = v18;
  v20 = *(a2 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v32 = v19;
    v33 = v17;
    v34 = a3;
    v35 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v22 = sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v37 = v24;
    v38 = v22;
    v25 = (a2 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v36 = *(v23 + 56);
    do
    {
      v26 = v37;
      v37(v15, v25, v6);
      v26(v12, v15, v6);
      sub_1DCB0DEDC(v12);
      (*(v23 - 8))(v15, v6);
      sub_1DD0DECDC();
      v27 = *(v39 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      v25 += v36;
      --v20;
    }

    while (v20);
    v21 = v39;
    a1 = v35;
    LOBYTE(a3) = v34;
    v19 = v32;
    v17 = v33;
  }

  sub_1DCCD7514(v21, v17, &qword_1EDE4D700, 0x1E69CF638, &selRef_setActionCandidateIds_);
  [v19 setStartedOrChanged_];
  if (a3)
  {
    if (a3 == 1)
    {
      v28 = 0xD000000000000012;
    }

    else
    {
      v28 = 0x69746E4562726576;
    }

    if (a3 == 1)
    {
      v29 = 0x80000001DD110F80;
    }

    else
    {
      v29 = 0xEA00000000007974;
    }
  }

  else
  {
    v29 = 0xE700000000000000;
    v28 = 0x656D614E707061;
  }

  sub_1DCCD7598(v28, v29, v17);
  [a1 setDisambiguationContext_];

  v30 = a1;
  return a1;
}

uint64_t CAMDisambiguationDialogType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x69746E4562726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E707061;
  }
}

void *sub_1DCCD4B98(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69CE9A0]) init];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69CE988]) init];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
  (*(v5 + 16))(v9, a2, v4);
  v14 = sub_1DCB0DEDC(v9);
  [v11 setActionCandidateId_];

  [v13 setEnded_];
  [a1 setDisambiguationContext_];

  v15 = a1;
  return a1;
}

void *sub_1DCCD4D30(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CE998]) init];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CE988]) init];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  [v5 setErrorCode_];
  [v7 setFailed_];
  [a1 setDisambiguationContext_];

  v8 = a1;
  return a1;
}

uint64_t sub_1DCCD4DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4200, &qword_1DD0EB1D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0EB030;
  v1 = sub_1DCB50C00();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v4 = sub_1DCB50C00();
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  *(inited + 56) = v6;
  *(inited + 64) = v5;
  *(inited + 72) = 2;
  v7 = sub_1DCB50C00();
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);

  *(inited + 80) = v9;
  *(inited + 88) = v8;
  *(inited + 96) = 3;
  v10 = sub_1DCB50C00();
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);

  *(inited + 104) = v12;
  *(inited + 112) = v11;
  *(inited + 120) = 30;
  v13 = sub_1DCB50C00();
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);

  *(inited + 128) = v15;
  *(inited + 136) = v14;
  *(inited + 144) = 4;
  v16 = sub_1DCB50C00();
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);

  *(inited + 152) = v18;
  *(inited + 160) = v17;
  *(inited + 168) = 28;
  v19 = sub_1DCB50C00();
  v21 = *(v19 + 16);
  v20 = *(v19 + 24);

  *(inited + 176) = v21;
  *(inited + 184) = v20;
  *(inited + 192) = 29;
  v22 = sub_1DCB50C00();
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);

  *(inited + 200) = v24;
  *(inited + 208) = v23;
  *(inited + 216) = 6;
  v25 = sub_1DCB50C00();
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);

  *(inited + 224) = v27;
  *(inited + 232) = v26;
  *(inited + 240) = 7;
  v28 = sub_1DCB50C00();
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);

  *(inited + 248) = v30;
  *(inited + 256) = v29;
  *(inited + 264) = 8;
  v31 = sub_1DCB50C00();
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);

  *(inited + 272) = v33;
  *(inited + 280) = v32;
  *(inited + 288) = 9;
  v34 = sub_1DCB50C00();
  v36 = *(v34 + 16);
  v35 = *(v34 + 24);

  *(inited + 296) = v36;
  *(inited + 304) = v35;
  *(inited + 312) = 36;
  v37 = sub_1DCB50C00();
  v39 = *(v37 + 16);
  v38 = *(v37 + 24);

  *(inited + 320) = v39;
  *(inited + 328) = v38;
  *(inited + 336) = 10;
  v40 = sub_1DCB50C00();
  v42 = *(v40 + 16);
  v41 = *(v40 + 24);

  *(inited + 344) = v42;
  *(inited + 352) = v41;
  *(inited + 360) = 11;
  v43 = sub_1DCB50C00();
  v45 = *(v43 + 16);
  v44 = *(v43 + 24);

  *(inited + 368) = v45;
  *(inited + 376) = v44;
  *(inited + 384) = 12;
  v46 = sub_1DCB50C00();
  v48 = *(v46 + 16);
  v47 = *(v46 + 24);

  *(inited + 392) = v48;
  *(inited + 400) = v47;
  *(inited + 408) = 13;
  v49 = sub_1DCB50C00();
  v51 = *(v49 + 16);
  v50 = *(v49 + 24);

  *(inited + 416) = v51;
  *(inited + 424) = v50;
  *(inited + 432) = 14;
  v52 = sub_1DCB50C00();
  v54 = *(v52 + 16);
  v53 = *(v52 + 24);

  *(inited + 440) = v54;
  *(inited + 448) = v53;
  *(inited + 456) = 15;
  v55 = sub_1DCB50C00();
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);

  *(inited + 464) = v57;
  *(inited + 472) = v56;
  *(inited + 480) = 26;
  v58 = sub_1DCB50C00();
  v60 = *(v58 + 16);
  v59 = *(v58 + 24);

  *(inited + 488) = v60;
  *(inited + 496) = v59;
  *(inited + 504) = 33;
  v61 = sub_1DCB50C00();
  v63 = *(v61 + 16);
  v62 = *(v61 + 24);

  *(inited + 512) = v63;
  *(inited + 520) = v62;
  *(inited + 528) = 16;
  v64 = sub_1DCB50C00();
  v66 = *(v64 + 16);
  v65 = *(v64 + 24);

  *(inited + 536) = v66;
  *(inited + 544) = v65;
  *(inited + 552) = 17;
  v67 = sub_1DCB50C00();
  v69 = *(v67 + 16);
  v68 = *(v67 + 24);

  *(inited + 560) = v69;
  *(inited + 568) = v68;
  *(inited + 576) = 18;
  v70 = sub_1DCB50C00();
  v72 = *(v70 + 16);
  v71 = *(v70 + 24);

  *(inited + 584) = v72;
  *(inited + 592) = v71;
  *(inited + 600) = 34;
  v73 = sub_1DCB50C00();
  v75 = *(v73 + 16);
  v74 = *(v73 + 24);

  *(inited + 608) = v75;
  *(inited + 616) = v74;
  *(inited + 624) = 19;
  v76 = sub_1DCB50C00();
  v78 = *(v76 + 16);
  v77 = *(v76 + 24);

  *(inited + 632) = v78;
  *(inited + 640) = v77;
  *(inited + 648) = 39;
  v79 = sub_1DCB50C00();
  v81 = *(v79 + 16);
  v80 = *(v79 + 24);

  *(inited + 656) = v81;
  *(inited + 664) = v80;
  *(inited + 672) = 38;
  v82 = sub_1DCB50C00();
  v84 = *(v82 + 16);
  v83 = *(v82 + 24);

  *(inited + 680) = v84;
  *(inited + 688) = v83;
  *(inited + 696) = 20;
  v85 = sub_1DCB50C00();
  v87 = *(v85 + 16);
  v86 = *(v85 + 24);

  *(inited + 704) = v87;
  *(inited + 712) = v86;
  *(inited + 720) = 23;
  v88 = sub_1DCB50C00();
  v90 = *(v88 + 16);
  v89 = *(v88 + 24);

  *(inited + 728) = v90;
  *(inited + 736) = v89;
  *(inited + 744) = 40;
  v91 = sub_1DCB50C00();
  v93 = *(v91 + 16);
  v92 = *(v91 + 24);

  *(inited + 752) = v93;
  *(inited + 760) = v92;
  *(inited + 768) = 25;
  v94 = sub_1DCB50C00();
  v96 = *(v94 + 16);
  v95 = *(v94 + 24);

  *(inited + 776) = v96;
  *(inited + 784) = v95;
  *(inited + 792) = 32;
  v97 = sub_1DCB50C00();
  v99 = *(v97 + 16);
  v98 = *(v97 + 24);

  *(inited + 800) = v99;
  *(inited + 808) = v98;
  *(inited + 816) = 31;
  v100 = sub_1DCB50C00();
  v102 = *(v100 + 16);
  v101 = *(v100 + 24);

  *(inited + 824) = v102;
  *(inited + 832) = v101;
  *(inited + 840) = 21;
  v103 = sub_1DCB50C00();
  v105 = *(v103 + 16);
  v104 = *(v103 + 24);

  *(inited + 848) = v105;
  *(inited + 856) = v104;
  *(inited + 864) = 35;
  v106 = sub_1DCB50C00();
  v108 = *(v106 + 16);
  v107 = *(v106 + 24);

  *(inited + 872) = v108;
  *(inited + 880) = v107;
  *(inited + 888) = 22;
  v109 = sub_1DCB50C00();
  v111 = *(v109 + 16);
  v110 = *(v109 + 24);

  *(inited + 896) = v111;
  *(inited + 904) = v110;
  *(inited + 912) = 24;
  v112 = sub_1DCB50C00();
  v114 = *(v112 + 16);
  v113 = *(v112 + 24);

  *(inited + 920) = v114;
  *(inited + 928) = v113;
  *(inited + 936) = 37;
  type metadata accessor for CNVSchemaCNVPlugin(0);
  result = sub_1DD0DDE9C();
  qword_1EDE57D28 = result;
  return result;
}

void sub_1DCCD5620(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1DCB0D344();
  if (v4)
  {
    v5 = v4;
    a3();
  }
}

void sub_1DCCD5670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = *v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
  OUTLINED_FUNCTION_20_0(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &a9 - v31;
  sub_1DCB099BC(v24, &a9 - v31, &qword_1ECCA4228, &unk_1DD0F6E40);

  sub_1DCB0D344();
  if (v33)
  {
    v34 = v33;
    sub_1DCCD57A0(v33, v32);
  }

  sub_1DCB0E9D8(v32, &qword_1ECCA4228, &unk_1DD0F6E40);

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCD57A0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69CEA70]) init];
  if (v3)
  {
    v4 = v3;
    if ([objc_allocWithZone(MEMORY[0x1E69CEA88]) init])
    {
      sub_1DCCD5958(a2);
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57DA0);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "[ConversationSELFHelper] Failed to create context SELF objects", v8, 2u);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  return 0;
}

void sub_1DCCD5958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  sub_1DCB099BC(a1, &v6 - v5, &qword_1ECCA4228, &unk_1DD0F6E40);
  sub_1DD0DCF7C();
}

void *sub_1DCCD5CAC()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_66();
  v0 = type metadata accessor for Parse(0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_45_7();
  sub_1DCB29E58(v5, v6);
  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_169();
    v11 = sub_1DCCD5D84(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  sub_1DCB28484();
  return v11;
}

void *sub_1DCCD5D84(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEA70]) init];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69CEA78]) init];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DCCD5F14(a2);
      [v7 setReformedIntent_];

      [v5 setEnded_];
      [a1 setIntentReformationContext_];

      v9 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57DA0);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DCAFC000, v11, v12, "[ConversationSELFHelper] Failed to create context SELF objects", v13, 2u);
    MEMORY[0x1E12A8390](v13, -1, -1);
  }

  return 0;
}

id sub_1DCCD5F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v56 - v14;
  v16 = sub_1DD0DB5BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for USOParse();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Parse(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = (&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCB29E58(a1, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    sub_1DCC6D300(v31, v26);
    v34 = sub_1DD0DB46C();
    sub_1DCC621EC(v34);

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      (*(v17 + 32))(v21, v15, v16);
      v35 = *(sub_1DD0DB46C() + 16);

      if (v35 >= 2)
      {
        if (qword_1EDE4D8C8 != -1)
        {
          swift_once();
        }

        v36 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v36, qword_1EDE57DA0);
        v37 = sub_1DD0DD8EC();
        v38 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1DCAFC000, v37, v38, "Multiple UserDialogActs received but only taking the first", v39, 2u);
          MEMORY[0x1E12A8390](v39, -1, -1);
        }
      }

      sub_1DCCD6A98();
    }

LABEL_19:
    sub_1DCB0E9D8(v15, &qword_1ECCA29B8, &qword_1DD0E96C0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v46 = sub_1DD0DD8FC();
    v47 = __swift_project_value_buffer(v46, qword_1EDE57E00);
    v48 = *(v46 - 8);
    (*(v48 + 16))(v10, v47, v46);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v46);
    sub_1DCB099BC(v10, v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v46) == 1)
    {
      sub_1DCB0E9D8(v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v57 = v52;
        *v51 = 136315650;
        v53 = sub_1DD0DEC3C();
        v55 = sub_1DCB10E9C(v53, v54, &v57);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2048;
        *(v51 + 14) = 1000;
        *(v51 + 22) = 2080;
        *(v51 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD117620, &v57);
        _os_log_impl(&dword_1DCAFC000, v49, v50, "FatalError at %s:%lu - %s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v52, -1, -1);
        MEMORY[0x1E12A8390](v51, -1, -1);
      }

      (*(v48 + 8))(v7, v46);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD117620);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v33 = *v31;
    sub_1DCCD6848();
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v40 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v40, qword_1EDE57DA0);
  v7 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v7, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1DCAFC000, v7, v41, "[ConversationSELFHelper] Parse is not .uso or .NLv4IntentOnly; using empty graph for SELF log", v42, 2u);
    MEMORY[0x1E12A8390](v42, -1, -1);
  }

  v43 = [objc_allocWithZone(MEMORY[0x1E69CF838]) init];
  if (!v43)
  {
    __break(1u);
    goto LABEL_19;
  }

  v44 = v43;
  sub_1DCB28484();
  return v44;
}

void *sub_1DCCD666C(void *a1, uint64_t a2, Class *a3, Class *a4, SEL *a5)
{
  v9 = [objc_allocWithZone(*a3) init];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(*a4) init];
    if (v11)
    {
      v12 = v11;
      [v11 setReason_];
      [v10 setFailed_];
      [a1 *a5];

      v13 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57DA0);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v16))
  {
    v17 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v17);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v18, v19, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

  return 0;
}

uint64_t sub_1DCCD6798()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DCCD67C0()
{
  type metadata accessor for CNVSchemaCNVPlugin(0);
  result = sub_1DD0DDE9C();
  qword_1EDE4DFD0 = result;
  return result;
}

uint64_t sub_1DCCD6804()
{
  type metadata accessor for CNVSchemaCNVTransformer(0);
  result = sub_1DD0DDE9C();
  qword_1ECCA41E8 = result;
  return result;
}

uint64_t ConversationSELFHelper.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  OUTLINED_FUNCTION_169();
  sub_1DCB0E9D8(v2, v3, v4);
  OUTLINED_FUNCTION_169();
  sub_1DCB0E9D8(v5, v6, v7);
  return v0;
}

uint64_t ConversationSELFHelper.__deallocating_deinit()
{
  ConversationSELFHelper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

SiriKitFlow::FlowPluginLoadResult __swiftcall FlowPluginLoadResult.init(success:wasInCache:)(Swift::Bool success, Swift::Bool wasInCache)
{
  *v2 = success;
  v2[1] = wasInCache;
  result.success = success;
  return result;
}

SiriKitFlow::CAMDisambiguationDialogType_optional __swiftcall CAMDisambiguationDialogType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DCCD6E74@<X0>(uint64_t *a1@<X8>)
{
  result = CAMDisambiguationDialogType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCCD6E9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:

    case 1:

    case 0:
  }

  return result;
}

unint64_t sub_1DCCD6F1C()
{
  result = qword_1ECCA41F8;
  if (!qword_1ECCA41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA41F8);
  }

  return result;
}

uint64_t type metadata accessor for ConversationSELFHelper()
{
  result = qword_1EDE4DFA8;
  if (!qword_1EDE4DFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCCD6FC4()
{
  sub_1DCC42330();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for FlowPluginLoadResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPluginLoadResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *storeEnumTagSinglePayload for CAMDisambiguationDialogType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DCCD7514(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_1DCB10E5C(0, a3, a4);
  v7 = sub_1DD0DE2DC();

  [a2 *a5];
}

void sub_1DCCD7598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDialogType_];
}

uint64_t sub_1DCCD75FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4210, &qword_1DD0EB1E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCD767C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4230, &unk_1DD0EB268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4050;
  *(inited + 32) = 0x6D614E726F727265;
  *(inited + 40) = 0xE900000000000065;
  v1 = sub_1DD0DDF8C();

  *(inited + 48) = v1;
  *(inited + 56) = 0x656D614E656C6966;
  *(inited + 64) = 0xE800000000000000;
  sub_1DD0DEC3C();
  v2 = sub_1DD0DDF8C();

  *(inited + 72) = v2;
  *(inited + 80) = 0x6E6F6974636E7566;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_1DD0DDF8C();
  *(inited + 104) = 1701734764;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = sub_1DD0DE9FC();
  *(inited + 128) = 0x6E6F73616572;
  *(inited + 136) = 0xE600000000000000;
  sub_1DCCD79B0();
  v3 = sub_1DD0DDF8C();

  *(inited + 144) = v3;
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x80000001DD117D10;
  v4 = sub_1DD0DDF8C();

  *(inited + 168) = v4;
  sub_1DCB525A0();
  return sub_1DD0DDE9C();
}

uint64_t sub_1DCCD78F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  return sub_1DCCD767C();
}

uint64_t sub_1DCCD7934(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:

    case 1:

    case 0:

      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCCD79B0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v4 = 0;
    }

    else
    {
      v8 = *(v0 + 8);

      v4 = v2;
    }
  }

  else
  {
    v5 = sub_1DCB28B74();
    if ((v5 & 0x100000000) != 0)
    {
      v4 = SiriKitEventPayload.description.getter();
    }

    else
    {
      if (v5 > 0xD0)
      {
        v6 = @"FLOWSTATETYPE_UNKNOWN";
        v7 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v6 = off_1E864A840[v5];
        v7 = off_1E864AEC8[v5];
      }

      v9 = v6;
      v10 = v7;
      v4 = sub_1DD0DDFBC();
    }
  }

  MEMORY[0x1E12A6780](8250, 0xE200000000000000);
  v11 = sub_1DCCD7D60();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v11 = 0x3E4C494E3CLL;
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v11, v13);

  return v4;
}

uint64_t CoreAnalyticsService.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CoreAnalyticsService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for SiriKitReliabilityEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCCD7934(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for SiriKitReliabilityEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCCD7934(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1DCCD6E9C(v7, v8, v9, v10);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for SiriKitReliabilityEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1DCCD6E9C(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitReliabilityEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for SiriKitReliabilityEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCCD7D60()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v2 = v0[1];
      v3 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v3 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v3)
      {
      }

      else
      {
        return 4271950;
      }
    }

    else
    {
      sub_1DCCD82B8(v0[2]);
      return v6;
    }
  }

  else
  {
    v4 = sub_1DCCD7E0C();
    if (v5)
    {
      return v4;
    }

    else
    {
      return 1701736302;
    }
  }

  return v1;
}

uint64_t sub_1DCCD7E0C()
{
  v1 = v0;
  v2 = type metadata accessor for SiriKitEventPayload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB22FCC(v1, v6);
  v7 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = *v6;
      v27 = *(v6 + 2);
      goto LABEL_24;
    case 2u:
      v28 = *v6;
      v68 = *(v6 + 8);
      v29 = *(v6 + 3);
      v30 = *(v6 + 5);

      goto LABEL_12;
    case 3u:
      v68 = *(v6 + 8);
      v14 = *(v6 + 3);
      v15 = *(v6 + 5);
LABEL_12:

      goto LABEL_23;
    case 4u:
      v68 = *(v6 + 2);
      v40 = *(v6 + 6);
      v41 = *(v6 + 8);

      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      goto LABEL_23;
    case 5u:
      v68 = *(v6 + 8);
      v49 = *(v6 + 3);
      v50 = *(v6 + 5);

      sub_1DCB16D50((v6 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_23:
      v26 = v68;
LABEL_24:
      v7 = *(&v26 + 1);
      if (v26)
      {
        v51 = sub_1DCB8DC6C(v26);
        if (v52)
        {
          v53 = v51;

          return v53;
        }
      }

      return v7;
    case 6u:
      v16 = *(v6 + 1);
      v17 = *(v6 + 2);
      v18 = *(v6 + 3);
      v31 = *(v6 + 5);
      v32 = *(v6 + 7);
      v33 = *(v6 + 9);
      v34 = *(v6 + 11);

      goto LABEL_14;
    case 7u:
      v58 = *(v6 + 1);
      v59 = *(v6 + 2);
      v60 = *(v6 + 3);
      v61 = *(v6 + 6);
      v62 = *(v6 + 8);
      v63 = *(v6 + 10);
      v64 = *(v6 + 16);

      sub_1DCCD86D4(v60);
      v65 = sub_1DCFA4974(v58);
      if (v66)
      {
        v7 = v65;

LABEL_31:
      }

      else if (v59)
      {
        v7 = sub_1DD0DD1BC();
      }

      else
      {

        return 0;
      }

      return v7;
    case 8u:
      v68 = *(v6 + 8);
      v24 = *(v6 + 4);

      v11 = (v6 + 56);
      v25 = *(v6 + 52);
      sub_1DCCD86D4(*(v6 + 12));
      v13 = 120;
      goto LABEL_28;
    case 9u:
      v68 = *(v6 + 8);
      v11 = (v6 + 40);
      v13 = 88;
      goto LABEL_28;
    case 0xAu:
      v68 = *(v6 + 8);
      v11 = (v6 + 40);
      v12 = *(v6 + 44);
      sub_1DCCD86D4(*(v6 + 10));
      v13 = 104;
LABEL_28:
      v54 = *&v6[v13];

      sub_1DCB16D50(v11, &unk_1ECCA3280, &unk_1DD0E23D0);
      v55 = sub_1DCB8DC6C(*(&v68 + 1));
      if (!v56)
      {
        v55 = sub_1DD0DD1BC();
      }

      v7 = v55;
      goto LABEL_31;
    case 0xBu:
      v16 = *(v6 + 1);
      v17 = *(v6 + 2);
      v18 = *(v6 + 3);
      v19 = *(v6 + 5);

      v20 = *(v6 + 10);

      v21 = *(v6 + 18);

      v22 = *(v6 + 20);

      v23 = *(v6 + 22);

      sub_1DCB16D50((v6 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
      sub_1DCB16D50((v6 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_14:
      v7 = sub_1DCCD85A8(v16, v17);
      v36 = v35;

      if (v36)
      {
        goto LABEL_31;
      }

      if (!v18)
      {
        return 0;
      }

      v7 = sub_1DD0DD1BC();
      goto LABEL_31;
    case 0xCu:
      v7 = *(v6 + 1);
      v42 = *(v6 + 2);
      v43 = *(v6 + 3);
      v44 = *(v6 + 5);
      v45 = *(v6 + 6);
      v46 = *(v6 + 8);
      v47 = *(v6 + 10);
      v48 = *(v6 + 12);

      if (v43)
      {
        sub_1DD0DCF8C();
      }

      return v7;
    case 0xDu:
      v7 = *v6;
      v9 = *(v6 + 1);
      v10 = *(v6 + 3);

      return v7;
    case 0xEu:
    case 0xFu:
    case 0x13u:
      sub_1DCB22AA4(v6);
      return 0;
    case 0x10u:
    case 0x12u:
      v7 = *v6;
      v8 = *(v6 + 1);

      return v7;
    case 0x11u:
      v7 = *v6;
      v67 = *(v6 + 1);
      return v7;
    case 0x14u:
      return v7;
    default:
      v7 = *(v6 + 1);
      v37 = *(v6 + 2);
      v38 = *(v6 + 9);

      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60);
      sub_1DCB16D50(&v6[*(v39 + 112)], &qword_1ECCA2278, &qword_1DD0E4830);
      sub_1DCB16D50((v6 + 32), &unk_1ECCA3280, &unk_1DD0E23D0);
      return v7;
  }
}

void sub_1DCCD82B8(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

    v36 = *(v5 - 1);
    v38 = *v5;
    sub_1DCB1C4D8();

    v7 = sub_1DD0DEA5C();
    if (v7[2] > 1uLL)
    {
      v35 = v3;
      v9 = v7[8];
      v8 = v7[9];
      v11 = v7[10];
      v10 = v7[11];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = v4[2];
        sub_1DCE195B4();
        v4 = v15;
      }

      v12 = v4[2];
      if (v12 >= v4[3] >> 1)
      {
        sub_1DCE195B4();
        v4 = v16;
      }

      v4[2] = v12 + 1;
      v13 = &v4[4 * v12];
      v13[4] = v9;
      v13[5] = v8;
      v13[6] = v11;
      v13[7] = v10;
      v1 = v6;
      v3 = v35;
      goto LABEL_2;
    }

    ++v1;
    v5 += 2;
  }

  v17 = v4[2];
  if (v17)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v18 = 0;
    v19 = v37;
    v20 = v4 + 7;
    while (v18 < v4[2])
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;

      v25 = MEMORY[0x1E12A66E0](v21, v22, v23, v24);
      v27 = v26;

      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1DCB38954();
      }

      ++v18;
      *(v37 + 16) = v28 + 1;
      v29 = v37 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v27;
      v20 += 4;
      if (v17 == v18)
      {

        goto LABEL_21;
      }
    }

    goto LABEL_33;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v30 = *(v19 + 16);
  v31 = (v19 + 40);
  if (v30)
  {
    while (1)
    {
      if (*(v31 - 1) != 0x4674694B69726953 || *v31 != 0xEB00000000776F6CLL)
      {
        v33 = *(v31 - 1);
        v34 = *v31;
        if ((sub_1DD0DF0AC() & 1) == 0)
        {
          break;
        }
      }

      v31 += 2;
      if (!--v30)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
}

uint64_t sub_1DCCD85A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E6572727543 && a2 == 0xEB000000006B7361)
  {
    return 0;
  }

  v4 = a1;
  if (sub_1DD0DF0AC())
  {
    return 0;
  }

  v5 = v4 == 0x6573726170204C4ELL && a2 == 0xE800000000000000;
  if (v5 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 0;
  }

  v6 = v4 == 0x206E776F6E6B6E55 && a2 == 0xED00006573726170;
  if (v6 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 0;
  }

  v7 = v4 == 0x6465737261706E55 && a2 == 0xEE00746E65746E49;
  if (v7 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 0;
  }

  return v4;
}

void sub_1DCCD86D4(id a1)
{
  if (a1 != 3)
  {
    sub_1DCCD86E4(a1);
  }
}

void sub_1DCCD86E4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1DCCD86F4(uint64_t *a1)
{
  v2 = sub_1DD0DD89C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3, v7);
  v66 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v10);
  v64 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v65 = &v62 - v15;
  v16 = sub_1DD0DD85C();
  v17 = OUTLINED_FUNCTION_9(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v17, v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v62 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v62 - v32;
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v62 - v35;
  v38 = *a1;
  v37 = a1[1];
  v39 = a1[2];
  LODWORD(v73) = *(a1 + 24);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v70 = v38;
  v71 = v37;
  v72 = v39;
  v40 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v40, qword_1EDE57E00);
  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v42))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v43, v42, "Log CoreDuet processIntent result");
    OUTLINED_FUNCTION_80();
  }

  v67 = v29;

  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v44 = sub_1DD0DD88C();
  __swift_project_value_buffer(v44, qword_1EDE57DD0);
  sub_1DD0DD84C();
  v45 = sub_1DD0DD87C();
  v46 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v47 = OUTLINED_FUNCTION_50_0();
    v63 = v33;
    v48 = v19;
    v49 = v25;
    v50 = v16;
    v51 = v47;
    *v47 = 0;
    v52 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v45, v46, v52, "logCoreDuet", "", v51, 2u);
    v16 = v50;
    v25 = v49;
    v19 = v48;
    v33 = v63;
    OUTLINED_FUNCTION_80();
  }

  (*(v19 + 16))(v33, v36, v16);
  v53 = sub_1DD0DD8CC();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  sub_1DD0DD8BC();
  v56 = *(v19 + 8);
  v56(v36, v16);
  if ((v73 & 1) == 0)
  {
    v66 = v56;
    v73 = v16;
    sub_1DD0DCF8C();
  }

  v57 = sub_1DD0DD8EC();
  v58 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v58))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v59, v58, "CoreDuetHelper.donateHandleResult, ProcessIntent not successful. CoreDuet skipping.");
    OUTLINED_FUNCTION_80();
  }

  v60 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    sub_1DD0DCF8C();
  }

  v56(v25, v16);
  return 0;
}

id sub_1DCCD8EF4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_1DCCD8F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD8F70, 0, 0);
}

uint64_t sub_1DCCD8F70()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  v0[24] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "<background task> CoreDuetHelper.donateHandleResult, intentHandlingStatus success. CoreDuet logging.", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = v0[23];

  v0[2] = v0;
  v0[3] = sub_1DCCD9118;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCC40AF8;
  v0[13] = &block_descriptor_3;
  v0[14] = v6;
  [v5 donateInteractionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCCD9118()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1DCCD92E8;
  }

  else
  {
    v3 = sub_1DCCD9228;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DCCD9228()
{
  v1 = v0[24];
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "<background task> Log CoreDuet logging success", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = v0[22];
  sub_1DCCD9464();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DCCD92E8()
{
  v20 = v0;
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();
  v3 = v2;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "<background task> Log CoreDuet logging error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v15 = v0[25];
  }

  v16 = v0[22];
  sub_1DCCD9464();
  v17 = v0[1];

  return v17();
}

uint64_t sub_1DCCD9464()
{
  v0 = sub_1DD0DD89C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v3 = sub_1DD0DD85C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v9 = sub_1DD0DD88C();
  __swift_project_value_buffer(v9, qword_1EDE57DD0);
  v10 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    sub_1DD0DCF8C();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1DCCD96F0()
{
  result = qword_1EDE46218;
  if (!qword_1EDE46218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46218);
  }

  return result;
}

uint64_t sub_1DCCD9734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DCB193FC;

  return sub_1DCCD8F50(a1, v4, v5, v7, v6);
}

uint64_t sub_1DCCD97F4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCCD9810);
}

uint64_t sub_1DCCD9810()
{
  v1 = sub_1DD0DDE9C();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DCCD98DC;
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);

  return sub_1DCC710FC(v4, v1);
}

uint64_t sub_1DCCD98DC(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

void sub_1DCCD9A14()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

_BYTE *storeEnumTagSinglePayload for CorrectionsPatterns(_BYTE *result, int a2, int a3)
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

void SiriEnvironment.currentTCU.getter()
{
  type metadata accessor for CurrentTCUProvider();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v0, v1);

  sub_1DD0DCA7C();
}

void sub_1DCCD9C60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void SiriEnvironment.currentTCU.setter()
{
  type metadata accessor for CurrentTCUProvider();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v0, v1);

  sub_1DD0DCA8C();
}

void SiriEnvironment.currentTCU.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for CurrentTCUProvider();
  OUTLINED_FUNCTION_0_35();
  a1[3] = sub_1DCCDAFDC(v3, v4);
  sub_1DD0DCA7C();
}

void sub_1DCCD9D90()
{
  OUTLINED_FUNCTION_156();
  v1 = *(v0 + 16);
  sub_1DD0DCF8C();
}

void CurrentTCUProvider.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  CurrentTCUProvider.init(storage:)();
}

void CurrentTCUProvider.init(storage:)()
{
  *(v0 + 16) = 0;
  type metadata accessor for DefaultFlowOperationQueue();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_35();
  sub_1DCCDAFDC(&qword_1ECCA4240, type metadata accessor for DefaultFlowOperationQueue);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void sub_1DCCD9F48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v0, v1);
  sub_1DD0DCF8C();
}

void CurrentTCUProvider.__allocating_init(operationQueue:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  CurrentTCUProvider.init(operationQueue:)();
}

void CurrentTCUProvider.init(operationQueue:)()
{
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_5_35();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DCCDADF4();
}

void sub_1DCCDA0FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain();
  sub_1DCCD9F48();
}

void sub_1DCCDA138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v0, v1);
  sub_1DD0DCEDC();
}

void sub_1DCCDA1F0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4270, qword_1DD0EB4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  v10 = *a2;
  sub_1DCCDA314(v8);
}

void sub_1DCCDA2C4()
{
  OUTLINED_FUNCTION_156();
  v1 = *(v0 + 24);
  sub_1DD0DCF8C();
}

void sub_1DCCDA314(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4270, qword_1DD0EB4D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  OUTLINED_FUNCTION_156();
  v9 = *(v1 + 24);
  (*(v4 + 16))(v8, a1, v3);
  sub_1DD0DCF8C();
}

uint64_t CurrentTCUProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t CurrentTCUProvider.__deallocating_deinit()
{
  CurrentTCUProvider.deinit();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCCDA4FC()
{
  type metadata accessor for CurrentTCUProvider();

    ;
  }
}

void sub_1DCCDA548()
{
  type metadata accessor for CurrentTCUProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCCDA598@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CurrentTCUProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void sub_1DCCDA5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);
  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DCAFC000, v10, v11, "DefaultFlowOperationQueue used for submitting Unsafe Flow Operations. Immediately executing, since we should already be running after endpoint.", v12, 2u);
    MEMORY[0x1E12A8390](v12, -1, -1);
  }

  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCDA7D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DCB3FF64;

  return v8();
}

uint64_t sub_1DCCDA8DC()
{
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_156();
  v2 = *(*(v0 + 64) + 112);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_5_35();
    *(v0 + 72) = *(v2 + 32);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCDAA34()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1DCCDACB0;
  }

  else
  {
    v6 = sub_1DCCDAB60;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DCCDAB60()
{
  v1 = *(v0 + 72);

  v2 = *(*(v0 + 64) + 112);
  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_5_35();
    *(v0 + 72) = *(v2 + 32);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCDACB0()
{
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1DCCDAD10()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DCCDAD68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCDB148;

  return sub_1DCCDA8BC();
}

void sub_1DCCDADF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t sub_1DCCDAF84(uint64_t a1)
{
  result = sub_1DCCDAFDC(&qword_1ECCA4260, type metadata accessor for DefaultFlowOperationQueue);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCDAFDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCCDB020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4268, &qword_1DD0EB4B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCDB088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DCB3FF64;

  return sub_1DCCDA7D4(a1, v4, v5, v7);
}

uint64_t DecoratingFlow.action.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 16))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t ActingFlow.unwrap.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = *(v7 + 16);
  v10(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4278, &qword_1DD0EB508);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8(&v17, v20);
    v11 = v21;
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v12 + 16))(&v17, v11, v12);
    v13 = *(&v18 + 1);
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    ActingFlow.unwrap.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1DCCDB398(&v17);
    a3[3] = a1;
    a3[4] = a2;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    return (v10)(boxed_opaque_existential_1Tm, v3, a1);
  }
}

uint64_t sub_1DCCDB398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4280, &qword_1DD0EB510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCDB414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DecoratingFlow.action.getter(a1, WitnessTable);
}

uint64_t sub_1DCCDB478()
{
  OUTLINED_FUNCTION_42();
  v0[17] = v1;
  v2 = sub_1DD0DB04C();
  v0[18] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[19] = v3;
  v5 = *(v4 + 64);
  v0[20] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for OutputGenerationManifest();
  v0[21] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v0[22] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCCDB544()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DCCDCF64();
}

uint64_t sub_1DCCDB668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  *v4 = *v1;
  *(v3 + 192) = v7;
  *(v3 + 200) = v0;

  sub_1DCB0E9D8(v3 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCCDB944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCDBA40()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCDBABC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[20];

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCCDBB24()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 176);

  sub_1DCB6970C(v1);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCCDBBA0()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v2 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_38();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v0[4] = OUTLINED_FUNCTION_38();
  v8 = sub_1DD0DB6EC();
  v0[5] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[6] = v9;
  v11 = *(v10 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v12);
  v14 = *(v13 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DCCDBCD4()
{
  v1 = v0[9];
  v2 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = static SystemDialogActHelper.systemAskedUserToRepeat()();
  v5 = v0[4];
  v4 = v0[5];
  if (!v3)
  {
    __swift_storeEnumTagSinglePayload(v0[4], 1, 1, v0[5]);
    goto LABEL_6;
  }

  swift_getObjectType();
  SIRINLUSystemDialogAct.toNluSystemDialogAct()(v5);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
LABEL_6:
    sub_1DCB0E9D8(v0[4], &qword_1ECCAC000, &unk_1DD0E0F60);
    goto LABEL_7;
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = *(v0[6] + 32);
  v8(v0[7], v0[4], v0[5]);
  NLContextUpdate.init()(v7);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v2);
  sub_1DCCDD420(v7, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v2))
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
  }

  else
  {
    v11 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v15 = *(v13 + 72);
    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DD0E07C0;
    v8(v17 + v16, v12, v14);
    v18 = *(v11 + 216);
    *(v11 + 216) = v17;
  }

LABEL_7:
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1DCCDBEEC;

  return sub_1DCC6338C();
}

uint64_t sub_1DCCDBEEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCCDBFEC()
{
  OUTLINED_FUNCTION_39();
  v4 = v0;
  if (qword_1EDE4A0D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3[0] = qword_1EDE4A0E0;
  v3[1] = unk_1EDE4A0E8;

  sub_1DCE1D0EC(v3, v2);
}

uint64_t sub_1DCCDC108()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCDC204()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  sub_1DCB6970C(v5);
  sub_1DCB0E9D8(v2, &unk_1ECCA3270, &qword_1DD0E0F70);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCCDC2C8()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  sub_1DCB0E9D8(v0[9], &unk_1ECCA3270, &qword_1DD0E0F70);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCCDC37C()
{
  v1 = *(v0 + 24);

  sub_1DCB6970C(v1);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1DCB0E9D8(*(v0 + 72), &unk_1ECCA3270, &qword_1DD0E0F70);

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCCDC444()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v2 = sub_1DD0DB04C();
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for OutputGenerationManifest();
  v0[6] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1DCCDC540;

  return sub_1DCD01534();
}

uint64_t sub_1DCCDC540()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  *v4 = *v1;
  v3[9] = v8;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[5];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCCDC83C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCDC938()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_1DCB6970C(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCDC9B4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);

  sub_1DCB6970C(v1);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  OUTLINED_FUNCTION_29();

  return v5();
}

void *sub_1DCCDCA30()
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  qword_1EDE57D38 = result;
  return result;
}

uint64_t sub_1DCCDCA70()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v2 = sub_1DD0DB04C();
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for OutputGenerationManifest();
  v0[6] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1DCCDCB6C;

  return sub_1DCF65754();
}

uint64_t sub_1DCCDCB6C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  *v4 = *v1;
  v3[9] = v8;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[5];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCCDCE68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCDD3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCDD420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of DetailedDisambiguationFlowProvider.makeAllItemsFlow()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DCCDD5EC;

  return v9(a1, a2);
}

uint64_t sub_1DCCDD5EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DetailedDisambiguationFlowProvider.makeWindowingConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DCB193FC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of DetailedResultFlowProvider.makeSingleWindowFlow()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DCCDD5EC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DetailedResultFlowProvider.makeWindowingFlowProvider()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DCB193FC;

  return v11(a1, a2, a3);
}

void sub_1DCCDDA94()
{
  type metadata accessor for DeviceEnvironmentHelper();
  swift_allocObject();
  sub_1DCCDDB0C();
}

id sub_1DCCDDAD0()
{
  result = [objc_opt_self() sharedPreferences];
  qword_1EDE4DCE0 = result;
  return result;
}

void sub_1DCCDDB0C()
{
  v3 = *v0;
  v4 = sub_1DD0DE80C();
  v1 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v2);
  sub_1DD0DCEFC();
}

void sub_1DCCDE058()
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  static DeviceEnvironmentHelper.update(deviceState:peerInfo:)();
}

uint64_t sub_1DCCDE0D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  sub_1DCCDE19C();
  result = sub_1DD0DDE9C();
  qword_1EDE4DCF8 = result;
  return result;
}

uint64_t DeviceEnvironmentHelper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DeviceEnvironmentHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1DCCDE19C()
{
  result = qword_1EDE4D720;
  if (!qword_1EDE4D720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA2758, &unk_1DD0E6880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D720);
  }

  return result;
}

void sub_1DCCDEBE8()
{
  type metadata accessor for RefreshableDeviceState();
  swift_allocObject();
  sub_1DCCDFA98();
}

void static Device.internalDeviceState.getter()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DD0DCF8C();
}

void static Device.setCurrentDeviceStateForTesting(_:)()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  RefreshableDeviceState.setUnderlyingDeviceState(_:)();
}

uint64_t sub_1DCCDEE10@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 104);

  return v8(a3, v4, v6);
}

void DeviceState.restrictedCommands.getter()
{
    ;
  }
}

uint64_t sub_1DCCDF470(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8))() & 1) != 0 && MGGetSInt32Answer() != 7)
  {
    return (*(a2 + 264))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCCDF4F4()
{
  v0 = sub_1DD0DE75C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1DD0DE74C();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  v15 = sub_1DD0DDDFC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  OUTLINED_FUNCTION_16();
  sub_1DCCDFED4();
  sub_1DD0DDDCC();
  sub_1DCCDFF18(&qword_1EDE461B8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42B0, &qword_1DD0EB730);
  sub_1DCCDFF60();
  sub_1DD0DEABC();
  (*(v3 + 104))(v9, *MEMORY[0x1E69E8090], v0);
  result = sub_1DD0DE79C();
  qword_1EDE49028 = result;
  return result;
}

uint64_t sub_1DCCDF704()
{
  qword_1EDE48288 = 0;
  qword_1EDE48290 = 0;
}

void sub_1DCCDF718(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1DD0DCF8C();
}

uint64_t RefreshableDeviceState.sessionHandOffContinuityID.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 160);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t RefreshableDeviceState.personalDomainsAuthenticationMode.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 184);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t RefreshableDeviceState.bargeInContext.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 192);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t RefreshableDeviceState.peerDeviceName.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 200);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t RefreshableDeviceState.restrictions.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 208);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t RefreshableDeviceState.authenticationState.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 232);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t RefreshableDeviceState.isDeviceShowingLockScreen.getter()
{
  sub_1DCB4E718(v5);
  v0 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v1 = *(v0 + 256);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t RefreshableDeviceState.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RefreshableDeviceState.__deallocating_deinit()
{
  RefreshableDeviceState.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCCDFA98()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42B8, &qword_1DD0EB738);
  v1 = swift_allocObject();
  *(v1 + 56) = 0;
  sub_1DCB099BC(v2, v1 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB0E9D8(v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 16) = v1;
  if (qword_1EDE4DD00 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = qword_1EDE4DD08;
  sub_1DD0DCF8C();
}

_BYTE *storeEnumTagSinglePayload for Device(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCCDFED4()
{
  result = qword_1EDE461B0;
  if (!qword_1EDE461B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE461B0);
  }

  return result;
}

uint64_t sub_1DCCDFF18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DCCDFF60()
{
  result = qword_1EDE46270;
  if (!qword_1EDE46270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA42B0, &qword_1DD0EB730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46270);
  }

  return result;
}

uint64_t assignWithCopy for DialogEngineOutput(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_1DCB42788(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v23;
  sub_1DCB42C24(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t assignWithTake for DialogEngineOutput(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  sub_1DCB42C24(v5, v7, v6, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogEngineOutput(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 73))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for DialogEngineOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCCE01AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

void sub_1DCCE01D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23)
{
  OUTLINED_FUNCTION_50();
  v42 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v41 = v27;
  v36[8] = v28;
  v40 = a23;
  v29 = sub_1DD0DB04C();
  v30 = OUTLINED_FUNCTION_9(v29);
  v36[6] = v31;
  v36[7] = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30, v34);
  v36[5] = v36 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

void sub_1DCCE2204(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x1E69E7CC0];
  v5 = sub_1DCB08B14(a3);
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12A72C0](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7;
    a1(&v10, &v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      MEMORY[0x1E12A6920]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
    }
  }
}

uint64_t sub_1DCCE2358(char a1, char a2, char a3, char a4, char a5, uint64_t a6, char *a7)
{
  v14 = *a7;
  v15 = [v7 dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  v16 = sub_1DD0DE2EC();

  v20[16] = a1;
  v20[17] = a2;
  v20[18] = a3;
  v20[19] = a4;
  v20[20] = a5;
  v21 = a6;
  v22 = v14;
  v23 = v7;
  sub_1DCCE2204(sub_1DCCE2518, v20, v16);
  v18 = v17;

  return v18;
}

void sub_1DCCE2454(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  HIBYTE(v24[0]) = a8 & 1;
  v16 = sub_1DCCE255C();
  v18 = v17;
  LOBYTE(v19) = AFDeviceSupportsSystemAssistantExperience();
  sub_1DCCE01D8(a2, a3, a4, 0, a5, a6, a7, v24 + 7, v16, v18, v19, v20, a9, v22, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v25);
}

uint64_t sub_1DCCE255C()
{
  v1 = [v0 meta];
  v2 = sub_1DD0DDE6C();

  v3 = sub_1DCB6B180(0x79726F6765746163, 0xE800000000000000, v2);

  return v3;
}

void sub_1DCCE29B4()
{
  v1 = [v0 fullPrint];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_3_44();
  if (!v2)
  {
    v3 = [v0 supportingPrint];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_45_8();

    OUTLINED_FUNCTION_3_44();
    if (v4)
    {
      v5 = [v0 supportingPrint];
      if (!v5)
      {
        sub_1DD0DDFBC();
        v5 = sub_1DD0DDF8C();
      }

      [v0 setFullPrint_];

      v6 = [v0 redactedSupportingPrint];
      if (!v6)
      {
        sub_1DD0DDFBC();
        v6 = sub_1DD0DDF8C();
      }

      [v0 setRedactedFullPrint_];
    }
  }

  v7 = [v0 supportingPrint];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_45_8();

  OUTLINED_FUNCTION_3_44();
  if (!v8)
  {
    v9 = [v0 fullPrint];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_45_8();

    OUTLINED_FUNCTION_3_44();
    if (v10)
    {
      v11 = [v0 fullPrint];
      if (!v11)
      {
        sub_1DD0DDFBC();
        v11 = sub_1DD0DDF8C();
      }

      [v0 setSupportingPrint_];

      v12 = [v0 redactedFullPrint];
      if (!v12)
      {
        sub_1DD0DDFBC();
        v13 = sub_1DD0DDF8C();

        v12 = v13;
      }

      v14 = v12;
      [v0 setRedactedSupportingPrint_];
    }
  }
}

void sub_1DCCE3044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  sub_1DD0DCC3C();
}

id sub_1DCCE3230()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriResponseShouldAlwaysPrint];

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = v1;
    OUTLINED_FUNCTION_24_2();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    OUTLINED_FUNCTION_80();
  }

  return v1;
}

void sub_1DCCE3810()
{
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_24_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_80();
  }

  v10 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v10, sel_setFullPrint_);

  v11 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v11, sel_setFullSpeak_);

  v12 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v12, sel_setRedactedFullPrint_);

  v13 = OUTLINED_FUNCTION_26_10();
  [v1 setRedactedFullSpeak_];
}

void sub_1DCCE3938(char a1)
{
  [v1 setSpokenOnly_];
  [v1 setSpokenOnlyDefined_];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  oslog = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = [v3 spokenOnly];
    *(v5 + 8) = 1024;
    *(v5 + 10) = [v3 spokenOnlyDefined];

    _os_log_impl(&dword_1DCAFC000, oslog, v4, "#modes Set spokenOnly = %{BOOL}d and spokenOnlyDefined = %{BOOL}d", v5, 0xEu);
    OUTLINED_FUNCTION_62();
    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

void sub_1DCCE3A8C()
{
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_24_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_80();
  }

  v10 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v10, sel_setSupportingPrint_);

  v11 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v11, sel_setSupportingSpeak_);

  v12 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25(v12, sel_setRedactedSupportingPrint_);

  v13 = OUTLINED_FUNCTION_26_10();
  [v1 setRedactedSupportingSpeak_];
}

uint64_t sub_1DCCE3BB4()
{
  v1 = AFDeviceSupportsSystemAssistantExperience();
  if (v1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v2 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v5);
      v6 = "#modes shouldUseAlwaysDisplay: SAE is true -> return false";
LABEL_10:
      _os_log_impl(&dword_1DCAFC000, v3, v4, v6, v0, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v4))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v8);
      v6 = "#modes shouldUseAlwaysDisplay: return true";
      goto LABEL_10;
    }
  }

  return v1 ^ 1u;
}

id sub_1DCCE3CC4()
{
  result = [v0 spokenOnlyDefined];
  if (result)
  {
    return [v0 spokenOnly];
  }

  return result;
}

uint64_t sub_1DCCE3E4C(const char *a1)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, a1, v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  return 1;
}

uint64_t sub_1DCCE3EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42C0, &qword_1DD0EB7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCE3F80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCCE4064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(type metadata accessor for AceOutput() - 8) + 64) + 15;
  v8[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCCE40FC, 0, 0);
}

void sub_1DCCE40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v24 = v20[6];
  v23 = v20[7];
  v26 = v20[3];
  v25 = v20[4];
  v27 = v20[2];
  v28 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v28, qword_1EDE57DA0);
  sub_1DCB6FF74(v25, v23);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCE440C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

void *sub_1DCCE4508()
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CF4C0]) init];
  if (!v2)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57DA0);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v17))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_26(&dword_1DCAFC000, v18, v19, "Failed to create an instance of RFSchemaRFGradingDialogLineTier1");
      OUTLINED_FUNCTION_80();
    }

    v3 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [v0 id];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  v5 = OUTLINED_FUNCTION_16_18();
  sub_1DCB6F6EC(v5, v6, v3);
  [v3 setIsApprovedForGrading_];
  if (OUTLINED_FUNCTION_44_10())
  {
    v7 = [v0 fullSpeak];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_19_1();

    OUTLINED_FUNCTION_4_39();
    if (v8 || (v9 = [v0 fullPrint], sub_1DD0DDFBC(), OUTLINED_FUNCTION_19_1(), , OUTLINED_FUNCTION_4_39(), v10))
    {
      if (([v0 printOnly] & 1) == 0)
      {
        v11 = [v0 redactedFullSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v12 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v12, v13);
        OUTLINED_FUNCTION_18_18();

        if (v1)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v14 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v11 = 0;
        }

        OUTLINED_FUNCTION_46_10(v14, sel_setSpokenDialog_);
      }

      if (([v0 spokenOnly] & 1) == 0)
      {
        v20 = [v0 redactedFullPrint];
LABEL_17:
        v21 = v20;
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_18_18();

        v22 = OUTLINED_FUNCTION_131();
        v16 = sub_1DCB6F750(v22, v23);
        v25 = v24;

        if (v25)
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v16 = 0;
        }

        OUTLINED_FUNCTION_25(v26, sel_setDisplayedDialog_);
LABEL_21:
      }
    }

    else
    {
      if (([v0 printOnly] & 1) == 0)
      {
        v28 = [v0 redactedSupportingSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v29 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v29, v30);
        OUTLINED_FUNCTION_18_18();

        if (v1)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v31 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v28 = 0;
        }

        OUTLINED_FUNCTION_46_10(v31, sel_setSpokenDialog_);
      }

      if (([v0 spokenOnly] & 1) == 0)
      {
        v20 = [v0 redactedSupportingPrint];
        goto LABEL_17;
      }
    }
  }

  return v3;
}

void *sub_1DCCE4830()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = v0[80];
  v6 = *(v0 + 20);
  v28 = *(v0 + 21);
  v29 = *(v0 + 22);
  v7 = *(v0 + 24);
  v24 = *(v0 + 23);
  v25 = *(v0 + 25);
  v26 = *(v0 + 19);
  v27 = *(v0 + 26);
  v8 = v0[216];
  v9 = [objc_allocWithZone(MEMORY[0x1E69CF4C0]) init];
  if (!v9)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57DA0);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v16))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_26(&dword_1DCAFC000, v17, v18, "Failed to create an instance of RFSchemaRFGradingDialogLineTier1");
      OUTLINED_FUNCTION_80();
    }

    v10 = 0;
    goto LABEL_33;
  }

  v10 = v9;
  sub_1DCCE4B34(v2, v1, v9);
  v11 = [v10 setIsApprovedForGrading_];
  if (v8)
  {
    v12 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v12 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      if ((v5 & 1) == 0)
      {
        if (v6 && (v11 = sub_1DCB6F750(v26, v6), v13))
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v0 = 0;
        }

        OUTLINED_FUNCTION_25(v11, sel_setDisplayedDialog_);
      }

      v15 = 0;
      if (!v6)
      {
        goto LABEL_32;
      }

      v20 = v29;
      if (!v29)
      {
        goto LABEL_32;
      }

      v21 = v28;
    }

    else
    {
      if ((v5 & 1) == 0)
      {
        if (v7 && (v11 = sub_1DCB6F750(v24, v7), v19))
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v0 = 0;
        }

        OUTLINED_FUNCTION_25(v11, sel_setDisplayedDialog_);
      }

      v15 = 0;
      if (!v7)
      {
        goto LABEL_32;
      }

      v20 = v27;
      if (!v27)
      {
        goto LABEL_32;
      }

      v21 = v25;
    }

    v11 = sub_1DCB6F750(v21, v20);
    if (v22)
    {
      sub_1DD0DDF8C();
      OUTLINED_FUNCTION_48_1();
    }

    else
    {
      v15 = 0;
    }

LABEL_32:
    OUTLINED_FUNCTION_25(v11, sel_setSpokenDialog_);
LABEL_33:
  }

  return v10;
}

void sub_1DCCE4B34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDialogId_];
}

uint64_t sub_1DCCE4B8C()
{
  OUTLINED_FUNCTION_230();
  v2 = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_99(v2);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_117();

  return sub_1DCCE4064(v13, v14, v15, v16, v17, v18, v19, v20);
}

void static DialogHelper.globals.getter()
{
  v0 = sub_1DD0DB0FC();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDE46630;
  sub_1DCB4E718(v10);
  v9 = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  RefreshableDeviceState.siriLocale.getter(v9);
  sub_1DCCE56A8(v8, v7);
}

void static DialogHelper.makeGlobals(deviceState:locale:options:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1DCCE5F64(v4, a2);
}

SiriKitFlow::DialogGlobalsOptions sub_1DCCE4EA8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DialogGlobalsOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCCE4EE8@<X0>(uint64_t *a1@<X8>)
{
  result = DialogGlobalsOptions.rawValue.getter();
  *a1 = result;
  return result;
}

void static DialogHelper.makeGlobals(deviceState:)(void *a1)
{
  v2 = sub_1DD0DB0FC();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = OUTLINED_FUNCTION_8_34();
  v9(v8);
  OUTLINED_FUNCTION_14_27();
}

void static DialogHelper.makeGlobals(deviceState:options:)(void *a1, uint64_t *a2)
{
  v4 = sub_1DD0DB0FC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_16();
  v9 = *a2;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = OUTLINED_FUNCTION_8_34();
  v12(v11);
  OUTLINED_FUNCTION_14_27();
}

uint64_t sub_1DCCE50DC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  __src[10] = *MEMORY[0x1E69E9840];
  sub_1DCC6DDEC(*a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1ECCA1250 != -1)
  {
    swift_once();
  }

  sub_1DCCE6BD4();
  v4 = sub_1DD0DAADC();
  if (!v2)
  {
    v9 = v4;
    v10 = v5;
    sub_1DCCE6C28(__src);
    v11 = objc_opt_self();
    v12 = sub_1DD0DAEFC();
    v19[0] = 0;
    v13 = [v11 JSONObjectWithData:v12 options:0 error:v19];

    if (v13)
    {
      v14 = v19[0];
      sub_1DD0DEA6C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      if (swift_dynamicCast())
      {
        result = sub_1DCB21A14(v9, v10);
        v7 = 0;
        v8 = v18;
        goto LABEL_11;
      }

      sub_1DCC6D7A0();
      v8 = swift_allocError();
      *v16 = 0xD00000000000002ALL;
      v16[1] = 0x80000001DD115E40;
      result = sub_1DCB21A14(v9, v10);
    }

    else
    {
      v15 = v19[0];
      v8 = sub_1DD0DAE0C();

      swift_willThrow();
      result = sub_1DCB21A14(v9, v10);
    }

    v7 = 1;
    goto LABEL_11;
  }

  result = sub_1DCCE6C28(__src);
  v7 = 1;
  v8 = v2;
LABEL_11:
  *a2 = v8;
  *(a2 + 8) = v7;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DCCE6900()
{
  result = qword_1ECCA42D8;
  if (!qword_1ECCA42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42D8);
  }

  return result;
}

unint64_t sub_1DCCE6958()
{
  result = qword_1ECCA42E0;
  if (!qword_1ECCA42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42E0);
  }

  return result;
}

unint64_t sub_1DCCE69B0()
{
  result = qword_1ECCA42E8;
  if (!qword_1ECCA42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42E8);
  }

  return result;
}

unint64_t sub_1DCCE6A08()
{
  result = qword_1ECCA42F0;
  if (!qword_1ECCA42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA42F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexibleExecutionSupportOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlexibleExecutionSupportOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCCE6B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA42F8, &qword_1DD0EBAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCCE6BC8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1DCCE6BD4()
{
  result = qword_1ECCA4300;
  if (!qword_1ECCA4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4300);
  }

  return result;
}

char *sub_1DCCE6C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_28(a1, a2, a3);
  sub_1DD0DDF2C();
  v5 = &v12;
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_13_25();
  do
  {
    OUTLINED_FUNCTION_12_27(v6);
    if (!v7)
    {
      break;
    }

    OUTLINED_FUNCTION_15_26();
    v9 = v9 && v8 == v3;
    if (v9)
    {
      break;
    }

    v10 = sub_1DD0DF0AC();
    v6 = v4 + 1;
  }

  while ((v10 & 1) == 0);
  return v5;
}

char *sub_1DCCE6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_28(a1, a2, a3);
  sub_1DD0DDF2C();
  v5 = &v12;
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_13_25();
  do
  {
    OUTLINED_FUNCTION_12_27(v6);
    if (!v7)
    {
      break;
    }

    OUTLINED_FUNCTION_15_26();
    v9 = v9 && v8 == v3;
    if (v9)
    {
      break;
    }

    v10 = sub_1DD0DF0AC();
    v6 = v4 + 1;
  }

  while ((v10 & 1) == 0);
  return v5;
}

void sub_1DCCE6DBC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DCAFC000, v14, v15, "Provided DialogPhase text is nil", v16, 2u);
    v17 = v16;
    goto LABEL_17;
  }

  v6 = sub_1DD0DE04C();
  v8 = v7;
  if (v6 != 0x656C776F6E6B6361 || v7 != 0xEF746E656D656764)
  {
    v10 = v6;
    OUTLINED_FUNCTION_2_48();
    if ((sub_1DD0DF0AC() & 1) == 0)
    {
      v18 = v10 == 0x64656C65636E6163 && v8 == 0xE800000000000000;
      if (v18 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EB90 != -1)
        {
          OUTLINED_FUNCTION_5_39();
        }

        v11 = &qword_1EDE4EB98;
        goto LABEL_10;
      }

      v19 = v10 == 0x6369666972616C63 && v8 == 0xED00006E6F697461;
      if (v19 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC10 != -1)
        {
          OUTLINED_FUNCTION_4_40();
        }

        v11 = &qword_1EDE4EC18;
        goto LABEL_10;
      }

      v20 = v10 == 0x6974656C706D6F63 && v8 == 0xEA00000000006E6FLL;
      if (v20 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC68 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EDE4EC70;
        goto LABEL_10;
      }

      v21 = v10 == 0x616D7269666E6F63 && v8 == 0xEC0000006E6F6974;
      if (v21 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC30 != -1)
        {
          OUTLINED_FUNCTION_3_46();
        }

        v11 = &qword_1EDE4EC38;
        goto LABEL_10;
      }

      v22 = v10 == 0x656D7269666E6F63 && v8 == 0xE900000000000064;
      if (v22 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4A0D8 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EDE4A0E0;
        goto LABEL_10;
      }

      v23 = v10 == 0x726F727265 && v8 == 0xE500000000000000;
      if (v23 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EBE0 != -1)
        {
          OUTLINED_FUNCTION_10_27();
        }

        v11 = &qword_1EDE4EBE8;
        goto LABEL_10;
      }

      v24 = v10 == 0x697463656C666572 && v8 == 0xEA00000000006E6FLL;
      if (v24 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EC50 != -1)
        {
          OUTLINED_FUNCTION_9_28();
        }

        v11 = &qword_1EDE4EC58;
        goto LABEL_10;
      }

      v25 = v10 == 0x737574617473 && v8 == 0xE600000000000000;
      if (v25 || (OUTLINED_FUNCTION_2_48(), (sub_1DD0DF0AC() & 1) != 0))
      {

        if (qword_1EDE4EBC8 != -1)
        {
          OUTLINED_FUNCTION_8_35();
        }

        v11 = &qword_1EDE4EBD0;
        goto LABEL_10;
      }

      if (v10 == 0x7972616D6D7573 && v8 == 0xE700000000000000)
      {
      }

      else
      {
        OUTLINED_FUNCTION_2_48();
        v27 = sub_1DD0DF0AC();

        if ((v27 & 1) == 0)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v28 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v28, qword_1EDE57E00);

          v14 = sub_1DD0DD8EC();
          v29 = sub_1DD0DE6EC();

          if (!os_log_type_enabled(v14, v29))
          {
            goto LABEL_18;
          }

          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_1DCB10E9C(a1, a2, &v32);
          _os_log_impl(&dword_1DCAFC000, v14, v29, "Cannot convert text '%s' into a valid DialogPhase", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x1E12A8390](v31, -1, -1);
          v17 = v30;
LABEL_17:
          MEMORY[0x1E12A8390](v17, -1, -1);
LABEL_18:

          *a3 = 0;
          a3[1] = 0;
          return;
        }
      }

      if (qword_1EDE4EBA8 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EDE4EBB0;
      goto LABEL_10;
    }
  }

  if (qword_1EDE4EBF8 != -1)
  {
    OUTLINED_FUNCTION_7_32();
  }

  v11 = &qword_1EDE4EC00;
LABEL_10:
  v12 = v11[1];
  *a3 = *v11;
  a3[1] = v12;
}

uint64_t sub_1DCCE744C()
{
  v0 = *MEMORY[0x1E69C82F0];
  result = sub_1DD0DDFBC();
  qword_1EDE4EC00 = result;
  *algn_1EDE4EC08 = v2;
  return result;
}

uint64_t sub_1DCCE749C()
{
  v0 = *MEMORY[0x1E69C8328];
  result = sub_1DD0DDFBC();
  qword_1EDE4EC58 = result;
  unk_1EDE4EC60 = v2;
  return result;
}

uint64_t sub_1DCCE74EC()
{
  v0 = *MEMORY[0x1E69C8330];
  result = sub_1DD0DDFBC();
  qword_1EDE4EBD0 = result;
  *algn_1EDE4EBD8 = v2;
  return result;
}

uint64_t sub_1DCCE753C()
{
  v0 = *MEMORY[0x1E69C8300];
  result = sub_1DD0DDFBC();
  qword_1EDE4EC18 = result;
  unk_1EDE4EC20 = v2;
  return result;
}

uint64_t sub_1DCCE756C()
{
  v0 = *MEMORY[0x1E69C8338];
  result = sub_1DD0DDFBC();
  qword_1EDE4EBB0 = result;
  unk_1EDE4EBB8 = v2;
  return result;
}

uint64_t sub_1DCCE75BC()
{
  v0 = *MEMORY[0x1E69C8310];
  result = sub_1DD0DDFBC();
  qword_1EDE4EC38 = result;
  unk_1EDE4EC40 = v2;
  return result;
}

uint64_t sub_1DCCE75EC()
{
  v0 = *MEMORY[0x1E69C8308];
  result = sub_1DD0DDFBC();
  qword_1EDE4EC70 = result;
  *algn_1EDE4EC78 = v2;
  return result;
}

uint64_t sub_1DCCE761C()
{
  v0 = *MEMORY[0x1E69C8320];
  result = sub_1DD0DDFBC();
  qword_1EDE4EBE8 = result;
  unk_1EDE4EBF0 = v2;
  return result;
}

uint64_t sub_1DCCE766C()
{
  v0 = *MEMORY[0x1E69C8318];
  result = sub_1DD0DDFBC();
  qword_1EDE4A0E0 = result;
  unk_1EDE4A0E8 = v2;
  return result;
}

uint64_t sub_1DCCE76BC()
{
  v0 = *MEMORY[0x1E69C82F8];
  result = sub_1DD0DDFBC();
  qword_1EDE4EB98 = result;
  unk_1EDE4EBA0 = v2;
  return result;
}

uint64_t sub_1DCCE770C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4310, &unk_1DD0EBB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0EBAB0;
  if (qword_1EDE4EBF8 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDE4EC08;
  *(inited + 32) = qword_1EDE4EC00;
  *(inited + 40) = v1;
  v2 = qword_1EDE4EC50;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_1EDE4EC60;
  *(inited + 48) = qword_1EDE4EC58;
  *(inited + 56) = v3;
  v4 = qword_1EDE4EBC8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_1EDE4EBD8;
  *(inited + 64) = qword_1EDE4EBD0;
  *(inited + 72) = v5;
  v6 = qword_1EDE4EC10;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EDE4EC20;
  *(inited + 80) = qword_1EDE4EC18;
  *(inited + 88) = v7;
  v8 = qword_1EDE4EBA8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_1EDE4EBB8;
  *(inited + 96) = qword_1EDE4EBB0;
  *(inited + 104) = v9;
  v10 = qword_1EDE4EC30;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EDE4EC40;
  *(inited + 112) = qword_1EDE4EC38;
  *(inited + 120) = v11;
  v12 = qword_1EDE4EC68;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *algn_1EDE4EC78;
  *(inited + 128) = qword_1EDE4EC70;
  *(inited + 136) = v13;
  v14 = qword_1EDE4EBE0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_1EDE4EBF0;
  *(inited + 144) = qword_1EDE4EBE8;
  *(inited + 152) = v15;
  v16 = qword_1EDE4A0D8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = unk_1EDE4A0E8;
  *(inited + 160) = qword_1EDE4A0E0;
  *(inited + 168) = v17;
  v18 = qword_1EDE4EB90;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_1EDE4EBA0;
  *(inited + 176) = qword_1EDE4EB98;
  *(inited + 184) = v19;
  v27 = MEMORY[0x1E69E7CC0];

  sub_1DCB38954();
  for (i = 0; i != 160; i += 16)
  {
    v22 = *(inited + i + 32);
    v21 = *(inited + i + 40);
    v24 = *(v27 + 16);
    v23 = *(v27 + 24);

    if (v24 >= v23 >> 1)
    {
      sub_1DCB38954();
    }

    *(v27 + 16) = v24 + 1;
    v25 = v27 + 16 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
  }

  swift_setDeallocating();
  sub_1DCC657A8();
  result = sub_1DCDA58AC(v27);
  qword_1EDE4A100 = result;
  return result;
}

uint64_t DialogPhase.aceValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriKitFlow::DialogPhase_optional __swiftcall DialogPhase.init(aceValue:)(SiriKitFlow::DialogPhase_optional aceValue)
{
  v2 = v1;
  if (aceValue.value.aceValue._object)
  {
    object = aceValue.value.aceValue._object;
    countAndFlagsBits = aceValue.value.aceValue._countAndFlagsBits;
    if (qword_1EDE4A0F8 != -1)
    {
      swift_once();
    }

    aceValue.value.aceValue._countAndFlagsBits = sub_1DCCE6C7C(countAndFlagsBits, object, qword_1EDE4A100);
    if (aceValue.value.aceValue._countAndFlagsBits)
    {
      *v2 = countAndFlagsBits;
      v2[1] = object;
      return aceValue;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  return aceValue;
}

uint64_t sub_1DCCE7B8C()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDE4EBF8 != -1)
  {
    OUTLINED_FUNCTION_7_32();
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EC00);
  v4 = v4 && v3 == v2;
  if (v4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EC50 != -1)
  {
    OUTLINED_FUNCTION_9_28();
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EC58);
  if (v4 && v5 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EBC8 != -1)
  {
    OUTLINED_FUNCTION_8_35();
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EBD0);
  if (v4 && v7 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EC10 != -1)
  {
    OUTLINED_FUNCTION_4_40();
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EC18);
  if (v4 && v9 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EC30 != -1)
  {
    OUTLINED_FUNCTION_3_46();
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EC38);
  if (v4 && v11 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EBE0 != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EBE8);
  if (v4 && v13 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();
  if (sub_1DD0DF0AC())
  {
    return 1;
  }

  if (qword_1EDE4EB90 != -1)
  {
    OUTLINED_FUNCTION_5_39();
  }

  OUTLINED_FUNCTION_11_29(&qword_1EDE4EB98);
  if (v4 && v15 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_45();

  return sub_1DD0DF0AC();
}

uint64_t static DialogPhase.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC();
  }
}

uint64_t DialogPhase.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DD0DDF2C();
}

uint64_t DialogPhase.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCCE7E10()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

unint64_t sub_1DCCE7E5C()
{
  result = qword_1ECCA4308;
  if (!qword_1ECCA4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4308);
  }

  return result;
}

uint64_t sub_1DCCE7EB4(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(result + 16);
  v9 = (result + 32);
  if (v8)
  {
    while (1)
    {
      memcpy(__dst, v9, 0xD9uLL);
      memcpy(__src, v9, 0xD9uLL);
      sub_1DCCE4A84(__dst, v10);
      sub_1DCCE84A8(__src, a2, a3, a4);
      if (v4)
      {
        break;
      }

      memcpy(v10, __src, 0xD9uLL);
      result = sub_1DCCE4AE0(v10);
      v9 += 224;
      if (!--v8)
      {
        return result;
      }
    }

    memcpy(v10, __src, 0xD9uLL);
    return sub_1DCCE4AE0(v10);
  }

  return result;
}

Swift::Bool __swiftcall TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(Swift::Bool defaultBehavior)
{
  v2 = *(v1 + 56);
  if (v2 != 2)
  {
    return v2 != 1;
  }

  return defaultBehavior;
}

uint64_t TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:dialogIdentifier:meta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_16_20(a1, a2, a3, a4, a5, a6, a8);

  v15 = sub_1DCB73048(a1, a2, a6, a4, a3);

  *(a8 + 16) = v15;
  *(a8 + 24) = a7;
  return result;
}

uint64_t TemplatingResult.templateIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t TemplatingResult.behaviorAfterSpeaking.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DCB40994(v2, v3);
}

uint64_t TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:dialogIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_13_26();
  v12 = v11;
  OUTLINED_FUNCTION_16_20(v13, v14, v15, v16, v17, v18, v11);

  v19 = sub_1DCB73048(v8, v7, a6, a4, v6);

  v21 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = v19;
  *(v12 + 24) = v21;
  return result;
}

double TemplatingResult.init(templateIdentifier:speak:print:meta:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = OUTLINED_FUNCTION_22_15(a1, a2, a3, a4);

  v13 = sub_1DCB73048(a1, a2, v12, a4, a3);

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v13;
  *(a6 + 24) = a5;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  result = 0.0;
  *(a6 + 48) = xmmword_1DD0E1E40;
  *(a6 + 64) = v12;
  return result;
}

uint64_t TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  v9 = v8;
  v11 = *v10;
  v12 = v10[1];
  v17 = OUTLINED_FUNCTION_22_15(v13, v14, v15, v16);

  v18 = sub_1DCB73048(v6, v5, v17, a4, v4);

  *v9 = v6;
  v9[1] = v5;
  v20 = MEMORY[0x1E69E7CC8];
  v9[2] = v18;
  v9[3] = v20;
  v9[4] = v4;
  v9[5] = a4;
  v9[6] = v11;
  v9[7] = v12;
  v9[8] = v17;
  return result;
}

uint64_t TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X3>, __n128 *a4@<X8>)
{
  OUTLINED_FUNCTION_18_20(a1, a2, a3, a4);
  v9 = MEMORY[0x1E69E7CC8];
  v5[2] = v10;
  v5[3] = v9;

  sub_1DCCE834C(v4);
  result = OUTLINED_FUNCTION_26_11();
  v5[8] = v6;
  v5[4] = v8;
  v5[5] = v7;
  return result;
}

uint64_t sub_1DCCE834C(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  v2 = MEMORY[0x1E69E7CC0];
  sub_1DCCE7EB4(a1, &v4, &v3, &v2);
  return v4;
}

uint64_t TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:meta:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X3>, __n128 *a4@<X8>)
{
  OUTLINED_FUNCTION_18_20(a1, a2, a3, a4);
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  sub_1DCCE834C(v4);
  result = OUTLINED_FUNCTION_26_11();
  v5[8] = v6;
  v5[4] = v8;
  v5[5] = v7;
  return result;
}

SiriKitFlow::TemplatingText __swiftcall TemplatingText.init(text:speakableTextOverride:)(Swift::String text, Swift::String_optional speakableTextOverride)
{
  v2->value = text;
  v2[1] = speakableTextOverride;
  result.speakableTextOverride = speakableTextOverride;
  result.text = text;
  return result;
}

void __swiftcall TemplatingSection.init(id:content:caption:spokenOnly:)(SiriKitFlow::TemplatingSection *__return_ptr retstr, Swift::String id, SiriKitFlow::TemplatingText content, SiriKitFlow::TemplatingText_optional caption, Swift::Bool spokenOnly)
{
  v5 = *content.text._countAndFlagsBits;
  v6 = *(content.text._countAndFlagsBits + 8);
  v7 = *(content.text._object + 2);
  v8 = *(content.text._object + 3);
  retstr->id = id;
  retstr->content.text._countAndFlagsBits = v5;
  retstr->content.text._object = v6;
  retstr->caption.value.speakableTextOverride.value._countAndFlagsBits = v7;
  retstr->caption.value.speakableTextOverride.value._object = v8;
  retstr->spokenOnly = content.speakableTextOverride.value._countAndFlagsBits;
  retstr->unfilteredContent.value.text._countAndFlagsBits = v5;
  retstr->unfilteredContent.value.text._object = v6;
  v9 = *(content.text._countAndFlagsBits + 16);
  retstr->unfilteredContent.value.speakableTextOverride = v9;
  v11 = *content.text._object;
  v10 = *content.text._object;
  retstr->content.speakableTextOverride = v9;
  retstr->caption.value.text = v10;
  retstr->unfilteredCaption.value.text = v10;
  retstr->unfilteredCaption.value.speakableTextOverride.value._countAndFlagsBits = v7;
  retstr->unfilteredCaption.value.speakableTextOverride.value._object = v8;
  retstr->isApprovedForGrading = 0;
  retstr->redactedCaption.value.speakableTextOverride = 0u;
  retstr->redactedCaption.value.text = 0u;
  retstr->redactedContent.value.speakableTextOverride = 0u;
  retstr->redactedContent.value.text = 0u;

  sub_1DCB40A04(v11, *(&v11 + 1));
}

uint64_t sub_1DCCE84A8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[3];
  v10 = a1[5];
  v24 = a1[4];
  v11 = a1[7];
  v25 = a1[6];
  v26 = a1[2];

  sub_1DCD4B7BC();
  v12 = *(*a2 + 16);
  sub_1DCBBF6CC(v12);
  v13 = *a2;
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  if (!v11)
  {

    v15 = v26;
    v16 = v26;
    v11 = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  v16 = v25;
  v15 = v26;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = v24;
  v9 = v10;
LABEL_6:

  sub_1DCD4B7BC();
  v17 = *(*a3 + 16);
  sub_1DCBBF6CC(v17);
  v18 = *a3;
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 16 * v17;
  *(v19 + 32) = v16;
  *(v19 + 40) = v11;
  sub_1DCD4B7BC();
  v20 = *(*a4 + 16);
  result = sub_1DCBBF6CC(v20);
  v22 = *a4;
  *(v22 + 16) = v20 + 1;
  v23 = v22 + 16 * v20;
  *(v23 + 32) = v15;
  *(v23 + 40) = v9;
  return result;
}

uint64_t TemplatingSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t TemplatingSection.content.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

void __swiftcall TemplatingSection.init(id:content:caption:spokenOnly:unfilteredContent:unfilteredCaption:)(SiriKitFlow::TemplatingSection *__return_ptr retstr, Swift::String id, SiriKitFlow::TemplatingText content, SiriKitFlow::TemplatingText_optional caption, Swift::Bool spokenOnly, SiriKitFlow::TemplatingText_optional unfilteredContent, SiriKitFlow::TemplatingText_optional unfilteredCaption)
{
  OUTLINED_FUNCTION_10_28(content.text._countAndFlagsBits, content.text._object, content.speakableTextOverride.value._object, caption.value.text._countAndFlagsBits, retstr);
  v8 = *v7;
  v9 = v7[1];
  *v12 = v10;
  *(v12 + 8) = v11;
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 80) = v13;
  *(v12 + 136) = v14;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0;
}

void __swiftcall TemplatingSection.init(id:content:caption:spokenOnly:unfilteredContent:unfilteredCaption:isApprovedForGrading:)(SiriKitFlow::TemplatingSection *__return_ptr retstr, Swift::String id, SiriKitFlow::TemplatingText content, SiriKitFlow::TemplatingText_optional caption, Swift::Bool spokenOnly, SiriKitFlow::TemplatingText_optional unfilteredContent, SiriKitFlow::TemplatingText_optional unfilteredCaption, Swift::Bool isApprovedForGrading)
{
  OUTLINED_FUNCTION_10_28(content.text._countAndFlagsBits, content.text._object, content.speakableTextOverride.value._object, caption.value.text._countAndFlagsBits, retstr);
  v9 = *v8;
  v10 = v8[1];
  *v13 = v11;
  *(v13 + 8) = v12;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 80) = v14;
  *(v13 + 136) = v15;
  *(v13 + 200) = 0u;
  *(v13 + 184) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 216) = v16;
}

uint64_t TemplatingSection.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v14 = *(v0 + 1);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[8];
  v6 = v0[9];
  v15 = *(v0 + 80);
  v16 = *(v0 + 216);
  sub_1DCB40A04(v0[6], v0[7]);
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780]();
  MEMORY[0x1E12A6780](v1, v2);
  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780](0xD00000000000001DLL);
  v7 = TemplatingText.description.getter();
  MEMORY[0x1E12A6780](v7);

  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780](0xD00000000000001DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4318, &qword_1DD0EBB50);
  v8 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v8);

  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780]();
  if (v15)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v15)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v9, v10);

  OUTLINED_FUNCTION_17_15();
  MEMORY[0x1E12A6780]();
  if (v16)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v16)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v11, v12);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCCE8974(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E4F6E656B6F7073 && a2 == 0xEA0000000000796CLL;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001DD119420 == a2;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001DD119440 == a2;
            if (v10 || (sub_1DD0DF0AC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6465746361646572 && a2 == 0xEF746E65746E6F43;
              if (v11 || (sub_1DD0DF0AC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465746361646572 && a2 == 0xEF6E6F6974706143;
                if (v12 || (sub_1DD0DF0AC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000014 && 0x80000001DD119460 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1DD0DF0AC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1DCCE8C68(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
      result = 0x6E6F6974706163;
      break;
    case 3:
      result = 0x6E4F6E656B6F7073;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 7:
      result = 0x6465746361646572;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCCE8D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCE8974(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCCE8D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCCE8C60();
  *a1 = result;
  return result;
}

uint64_t sub_1DCCE8DC4(uint64_t a1)
{
  v2 = sub_1DCCEA108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCE8E00(uint64_t a1)
{
  v2 = sub_1DCCEA108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemplatingSection.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v60 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4320, &qword_1DD0EBB58);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  v13 = *v0;
  v14 = v0[1];
  v15 = v0[3];
  v57 = v0[2];
  v58 = v15;
  v16 = v0[4];
  v59 = v0[5];
  v17 = v0[7];
  v55 = v0[6];
  v56 = v16;
  v18 = v0[8];
  v53 = v0[9];
  v54 = v17;
  v65 = *(v0 + 80);
  v19 = v0[12];
  v48 = v0[11];
  v49 = v19;
  v20 = v0[14];
  v51 = v0[13];
  v52 = v18;
  v50 = v20;
  v21 = v0[16];
  v44 = v0[15];
  v45 = v21;
  v22 = v0[17];
  v46 = v0[18];
  v47 = v22;
  v23 = v0[20];
  v40 = v0[19];
  v41 = v23;
  v24 = v0[22];
  v43 = v0[21];
  v42 = v24;
  v25 = v0[24];
  v36 = v0[23];
  v37 = v25;
  v26 = v0[26];
  v39 = v0[25];
  v38 = v26;
  v27 = *(v0 + 216);
  v28 = v3[3];
  v29 = v3[4];
  v30 = v3;
  v32 = v31;
  __swift_project_boxed_opaque_existential_1(v30, v28);
  sub_1DCCEA108();
  sub_1DD0DF24C();
  LOBYTE(v61) = 0;
  v33 = v60;
  sub_1DD0DEFBC();
  if (!v33)
  {
    v35 = v54;
    v34 = v55;
    LODWORD(v60) = v27;
    v61 = v57;
    v62 = v58;
    v63 = v56;
    v64 = v59;
    sub_1DCCEA15C();

    sub_1DD0DEFFC();

    v61 = v34;
    v62 = v35;
    v63 = v52;
    v64 = v53;
    sub_1DCB40A04(v34, v35);
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_21_12();
    LOBYTE(v61) = 3;
    sub_1DD0DEFCC();
    v61 = v48;
    v62 = v49;
    v63 = v51;
    v64 = v50;
    sub_1DCB40A04(v48, v49);
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_21_12();
    v61 = v44;
    v62 = v45;
    v63 = v47;
    v64 = v46;
    sub_1DCB40A04(v44, v45);
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_21_12();
    v61 = v40;
    v62 = v41;
    v63 = v43;
    v64 = v42;
    sub_1DCB40A04(v40, v41);
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_21_12();
    v61 = v36;
    v62 = v37;
    v63 = v39;
    v64 = v38;
    sub_1DCB40A04(v36, v37);
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_21_12();
    LOBYTE(v61) = 8;
    sub_1DD0DEFCC();
  }

  (*(v6 + 8))(v12, v32);
  OUTLINED_FUNCTION_19_19();
}

void TemplatingSection.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4338, &qword_1DD0EBB60);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  v42 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCCEA108();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v44) = 0;
    OUTLINED_FUNCTION_14_29();
    v11 = sub_1DD0DEF0C();
    v41 = v12;
    sub_1DCCEA1F4();
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEF4C();
    v19 = v11;
    v13 = v44;
    v39 = v45;
    v40 = v47;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v18 = v46;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v38 = v47;
    LOBYTE(v44) = 3;
    OUTLINED_FUNCTION_14_29();
    LOBYTE(v11) = sub_1DD0DEF1C();
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v27 = v44;
    v28 = v45;
    v29 = v46;
    v30 = v47;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v25 = v44;
    v26 = v45;
    v24 = v46;
    v17 = v47;
    LOBYTE(v43[0]) = 7;
    OUTLINED_FUNCTION_0_39();
    sub_1DD0DEEFC();
    v22 = v45;
    v23 = v44;
    v20 = v47;
    v21 = v46;
    OUTLINED_FUNCTION_14_29();
    v14 = sub_1DD0DEF1C();
    v15 = OUTLINED_FUNCTION_4_41();
    v16(v15);
    v43[0] = v19;
    v43[1] = v41;
    v43[2] = v13;
    v43[3] = v39;
    v43[4] = v18;
    v43[5] = v40;
    v43[6] = v35;
    v43[7] = v36;
    v43[8] = v37;
    v43[9] = v38;
    LOBYTE(v43[10]) = v11 & 1;
    v43[11] = v31;
    v43[12] = v32;
    v43[13] = v33;
    v43[14] = v34;
    v43[15] = v27;
    v43[16] = v28;
    v43[17] = v29;
    v43[18] = v30;
    v43[19] = v25;
    v43[20] = v26;
    v43[21] = v24;
    v43[22] = v17;
    v43[23] = v23;
    v43[24] = v22;
    v43[25] = v21;
    v43[26] = v20;
    LOBYTE(v43[27]) = v14 & 1;
    memcpy(v4, v43, 0xD9uLL);
    sub_1DCCE4A84(v43, &v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v44 = v19;
    v45 = v41;
    v46 = v13;
    v47 = v39;
    v48 = v18;
    v49 = v40;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v53 = v38;
    v54 = v11 & 1;
    v55 = v31;
    v56 = v32;
    v57 = v33;
    v58 = v34;
    v59 = v27;
    v60 = v28;
    v61 = v29;
    v62 = v30;
    v63 = v25;
    v64 = v26;
    v65 = v24;
    v66 = v17;
    v67 = v23;
    v68 = v22;
    v69 = v21;
    v70 = v20;
    v71 = v14 & 1;
    sub_1DCCE4AE0(&v44);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t TemplatingText.speakableTextOverride.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t TemplatingText.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD1193B0);
  MEMORY[0x1E12A6780](v1, v2);
  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD1193D0);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7104878;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1E12A6780](v5, v6);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCCE9948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DD119480 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCCE9A18(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1DCCE9A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCE9948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCCE9A7C(uint64_t a1)
{
  v2 = sub_1DCCEA248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCE9AB8(uint64_t a1)
{
  v2 = sub_1DCCEA248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemplatingText.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4348, &qword_1DD0EBB68);
  OUTLINED_FUNCTION_9(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v16 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v16[1] = v0[3];
  v16[2] = v14;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCCEA248();
  sub_1DD0DF24C();
  sub_1DD0DEFBC();
  if (!v1)
  {
    sub_1DD0DEF8C();
  }

  (*(v17 + 8))(v11, v4);
  OUTLINED_FUNCTION_19_19();
}

void TemplatingText.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4358, &qword_1DD0EBB70);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_15_3();
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCCEA248();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    v14 = sub_1DD0DEF0C();
    v16 = v15;
    v17 = sub_1DD0DEEDC();
    v19 = v18;
    v20 = v17;
    (*(v8 + 8))(v1, v6);
    *v5 = v14;
    v5[1] = v16;
    v5[2] = v20;
    v5[3] = v19;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCCE9E28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E657473696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001DD1194A0 == a2;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x42746C7561666564 && a2 == 0xEF726F6976616865;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4C646E41676E6964 && a2 == 0xED00006E65747369)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD0DF0AC();

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

unint64_t sub_1DCCE9F9C(char a1)
{
  result = 0x6E657473696CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x42746C7561666564;
      break;
    case 3:
      result = 0x4C646E41676E6964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCCEA044(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449646E756F73 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

unint64_t sub_1DCCEA108()
{
  result = qword_1ECCA4328;
  if (!qword_1ECCA4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4328);
  }

  return result;
}

unint64_t sub_1DCCEA15C()
{
  result = qword_1ECCA4330;
  if (!qword_1ECCA4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4330);
  }

  return result;
}

uint64_t sub_1DCCEA1B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DCCEA1F4()
{
  result = qword_1ECCA4340;
  if (!qword_1ECCA4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4340);
  }

  return result;
}

unint64_t sub_1DCCEA248()
{
  result = qword_1ECCA4350;
  if (!qword_1ECCA4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4350);
  }

  return result;
}

uint64_t sub_1DCCEA2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCE9E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCCEA2CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCCE9F94();
  *a1 = result;
  return result;
}

uint64_t sub_1DCCEA2F4(uint64_t a1)
{
  v2 = sub_1DCCEA9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA330(uint64_t a1)
{
  v2 = sub_1DCCEA9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA38C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_15();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DCCEA3B8(uint64_t a1)
{
  v2 = sub_1DCCEAAD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA3F4(uint64_t a1)
{
  v2 = sub_1DCCEAAD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA430(uint64_t a1)
{
  v2 = sub_1DCCEAA7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA46C(uint64_t a1)
{
  v2 = sub_1DCCEAA7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCCEA044(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCCEA4DC(uint64_t a1)
{
  v2 = sub_1DCCEAA28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA518(uint64_t a1)
{
  v2 = sub_1DCCEAA28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCCEA554(uint64_t a1)
{
  v2 = sub_1DCCEAB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCCEA590(uint64_t a1)
{
  v2 = sub_1DCCEAB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BehaviorAfterSpeaking.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v63 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4360, &qword_1DD0EBB78);
  v6 = OUTLINED_FUNCTION_9(v5);
  v59 = v7;
  v60 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  v58 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4368, &qword_1DD0EBB80);
  v14 = OUTLINED_FUNCTION_9(v13);
  v56 = v15;
  v57 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_34_0();
  v55 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4370, &qword_1DD0EBB88);
  v22 = OUTLINED_FUNCTION_9(v21);
  v53 = v23;
  v54 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v51 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4378, &qword_1DD0EBB90);
  OUTLINED_FUNCTION_9(v30);
  v52 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_15_3();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4380, &qword_1DD0EBB98);
  v37 = OUTLINED_FUNCTION_9(v36);
  v61 = v38;
  v62 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = v51 - v43;
  v45 = v0[1];
  v51[1] = *v0;
  v46 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DCCEA9D4();
  sub_1DD0DF24C();
  if (v45)
  {
    if (v45 == 1)
    {
      sub_1DCCEAAD0();
      OUTLINED_FUNCTION_11_12();
      (*(v53 + 8))(v29, v54);
    }

    else
    {
      if (v45 != 2)
      {
        sub_1DCCEAA28();
        v48 = v58;
        v49 = v62;
        sub_1DD0DEF7C();
        v50 = v60;
        sub_1DD0DEFBC();
        (*(v59 + 8))(v48, v50);
        (*(v61 + 8))(v44, v49);
        goto LABEL_9;
      }

      sub_1DCCEAA7C();
      v47 = v55;
      OUTLINED_FUNCTION_11_12();
      (*(v56 + 8))(v47, v57);
    }
  }

  else
  {
    sub_1DCCEAB24();
    OUTLINED_FUNCTION_11_12();
    (*(v52 + 8))(v2, v30);
  }

  (*(v61 + 8))(v44, v45);
LABEL_9:
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCCEA9D4()
{
  result = qword_1ECCA4388;
  if (!qword_1ECCA4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4388);
  }

  return result;
}

unint64_t sub_1DCCEAA28()
{
  result = qword_1ECCA4390;
  if (!qword_1ECCA4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4390);
  }

  return result;
}

unint64_t sub_1DCCEAA7C()
{
  result = qword_1ECCA4398;
  if (!qword_1ECCA4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4398);
  }

  return result;
}

unint64_t sub_1DCCEAAD0()
{
  result = qword_1ECCA43A0;
  if (!qword_1ECCA43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43A0);
  }

  return result;
}

unint64_t sub_1DCCEAB24()
{
  result = qword_1ECCA43A8;
  if (!qword_1ECCA43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43A8);
  }

  return result;
}

void BehaviorAfterSpeaking.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v92 = v0;
  v3 = v2;
  v88 = v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43B0, &qword_1DD0EBBA0);
  OUTLINED_FUNCTION_9(v90);
  v86 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_34_0();
  v91 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43B8, &qword_1DD0EBBA8);
  v12 = OUTLINED_FUNCTION_9(v11);
  v84 = v13;
  v85 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_34_0();
  v87 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43C0, &qword_1DD0EBBB0);
  v20 = OUTLINED_FUNCTION_9(v19);
  v82 = v21;
  v83 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43C8, &qword_1DD0EBBB8);
  OUTLINED_FUNCTION_9(v28);
  v81 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v77 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D0, &unk_1DD0EBBC0);
  OUTLINED_FUNCTION_9(v36);
  v89 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_15_3();
  v42 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCCEA9D4();
  v43 = v92;
  sub_1DD0DF23C();
  if (v43)
  {
    goto LABEL_8;
  }

  v78 = v28;
  v79 = v35;
  v80 = v27;
  v92 = v3;
  v44 = sub_1DD0DEF5C();
  sub_1DCB52BCC(v44, 0);
  if (v47 == v48 >> 1)
  {
LABEL_7:
    v59 = sub_1DD0DECAC();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v61 = &type metadata for BehaviorAfterSpeaking;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_3_47();
    v64(v63);
    v3 = v92;
LABEL_8:
    v65 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    OUTLINED_FUNCTION_19_19();
    return;
  }

  if (v47 < (v48 >> 1))
  {
    v77 = *(v46 + v47);
    sub_1DCB52B50(v47 + 1, v48 >> 1, v45, v46, v47, v48);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      v53 = v88;
      switch(v77)
      {
        case 1:
          sub_1DCCEAAD0();
          v69 = v80;
          OUTLINED_FUNCTION_9_29();
          swift_unknownObjectRelease();
          (*(v82 + 8))(v69, v83);
          v72 = OUTLINED_FUNCTION_3_47();
          v73(v72);
          v57 = 0;
          v58 = 1;
          break;
        case 2:
          sub_1DCCEAA7C();
          v66 = v87;
          OUTLINED_FUNCTION_9_29();
          swift_unknownObjectRelease();
          (*(v84 + 8))(v66, v85);
          v67 = OUTLINED_FUNCTION_3_47();
          v68(v67);
          v57 = 0;
          v58 = 2;
          break;
        case 3:
          sub_1DCCEAA28();
          OUTLINED_FUNCTION_9_29();
          v70 = sub_1DD0DEF0C();
          v71 = v89;
          v57 = v70;
          v58 = v74;
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_24_16();
          v76(v75);
          (*(v71 + 8))(v1, v36);
          break;
        default:
          sub_1DCCEAB24();
          v54 = v79;
          OUTLINED_FUNCTION_9_29();
          swift_unknownObjectRelease();
          (*(v81 + 8))(v54, v78);
          v55 = OUTLINED_FUNCTION_3_47();
          v56(v55);
          v57 = 0;
          v58 = 0;
          break;
      }

      *v53 = v57;
      v53[1] = v58;
      v65 = v92;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t DialogTemplating.makeSuggestAppDialog(app:intent:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v7 = 0;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = 0;
  return a3(v4);
}

void *assignWithCopy for TemplatingResult(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a1[2];
  a1[2] = a2[2];

  v6 = a1[3];
  a1[3] = a2[3];

  v7 = a1[4];
  a1[4] = a2[4];

  v8 = a1[5];
  a1[5] = a2[5];

  v9 = a2[7];
  if (a1[7] >= 3uLL)
  {
    if (v9 >= 3)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];

      goto LABEL_8;
    }

    sub_1DCCEB41C((a1 + 6));
    goto LABEL_6;
  }

  if (v9 < 3)
  {
LABEL_6:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_8;
  }

  a1[6] = a2[6];
  a1[7] = a2[7];

LABEL_8:
  v10 = a2[8];
  v11 = a1[8];
  a1[8] = v10;

  return a1;
}

uint64_t sub_1DCCEB41C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43E0, &unk_1DD0EBD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *assignWithTake for TemplatingResult(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a1[3];
  a1[3] = a2[3];

  v8 = a1[4];
  a1[4] = a2[4];

  v9 = a1[5];
  a1[5] = a2[5];

  if (a1[7] >= 3uLL)
  {
    v10 = a2[7];
    if (v10 >= 3)
    {
      a1[6] = a2[6];
      a1[7] = v10;

      goto LABEL_6;
    }

    sub_1DCCEB41C((a1 + 6));
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_6:
  v11 = a1[8];
  a1[8] = a2[8];

  return a1;
}

uint64_t getEnumTagSinglePayload for TemplatingResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for TemplatingResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TemplatingSection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v7 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v7)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
      v8 = *(a1 + 72);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 48);
      v9 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v9;
    }
  }

  else if (v7)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
  }

  *(a1 + 80) = *(a2 + 80);
  v11 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v11)
    {
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      v12 = *(a1 + 112);
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 88);
      v13 = *(a2 + 104);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v13;
    }
  }

  else if (v11)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v14 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v14;
  }

  v15 = *(a2 + 128);
  if (*(a1 + 128))
  {
    if (v15)
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);

      *(a1 + 136) = *(a2 + 136);
      v16 = *(a1 + 144);
      *(a1 + 144) = *(a2 + 144);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 120);
      v17 = *(a2 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
  }

  else
  {
    v18 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v18;
  }

  v19 = *(a2 + 160);
  if (*(a1 + 160))
  {
    if (v19)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);

      *(a1 + 168) = *(a2 + 168);
      v20 = *(a1 + 176);
      *(a1 + 176) = *(a2 + 176);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 152);
      v21 = *(a2 + 168);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v22 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v22;
  }

  v23 = *(a2 + 192);
  if (*(a1 + 192))
  {
    if (v23)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);

      *(a1 + 200) = *(a2 + 200);
      v24 = *(a1 + 208);
      *(a1 + 208) = *(a2 + 208);
    }

    else
    {
      sub_1DCCEB9D4(a1 + 184);
      v25 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
  }

  else
  {
    v26 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v26;
  }

  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t assignWithTake for TemplatingSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  if (*(a1 + 56))
  {
    v10 = *(a2 + 56);
    if (v10)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v10;

      v11 = *(a2 + 72);
      v12 = *(a1 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v11;

      goto LABEL_6;
    }

    sub_1DCCEB9D4(a1 + 48);
  }

  v13 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v13;
LABEL_6:
  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 96))
  {
    v14 = *(a2 + 96);
    if (v14)
    {
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v14;

      v15 = *(a2 + 112);
      v16 = *(a1 + 112);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v15;

      goto LABEL_11;
    }

    sub_1DCCEB9D4(a1 + 88);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_11:
  if (*(a1 + 128))
  {
    v17 = *(a2 + 128);
    if (v17)
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v17;

      v18 = *(a2 + 144);
      v19 = *(a1 + 144);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = v18;

      goto LABEL_16;
    }

    sub_1DCCEB9D4(a1 + 120);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
LABEL_16:
  if (*(a1 + 160))
  {
    v20 = *(a2 + 160);
    if (v20)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = v20;

      v21 = *(a2 + 176);
      v22 = *(a1 + 176);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = v21;

      goto LABEL_21;
    }

    sub_1DCCEB9D4(a1 + 152);
  }

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
LABEL_21:
  if (!*(a1 + 192))
  {
LABEL_25:
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    goto LABEL_26;
  }

  v23 = *(a2 + 192);
  if (!v23)
  {
    sub_1DCCEB9D4(a1 + 184);
    goto LABEL_25;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v23;

  v24 = *(a2 + 208);
  v25 = *(a1 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v24;

LABEL_26:
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemplatingSection(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 217))
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

uint64_t storeEnumTagSinglePayload for TemplatingSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeWithCopy for TemplatingText(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TemplatingText(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for TemplatingText(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

uint64_t storeEnumTagSinglePayload for TemplatingText(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t destroy for BehaviorAfterSpeaking(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t sub_1DCCEBDE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = *a2;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v3;
  }

  return a1;
}

void *assignWithCopy for BehaviorAfterSpeaking(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    v5 = a1[1];

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithTake for BehaviorAfterSpeaking(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 8);
  if (v4 < 0xFFFFFFFF)
  {

LABEL_5:
    *a1 = *a2;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for BehaviorAfterSpeaking(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for BehaviorAfterSpeaking(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DCCEBFE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DCCEBFF8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriKitConfirmationState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for BehaviorAfterSpeaking.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BehaviorAfterSpeaking.DingAndListenCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TemplatingText.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TemplatingSection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TemplatingSection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCCEC7F8()
{
  result = qword_1ECCA43E8;
  if (!qword_1ECCA43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43E8);
  }

  return result;
}

unint64_t sub_1DCCEC850()
{
  result = qword_1ECCA43F0;
  if (!qword_1ECCA43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43F0);
  }

  return result;
}

unint64_t sub_1DCCEC8A8()
{
  result = qword_1ECCA43F8;
  if (!qword_1ECCA43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA43F8);
  }

  return result;
}

unint64_t sub_1DCCEC900()
{
  result = qword_1ECCA4400;
  if (!qword_1ECCA4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4400);
  }

  return result;
}

unint64_t sub_1DCCEC958()
{
  result = qword_1ECCA4408;
  if (!qword_1ECCA4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4408);
  }

  return result;
}

unint64_t sub_1DCCEC9B0()
{
  result = qword_1ECCA4410;
  if (!qword_1ECCA4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4410);
  }

  return result;
}

unint64_t sub_1DCCECA08()
{
  result = qword_1ECCA4418;
  if (!qword_1ECCA4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4418);
  }

  return result;
}

unint64_t sub_1DCCECA60()
{
  result = qword_1ECCA4420;
  if (!qword_1ECCA4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4420);
  }

  return result;
}

unint64_t sub_1DCCECAB8()
{
  result = qword_1ECCA4428;
  if (!qword_1ECCA4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4428);
  }

  return result;
}

unint64_t sub_1DCCECB10()
{
  result = qword_1ECCA4430;
  if (!qword_1ECCA4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4430);
  }

  return result;
}

unint64_t sub_1DCCECB68()
{
  result = qword_1ECCA4438;
  if (!qword_1ECCA4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4438);
  }

  return result;
}

unint64_t sub_1DCCECBC0()
{
  result = qword_1ECCA4440;
  if (!qword_1ECCA4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4440);
  }

  return result;
}

unint64_t sub_1DCCECC18()
{
  result = qword_1ECCA4448;
  if (!qword_1ECCA4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4448);
  }

  return result;
}

unint64_t sub_1DCCECC70()
{
  result = qword_1ECCA4450;
  if (!qword_1ECCA4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4450);
  }

  return result;
}

unint64_t sub_1DCCECCC8()
{
  result = qword_1ECCA4458;
  if (!qword_1ECCA4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4458);
  }

  return result;
}

unint64_t sub_1DCCECD20()
{
  result = qword_1ECCA4460;
  if (!qword_1ECCA4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4460);
  }

  return result;
}