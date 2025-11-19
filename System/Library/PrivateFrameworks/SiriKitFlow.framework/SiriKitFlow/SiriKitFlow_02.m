uint64_t SAIntentGroupRunSiriKitExecutor.hasExecuteOnRemotePayload.getter()
{
  v1 = [v0 parse];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DCB28184(v1, &selRef_type);
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = *MEMORY[0x1E69C7FE0];
      if (v5 == sub_1DD0DDFBC() && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1DD0DF0AC();

        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v12 = [v2 directInvocation];
      if (v12)
      {
        v13 = v12;
        v11 = sub_1DCB281E0();
        v14 = v2;
        v2 = v13;
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v15 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v15, qword_1EDE57E00);
        v14 = sub_1DD0DD8EC();
        v16 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_5(v16))
        {
          v17 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_14_1(v17);
          OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v18, v19, "Could not extract ExecuteOnRemotePayload: Parse is type directInvocation but directInvocation is nil");
          OUTLINED_FUNCTION_52();
        }

        v11 = 0;
      }

      goto LABEL_19;
    }

LABEL_8:
    v11 = 0;
LABEL_19:

    return v11 & 1;
  }

  v11 = 0;
  return v11 & 1;
}

void sub_1DCB27A48(uint64_t a1, uint64_t a2, Class *a3, SEL *a4)
{
  sub_1DCB0D344();
  if (v7)
  {
    v8 = v7;
    v11 = sub_1DCB28078(v7, a3, a4);

    if (v11)
    {
      v9 = *(v4 + 16);
      v10 = *(v4 + 24);
      v9(v11);
    }
  }
}

uint64_t dispatch thunk of SiriKitEventSending.sendAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DCB22EC8;

  return v11(a1, a2, a3);
}

uint64_t sub_1DCB27C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v34 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v34 - v10;
  v12 = sub_1DD0DE4BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v34 - v20;
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  sub_1DCB28B08(v4 + 112, v39, &qword_1ECCA54E8, &unk_1DD0F2080);
  v22 = v40;
  sub_1DCB16D50(v39, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (!v22 && (*(v4 + 152) & 1) == 0)
  {
    *(v4 + 152) = 1;
    sub_1DD0DE48C();
    if (sub_1DCFEE0F8())
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v26 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v26, qword_1EDE57E00);
      v27 = sub_1DD0DD8EC();
      v28 = sub_1DD0DE6DC();
      v29 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v29, v30))
      {
        OUTLINED_FUNCTION_5_109();
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DCAFC000, v27, v28, "Boosting the Suggestion loading task priority to low", v31, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      sub_1DD0DE49C();
      (*(v13 + 8))(v21, v12);
      (*(v13 + 32))(v21, v18, v12);
    }

    (*(v13 + 16))(v11, v21, v12);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v33 = v35;
    v32[4] = v34;
    v32[5] = a2;
    v32[6] = v5;
    v32[7] = v33;
    v32[8] = v36;
    sub_1DD0DCF8C();
  }

  sub_1DCB28B08(v4 + 112, &v37, &qword_1ECCA54E8, &unk_1DD0F2080);
  if (!v38)
  {
    return sub_1DCB16D50(&v37, &qword_1ECCA54E8, &unk_1DD0F2080);
  }

  sub_1DCB18FF0(&v37, v39);
  v23 = v40;
  v24 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v24 + 16))(v23, v24);
  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

uint64_t sub_1DCB28014()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocObject();
}

void *sub_1DCB28078(void *a1, Class *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(*a2) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E69CE9C8]) init];
    if (v7)
    {
      v8 = v7;
      [v7 *a3];
      [a1 setExecutionPrepareContext_];

      v9 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v10 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v10, qword_1EDE57DA0);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v12))
  {
    v13 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v13);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v14, v15, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

  return 0;
}

uint64_t sub_1DCB28184(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1DD0DDFBC();
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCB281E0()
{
  v1 = sub_1DCB28184(v0, &selRef_invocationIdentifier);
  if (v2)
  {
    if (v1 == 0xD000000000000025 && v2 == 0x80000001DD119FA0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1DD0DF0AC();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

_BYTE *storeEnumTagSinglePayload for SiriKitConfirmationState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB28338);
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

uint64_t Input.init(parse:alternatives:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_9();
  v6 = v3 + *(OUTLINED_FUNCTION_92_4() + 28);
  *(v6 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v6);
  v8 = *(v7 + 20);
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(v2, v3 + v9);
  *(v3 + *(v4 + 24)) = a2;
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_5_42();
  result = sub_1DCB28538();
  *(v3 + *(v4 + 32)) = 0;
  return result;
}

uint64_t sub_1DCB283D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28484()
{
  v1 = OUTLINED_FUNCTION_70();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DCB284D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DCB28538()
{
  v1 = OUTLINED_FUNCTION_70();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DCB2858C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB285E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB286E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCB28794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1DCB287FC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = *v5;
  v11 = sub_1DD0DB04C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  v21 = AFDeviceSupportsSAE();
  sub_1DCB11070(v7, v4, v21, v9);
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57DA0);
  (*(v14 + 16))(v20, v9, v11);
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_151();
    v26 = OUTLINED_FUNCTION_83();
    v37 = v26;
    *v25 = 136315138;
    sub_1DCB28A60();
    v27 = sub_1DD0DF03C();
    v29 = v28;
    v30 = *(v14 + 8);
    v31 = OUTLINED_FUNCTION_19();
    v32(v31);
    v33 = sub_1DCB10E9C(v27, v29, &v37);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_1DCAFC000, v23, v24, v2, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v34 = *(v14 + 8);
    v35 = OUTLINED_FUNCTION_19();
    v36(v35);
  }

  OUTLINED_FUNCTION_49();
}

unint64_t sub_1DCB28A60()
{
  result = qword_1EDE4D650;
  if (!qword_1EDE4D650)
  {
    sub_1DD0DB04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D650);
  }

  return result;
}

uint64_t sub_1DCB28B08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DCB28B74()
{
  v1 = type metadata accessor for SiriKitEventPayload(0);
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v6);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = *v0;
      v8 = *(v0 + 16);

      v9 = *(v0 + 72);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60);
      sub_1DCB0E9D8(v0 + *(v10 + 112), &qword_1ECCA2278, &qword_1DD0E4830);
      v11 = &unk_1ECCA3280;
      v12 = &unk_1DD0E23D0;
      v13 = v0 + 32;
      goto LABEL_13;
    case 6u:
      v20 = *v0;
      v21 = *(v0 + 16);
      v22 = *(v0 + 24);
      v23 = *(v0 + 40);
      v24 = *(v0 + 56);
      v25 = *(v0 + 72);
      v26 = *(v0 + 88);

      goto LABEL_9;
    case 7u:
      v42 = *v0;
      v44 = *(v0 + 8);
      v43 = *(v0 + 16);
      v45 = *(v0 + 24);
      v46 = *(v0 + 48);
      v47 = *(v0 + 64);
      v48 = *(v0 + 80);
      v49 = *(v0 + 32);

      sub_1DCCD86D4(v45);

LABEL_9:

      goto LABEL_14;
    case 8u:
      v50 = *v0;
      v51 = *(v0 + 8);

      v52 = *(v0 + 32);

      v53 = *(v0 + 104);
      sub_1DCCD86D4(*(v0 + 96));
      v54 = *(v0 + 120);

      v11 = &unk_1ECCA3280;
      v12 = &unk_1DD0E23D0;
      v13 = v0 + 56;
      goto LABEL_13;
    case 9u:
      v55 = *v0;
      v56 = *(v0 + 8);

      v57 = *(v0 + 88);
      goto LABEL_12;
    case 0xAu:
      v16 = *v0;
      v17 = *(v0 + 8);

      v18 = *(v0 + 88);
      sub_1DCCD86D4(*(v0 + 80));
      v19 = *(v0 + 104);
LABEL_12:

      v11 = &unk_1ECCA3280;
      v12 = &unk_1DD0E23D0;
      v13 = v0 + 40;
      goto LABEL_13;
    case 0xBu:
      v27 = *v0;
      v28 = *(v0 + 16);

      v29 = *(v0 + 24);

      v30 = *(v0 + 40);

      v31 = *(v0 + 80);

      v32 = *(v0 + 144);

      v33 = *(v0 + 160);

      v34 = *(v0 + 176);

      sub_1DCB0E9D8(v0 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
      v11 = &dword_1ECCA3CE0;
      v12 = &unk_1DD0E4F80;
      v13 = v0 + 48;
LABEL_13:
      sub_1DCB0E9D8(v13, v11, v12);
LABEL_14:
      v14 = ActivityType.flowStateType.getter();
      goto LABEL_15;
    case 0xCu:
      v14 = *v0;
      v35 = *(v0 + 16);
      v36 = *(v0 + 24);
      v37 = *(v0 + 40);
      v38 = *(v0 + 48);
      v39 = *(v0 + 64);
      v40 = *(v0 + 80);
      v41 = *(v0 + 96);

LABEL_15:
      v15 = 0;
      break;
    default:
      sub_1DCB22AA4(v0);
      v14 = 0;
      v15 = 1;
      break;
  }

  return v14 | (v15 << 32);
}

uint64_t SiriKitEventPayload.description.getter()
{
  v2 = type metadata accessor for SiriKitEventPayload(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v7);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DCB22AA4(v0);
      return 0x7453746E65746E69;
    case 2u:
    case 0xEu:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      goto LABEL_9;
    case 3u:
    case 0x13u:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      goto LABEL_25;
    case 4u:

      v18 = *(v0 + 48);

      v19 = *(v0 + 64);

      OUTLINED_FUNCTION_16_56();
      __swift_destroy_boxed_opaque_existential_1Tm(v0);
      OUTLINED_FUNCTION_33_26();
      return v20 | 1;
    case 5u:
      OUTLINED_FUNCTION_50_22();

      v27 = *(v0 + 24);

      v28 = *(v0 + 40);

      OUTLINED_FUNCTION_16_56();
      goto LABEL_16;
    case 6u:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      OUTLINED_FUNCTION_33_26();
      return v32 | 4;
    case 7u:
      sub_1DCB22AA4(v0);
      v25 = 0x746E65746E69;
      goto LABEL_21;
    case 8u:
      OUTLINED_FUNCTION_50_22();
      v36 = *(v0 + 8);

      v37 = *(v0 + 32);

      v38 = *(v0 + 104);
      sub_1DCCD86D4(*(v0 + 96));
      v39 = *(v0 + 120);

      OUTLINED_FUNCTION_16_56();
      v29 = &unk_1ECCA3280;
      v30 = &unk_1DD0E23D0;
      v31 = v0 + 56;
      goto LABEL_23;
    case 9u:
      v21 = *(v0 + 8);

      v22 = *(v0 + 88);

      OUTLINED_FUNCTION_16_56();
      sub_1DCB0E9D8(v0 + 40, &unk_1ECCA3280, &unk_1DD0E23D0);
LABEL_25:
      OUTLINED_FUNCTION_33_26();
      v1 = v40 + 2;
      break;
    case 0xAu:
      v33 = *(v0 + 8);

      v34 = *(v0 + 88);
      sub_1DCCD86D4(*(v0 + 80));
      v35 = *(v0 + 104);

      sub_1DCB0E9D8(v0 + 40, &unk_1ECCA3280, &unk_1DD0E23D0);
      v25 = 0x656C646E6168;
LABEL_21:
      v1 = v25 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
      break;
    case 0xBu:
      OUTLINED_FUNCTION_50_22();
      v11 = *(v0 + 16);

      v12 = *(v0 + 24);

      v13 = *(v0 + 40);

      v14 = *(v0 + 80);

      v15 = *(v0 + 144);

      v16 = *(v0 + 160);

      v17 = *(v0 + 176);

      OUTLINED_FUNCTION_16_56();
      sub_1DCB0E9D8(v0 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
LABEL_16:
      v29 = &dword_1ECCA3CE0;
      v30 = &unk_1DD0E4F80;
      v31 = v0 + 48;
LABEL_23:
      sub_1DCB0E9D8(v31, v29, v30);
      break;
    case 0xCu:
      sub_1DCB22AA4(v0);
      v1 = 0x69746341776F6C66;
      break;
    case 0xDu:
      sub_1DCB22AA4(v0);
      v1 = 0x536E6F6973736573;
      break;
    case 0xFu:
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      OUTLINED_FUNCTION_33_26();
      v1 = v24 - 1;
      break;
    case 0x10u:
      sub_1DCB22AA4(v0);
      v1 = 0x7463413172656974;
      break;
    case 0x11u:
      sub_1DCB22AA4(v0);
      v1 = 0x6168436369706F74;
      break;
    case 0x12u:
      OUTLINED_FUNCTION_50_22();
      sub_1DCB22AA4(v0);
      OUTLINED_FUNCTION_16_56();
      break;
    case 0x14u:
      OUTLINED_FUNCTION_16_56();
      OUTLINED_FUNCTION_33_26();
      v1 = v26 + 21;
      break;
    default:
      v8 = *(v0 + 16);

      v9 = *(v0 + 72);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60);
      sub_1DCB0E9D8(v0 + *(v10 + 112), &qword_1ECCA2278, &qword_1DD0E4830);
      sub_1DCB0E9D8(v0 + 32, &unk_1ECCA3280, &unk_1DD0E23D0);
LABEL_9:
      OUTLINED_FUNCTION_33_26();
      v1 = v23 + 3;
      break;
  }

  return v1;
}

void static Metrics.setMetricsState(_:)(uint64_t a1)
{
  if (qword_1EDE4D8C0 != -1)
  {
    OUTLINED_FUNCTION_3_75();
  }

  v2 = qword_1EDE57D98;
  os_unfair_lock_lock((qword_1EDE57D98 + 16));
  sub_1DCB16D50(&v2[6], &qword_1ECCA6818, &qword_1DD0F69D0);
  sub_1DCB17CA0(a1, &v2[6]);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t OUTLINED_FUNCTION_244()
{
}

__n128 OUTLINED_FUNCTION_33_9()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  result = *(v0 + 56);
  v7 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33_12()
{
}

uint64_t OUTLINED_FUNCTION_33_17(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 112);
  return v2 + 88;
}

__n128 OUTLINED_FUNCTION_33_18(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  result = *(a2 + 32);
  *(v3 + 48) = result;
  *(v3 + 64) = *(a2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_19()
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_33_21(void *a1)
{
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = *(v9 - 88);
  a1[5] = v6;
  a1[6] = v2;
  a1[7] = v7;
  a1[8] = v1;
  v10 = *(v8 + 32);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_33_22()
{
  v2 = *(*(v0 + 16) + 16);

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_33_25(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_33_27(uint64_t a1)
{
  *(a1 + 8) = sub_1DCFE1AEC;
  v2 = *(v1 + 368);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_33_30()
{

  return swift_dynamicCast();
}

void sub_1DCB29750(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_88_4()
{
}

uint64_t OUTLINED_FUNCTION_88_7@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  return 0;
}

uint64_t OUTLINED_FUNCTION_88_8()
{
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_88_9()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_88_11()
{

  sub_1DCB7C864(v0);
}

uint64_t OUTLINED_FUNCTION_88_12(uint64_t a1, void *a2)
{
  *a2 = v3;
  v5 = *(v2 + 104);
  **(v2 + 96) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_88_13(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_88_14(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1DCB10E9C(a1, a2, va);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DCB29900()
{
  v1 = type metadata accessor for SiriKitEventPayload(0);
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_18_48(v6);
  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13)
  {
    v10 = v0[1];
    v9 = v0[2];
    v11 = v0[3];
  }

  else if (EnumCaseMultiPayload == 14)
  {
    v9 = *v0;
    v8 = v0[1];
  }

  else
  {
    sub_1DCB22AA4(v0);
    return 0;
  }

  return v9;
}

void SiriKitEvent.withPayload(_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = sub_1DD0DAFDC();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = type metadata accessor for SiriKitEventPayload(0);
  v16 = OUTLINED_FUNCTION_20_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  sub_1DCB22FCC(v3, v21 - v20);
  (*(v8 + 16))(v14, v1 + OBJC_IVAR____TtC11SiriKitFlow12SiriKitEvent_timestamp, v5);
  v23 = v1[2];
  v24 = v1[3];
  v25 = v1[4];
  v26 = v1[5];
  v28 = v1[6];
  v27 = v1[7];
  *&v31 = v23;
  *(&v31 + 1) = v24;
  v32 = v25;
  v33 = v26;
  v34 = v28;
  v35 = v27;
  v29 = *(v4 + 48);
  v30 = *(v4 + 52);
  swift_allocObject();
  sub_1DCB2502C(v23, v24);
  sub_1DCB23C70(v22, v14, &v31);
  OUTLINED_FUNCTION_49();
}

uint64_t ActivityType.flowStateType.getter()
{
  v1 = *v0;
  if (v1 > 0x77)
  {
    return 131;
  }

  else
  {
    return dword_1DD0E3BD4[v1];
  }
}

uint64_t Parse.parseType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Parse(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DCB29E58(v1, v8 - v7);
  v10 = 0x7974706D65;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

      v13 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_2(v13);
      (*(v14 + 8))(v9);
      v10 = 0xD00000000000001ELL;
      break;
    case 2u:
      v10 = 0xD000000000000010;
      sub_1DCB29EBC(v9);
      break;
    case 3u:
      sub_1DCB29EBC(v9);
      v11 = 880168014;
      goto LABEL_4;
    case 4u:
      sub_1DCB29EBC(v9);
      v10 = 0x5273757361676570;
      break;
    case 5u:
      sub_1DCB29EBC(v9);
      v10 = 0x655273656D6D6F70;
      break;
    case 6u:
      sub_1DCB29EBC(v9);
      v10 = 7304053;
      break;
    case 7u:
      sub_1DCB29EBC(v9);
      v10 = 1802398060;
      break;
    case 8u:
      sub_1DCB29EBC(v9);
      v10 = 0x726574756F526C6ELL;
      break;
    case 9u:
      sub_1DCB29EBC(v9);
      v10 = 0x746E65696C436669;
      break;
    case 0xAu:
      return v10;
    default:
      sub_1DCB29EBC(v9);
      v11 = 863390798;
LABEL_4:
      v10 = v11 | 0x65746E4900000000;
      break;
  }

  return v10;
}

uint64_t sub_1DCB29E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB29EBC(uint64_t a1)
{
  v2 = type metadata accessor for Parse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithCopy for SemanticValue(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

uint64_t storeEnumTagSinglePayload for SemanticValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t SiriKitEventOverrides.resultCandidateId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitEventOverrides.taskId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitEventOverrides.interactionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t destroy for SemanticValue(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];
}

uint64_t Input.parse.getter()
{
  v0 = OUTLINED_FUNCTION_4();
  v1 = *(type metadata accessor for Input(v0) + 20);
  OUTLINED_FUNCTION_1_51();
  v3 = OUTLINED_FUNCTION_59_2(v2);
  return sub_1DCB246E8(v3, v4);
}

void Parse.nlLocation.getter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for Parse(v2);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  sub_1DCB29E58(v1, v9 - v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

      v12 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_2(v12);
      (*(v13 + 8))(v10);
      goto LABEL_7;
    case 2u:
      sub_1DCB29EBC(v10);
      goto LABEL_5;
    case 3u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
      sub_1DCB29EBC(v10);
      sub_1DD0DCE7C();
    case 0xAu:
LABEL_5:
      sub_1DD0DCE6C();
    default:
      sub_1DCB29EBC(v10);
LABEL_7:
      sub_1DD0DCE8C();
  }
}

void sub_1DCB2A23C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v44 = a8;
  v41 = a7;
  v42 = a9;
  v39 = a6;
  v16 = *v10;
  v43 = sub_1DD0DD85C();
  v17 = OUTLINED_FUNCTION_9(v43);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  OUTLINED_FUNCTION_16();
  v25 = v24 - v23;
  v38 = a1;
  v40 = a2;
  sub_1DCB0D344();
  if (v26 && (v27 = v26, v28 = sub_1DCB3291C(v26, a3, a4, a5), v27, v28))
  {
    v30 = v10[2];
    v29 = v10[3];
    v31 = v28;
    v30();
  }

  else
  {
    v31 = 0;
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v32 = sub_1DD0DD88C();
  v33 = __swift_project_value_buffer(v32, qword_1EDE57DD0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v35 = v39;
  *(&v37 - 8) = v44;
  *(&v37 - 7) = v35;
  *(&v37 - 6) = v41;
  *(&v37 - 5) = v10;
  v36 = v40;
  *(&v37 - 4) = v38;
  *(&v37 - 3) = v36;
  *(&v37 - 2) = a5;
  sub_1DD0DD84C();
  sub_1DCB2A488("execution_flow_plugin_load_time", 31, 2, v25, sub_1DCB2A76C);
  (*(v19 + 8))(v25, v43);
}

void sub_1DCB2A488(const char *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_76();
  if (v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v9 >> 16 > 0x10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = &v13;
LABEL_8:
  OUTLINED_FUNCTION_5_109();
  v11 = swift_slowAlloc();
  *v11 = 0;
  sub_1DCB2A574(v11, 2u, v5, a4, v9, "enableTelemetry=YES", a5);
  if (!v6)
  {
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v12);
  }
}

void sub_1DCB2A574(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, void (*a7)(void))
{
  v11 = sub_1DD0DD87C();
  v12 = sub_1DD0DE7FC();
  v13 = sub_1DD0DD83C();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = sub_1DD0DE7EC();
    v15 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v11, v14, v15, a5, a6, v16, a2);
  }
}

void sub_1DCB2A678(void (*a1)(void (*)(unsigned __int8 *a1), void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  a1(sub_1DCB2A850, v13);
  if (v6)
  {
    sub_1DCB0D344();
    if (v8)
    {
      v9 = v8;
      sub_1DCB52F18();
      v11 = v10;

      if (v11)
      {
        v12 = *(a3 + 24);
        (*(a3 + 16))(v11);
      }
    }

    else
    {
      v11 = 0;
    }

    swift_willThrow();
  }
}

void sub_1DCB2A794(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1DCB0D344();
  if (v9)
  {
    v10 = v9;
    v11 = v8 ? 256 : 0;
    v14 = sub_1DCB2A85C(v9, v11 | v7, a5);

    if (v14)
    {
      v12 = *(a2 + 16);
      v13 = *(a2 + 24);
      v12(v14);
    }
  }
}

void *sub_1DCB2A85C(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69CEA18]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x1E69CEA10]) init];
    if (v14)
    {
      v15 = v14;
      [v13 setHasPluginCached_];
      [v15 setEnded_];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v7 + 16))(v11, a3, v6);
      v16 = sub_1DCB0DEDC(v11);
      [v15 setHypothesisId_];

      [a1 setFlowPluginLoadContext_];
      v17 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57DA0);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "[ConversationSELFHelper] Failed to create context SELF objects", v21, 2u);
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  return 0;
}

_BYTE *_s11SiriKitFlow19ExecuteResponseTypeOwst_0_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB2ABA8);
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
          result = OUTLINED_FUNCTION_10_18(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t _s11SiriKitFlow19ExecuteResponseTypeOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_64_5(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_64_5(v8);
}

id OUTLINED_FUNCTION_60_4()
{

  return [v0 (v1 + 3448)];
}

void OUTLINED_FUNCTION_60_5()
{

  JUMPOUT(0x1E12A6780);
}

uint64_t OUTLINED_FUNCTION_105_0()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_8()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_60_9()
{
  v3 = *(v1 - 160);

  return sub_1DCB21A14(v3, v0);
}

uint64_t OUTLINED_FUNCTION_60_10()
{
  result = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_16(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DCB10E9C(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_60_18()
{

  return sub_1DD0DEDBC();
}

uint64_t OUTLINED_FUNCTION_60_19()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  result = *(v1 + 16);
  v4 = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_21()
{
  v2 = *(v0 + 320) | 7;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_60_22@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  v9 = v2[8];
  *(v1 + v2[9]) = 256;
  v8 = v2[10];
  *(v1 + v2[11]) = 0;
  v6 = v2[12];

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_60_24()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t type metadata accessor for NLv3ServerParse()
{
  result = qword_1EDE4E860;
  if (!qword_1EDE4E860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB2AE9C(char a1)
{
  if (a1)
  {
    return 0x746169636F737361;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

void Parse.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v137 = v2;
  v135 = v1;
  v5 = v4;
  v144 = *MEMORY[0x1E69E9840];
  v131 = type metadata accessor for NLv3ServerParse();
  v6 = OUTLINED_FUNCTION_2(v131);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_11_2();
  v132 = v10;
  OUTLINED_FUNCTION_12();
  v125 = type metadata accessor for IFClientActionParse();
  v11 = OUTLINED_FUNCTION_2(v125);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_11_2();
  v130 = v15;
  OUTLINED_FUNCTION_12();
  v124 = type metadata accessor for NLRouterParse();
  v16 = OUTLINED_FUNCTION_2(v124);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_11_2();
  v129 = v20;
  OUTLINED_FUNCTION_12();
  v123 = type metadata accessor for LinkParse();
  v21 = OUTLINED_FUNCTION_2(v123);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  OUTLINED_FUNCTION_11_2();
  v128 = v25;
  OUTLINED_FUNCTION_12();
  v122 = type metadata accessor for USOParse();
  v26 = OUTLINED_FUNCTION_2(v122);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  OUTLINED_FUNCTION_11_2();
  v126 = v30;
  OUTLINED_FUNCTION_12();
  v31 = sub_1DD0DC76C();
  v32 = OUTLINED_FUNCTION_9(v31);
  v133 = v33;
  v134 = v32;
  v35 = *(v34 + 64);
  v37 = MEMORY[0x1EEE9AC00](v32, v36);
  v127 = &v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v122 - v40;
  v42 = type metadata accessor for Parse.PegasusResult(0);
  v43 = OUTLINED_FUNCTION_2(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43, v46);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  v47 = type metadata accessor for Parse(0);
  v48 = OUTLINED_FUNCTION_2(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48, v51);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7C50, &unk_1DD0FAFB0);
  OUTLINED_FUNCTION_9(v139);
  v136 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v122 - v57;
  v59 = v5[4];
  OUTLINED_FUNCTION_57_1(v5, v5[3]);
  sub_1DCB34864();
  v138 = v58;
  sub_1DD0DF24C();
  sub_1DCB247FC(v135, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v0 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
      v91 = v133;
      v90 = v134;
      v92 = v127;
      (*(v133 + 32))(v127, v3, v134);
      v93 = v132;
      (*(v91 + 16))(v132, v92, v90);
      *(v93 + *(v131 + 20)) = v0;
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_36_25();
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_29_24();
        sub_1DCE2FDA8(v94, v95);
        OUTLINED_FUNCTION_18_37();
        sub_1DD0DEFFC();
      }

      OUTLINED_FUNCTION_23_21();
      sub_1DCE2D030(v93, v96);
      (*(v91 + 8))(v92, v90);
      goto LABEL_32;
    case 2u:
      v77 = *v3;
      v76 = v3[1];
      v78 = v3[2];
      LOBYTE(v141) = 0;
      v79 = v139;
      v80 = v137;
      sub_1DD0DEFBC();
      if (!v80)
      {
        v141 = v77;
        v142 = v76;
        v143 = v78;
        v140 = 1;
        sub_1DCB2BB9C();
        OUTLINED_FUNCTION_70_9();
        sub_1DD0DEFFC();
      }

      v81 = OUTLINED_FUNCTION_6_56();
      v82(v81, v79);

      goto LABEL_35;
    case 3u:
      v83 = *v3;
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_42_24(0x34766C6Eu);
      v84 = v139;
      v85 = v137;
      sub_1DD0DEFBC();
      if (v85)
      {
        v86 = OUTLINED_FUNCTION_6_56();
        v87(v86, v84);
        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      v106 = objc_opt_self();
      v141 = 0;
      v107 = OUTLINED_FUNCTION_78_11(v106, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
      v108 = v141;
      if (v107)
      {
        v109 = sub_1DD0DAF2C();
        v111 = v110;

        v141 = v109;
        v142 = v111;
        v140 = v42;
        sub_1DCB51540();
        OUTLINED_FUNCTION_70_9();
        sub_1DD0DEFFC();
        v112 = OUTLINED_FUNCTION_6_56();
        v113(v112, v84);
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      v120 = v108;
      sub_1DD0DAE0C();

      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_43;
    case 4u:
      OUTLINED_FUNCTION_5_74();
      sub_1DCB541A0(v3, v0);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_68_13();
      OUTLINED_FUNCTION_67_12();
      v67 = v139;
      v68 = v137;
      sub_1DD0DEFBC();
      if (!v68)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_21_27();
        sub_1DCE2FDA8(v69, v70);
        OUTLINED_FUNCTION_18_37();
        sub_1DD0DEFFC();
      }

      sub_1DCE2D030(v0, type metadata accessor for Parse.PegasusResult);
      v66 = OUTLINED_FUNCTION_6_56();
      v71 = v67;
      goto LABEL_34;
    case 5u:
      v97 = *v3;
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_72_11();
      v84 = v139;
      v98 = v137;
      sub_1DD0DEFBC();
      if (v98)
      {
        v99 = OUTLINED_FUNCTION_6_56();
        v100(v99, v84);
      }

      else
      {
        v114 = objc_opt_self();
        v141 = 0;
        v115 = OUTLINED_FUNCTION_78_11(v114, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
        v116 = v141;
        if (v115)
        {
          v109 = sub_1DD0DAF2C();
          v111 = v117;

          v141 = v109;
          v142 = v111;
          v140 = v42;
          sub_1DCB51540();
          OUTLINED_FUNCTION_70_9();
          sub_1DD0DEFFC();
          v118 = OUTLINED_FUNCTION_6_56();
          v119(v118, v84);

LABEL_40:
          sub_1DCB21A14(v109, v111);
        }

        else
        {
          v121 = v116;
          sub_1DD0DAE0C();

          swift_willThrow();
LABEL_43:
          v66 = OUTLINED_FUNCTION_6_56();
          v71 = v84;
LABEL_34:
          v65(v66, v71);
        }
      }

LABEL_35:
      v105 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_19_19();
      return;
    case 6u:
      OUTLINED_FUNCTION_28_25();
      v72 = v126;
      sub_1DCB541A0(v3, v126);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_36_25();
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_26_25();
        sub_1DCE2FDA8(v101, v102);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v75 = type metadata accessor for USOParse;
      goto LABEL_31;
    case 7u:
      OUTLINED_FUNCTION_32_21();
      v72 = v128;
      sub_1DCB541A0(v3, v128);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_36_25();
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_30_28();
        sub_1DCE2FDA8(v88, v89);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v75 = type metadata accessor for LinkParse;
      goto LABEL_31;
    case 8u:
      OUTLINED_FUNCTION_25_20();
      v72 = v129;
      sub_1DCB541A0(v3, v129);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_77_8();
      OUTLINED_FUNCTION_36_25();
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_24_26();
        sub_1DCE2FDA8(v103, v104);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v75 = type metadata accessor for NLRouterParse;
      goto LABEL_31;
    case 9u:
      OUTLINED_FUNCTION_20_23();
      v72 = v130;
      sub_1DCB541A0(v3, v130);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_65_10();
      OUTLINED_FUNCTION_64_11();
      OUTLINED_FUNCTION_36_25();
      if (!v2)
      {
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_19_34();
        sub_1DCE2FDA8(v73, v74);
        OUTLINED_FUNCTION_12_49();
        sub_1DD0DEFFC();
      }

      v75 = type metadata accessor for IFClientActionParse;
LABEL_31:
      sub_1DCE2D030(v72, v75);
      goto LABEL_32;
    case 0xAu:
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_36_25();
LABEL_32:
      v66 = OUTLINED_FUNCTION_6_56();
      goto LABEL_33;
    default:
      v61 = v133;
      v60 = v134;
      (*(v133 + 32))(v41, v3, v134);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_42_24(0x33766C6Eu);
      v62 = v138;
      v0 = v139;
      v63 = v137;
      sub_1DD0DEFBC();
      if (!v63)
      {
        v141 = sub_1DD0DC73C();
        v142 = v64;
        v140 = 1;
        sub_1DCB51540();
        OUTLINED_FUNCTION_70_9();
        sub_1DD0DEFFC();
        sub_1DCB21A14(v141, v142);
      }

      (*(v61 + 8))(v41, v60);
      v65 = *(v136 + 8);
      v66 = v62;
LABEL_33:
      v71 = v0;
      goto LABEL_34;
  }
}

__n128 *OUTLINED_FUNCTION_66_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

void OUTLINED_FUNCTION_66_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 8u);
}

uint64_t OUTLINED_FUNCTION_66_3()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_66_4(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return memcpy((a13 + v13), (a12 + v13), a3);
}

uint64_t OUTLINED_FUNCTION_66_5()
{
  v2 = *(v0 + 1496);
  v3 = *(v0 + 1480);
}

uint64_t OUTLINED_FUNCTION_66_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

void OUTLINED_FUNCTION_66_10()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
}

uint64_t OUTLINED_FUNCTION_66_12()
{

  return sub_1DCB0E9D8(v0 + 56, v1, v2);
}

uint64_t OUTLINED_FUNCTION_66_13(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2080;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_15(uint64_t result)
{
  v2 = *(v1 + 32);
  *(result + 16) = *(v1 + 16);
  *(result + 24) = v2;
  return result;
}

unint64_t sub_1DCB2BB9C()
{
  result = qword_1EDE46658[0];
  if (!qword_1EDE46658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE46658);
  }

  return result;
}

_BYTE *sub_1DCB2BBF0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB2BCBCLL);
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

uint64_t sub_1DCB2BCF4(char a1)
{
  if (a1)
  {
    return 0x6174614472657375;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1DCB2BD38(char a1)
{
  result = 0x6573726170;
  switch(a1)
  {
    case 1:
      result = 0x74616E7265746C61;
      break;
    case 2:
      result = 0x696669746E656469;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Input.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4990, &qword_1DD0EDE10);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_72();
  v13 = a1[4];
  OUTLINED_FUNCTION_57_1(a1, a1[3]);
  sub_1DCB34278();
  sub_1DD0DF24C();
  v14 = type metadata accessor for Input(0);
  v15 = v14[5];
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_9_33();
  sub_1DCB2C054(v16, 255, v17);
  OUTLINED_FUNCTION_48_10();
  if (!v2)
  {
    v22 = *(v4 + v14[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4998, &qword_1DD0EDE18);
    sub_1DCB2C1D8(&qword_1EDE462A8, &qword_1EDE46640);
    OUTLINED_FUNCTION_48_10();
    sub_1DD0DB04C();
    OUTLINED_FUNCTION_32_13();
    sub_1DCB2C054(v18, 255, v19);
    OUTLINED_FUNCTION_48_10();
    v21 = *(v4 + v14[8]);
    sub_1DCB342CC();
    sub_1DD0DEFFC();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1DCB2C054(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void static SnippetManager.sharedInstance.getter()
{
  if (qword_1EDE49808 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void *sub_1DCB2C100(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for AppIntentBehaviorResponseHandler.AppIntentBehaviorResponseError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DCB2C1D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4998, &qword_1DD0EDE18);
    OUTLINED_FUNCTION_9_33();
    sub_1DCB2C054(a2, 255, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_59_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_56_10()
{
  v3 = *v0;
}

void OUTLINED_FUNCTION_56_11()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_56_14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_56_15()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_56_18(uint64_t a1)
{
  v3 = v1 + *(a1 + 48);

  return sub_1DCB24858();
}

double OUTLINED_FUNCTION_56_20()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  return result;
}

void OUTLINED_FUNCTION_56_23()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
}

double OUTLINED_FUNCTION_56_26()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0;
  return result;
}

uint64_t type metadata accessor for IdentifiedUser()
{
  result = qword_1EDE4F910;
  if (!qword_1EDE4F910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB2C480()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_8(v1);

  return v4(v3);
}

uint64_t sub_1DCB2C520(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DCB21A14(a1, a2);
  }

  return a1;
}

void sub_1DCB2C534(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1DD0DDF8C();

  [a3 *a4];
}

unint64_t sub_1DCB2C5A0()
{
  result = qword_1EDE4F200;
  if (!qword_1EDE4F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F200);
  }

  return result;
}

uint64_t destroy for NLContextUpdate(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 16);

  v6 = *(a1 + 24);

  v7 = *(a1 + 40);

  v8 = *(a1 + 48);

  v9 = *(a1 + 56);

  v10 = *(a1 + 80);

  v11 = *(a1 + 96);

  v12 = *(a1 + 104);

  v13 = *(a1 + 120);

  v14 = *(a1 + 152);

  v15 = *(a1 + 160);

  v16 = *(a1 + 168);

  v17 = *(a1 + 192);

  v18 = *(a1 + 208);

  v19 = *(a1 + 216);

  v20 = *(a1 + 224);

  v21 = *(a1 + 232);

  v22 = *(a1 + 240);

  if (*(a1 + 256))
  {

    v23 = *(a1 + 264);
  }

  v24 = *(a1 + 280);

  v25 = *(a2 + 128);
  v26 = sub_1DD0DD72C();
  if (!__swift_getEnumTagSinglePayload(a1 + v25, 1, v26))
  {
    (*(*(v26 - 8) + 8))(a1 + v25, v26);
  }

  v27 = *(a1 + *(a2 + 140) + 8);
}

double OUTLINED_FUNCTION_30_5@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_14()
{

  return sub_1DCB10E9C(v0, v1, (v2 - 96));
}

void OUTLINED_FUNCTION_30_15()
{

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_30_17(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 424);
  return result;
}

__n128 OUTLINED_FUNCTION_30_19@<Q0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  *(v1 + a1) = result;
  return result;
}

id OUTLINED_FUNCTION_30_21(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return v12;
}

uint64_t OUTLINED_FUNCTION_30_23()
{

  return sub_1DCB285E0(v0, type metadata accessor for Parse);
}

BOOL OUTLINED_FUNCTION_30_26()
{
  *(v0 + 152) = v2;

  return os_log_type_enabled(v1, v2);
}

size_t OUTLINED_FUNCTION_30_27(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB597F0(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_30_29()
{
  *v3 = v2;
  v3[1] = v1;
  v6 = v3 + *(v4 + 20);

  return sub_1DCC333DC(v0, v6);
}

void OUTLINED_FUNCTION_30_30()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void OUTLINED_FUNCTION_30_31()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
}

uint64_t OUTLINED_FUNCTION_30_32(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_33(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return *(v3 + 24);
}

void OUTLINED_FUNCTION_30_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_30_38(uint64_t a1)
{

  return [v1 (v2 + 259)];
}

void OUTLINED_FUNCTION_30_40()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_30_41()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[11];
}

uint64_t OUTLINED_FUNCTION_30_46@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 80);

  return type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter();
}

void OUTLINED_FUNCTION_30_47()
{
  v7 = v1[13];
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + v1[15]);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + v1[16]) = 0;
  *(v0 + v1[18]) = 0;
  v4 = v0 + v1[19];
  *v4 = 0;
  *(v4 + 8) = 512;
  *(v0 + v1[20]) = 0;
  *(v0 + v1[21]) = 0;
  *(v0 + v1[22]) = 0;
  *(v0 + v1[23]) = 0;
  *(v0 + v1[24]) = 0;
  *(v0 + v1[25]) = 0;
  v5 = (v0 + v1[26]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[27]) = 0;
  v6 = v1[28];
}

uint64_t OUTLINED_FUNCTION_30_48()
{
  v3 = *(v0 + 136);
}

double OUTLINED_FUNCTION_126_0()
{
  *(v0 + 232) = 0;
  result = 0.0;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  return result;
}

void OUTLINED_FUNCTION_126_2()
{

  sub_1DD0DCA7C();
}

void sub_1DCB2CC34(uint64_t a1, unint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  if (*(v2 + 216))
  {
    v6 = *(v2 + 216);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);

  if (v7 || (*(v2 + 224) ? (v8 = *(v2 + 224)) : (v8 = v5), v9 = *(v8 + 16), , , v9))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);

    oslog = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1DCB10E9C(a1, a2, &v15);
      _os_log_impl(&dword_1DCAFC000, oslog, v11, "%s called on an NLContextUpdate containing SystemDialogActs or Reference Resolution entities. These will be lost in the conversion, this function should not be used.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A8390](v13, -1, -1);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t Input.description.getter()
{
  v2 = v0;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x6170287475706E49, 0xED0000203A657372);
  v3 = *(OUTLINED_FUNCTION_92_4() + 20);
  type metadata accessor for Parse(0);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0x6E7265746C61202CLL, 0xEF5B736576697461);
  v8 = *(*(v2 + *(v1 + 24)) + 16);
  v4 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v4);

  MEMORY[0x1E12A6780](2112093, 0xE300000000000000);
  v5 = OUTLINED_FUNCTION_20();
  v6 = MEMORY[0x1E12A6960](v5);
  MEMORY[0x1E12A6780](v6);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t NLContextUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  v2 = type metadata accessor for NLContextUpdate();
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  v3 = v2[32];
  v4 = sub_1DD0DD72C();
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  *(a1 + v2[33]) = 2;
  *(a1 + v2[34]) = 2;
  v6 = (a1 + v2[35]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t AppInformationResolver.__deallocating_deinit()
{
  AppInformationResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t AppInformationResolver.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DCB2D10C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 displayAppName];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DD0DDFBC();

  return v4;
}

id sub_1DCB2D178()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result hasSiriIntegration];
  }

  return result;
}

void *DefaultFlowActivity.init(activityName:activityType:activityStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = v6;
  OUTLINED_FUNCTION_1_13();
  v11[6] = 0xD000000000000013;
  OUTLINED_FUNCTION_15_32();
  OUTLINED_FUNCTION_14_33();
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v14;
  v11[5] = v15;
  v11[7] = 0x80000001DD0EFB70;
  v11[8] = 0;
  v11[9] = 0;
  v11[10] = v14;
  v11[11] = v15;
  v11[13] = 0xBFF0000000000000;
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v11[6] = v10;
  v11[7] = v9;
  v11[14] = v8;
  v11[15] = v7;
  if (a6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "activityStartTime is nil", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    v11[12] = 0xBFF0000000000000;
  }

  else
  {
    v11[12] = a5;
  }

  return v11;
}

uint64_t sub_1DCB2D314(double a1)
{
  OUTLINED_FUNCTION_47_2();
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1DCB2D3C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D70, &qword_1DD0EFBA8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCB2D700();
  sub_1DD0DF24C();
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v10 = v2[2];
  v11 = v2[3];

  OUTLINED_FUNCTION_1_53();
  sub_1DD0DEFBC();
  if (v10)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v12 = v2[4];
  v13 = v2[5];

  OUTLINED_FUNCTION_1_53();
  sub_1DD0DEFBC();
  if (v12)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v14 = v2[6];
  v15 = v2[7];

  OUTLINED_FUNCTION_1_53();
  sub_1DD0DEFBC();
  if (v14)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v16 = v2[8];
  v17 = v2[9];

  OUTLINED_FUNCTION_1_53();
  sub_1DD0DEF8C();
  if (v16)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v18 = v2[10];
  v19 = v2[11];

  OUTLINED_FUNCTION_1_53();
  sub_1DD0DEFBC();
  if (v18)
  {
LABEL_6:
    v20 = OUTLINED_FUNCTION_8_39();
    v21(v20);
  }

  else
  {

    OUTLINED_FUNCTION_2_50();
    swift_beginAccess();
    v23 = v2[12];
    sub_1DD0DEFDC();
    OUTLINED_FUNCTION_2_50();
    swift_beginAccess();
    v24 = v2[13];
    sub_1DD0DEFDC();
    OUTLINED_FUNCTION_2_50();
    swift_beginAccess();
    v25 = v2[14];
    v26 = v2[15];

    sub_1DD0DEFBC();
    v27 = OUTLINED_FUNCTION_8_39();
    v28(v27);
  }
}

unint64_t sub_1DCB2D700()
{
  result = qword_1EDE4F1C0[0];
  if (!qword_1EDE4F1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4F1C0);
  }

  return result;
}

uint64_t sub_1DCB2D75C(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6D726F6674616C70;
      break;
    case 2:
    case 7:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    case 4:
      result = 0x6E696769726FLL;
      break;
    case 5:
      result = 0x6D617473656D6974;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DefaultFlowActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB2D920);
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

uint64_t type metadata accessor for USOParse()
{
  result = qword_1EDE4D890;
  if (!qword_1EDE4D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriKitReliabilityCodes.rawValue.getter()
{
  result = 0x7261507974706D65;
  switch(*v0)
  {
    case 1:
    case 3:
    case 0x29:
    case 0x35:
    case 0x3B:
    case 0x3E:
    case 0x4A:
    case 0x4D:
      OUTLINED_FUNCTION_0_122();
      return v14 | 8;
    case 2:
    case 0x76:
      OUTLINED_FUNCTION_0_122();
      return v8 + 14;
    case 4:
    case 0x53:
    case 0x74:
    case 0x75:
      OUTLINED_FUNCTION_0_122();
      return v10 + 5;
    case 5:
    case 0xE:
    case 0xF:
    case 0x16:
    case 0x5C:
      OUTLINED_FUNCTION_0_122();
      return v6 - 1;
    case 6:
      return 0xD000000000000014;
    case 7:
    case 0xA:
    case 0x1A:
    case 0x2D:
    case 0x43:
    case 0x49:
    case 0x50:
    case 0x69:
      OUTLINED_FUNCTION_0_122();
      return v13 - 2;
    case 8:
      return 0xD000000000000014;
    case 9:
      return result;
    case 0xB:
    case 0x1E:
    case 0x20:
    case 0x39:
    case 0x5B:
    case 0x6B:
    case 0x6F:
    case 0x70:
    case 0x71:
      OUTLINED_FUNCTION_0_122();
      return v11 | 1;
    case 0xC:
      return 0xD000000000000014;
    case 0xD:
    case 0x1B:
    case 0x36:
    case 0x3C:
    case 0x59:
      OUTLINED_FUNCTION_0_122();
      return v21 + 4;
    case 0x10:
      return 0xD000000000000014;
    case 0x11:
      return 0xD000000000000014;
    case 0x12:
    case 0x61:
      v4 = 11;
      goto LABEL_65;
    case 0x13:
      return 0x6F43746E65746E69;
    case 0x14:
    case 0x24:
    case 0x26:
    case 0x4E:
    case 0x55:
      OUTLINED_FUNCTION_0_122();
      return v18 - 3;
    case 0x15:
    case 0x17:
    case 0x46:
    case 0x56:
    case 0x64:
    case 0x65:
    case 0x73:
    case 0x78:
      OUTLINED_FUNCTION_0_122();
      return v20 | 3;
    case 0x18:
      return 0x73696C6B63616C62;
    case 0x19:
      return 0x7473694C796E6564;
    case 0x1C:
    case 0x4B:
    case 0x66:
    case 0x79:
      OUTLINED_FUNCTION_0_122();
      return v9 + 13;
    case 0x1D:
      return 0x6C616D726F6ELL;
    case 0x21:
      return 0x5274726174736572;
    case 0x22:
      return 0x69536574756D6E75;
    case 0x23:
      return 0x61507463656A6572;
    case 0x25:
      return 0x746E49726566666FLL;
    case 0x27:
      return 0x74756F68636E7570;
    case 0x28:
      return 0xD000000000000014;
    case 0x2A:
      return 0xD000000000000014;
    case 0x2C:
      return 0x45636972656E6567;
    case 0x2E:
    case 0x32:
    case 0x33:
      OUTLINED_FUNCTION_0_122();
      return v16 + 6;
    case 0x2F:
      return 0x73736563637573;
    case 0x30:
      return 0x616552736D657469;
    case 0x31:
      return 0x6261646165526F6ELL;
    case 0x34:
      v4 = 10;
      goto LABEL_65;
    case 0x37:
    case 0x41:
      OUTLINED_FUNCTION_0_122();
      return v12 + 16;
    case 0x38:
    case 0x42:
    case 0x62:
    case 0x67:
      OUTLINED_FUNCTION_0_122();
      return v17 + 12;
    case 0x3A:
      OUTLINED_FUNCTION_0_122();
      return v3 + 15;
    case 0x3D:
      OUTLINED_FUNCTION_0_122();
      return v5 + 19;
    case 0x3F:
      return 0x655364726143656DLL;
    case 0x40:
      return 0x6F4E64726143656DLL;
    case 0x44:
      return 0xD000000000000014;
    case 0x45:
      return 0xD000000000000014;
    case 0x47:
      return 0x52736C65636E6163;
    case 0x48:
      return 0xD000000000000014;
    case 0x4C:
      return 0x6572676F72506E69;
    case 0x4F:
      return 0x65756E69746E6F63;
    case 0x51:
      return 0xD000000000000014;
    case 0x52:
      return 0x6E697265646E6572;
    case 0x54:
      OUTLINED_FUNCTION_0_122();
      return v2 - 4;
    case 0x57:
      return 0xD000000000000014;
    case 0x5A:
      return 0x614674706D6F7270;
    case 0x5D:
      return 0x7073655272657375;
    case 0x5E:
    case 0x60:
      v4 = 9;
LABEL_65:
      result = v4 | 0xD000000000000014;
      break;
    case 0x5F:
      OUTLINED_FUNCTION_0_122();
      result = v19 + 7;
      break;
    case 0x63:
      result = 0xD000000000000014;
      break;
    case 0x68:
      OUTLINED_FUNCTION_0_122();
      result = v15 + 24;
      break;
    case 0x6A:
      result = 0xD000000000000014;
      break;
    case 0x6C:
      result = 0x4D7463656A627573;
      break;
    case 0x6D:
      result = 0x69646F4D79646F62;
      break;
    case 0x6E:
    case 0x72:
      result = 0x746174536C6C6163;
      break;
    case 0x7A:
      result = 0xD000000000000014;
      break;
    case 0x7B:
      result = 0x6576726553706D61;
      break;
    case 0x7C:
      result = 0x656B636F4C707061;
      break;
    default:
      OUTLINED_FUNCTION_0_122();
      result = v7 | 2;
      break;
  }

  return result;
}

uint64_t sub_1DCB2E64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80();
  }

  return v9 & 1;
}

void *NLContextUpdate.toAceContextUpdate()()
{
  sub_1DCB2CC34(0xD000000000000014, 0x80000001DD11E850);
  v1 = 0;
  return NLContextUpdate.doConvertToAceContextUpdate(options:)(&v1);
}

void *NLContextUpdate.doConvertToAceContextUpdate(options:)(void *a1)
{
  v2 = v1;
  __dst[12] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v253 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v253 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v253 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_33_2();
  v259 = v19;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_33_2();
  v264 = v22;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_33_2();
  v261 = v25;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_33_2();
  v265 = v28;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_33_2();
  v262 = v31;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_33_2();
  v263 = v34;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_33_2();
  v260 = v37;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_33_2();
  v257 = v40;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_33_2();
  v255 = v43;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_33_2();
  v258 = v46;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v47, v48);
  v256 = &v253 - v49;
  v50 = sub_1DD0DE01C();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8, v52);
  OUTLINED_FUNCTION_16();
  v272 = v54 - v53;
  if ((*v2 | *a1))
  {
    v55 = 0x1E69C7750;
  }

  else
  {
    v55 = 0x1E69C7748;
  }

  v56 = [objc_allocWithZone(*v55) init];
  v57 = *MEMORY[0x1E69C7C38];
  __dst[0] = sub_1DD0DDFBC();
  __dst[1] = v58;
  sub_1DCB1C4D8();
  v59 = sub_1DD0DEA5C();

  if (!v59[2])
  {
    v154 = v13;

    OUTLINED_FUNCTION_24_24();
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_20();
    __dst[0] = v156 - 1;
    __dst[1] = v155;
    v157 = sub_1DD0DDFBC();
    MEMORY[0x1E12A6780](v157);

    v158 = qword_1EDE4F900;

    if (v158 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v159 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v159, qword_1EDE57E00);
    OUTLINED_FUNCTION_8_55();
    v161 = v160;
    (*(v160 + 16))(v154);
    __swift_storeEnumTagSinglePayload(v154, 0, 1, v159);
    sub_1DCB09910(v154, v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_17_3(v9);
    if (v141)
    {
      sub_1DCB0E9D8(v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v209 = sub_1DD0DD8EC();
      v210 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_30_26())
      {
        OUTLINED_FUNCTION_83();
        v271 = OUTLINED_FUNCTION_19_30();
        v275[0] = v271;
        *v210 = 136315650;
        v211 = OUTLINED_FUNCTION_28_23();
        v213 = OUTLINED_FUNCTION_42_22(v211, v212);

        *(v210 + 4) = v213;
        *(v210 + 12) = 2048;
        *(v210 + 24) = OUTLINED_FUNCTION_2_69(57);
        OUTLINED_FUNCTION_9_53(&dword_1DCAFC000, v214, v215, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_29_22();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      (*(v161 + 8))(v9, v159);
    }

    v216 = OUTLINED_FUNCTION_131();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v216, v217);
  }

  v60 = v59[4];
  v61 = v59[5];
  v62 = v59[6];
  v63 = v59[7];

  __dst[0] = 0x3A4E4F534ALL;
  __dst[1] = 0xE500000000000000;
  v64 = OUTLINED_FUNCTION_131();
  v267 = v63;
  v65 = MEMORY[0x1E12A66E0](v64);
  MEMORY[0x1E12A6780](v65);

  v268 = v56;
  sub_1DCB2C534(__dst[0], __dst[1], v56, &selRef_setContextVersion_);
  v66 = [objc_allocWithZone(MEMORY[0x1E69C7740]) init];
  v67 = v66;
  v68 = *(v2 + 1);
  if (v68)
  {
    sub_1DCB10E5C(0, &qword_1EDE461F0, 0x1E69C77B8);
    OUTLINED_FUNCTION_75_0();
    v66 = sub_1DD0DE2DC();
    v68 = v66;
  }

  OUTLINED_FUNCTION_14_43(v66, sel_setApplicationContextObjects_);

  v70 = *(v2 + 2);
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7488, &unk_1DD0F8960);
    OUTLINED_FUNCTION_75_0();
    v69 = sub_1DD0DE2DC();
    v70 = v69;
  }

  OUTLINED_FUNCTION_14_43(v69, sel_setConversationStateAttachments_);

  v71 = *(v2 + 3);
  if (v71)
  {
    v71 = sub_1DD0DE2DC();
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  OUTLINED_FUNCTION_14_43(v71, sel_setDictationPromptAbortValues_);

  if (*(v2 + 5))
  {
    v74 = *(v2 + 4);
    v73 = sub_1DD0DDF8C();
    v75 = v73;
  }

  else
  {
    v75 = 0;
  }

  OUTLINED_FUNCTION_14_43(v73, sel_setDictationPromptTargetDomain_);

  v76 = *(v2 + 6);
  if (v76)
  {
    v76 = sub_1DD0DE2DC();
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  OUTLINED_FUNCTION_14_43(v76, sel_setDictationPromptTargetNodes_);

  v78 = *(v2 + 7);
  if (v78)
  {
    v78 = sub_1DD0DE2DC();
    v79 = v78;
  }

  else
  {
    v79 = 0;
  }

  OUTLINED_FUNCTION_14_43(v78, sel_setDisambiguationPromptAbortValues_);

  if ((v2[72] & 1) == 0)
  {
    v80 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    OUTLINED_FUNCTION_14_43(v80, sel_setDisambiguationPromptAmbiguityId_);
  }

  v81 = *(v2 + 10);
  if (v81)
  {
    v81 = sub_1DD0DE2DC();
    v82 = v81;
  }

  else
  {
    v82 = 0;
  }

  OUTLINED_FUNCTION_14_43(v81, sel_setDisambiguationPromptResponseTargets_);

  if (*(v2 + 12))
  {
    v84 = *(v2 + 11);
    v83 = sub_1DD0DDF8C();
    v85 = v83;
  }

  else
  {
    v85 = 0;
  }

  OUTLINED_FUNCTION_14_43(v83, sel_setDisambiguationPromptTargetDomain_);

  v87 = *(v2 + 13);
  if (v87)
  {
    v266 = v2;
    v88 = sub_1DD0DAAFC();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    swift_allocObject();
    v271 = sub_1DD0DAAEC();
    v61 = *(v87 + 16);
    v91 = MEMORY[0x1E69E7CC0];
    if (v61)
    {
      v253 = v67;
      v254 = v17;
      v273 = MEMORY[0x1E69E7CC0];
      sub_1DCB38954();
      v92 = 0;
      v91 = v273;
      v93 = (v87 + 32);
      v269 = v61;
      v270 = v87;
      do
      {
        if (v92 >= *(v87 + 16))
        {
          __break(1u);
        }

        memcpy(__dst, v93, 0x60uLL);
        memcpy(v275, __dst, sizeof(v275));
        sub_1DCC089D8(__dst, &v274);
        sub_1DCE06CC8();
        v94 = sub_1DD0DAADC();
        v96 = v95;
        v275[0] = v94;
        v275[1] = v95;
        sub_1DD0DE00C();
        sub_1DCB2C5A0();
        v97 = sub_1DD0DDFEC();
        if (!v98)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v132 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v132, qword_1EDE57E00);
          OUTLINED_FUNCTION_22_27();
          v134 = v133;
          v135 = v255;
          (*(v133 + 16))(v255);
          v136 = OUTLINED_FUNCTION_61_0();
          __swift_storeEnumTagSinglePayload(v136, v137, v138, v132);
          v139 = v135;
          v140 = v257;
          sub_1DCB09910(v139, v257, &unk_1ECCA7470, &qword_1DD0E16E0);
          OUTLINED_FUNCTION_11_44(v140);
          if (v141)
          {
            sub_1DCB0E9D8(v257, &unk_1ECCA7470, &qword_1DD0E16E0);
          }

          else
          {
            v142 = sub_1DD0DD8EC();
            v143 = sub_1DD0DE6EC();
            if (OUTLINED_FUNCTION_75(v143))
            {
              OUTLINED_FUNCTION_83();
              v275[0] = OUTLINED_FUNCTION_54();
              *v96 = 136315650;
              v144 = OUTLINED_FUNCTION_28_23();
              v146 = sub_1DCB10E9C(v144, v145, v275);

              *(v96 + 4) = v146;
              *(v96 + 12) = 2048;
              OUTLINED_FUNCTION_5_48(84);
              v147 = OUTLINED_FUNCTION_40_20();
              *(v96 + 24) = sub_1DCB10E9C(v147, v148, v149);
              OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v150, v151, "FatalError at %s:%lu - %s");
              swift_arrayDestroy();
              OUTLINED_FUNCTION_37();
              OUTLINED_FUNCTION_80();
            }

            (*(v134 + 8))(v257, v132);
          }

          v152 = OUTLINED_FUNCTION_40_20();
          static SiriKitLifecycle._logCrashToEventBus(_:)(v152, v153);
        }

        v99 = v97;
        v100 = v98;
        sub_1DCB21A14(v94, v96);
        sub_1DCC08A34(__dst);
        v273 = v91;
        v101 = *(v91 + 16);
        if (v101 >= *(v91 + 24) >> 1)
        {
          sub_1DCB38954();
          v91 = v273;
        }

        ++v92;
        *(v91 + 16) = v101 + 1;
        v102 = v91 + 16 * v101;
        *(v102 + 32) = v99;
        *(v102 + 40) = v100;
        v93 += 96;
        v61 = v269;
        v87 = v270;
      }

      while (v269 != v92);
      v67 = v253;
      v17 = v254;
    }

    sub_1DCE06D1C(v91, v67);

    v2 = v266;
  }

  if (*(v2 + 15))
  {
    v103 = *(v2 + 14);
    v86 = sub_1DD0DDF8C();
    v104 = v86;
  }

  else
  {
    v104 = 0;
  }

  OUTLINED_FUNCTION_14_43(v86, sel_setNlInput_);

  if (v2[200] != 2)
  {
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v105 = sub_1DD0DE8CC();
    OUTLINED_FUNCTION_14_43(v105, sel_setObjectDisambiguation_);
  }

  [v67 setSiriKitMetrics_];
  [v67 setShouldResetFlowTaskState_];
  [v67 setSystemDialogActOutput_];
  v106 = *(v2 + 21);
  if (v106)
  {
    v106 = sub_1DD0DE2DC();
    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  OUTLINED_FUNCTION_14_43(v106, sel_setWeightedPromptResponseOptions_);

  v108 = *(v2 + 20);
  if (v108)
  {
    v108 = sub_1DD0DE2DC();
    v109 = v108;
  }

  else
  {
    v109 = 0;
  }

  OUTLINED_FUNCTION_14_43(v108, sel_setWeightedPromptResponseTargets_);

  if (v2[176] != 2)
  {
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v111 = sub_1DD0DE8CC();
    OUTLINED_FUNCTION_14_43(v111, sel_setWeightedPromptStrict_);
  }

  if (*(v2 + 24))
  {
    v112 = *(v2 + 23);
    v110 = sub_1DD0DDF8C();
    v113 = v110;
  }

  else
  {
    v113 = 0;
  }

  OUTLINED_FUNCTION_14_43(v110, sel_setWeightedPromptTargetDomain_);

  v114 = [v67 dictionary];
  if (!v114)
  {
    v162 = v17;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v163 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v163, qword_1EDE57E00);
    OUTLINED_FUNCTION_22_27();
    v165 = v164;
    v166 = v259;
    (*(v164 + 16))(v259);
    v167 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v163);
    sub_1DCB09910(v166, v17, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_11_44(v17);
    if (v141)
    {
      sub_1DCB0E9D8(v17, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v218 = sub_1DD0DD8EC();
      v219 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v219))
      {
        OUTLINED_FUNCTION_83();
        v272 = OUTLINED_FUNCTION_54();
        __dst[0] = v272;
        *v61 = 136315650;
        v220 = OUTLINED_FUNCTION_28_23();
        v222 = sub_1DCB10E9C(v220, v221, __dst);

        *(v61 + 4) = v222;
        *(v61 + 12) = 2048;
        OUTLINED_FUNCTION_5_48(106);
        *(v61 + 24) = sub_1DCB10E9C(0xD00000000000005BLL, 0x80000001DD11E650, __dst);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v223, v224, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v165 + 8))(v162, v163);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000005BLL, 0x80000001DD11E650);
  }

  v115 = v114;
  v275[3] = sub_1DCB10E5C(0, &unk_1EDE4D6E0, 0x1E695DF90);
  v275[0] = v115;
  v116 = v115;
  sub_1DCB2FFBC(v275, __dst);
  __swift_destroy_boxed_opaque_existential_1Tm(v275);
  sub_1DCB10E5C(0, &unk_1EDE4D708, 0x1E695DF20);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_24_24();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_38_20();
    MEMORY[0x1E12A6780](v170 + 21, v171 | 0x8000000000000000);
    v172 = [v116 description];
    sub_1DD0DDFBC();

    v173 = OUTLINED_FUNCTION_131();
    MEMORY[0x1E12A6780](v173);

    v174 = qword_1EDE4F900;

    if (v174 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v175 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v175, qword_1EDE57E00);
    OUTLINED_FUNCTION_8_55();
    v177 = v176;
    v178 = v261;
    (*(v176 + 16))(v261);
    v179 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v175);
    v182 = v178;
    v183 = v264;
    sub_1DCB09910(v182, v264, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_17_3(v183);
    if (v141)
    {
      sub_1DCB0E9D8(v264, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v225 = sub_1DD0DD8EC();
      v226 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_30_26())
      {
        OUTLINED_FUNCTION_83();
        v271 = OUTLINED_FUNCTION_19_30();
        v275[0] = v271;
        *v226 = 136315650;
        v227 = OUTLINED_FUNCTION_28_23();
        OUTLINED_FUNCTION_42_22(v227, v228);

        OUTLINED_FUNCTION_23_19();
        *(v226 + 24) = OUTLINED_FUNCTION_2_69(110);
        OUTLINED_FUNCTION_9_53(&dword_1DCAFC000, v229, v230, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_29_22();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      (*(v177 + 8))(v264, v175);
    }

    v231 = OUTLINED_FUNCTION_131();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v231, v232);
  }

  v117 = v275[0];
  v118 = objc_opt_self();
  __dst[0] = 0;
  v119 = [v118 dataWithJSONObject:v117 options:0 error:__dst];
  v120 = __dst[0];
  if (!v119)
  {
    v184 = v120;
    v185 = sub_1DD0DAE0C();

    swift_willThrow();
    OUTLINED_FUNCTION_24_24();
    sub_1DD0DEC1C();

    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_20();
    __dst[0] = v187 - 2;
    __dst[1] = v186;
    v188 = [v117 description];
    sub_1DD0DDFBC();

    v189 = OUTLINED_FUNCTION_131();
    MEMORY[0x1E12A6780](v189);

    v190 = qword_1EDE4F900;

    if (v190 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v191 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v191, qword_1EDE57E00);
    OUTLINED_FUNCTION_8_55();
    v193 = v192;
    v194 = v262;
    (*(v192 + 16))(v262);
    v195 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v195, v196, v197, v191);
    v198 = v194;
    v199 = v265;
    sub_1DCB09910(v198, v265, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_17_3(v199);
    if (v141)
    {
      sub_1DCB0E9D8(v265, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v233 = sub_1DD0DD8EC();
      v234 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_30_26())
      {
        OUTLINED_FUNCTION_83();
        v271 = OUTLINED_FUNCTION_19_30();
        v275[0] = v271;
        *v234 = 136315650;
        v235 = OUTLINED_FUNCTION_28_23();
        OUTLINED_FUNCTION_42_22(v235, v236);

        OUTLINED_FUNCTION_23_19();
        *(v234 + 24) = OUTLINED_FUNCTION_2_69(114);
        OUTLINED_FUNCTION_9_53(&dword_1DCAFC000, v237, v238, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_29_22();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      (*(v193 + 8))(v265, v191);
    }

    v239 = OUTLINED_FUNCTION_131();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v239, v240);
  }

  v121 = sub_1DD0DAF2C();
  v123 = v122;

  __dst[0] = v121;
  __dst[1] = v123;
  sub_1DD0DE00C();
  sub_1DCB2C5A0();
  v124 = sub_1DD0DDFEC();
  if (!v125)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v200 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v200, qword_1EDE57E00);
    OUTLINED_FUNCTION_22_27();
    v202 = v201;
    v203 = v260;
    (*(v201 + 16))(v260);
    v204 = OUTLINED_FUNCTION_61_0();
    __swift_storeEnumTagSinglePayload(v204, v205, v206, v200);
    v207 = v203;
    v208 = v263;
    sub_1DCB09910(v207, v263, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_11_44(v208);
    if (v141)
    {
      sub_1DCB0E9D8(v263, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v241 = sub_1DD0DD8EC();
      v242 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v242))
      {
        OUTLINED_FUNCTION_83();
        v272 = OUTLINED_FUNCTION_54();
        __dst[0] = v272;
        *v117 = 136315650;
        v243 = OUTLINED_FUNCTION_28_23();
        v245 = sub_1DCB10E9C(v243, v244, __dst);

        *(v117 + 1) = v245;
        *(v117 + 6) = 2048;
        OUTLINED_FUNCTION_5_48(117);
        v246 = OUTLINED_FUNCTION_40_20();
        *(v117 + 3) = sub_1DCB10E9C(v246, v247, v248);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v249, v250, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v202 + 8))(v263, v200);
    }

    v251 = OUTLINED_FUNCTION_40_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v251, v252);
  }

  v126 = v124;
  v127 = v125;

  v128 = v126;
  v129 = v268;
  sub_1DCB2C534(v128, v127, v268, &selRef_setContext_);
  sub_1DCB21A14(v121, v123);

  v130 = *MEMORY[0x1E69E9840];
  return v129;
}

void sub_1DCB2FFBC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD0DAE2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB0DF6C(a1, &v32);
  sub_1DCB10E5C(0, &unk_1EDE4D708, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    v10 = v28;
    v11 = [v28 count];
    v12 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity_];
    sub_1DD0DE6AC();
    while (1)
    {
      sub_1DD0DE6BC();
      v32 = v28;
      v33 = v29;
      v34[0] = v30;
      v34[1] = v31;
      if (!*(&v29 + 1))
      {
        break;
      }

      sub_1DCB20B30(v34, &v28);
      sub_1DCB20B30(&v32, &v35);
      sub_1DCB2FFBC(v27, &v28);
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      v13 = sub_1DD0DF09C();
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      [v12 __swift_setObject_forKeyedSubscript_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    }

    a2[3] = sub_1DCB10E5C(0, &unk_1EDE4D6E0, 0x1E695DF90);

    *a2 = v12;
    return;
  }

  sub_1DCB0DF6C(a1, &v32);
  sub_1DCB10E5C(0, &unk_1EDE4D6B0, 0x1E695DEC8);
  if (swift_dynamicCast())
  {
    v14 = v28;
    v15 = [v28 count];
    v16 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity_];
    sub_1DD0DE87C();
    while (1)
    {
      sub_1DD0DAE1C();
      if (!*(&v33 + 1))
      {
        break;
      }

      sub_1DCB20B30(&v32, &v28);
      sub_1DCB2FFBC(&v35, &v28);
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      v17 = sub_1DD0DF09C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v35);
      [v16 addObject_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    (*(v5 + 8))(v9, v4);
    a2[3] = sub_1DCB10E5C(0, &qword_1EDE461F8, 0x1E695DF70);

    *a2 = v16;
    return;
  }

  sub_1DCB0DF6C(a1, &v32);
  sub_1DCB10E5C(0, &qword_1EDE4D6C0, 0x1E695DF00);
  if (swift_dynamicCast())
  {
    v18 = v28;
    [v28 timeIntervalSince1970];
    v20 = v19 * 1000.0;
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        v21 = v20;
        a2[3] = MEMORY[0x1E69E7360];

        *a2 = v21;
        return;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_1DCB0DF6C(a1, &v32);
  sub_1DCB10E5C(0, &qword_1EDE4F6B0, 0x1E695DEF0);
  if (swift_dynamicCast())
  {
    v22 = v28;
    v23 = [v28 base64EncodedStringWithOptions_];
    v24 = sub_1DD0DDFBC();
    v26 = v25;

    a2[3] = MEMORY[0x1E69E6158];
    *a2 = v24;
    a2[1] = v26;
  }

  else
  {
    sub_1DCB0DF6C(a1, a2);
  }
}

void *initializeBufferWithCopyOfBuffer for Parse(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      goto LABEL_29;
    case 1u:
      v15 = sub_1DD0DC76C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v9;
      *(a1 + 2) = *(a2 + 2);

      goto LABEL_29;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_29;
    case 4u:
      v7 = sub_1DD0DB1EC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_29;
    case 5u:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_29;
    case 6u:
      v19 = sub_1DD0DB4BC();
      (*(*(v19 - 8) + 16))(a1, a2, v19);
      v20 = type metadata accessor for USOParse();
      v21 = v20[5];
      v22 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
        __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
      }

      v57 = v20[6];
      v58 = &a1[v57];
      v59 = &a2[v57];
      v60 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v60;
      v61 = v20[7];
      v62 = &a1[v61];
      v63 = &a2[v61];
      v62[4] = v63[4];
      *v62 = *v63;

      goto LABEL_29;
    case 7u:
      v10 = sub_1DD0DB4BC();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v11 = type metadata accessor for USOParse();
      v12 = v11[5];
      v13 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v12], 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
      }

      else
      {
        (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
        __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v13);
      }

      v37 = v11[6];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 1) = v40;
      v41 = v11[7];
      v42 = &a1[v41];
      v43 = &a2[v41];
      v42[4] = v43[4];
      *v42 = *v43;
      v44 = type metadata accessor for LinkParse();
      v45 = v44[5];
      v46 = &a1[v45];
      v47 = &a2[v45];
      v48 = *(v47 + 1);
      *v46 = *v47;
      *(v46 + 1) = v48;
      v49 = v44[6];
      v50 = &a1[v49];
      v51 = &a2[v49];
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 1) = v52;
      v53 = v44[7];
      v54 = &a1[v53];
      v55 = &a2[v53];
      v56 = *(v55 + 1);
      *v54 = *v55;
      *(v54 + 1) = v56;

      goto LABEL_29;
    case 8u:
      v26 = sub_1DD0DD12C();
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = type metadata accessor for NLRouterParse();
      v28 = v27[5];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v31 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v31;
      v32 = v27[6];
      v33 = &a1[v32];
      v34 = &a2[v32];
      v35 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v34, 1, v35))
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v33, v34, *(*(v36 - 8) + 64));
      }

      else
      {
        v64 = sub_1DD0DB4BC();
        (*(*(v64 - 8) + 16))(v33, v34, v64);
        v65 = v35[5];
        v66 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v34[v65], 1, v66))
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v33[v65], &v34[v65], *(*(v67 - 8) + 64));
        }

        else
        {
          (*(*(v66 - 8) + 16))(&v33[v65], &v34[v65], v66);
          __swift_storeEnumTagSinglePayload(&v33[v65], 0, 1, v66);
        }

        v68 = v35[6];
        v69 = &v33[v68];
        v70 = &v34[v68];
        v71 = *(v70 + 1);
        *v69 = *v70;
        *(v69 + 1) = v71;
        v72 = v35[7];
        v73 = &v33[v72];
        v74 = &v34[v72];
        v73[4] = v74[4];
        *v73 = *v74;

        __swift_storeEnumTagSinglePayload(v33, 0, 1, v35);
      }

      v75 = v27[7];
      v76 = *&a2[v75];
      *&a1[v75] = v76;
      v77 = v76;
      goto LABEL_29;
    case 9u:
      v8 = sub_1DD0DD08C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_29:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v24 = *(v5 + 64);

      result = memcpy(a1, a2, v24);
      break;
  }

  return result;
}

Swift::Void __swiftcall CoreAnalyticsService.sendHandleRequestEvent(intentTypeName:)(Swift::String intentTypeName)
{
  object = intentTypeName._object;
  countAndFlagsBits = intentTypeName._countAndFlagsBits;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_88_0();
  v6 = swift_allocObject();
  *(v6 + 16) = countAndFlagsBits;
  *(v6 + 24) = object;
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCB5256C;
  *(v7 + 24) = v6;

  v5(0xD00000000000002DLL, 0x80000001DD117C90, sub_1DCB5259C, v7);
}

uint64_t sub_1DCB30D28()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

void sub_1DCB30D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v15 - v11;
  sub_1DD0DE48C();
  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCB30E90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for AppResolutionFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void static IntentTopic.make(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v366 = sub_1DD0DB22C();
  v24 = OUTLINED_FUNCTION_9(v366);
  v365 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24, v28);
  OUTLINED_FUNCTION_16();
  v364 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F60, &qword_1DD0F4448);
  OUTLINED_FUNCTION_20_0(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  v380 = &v357 - v36;
  v37 = OUTLINED_FUNCTION_12();
  v38 = type metadata accessor for Parse.PegasusResult(v37);
  v39 = OUTLINED_FUNCTION_20_0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39, v42);
  OUTLINED_FUNCTION_16();
  v45 = v44 - v43;
  v363 = type metadata accessor for IFClientActionParse();
  v46 = OUTLINED_FUNCTION_2(v363);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46, v49);
  OUTLINED_FUNCTION_10_2();
  v362 = v50 - v51;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_33_2();
  v379 = v54;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v357 - v57;
  v361 = type metadata accessor for NLRouterParse();
  v59 = OUTLINED_FUNCTION_2(v361);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59, v62);
  OUTLINED_FUNCTION_10_2();
  v360 = v63 - v64;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v65, v66);
  OUTLINED_FUNCTION_33_2();
  v377 = v67;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v68, v69);
  v382 = &v357 - v70;
  OUTLINED_FUNCTION_12();
  v71 = type metadata accessor for LinkParse();
  v72 = OUTLINED_FUNCTION_20_0(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72, v75);
  OUTLINED_FUNCTION_16();
  v381 = v77 - v76;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
  OUTLINED_FUNCTION_2(v369);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v80, v81);
  v368 = &v357 - v82;
  OUTLINED_FUNCTION_12();
  v367 = type metadata accessor for USOParse();
  v83 = OUTLINED_FUNCTION_2(v367);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83, v86);
  OUTLINED_FUNCTION_10_2();
  v375 = v87 - v88;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v89, v90);
  OUTLINED_FUNCTION_33_2();
  v378 = v91;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v92, v93);
  OUTLINED_FUNCTION_33_2();
  v374 = v94;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v95, v96);
  v376 = &v357 - v97;
  OUTLINED_FUNCTION_12();
  v373 = sub_1DD0DB3EC();
  v98 = OUTLINED_FUNCTION_9(v373);
  v372 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98, v102);
  OUTLINED_FUNCTION_16();
  v370 = v104 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20E8, &unk_1DD0E40F0);
  OUTLINED_FUNCTION_20_0(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v108, v109);
  v371 = &v357 - v110;
  OUTLINED_FUNCTION_12();
  v111 = sub_1DD0DC76C();
  v112 = OUTLINED_FUNCTION_9(v111);
  v384 = v113;
  v385 = v112;
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v112, v116);
  OUTLINED_FUNCTION_16();
  v383 = v118 - v117;
  v119 = OUTLINED_FUNCTION_12();
  v120 = type metadata accessor for Parse(v119);
  v121 = OUTLINED_FUNCTION_2(v120);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121, v124);
  OUTLINED_FUNCTION_10_2();
  v127 = (v125 - v126);
  v130 = MEMORY[0x1EEE9AC00](v128, v129);
  v132 = &v357 - v131;
  MEMORY[0x1EEE9AC00](v130, v133);
  v135 = &v357 - v134;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v136 = sub_1DD0DD8FC();
  v137 = __swift_project_value_buffer(v136, qword_1EDE57E00);
  OUTLINED_FUNCTION_6_46();
  v386 = v23;
  sub_1DCB24740(v23, v135, v138);
  v139 = sub_1DD0DD8EC();
  v140 = sub_1DD0DE6DC();
  v141 = &off_1DD0E0000;
  if (os_log_type_enabled(v139, v140))
  {
    v142 = OUTLINED_FUNCTION_151();
    v358 = v137;
    v143 = v142;
    v144 = OUTLINED_FUNCTION_83();
    v359 = v58;
    v145 = v45;
    v146 = v144;
    v389[0] = v144;
    *v143 = 136315138;
    OUTLINED_FUNCTION_6_46();
    sub_1DCB24740(v135, v132, v147);
    v148 = sub_1DD0DE02C();
    v150 = v149;
    OUTLINED_FUNCTION_30_23();
    v151 = sub_1DCB10E9C(v148, v150, v389);
    v141 = &off_1DD0E0000;

    *(v143 + 4) = v151;
    _os_log_impl(&dword_1DCAFC000, v139, v140, "IntentTopic.make(from:) : %s", v143, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v146);
    v45 = v145;
    v58 = v359;
    OUTLINED_FUNCTION_80();
    v137 = v358;
    OUTLINED_FUNCTION_80();
  }

  else
  {

    OUTLINED_FUNCTION_30_23();
  }

  OUTLINED_FUNCTION_6_46();
  sub_1DCB24740(v386, v127, v152);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v249 = *(v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));
      v250 = sub_1DD0DD8EC();
      v251 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v251))
      {
        v252 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v252);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v253, v254, v255, v256, v257, 2u);
        OUTLINED_FUNCTION_62();
      }

      v258 = *(v384 + 8);
      sub_1DD0DCF8C();
    case 2u:
      v203 = v141;
      v205 = *v127;
      v204 = v127[1];
      v206 = v127[2];
      v207 = HIBYTE(v204) & 0xF;
      if ((v204 & 0x2000000000000000) == 0)
      {
        v207 = *v127 & 0xFFFFFFFFFFFFLL;
      }

      if (v207)
      {
        v208 = v127[2];

        v209 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_45_1())
        {
          v210 = OUTLINED_FUNCTION_151();
          v211 = OUTLINED_FUNCTION_83();
          v389[0] = v211;
          *v210 = *(v203 + 246);

          v212 = sub_1DCB10E9C(v205, v204, v389);

          *(v210 + 4) = v212;
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v213, v214, v215, v216, v217, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v211);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_62();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v218 = OUTLINED_FUNCTION_40_9();
        *(v218 + 16) = xmmword_1DD0E07C0;

        OUTLINED_FUNCTION_72_8(260);
        *(v218 + 72) = v205;
        *(v218 + 80) = v204;
        *(v218 + 88) = 0;
      }

      else
      {
        v336 = v127[1];

        v337 = sub_1DD0DD8EC();
        v338 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v338))
        {
          v339 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v339);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v340, v341, v342, v343, v344, 2u);
          OUTLINED_FUNCTION_62();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v345 = OUTLINED_FUNCTION_40_9();
        *(v345 + 16) = xmmword_1DD0E07C0;
        *&v346 = OUTLINED_FUNCTION_8_44(v345, 260);
        *(v347 + 72) = v346;
        *(v347 + 88) = 0;
      }

      break;
    case 3u:
      v219 = *v127;
      v220 = sub_1DD0DD8EC();
      v221 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v221))
      {
        v222 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v222);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v223, v224, v225, v226, v227, 2u);
        OUTLINED_FUNCTION_62();
      }

      v228 = v372;
      v229 = v370;
      v230 = v373;
      (*(v372 + 104))(v370, *MEMORY[0x1E69D0978], v373);
      v231 = OUTLINED_FUNCTION_16_18();
      static IntentTopic.makeFromTasks(userDialogAct:parserIdentifier:)(v231, v232);
      OUTLINED_FUNCTION_76_8();
      swift_unknownObjectRelease();
      (*(v228 + 8))(v229, v230);
      break;
    case 4u:
      v174 = OUTLINED_FUNCTION_65_7();
      sub_1DCDA9AC0(v174, v45, v175);
      v176 = v380;
      Parse.PegasusResult.clientComponent.getter();
      sub_1DD0DB20C();
      v177 = OUTLINED_FUNCTION_76_8();
      if (__swift_getEnumTagSinglePayload(v177, 1, v137) == 1)
      {
        sub_1DCB0E9D8(v176, &qword_1ECCA5F60, &qword_1DD0F4448);
        v178 = sub_1DD0DD8EC();
        v179 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v179))
        {
          v180 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v180);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v181, v182, v183, v184, v185, 2u);
          OUTLINED_FUNCTION_80();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v186 = OUTLINED_FUNCTION_40_9();
        OUTLINED_FUNCTION_24_22(v186, "com.apple.siri.pegasus.generic", xmmword_1DD0E07C0);
      }

      else
      {
        v305 = v141;
        v306 = v364;
        sub_1DD0DB1FC();
        OUTLINED_FUNCTION_112(v137);
        (*(v307 + 8))(v176, v137);
        v308 = sub_1DD0DB21C();
        v310 = v309;
        (*(v365 + 8))(v306, v366);

        v311 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_45_1())
        {
          v312 = v45;
          v313 = OUTLINED_FUNCTION_151();
          v389[0] = OUTLINED_FUNCTION_83();
          *v313 = *(v305 + 246);
          v314 = OUTLINED_FUNCTION_16_18();
          *(v313 + 4) = sub_1DCB10E9C(v314, v315, v316);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v317, v318, v319, v320, v321, 0xCu);
          OUTLINED_FUNCTION_44_1();
          OUTLINED_FUNCTION_80();
          v45 = v312;
          OUTLINED_FUNCTION_80();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v322 = OUTLINED_FUNCTION_40_9();
        *(v322 + 16) = xmmword_1DD0E07C0;
        OUTLINED_FUNCTION_8_44(v322, 261);
        *(v187 + 72) = v308;
        *(v187 + 80) = v310;
      }

      *(v187 + 88) = 0;
      v323 = type metadata accessor for Parse.PegasusResult;
      v324 = v45;
      goto LABEL_58;
    case 5u:
      v259 = *v127;
      sub_1DD0DD73C();
      if (v260)
      {
        OUTLINED_FUNCTION_50_9();

        v261 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();

        if (OUTLINED_FUNCTION_45_1())
        {
          v262 = OUTLINED_FUNCTION_151();
          v263 = OUTLINED_FUNCTION_83();
          v389[0] = v263;
          *v262 = *(v141 + 246);
          *(v262 + 4) = OUTLINED_FUNCTION_40_16();
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v264, v265, v266, v267, v268, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v263);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_62();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v269 = OUTLINED_FUNCTION_40_9();
        *(v269 + 16) = xmmword_1DD0E07C0;
        OUTLINED_FUNCTION_8_44(v269, 261);
        *(v270 + 72) = v141;
        *(v270 + 80) = v58;
      }

      else
      {
        v348 = sub_1DD0DD8EC();
        v349 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v349))
        {
          v350 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v350);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v351, v352, v353, v354, v355, 2u);
          OUTLINED_FUNCTION_62();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v356 = OUTLINED_FUNCTION_40_9();
        OUTLINED_FUNCTION_24_22(v356, "com.apple.siri.pegasus.generic", xmmword_1DD0E07C0);
      }

      *(v270 + 88) = 0;

      break;
    case 6u:
      v271 = OUTLINED_FUNCTION_65_7();
      v234 = v376;
      sub_1DCDA9AC0(v271, v376, v272);
      v273 = v374;
      sub_1DCB24740(v234, v374, type metadata accessor for USOParse);
      v274 = sub_1DD0DD8EC();
      v275 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v275))
      {
        v276 = OUTLINED_FUNCTION_151();
        v277 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v277);
        OUTLINED_FUNCTION_75_7(COERCE_FLOAT(*(v141 + 246)));
        OUTLINED_FUNCTION_74_8(&a12);
        sub_1DCB099BC(v278, v279, v280, v281);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v273, v282);
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v276 + 4) = v141;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v283, v284, "IntentTopic.make(from:) for .uso parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v273, v334);
      }

      sub_1DCDA7FF8(v234);
      v329 = type metadata accessor for USOParse;
      goto LABEL_57;
    case 7u:
      v233 = OUTLINED_FUNCTION_65_7();
      v234 = v381;
      sub_1DCDA9AC0(v233, v381, v235);
      v236 = v378;
      sub_1DCB24740(v234, v378, type metadata accessor for USOParse);
      v237 = v375;
      sub_1DCB24740(v236, v375, type metadata accessor for USOParse);
      v238 = sub_1DD0DD8EC();
      v239 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v239))
      {
        v240 = OUTLINED_FUNCTION_151();
        v241 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v241);
        OUTLINED_FUNCTION_75_7(COERCE_FLOAT(*(v141 + 246)));
        OUTLINED_FUNCTION_74_8(&a12);
        sub_1DCB099BC(v242, v243, v244, v245);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v237, v246);
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v240 + 4) = v141;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v247, v248, "IntentTopic.make(from:) for .link parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_1_71();
        sub_1DCB285E0(v237, v327);
      }

      sub_1DCDA7FF8(v236);
      OUTLINED_FUNCTION_1_71();
      sub_1DCB285E0(v236, v328);
      v329 = type metadata accessor for LinkParse;
      goto LABEL_57;
    case 8u:
      v293 = OUTLINED_FUNCTION_65_7();
      v234 = v382;
      sub_1DCDA9AC0(v293, v382, v294);
      OUTLINED_FUNCTION_25_15();
      sub_1DCB24740(v234, v377, v295);
      v296 = sub_1DD0DD8EC();
      v297 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v297))
      {
        v298 = OUTLINED_FUNCTION_151();
        v299 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v299);
        *v298 = *(v141 + 246);
        OUTLINED_FUNCTION_25_15();
        OUTLINED_FUNCTION_74_8(&v387);
        sub_1DCB24740(v300, v301, v302);
        sub_1DD0DE02C();
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_31_17();
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v298 + 4) = v141;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v303, v304, "IntentTopic.make(from:) for .nlRouter parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_31_17();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
      v335 = OUTLINED_FUNCTION_40_9();
      *(v335 + 16) = xmmword_1DD0E07C0;
      *(v335 + 32) = 262;
      *(v335 + 40) = 0;
      *(v335 + 48) = 0;
      *(v335 + 56) = xmmword_1DD0F4420;
      *(v335 + 72) = 0;
      *(v335 + 80) = 0;
      *(v335 + 88) = 0;
      v329 = type metadata accessor for NLRouterParse;
LABEL_57:
      v323 = v329;
      v324 = v234;
      goto LABEL_58;
    case 9u:
      v188 = OUTLINED_FUNCTION_65_7();
      sub_1DCDA9AC0(v188, v58, v189);
      OUTLINED_FUNCTION_23_18();
      v190 = v379;
      sub_1DCB24740(v58, v379, v191);
      v192 = sub_1DD0DD8EC();
      v193 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_51_14(v193))
      {
        v194 = OUTLINED_FUNCTION_151();
        v195 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_81_5(v195);
        *v194 = *(v141 + 246);
        OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_74_8(&v388);
        sub_1DCB24740(v196, v197, v198);
        v199 = sub_1DD0DE02C();
        OUTLINED_FUNCTION_4_65();
        sub_1DCB285E0(v190, v200);
        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_73_7();

        *(v194 + 4) = v199;
        OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v201, v202, "IntentTopic.make(from:) for .ifClientAction parse, parser: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_4_65();
        sub_1DCB285E0(v190, v325);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
      v326 = OUTLINED_FUNCTION_40_9();
      *(v326 + 16) = xmmword_1DD0E07C0;
      *(v326 + 32) = 263;
      *(v326 + 40) = 0;
      *(v326 + 48) = 0;
      *(v326 + 56) = xmmword_1DD0F4410;
      *(v326 + 72) = 0;
      *(v326 + 80) = 0;
      *(v326 + 88) = 0;
      OUTLINED_FUNCTION_4_65();
      v324 = v58;
LABEL_58:
      sub_1DCB285E0(v324, v323);
      break;
    case 0xAu:
      v285 = sub_1DD0DD8EC();
      v286 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v286))
      {
        v287 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v287);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v288, v289, v290, v291, v292, 2u);
        OUTLINED_FUNCTION_62();
      }

      break;
    default:
      v153 = v384;
      v154 = v385;
      (*(v384 + 32))(v383, v127, v385);
      v155 = sub_1DD0DD8EC();
      v156 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_22(v156))
      {
        v157 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v157);
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v158, v159, v160, v161, v162, 2u);
        OUTLINED_FUNCTION_62();
      }

      v163 = v371;
      v164 = v383;
      sub_1DD0DC72C();
      v165 = sub_1DD0DBD0C();
      if (__swift_getEnumTagSinglePayload(v163, 1, v165) == 1)
      {
        sub_1DCB0E9D8(v163, &qword_1ECCA20E8, &unk_1DD0E40F0);
        v166 = sub_1DD0DD8EC();
        v167 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_22(v167))
        {
          v168 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v168);
          OUTLINED_FUNCTION_9_3();
          _os_log_impl(v169, v170, v171, v172, v173, 2u);
          OUTLINED_FUNCTION_62();
        }

        (*(v153 + 8))(v164, v154);
      }

      else
      {
        sub_1DD0DBCFC();
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_112(v165);
        (*(v330 + 8))(v163, v165);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
        v331 = OUTLINED_FUNCTION_40_9();
        *(v331 + 16) = xmmword_1DD0E07C0;
        v332 = OUTLINED_FUNCTION_8_44(v331, 256);
        *(v333 + 72) = v163;
        *(v333 + 80) = v45;
        *(v333 + 88) = 0;
        (*(v153 + 8))(v164, v154, v332);
      }

      break;
  }

  OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for IFClientActionParse()
{
  result = qword_1EDE4E1E8;
  if (!qword_1EDE4E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NLRouterParse()
{
  result = qword_1EDE4EAB0;
  if (!qword_1EDE4EAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LinkParse()
{
  result = qword_1EDE4D7F0;
  if (!qword_1EDE4D7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Input.init(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Input(0);
  v5 = a2 + v4[7];
  *(v5 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v5);
  v7 = *(v6 + 20);
  OUTLINED_FUNCTION_1_51();
  sub_1DCB246E8(a1, a2 + v8);
  *(a2 + v4[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_5_42();
  result = sub_1DCB28538();
  *(a2 + v4[8]) = 0;
  return result;
}

uint64_t initializeWithCopy for IntentTopic(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t IntentTopic.makeWildcardFallbacks()()
{
  v1 = v0[1];
  v14 = *v0;
  v15 = v1;
  v16[0] = v0[2];
  *(v16 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2490, &unk_1DD0F4450);
  v2 = swift_allocObject();
  v3 = *v0;
  v4 = v0[1];
  *(v2 + 16) = xmmword_1DD0E4000;
  *(v2 + 32) = v3;
  v5 = v0[2];
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 73) = *(v0 + 41);
  v6 = v14;
  v7 = BYTE1(v14);
  v8 = *(&v15 + 1);
  v9 = *&v16[0];
  *(v2 + 96) = v14;
  *(v2 + 97) = v7;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = v8;
  *(v2 + 128) = v9;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  v10 = *(&v14 + 1);
  v11 = v15;
  *(v2 + 160) = v6;
  *(v2 + 161) = v7;
  *(v2 + 168) = v10;
  *(v2 + 176) = v11;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0;
  *(v2 + 224) = v6;
  *(v2 + 225) = v7;
  *(v2 + 248) = 0u;
  *(v2 + 280) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 264) = 0u;
  sub_1DCB32880(&v14, &v13);

  return v2;
}

void *sub_1DCB3291C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69CEA28]) init];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x1E69CEA10]) init];
    if (v16)
    {
      v17 = v16;
      [v15 setPlugin_];
      [v17 setStartedOrChanged_];
      sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      (*(v9 + 16))(v13, a4, v8);
      v18 = sub_1DCB0DEDC(v13);
      [v17 setHypothesisId_];

      [a1 setFlowPluginLoadContext_];
      v19 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1EDE57DA0);
  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DCAFC000, v21, v22, "[ConversationSELFHelper] Failed to create context SELF objects", v23, 2u);
    MEMORY[0x1E12A8390](v23, -1, -1);
  }

  return 0;
}

int8x16_t OUTLINED_FUNCTION_52_5(int8x16_t *a1)
{
  v2[3].i64[0] = a1;
  result = vextq_s8(v2[2], v2[2], 8uLL);
  a1[1] = result;
  a1[2].i64[0] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_11()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void OUTLINED_FUNCTION_52_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_52_15(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 224);
  return result;
}

id OUTLINED_FUNCTION_52_16(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

void OUTLINED_FUNCTION_52_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
}

uint64_t OUTLINED_FUNCTION_52_21()
{
  v2 = *(v0 + 56);

  return sub_1DCB28690(v2, type metadata accessor for Input);
}

__n128 OUTLINED_FUNCTION_52_22(uint64_t a1)
{
  *(v3 + 112) = a1;
  result = *(v3 + 80);
  v5 = *(v3 + 96);
  *(a1 + 16) = result;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2;
  *(a1 + 56) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for OutputGenerationManifest();
}

uint64_t OUTLINED_FUNCTION_52_24()
{

  return type metadata accessor for SiriKitRequestTCCAcceptanceFlowNLOnlyStrategy();
}

void OUTLINED_FUNCTION_52_25()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_52_26()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_52_28()
{
  v1 = *(v0 - 176);
  *(v0 - 144) = *(v0 - 184);
  *(v0 - 136) = v1;
}

uint64_t OUTLINED_FUNCTION_52_29()
{
  v5 = v1[10];
  *(v0 + v1[11]) = 0;
  v3 = v1[12];

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_52_31(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21)
{
  v23 = a20;
  a1[1] = a19;
  a1[2] = v23;
  a1[3] = a21;

  return sub_1DCB17D04(v21, &a19);
}

uint64_t sub_1DCB32E94()
{
  sub_1DD0DF1DC();
  IntentTopic.hash(into:)();
  return sub_1DD0DF20C();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void *OUTLINED_FUNCTION_72_0(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(a1, a2);
  v4 = *(v2 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_2()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 100);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_72_3()
{

  JUMPOUT(0x1E12A6780);
}

void OUTLINED_FUNCTION_72_5(void *a1@<X8>)
{
  v2 = a1[1];
  *v1 = *a1;
  v1[1] = v2;
}

void OUTLINED_FUNCTION_72_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

double OUTLINED_FUNCTION_72_8@<D0>(__int16 a1@<W8>)
{
  *(v1 + 32) = a1;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_13()
{
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
}

__n128 OUTLINED_FUNCTION_72_15(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 368) = *a1;
  *(v1 + 384) = v2;
  result = *(a1 + 32);
  *(v1 + 400) = result;
  *(v1 + 416) = *(a1 + 48);
  return result;
}

void OUTLINED_FUNCTION_72_16()
{
  v2 = (v1 + v0);
  v4 = *v2;
  v3 = v2[1];
}

uint64_t OUTLINED_FUNCTION_72_17(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a6;
  v6[11] = result;
  v6[12] = a5;
  return result;
}

void OUTLINED_FUNCTION_72_18()
{
  v2 = v0[44];
  v3 = v0[53];
  v4 = v0[54];

  sub_1DCF212A0(v3, v4, 2);
}

uint64_t OUTLINED_FUNCTION_72_19(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_72_21()
{

  return swift_once();
}

uint64_t destroy for IntentTopic(void *a1)
{
  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[6];
}

void IntentTopic.hash(into:)()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1DCB33260(v8, *v0);
  sub_1DD0DDF2C();

  if (v3)
  {
    MEMORY[0x1E12A7840](0);
    sub_1DD0DDF2C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    MEMORY[0x1E12A7840](1);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1DD0DF1FC();
    OUTLINED_FUNCTION_49();
    return;
  }

  MEMORY[0x1E12A7840](1);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  MEMORY[0x1E12A7840](0);
  sub_1DD0DDF2C();
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1DD0DF1FC();
  OUTLINED_FUNCTION_49();

  sub_1DD0DDF2C();
}

uint64_t sub_1DCB33260(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
      OUTLINED_FUNCTION_57_8();
      break;
    default:
      break;
  }

  sub_1DD0DDF2C();
}

void static IntentTopic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 1);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a1 + 40);
  v18 = *(a2 + 48);
  v19 = *(a1 + 48);
  if ((sub_1DCB33588(*a1, *a2) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_1DCB33500(v2, v7) & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = v3;
  v23 = v4;
  v20 = v8;
  v21 = v9;

  v12 = static IntentTopic.IntentTopicWildcardString.== infix(_:_:)(&v22, &v20);

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = v5;
  v23 = v6;
  v20 = v10;
  v21 = v11;

  v13 = static IntentTopic.IntentTopicWildcardString.== infix(_:_:)(&v22, &v20);

  if ((v13 & 1) == 0 || !v19 || !v18)
  {
    goto LABEL_14;
  }

  if (v17 != v16 || v19 != v18)
  {
    OUTLINED_FUNCTION_88_5();

    sub_1DD0DF0AC();
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_88_5();
  }
}

uint64_t sub_1DCB33500(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1701736302;
  }

  else
  {
    v3 = 0x33764F5355;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1701736302;
  }

  else
  {
    v5 = 0x33764F5355;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

uint64_t sub_1DCB33588(unsigned __int8 a1, char a2)
{
  v2 = 863390798;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 863390798;
  switch(v4)
  {
    case 1:
      v5 = 880168014;
      break;
    case 2:
      v5 = 1885430133;
      break;
    case 3:
      v5 = 0x4974694B69726973;
      v3 = 0xED0000746E65746ELL;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v6 = "pp";
      goto LABEL_8;
    case 5:
      v5 = 0xD000000000000010;
      v6 = "directInvocation";
LABEL_8:
      v3 = v6 | 0x8000000000000000;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x726574756F526C6ELL;
      break;
    case 7:
      v5 = 0x746E65696C436669;
      v3 = 0xEE006E6F69746341;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 880168014;
      break;
    case 2:
      v2 = 1885430133;
      break;
    case 3:
      v2 = 0x4974694B69726973;
      v7 = 0xED0000746E65746ELL;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v8 = "pp";
      goto LABEL_18;
    case 5:
      v2 = 0xD000000000000010;
      v8 = "directInvocation";
LABEL_18:
      v7 = v8 | 0x8000000000000000;
      break;
    case 6:
      v7 = 0xE800000000000000;
      v2 = 0x726574756F526C6ELL;
      break;
    case 7:
      v2 = 0x746E65696C436669;
      v7 = 0xEE006E6F69746341;
      break;
    case 8:
      v7 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80();
  }

  return v10 & 1;
}

uint64_t static IntentTopic.IntentTopicWildcardString.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1DD0DF0AC();
}

void IntentTopic.makeCacheKeyAndWildcardFallbacks()()
{
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  v2 = v0[1];
  v44 = *(v0 + 2);
  v45 = *(v0 + 3);
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v6 = *(v0 + 3);
  v5 = *(v0 + 4);
  v8 = *(v0 + 5);
  v7 = *(v0 + 6);
  v9 = v0[56];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5F58, &qword_1DD0F4440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0EB8D0;
  v42 = v1;
  v43 = v2;
  v46 = v4;
  v47 = v3;
  v48 = v6;
  v49 = v5;
  v50 = v8;
  v51 = v7;
  v52 = v9;
  v11 = IntentTopic.cacheKey.getter();
  v12 = 0;
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  if (v1 > 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    if (((1 << v1) & 0x39) != 0)
    {

      v12 = v8;
      v14 = v7;
    }
  }

  *(inited + 48) = v12;
  *(inited + 56) = v14;
  LOBYTE(v35[0]) = v1;
  BYTE1(v35[0]) = v2 & 1;
  v35[1] = 0;
  *&v36 = 0;
  *(&v36 + 1) = v6;
  *v37 = v5;
  *&v37[16] = 0;
  v38 = 0;
  v33[2] = v35[0];
  v33[3] = v36;
  v34[0] = v5;
  *(v34 + 9) = *&v37[9];

  v15 = IntentTopic.cacheKey.getter();
  v17 = v16;
  sub_1DCB340B4(v35);
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  LOBYTE(v39) = v1;
  BYTE1(v39) = v2 & 1;
  *(&v39 + 1) = v4;
  *&v40[0] = v3;
  memset(v40 + 8, 0, 33);
  v32[0] = v39;
  v32[1] = v40[0];
  v33[0] = v40[1];
  *(v33 + 9) = *(&v40[1] + 9);

  IntentTopic.cacheKey.getter();
  OUTLINED_FUNCTION_17_2();
  sub_1DCB340B4(&v39);
  *(inited + 80) = v32;
  *(inited + 88) = v3;
  LOBYTE(v41[0]) = v1;
  BYTE1(v41[0]) = v2 & 1;
  memset(v41 + 8, 0, 49);
  v30[0] = v41[0];
  v30[1] = v41[1];
  v31[0] = v41[2];
  *(v31 + 9) = *(&v41[2] + 9);
  IntentTopic.cacheKey.getter();
  OUTLINED_FUNCTION_17_2();
  sub_1DCB340B4(v41);
  v18 = 0;
  *(inited + 96) = v30;
  *(inited + 104) = v3;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v20 = v18 - 1;
  v21 = 16 * v18 + 40;
  while (1)
  {
    if (v20 == 4)
    {
      swift_setDeallocating();
      sub_1DCB3424C();
      OUTLINED_FUNCTION_49();
      return;
    }

    if (++v20 > 4)
    {
      break;
    }

    v22 = v21 + 16;
    v23 = *(inited + v21);
    v21 += 16;
    if (v23)
    {
      v24 = *(inited + v22 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v19 + 16);
        sub_1DCB34108();
        v19 = v28;
      }

      v25 = *(v19 + 16);
      if (v25 >= *(v19 + 24) >> 1)
      {
        sub_1DCB34108();
        v19 = v29;
      }

      v18 = v20 + 1;
      *(v19 + 16) = v25 + 1;
      v26 = v19 + 16 * v25;
      *(v26 + 32) = v24;
      *(v26 + 40) = v23;
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t IntentTopic.cacheKey.getter()
{
  v1 = 863390798;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 4);
  v33 = *(v0 + 3);
  v7 = *(v0 + 6);
  if (v7)
  {
    v32 = *(v0 + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DD0EB8D0;
    v9 = v8;
    switch(v2)
    {
      case 1:
        v1 = 880168014;
        break;
      case 2:
        v1 = 1885430133;
        break;
      case 3:
        OUTLINED_FUNCTION_37_20();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_85_6();
        break;
      case 6:
        OUTLINED_FUNCTION_64_9();
        break;
      case 7:
        OUTLINED_FUNCTION_36_20();
        break;
      case 8:
        OUTLINED_FUNCTION_63_9();
        break;
      default:
        break;
    }

    v12 = MEMORY[0x1E69E6158];
    v9[7] = MEMORY[0x1E69E6158];
    v13 = sub_1DCB34060();
    v14 = v13;
    v9[4] = v1;
    v9[5] = 0xE400000000000000;
    v15 = 1701736302;
    if (!v3)
    {
      v15 = 0x33764F5355;
    }

    v16 = 0xE500000000000000;
    v9[12] = v12;
    v9[13] = v13;
    if (v3)
    {
      v16 = 0xE400000000000000;
    }

    v9[8] = v13;
    v9[9] = v15;
    v9[10] = v16;

    if (v5)
    {
      v17 = OUTLINED_FUNCTION_16_18();
      MEMORY[0x1E12A6780](v17);
      OUTLINED_FUNCTION_49_13();
      v18 = 34;
    }

    else
    {
      v18 = 42;
    }

    v9[17] = v12;
    v9[18] = v14;
    v9[14] = v18;
    v9[15] = 0xE100000000000000;
    if (v6)
    {
      MEMORY[0x1E12A6780](v33, v6);
      OUTLINED_FUNCTION_49_13();
      v19 = 34;
    }

    else
    {
      v19 = 42;
    }

    v9[22] = v12;
    v9[23] = v14;
    v9[19] = v19;
    v9[20] = 0xE100000000000000;
    v9[27] = v12;
    v9[28] = v14;
    v9[24] = v32;
    v9[25] = v7;
    v20 = 0xD000000000000039;
    v21 = 0x80000001DD11D520;
    v22 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DD0E4000;
    v11 = v10;
    switch(v2)
    {
      case 1:
        v1 = 880168014;
        break;
      case 2:
        v1 = 1885430133;
        break;
      case 3:
        OUTLINED_FUNCTION_37_20();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_85_6();
        break;
      case 6:
        OUTLINED_FUNCTION_64_9();
        break;
      case 7:
        OUTLINED_FUNCTION_36_20();
        break;
      case 8:
        OUTLINED_FUNCTION_63_9();
        break;
      default:
        break;
    }

    v23 = MEMORY[0x1E69E6158];
    v11[7] = MEMORY[0x1E69E6158];
    v24 = sub_1DCB34060();
    v25 = v24;
    v11[4] = v1;
    v11[5] = 0xE400000000000000;
    v26 = 1701736302;
    if (!v3)
    {
      v26 = 0x33764F5355;
    }

    v27 = 0xE500000000000000;
    v11[12] = v23;
    v11[13] = v24;
    if (v3)
    {
      v27 = 0xE400000000000000;
    }

    v11[8] = v24;
    v11[9] = v26;
    v11[10] = v27;
    if (v5)
    {
      v28 = OUTLINED_FUNCTION_16_18();
      MEMORY[0x1E12A6780](v28);
      OUTLINED_FUNCTION_49_13();
      v29 = 34;
    }

    else
    {
      v29 = 42;
    }

    v11[17] = v23;
    v11[18] = v25;
    v11[14] = v29;
    v11[15] = 0xE100000000000000;
    if (v6)
    {
      MEMORY[0x1E12A6780](v33, v6);
      OUTLINED_FUNCTION_49_13();
      v30 = 34;
    }

    else
    {
      v30 = 42;
    }

    v11[22] = v23;
    v11[23] = v25;
    v11[19] = v30;
    v11[20] = 0xE100000000000000;
    v20 = 0xD00000000000002BLL;
    v21 = 0x80000001DD11D4F0;
    v22 = v11;
  }

  return MEMORY[0x1EEDC5E80](v20, v21, v22);
}

uint64_t OUTLINED_FUNCTION_85_3(unint64_t *a1)
{

  return sub_1DCC5DEBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_85_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_85_7()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_85_8()
{
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[68];
  v5 = v0[67];
}

uint64_t OUTLINED_FUNCTION_85_10()
{

  return sub_1DCAFF9E8((v0 + 760), v1 - 128);
}

uint64_t OUTLINED_FUNCTION_85_11(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int8x16_t a11)
{
  a1[1] = vextq_s8(a11, a11, 8uLL);

  return sub_1DD02AA70(v11, a1->i64 + v13, v12);
}

uint64_t OUTLINED_FUNCTION_85_12(uint64_t result)
{
  *(result + 16) = *(v2 - 96);
  *(result + 24) = v1;
  return result;
}

unint64_t sub_1DCB34060()
{
  result = qword_1EDE4D730;
  if (!qword_1EDE4D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D730);
  }

  return result;
}

void sub_1DCB34138()
{
  OUTLINED_FUNCTION_13_48();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_27_25(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_38_21(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_33_19();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_12_46();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_25_19();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_24_25();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v8)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1DCB341E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

uint64_t sub_1DCB34204(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCB34278()
{
  result = qword_1EDE4D990;
  if (!qword_1EDE4D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D990);
  }

  return result;
}

unint64_t sub_1DCB342CC()
{
  result = qword_1EDE481D0;
  if (!qword_1EDE481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE481D0);
  }

  return result;
}

void InputContinuationState.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49A8, &qword_1DD0EDE28);
  v4 = OUTLINED_FUNCTION_9(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_34_0();
  v35 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49B0, &qword_1DD0EDE30);
  v12 = OUTLINED_FUNCTION_9(v11);
  v33 = v13;
  v34 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49B8, &qword_1DD0EDE38);
  OUTLINED_FUNCTION_9(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v33 - v27;
  v29 = *v0;
  v30 = v2[4];
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCB347BC();
  sub_1DD0DF24C();
  v31 = (v22 + 8);
  if (v29)
  {
    sub_1DCD1BA84();
    v32 = v35;
    sub_1DD0DEF7C();
    (*(v36 + 8))(v32, v37);
  }

  else
  {
    sub_1DCB34810();
    sub_1DD0DEF7C();
    (*(v33 + 8))(v19, v34);
  }

  (*v31)(v28, v20);
  OUTLINED_FUNCTION_19_19();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_78_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 96) = a1;
  v6 = *(v1 + 16);

  return sub_1DCB4F1DC(v4, v6, v2, v3);
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  *(v1 + 128) = v0;
  *(v1 + 136) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_78_6()
{

  return sub_1DD0DE02C();
}

uint64_t OUTLINED_FUNCTION_78_7(uint64_t result)
{
  *(result + 16) = 1;
  *(result + 18) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_8(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_78_9()
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 152);
  v5 = *(v1 + 200);
}

id OUTLINED_FUNCTION_78_11(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_78_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_78_13(uint64_t result)
{
  *(v1 + 104) = result;
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_78_14@<Q0>(char a1@<W8>)
{
  v7 = *(v5 + 16);
  *(v6 + 16) = v4;
  result = *v3;
  *(v6 + 24) = *v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  *(v6 + 56) = a1;
  return result;
}

void OUTLINED_FUNCTION_78_15(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 512;
  v2 = *(v1 + 80);
}

uint64_t OUTLINED_FUNCTION_78_16()
{
  v2 = *(v0 + 128);

  return sub_1DD0DD72C();
}

uint64_t OUTLINED_FUNCTION_78_17()
{
  *(v0 + 56) = v1;

  return sub_1DCB17D04(v1, v2 - 208);
}

uint64_t OUTLINED_FUNCTION_78_19(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1DCFEAEC4(a1, a2, a3, v10, a5, 0, 0, 255, a9, a10);
}

uint64_t OUTLINED_FUNCTION_78_21()
{
  result = *(v0 - 208);
  v2 = *(*(v0 - 200) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_22()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
}

unint64_t sub_1DCB347BC()
{
  result = qword_1EDE4DD20;
  if (!qword_1EDE4DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4DD20);
  }

  return result;
}

unint64_t sub_1DCB34810()
{
  result = qword_1EDE4DD48[0];
  if (!qword_1EDE4DD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4DD48);
  }

  return result;
}

unint64_t sub_1DCB34864()
{
  result = qword_1EDE4D978;
  if (!qword_1EDE4D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D978);
  }

  return result;
}

uint64_t sub_1DCB348C0(char a1)
{
  if (a1)
  {
    return 0x61756E69746E6F63;
  }

  else
  {
    return 0x496C616974696E69;
  }
}

_BYTE *sub_1DCB34910(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB349D8);
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
          result = OUTLINED_FUNCTION_10_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCB34A08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_64_5(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_64_5((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_64_5(v8);
}

void Input.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_20_3();
  v64 = v11;
  v14 = v13;
  v57 = v15;
  v16 = sub_1DD0DB04C();
  v17 = OUTLINED_FUNCTION_9(v16);
  v58 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  v25 = type metadata accessor for Parse(0);
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  OUTLINED_FUNCTION_16();
  v60 = v31 - v30;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA49A0, &qword_1DD0EDE20);
  OUTLINED_FUNCTION_9(v62);
  v59 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v57 - v37;
  v39 = type metadata accessor for Input(0);
  v40 = OUTLINED_FUNCTION_2(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40, v43);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v45 = v12 + *(v44 + 28);
  *(v45 + 32) = 0;
  OUTLINED_FUNCTION_26_15(v45);
  v63 = v46;
  v48 = v14[3];
  v47 = v14[4];
  v65 = v14;
  OUTLINED_FUNCTION_57_1(v14, v48);
  sub_1DCB34278();
  v61 = v38;
  v49 = v64;
  sub_1DD0DF23C();
  if (v49)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    sub_1DCB0E9D8(v63, &qword_1ECCA4988, &qword_1DD100F00);
  }

  else
  {
    v64 = v24;
    v50 = v59;
    OUTLINED_FUNCTION_9_33();
    sub_1DCB2C054(v51, 255, v52);
    v53 = v60;
    sub_1DD0DEF4C();
    sub_1DCB541FC(v53, v12 + v39[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4998, &qword_1DD0EDE18);
    sub_1DCB2C1D8(&qword_1EDE462A0, &qword_1EDE46638);
    sub_1DD0DEF4C();
    *(v12 + v39[6]) = v66;
    OUTLINED_FUNCTION_32_13();
    sub_1DCB2C054(v54, 255, v55);
    v56 = v64;
    v60 = 0;
    sub_1DD0DEF4C();
    (*(v58 + 32))(v12, v56, v16);
    sub_1DCB54260();
    sub_1DD0DEF4C();
    (*(v50 + 8))(v61, v62);
    *(v12 + v39[8]) = a11;
    sub_1DCB246E8(v12, v57);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    sub_1DCB28538();
  }

  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCB34FA8()
{
  result = qword_1EDE4D8E0;
  if (!qword_1EDE4D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D8E0);
  }

  return result;
}

uint64_t ConditionalFlow.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for ConditionalFlow.State();
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(v0 + v1);
  OUTLINED_FUNCTION_66();
  v6 = *(v0 + *(v5 + 96));

  OUTLINED_FUNCTION_66();
  v8 = *(v0 + *(v7 + 104));

  return v0;
}

uint64_t ConditionalFlow.__deallocating_deinit()
{
  ConditionalFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AnyValueFlow.__deallocating_deinit()
{
  AnyValueFlow.deinit();

  return swift_deallocClassInstance();
}

void *AnyValueFlow.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

void AnyValueFlow.init<A>(_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_46_8();
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v0[4] = Flow.eraseToAnyFlow()();
  v12 = *(v7 + 16);
  OUTLINED_FUNCTION_152_0();
  v13();
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = *(v5 + 80);
  *(v15 + 3) = v1;
  *(v15 + 4) = v4;
  (*(v7 + 32))(&v15[v14], v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v2[5] = sub_1DCD1BFB0;
  v2[6] = v15;
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_1DD0DEC1C();

  strcpy(&v22, "AnyValueFlow<");
  HIWORD(v22) = -4864;
  OUTLINED_FUNCTION_19();
  v21[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v16 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v16);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v17 = *(&v22 + 1);
  v2[2] = v22;
  v2[3] = v17;
  v18 = *(v7 + 8);
  v19 = OUTLINED_FUNCTION_19();
  v20(v19);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB35350()
{
  OUTLINED_FUNCTION_112(*(v0 + 24));
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t GuardFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t *SharingPolicyCheckFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  return v0;
}

uint64_t SharingPolicyCheckFlow.__deallocating_deinit()
{
  SharingPolicyCheckFlow.deinit();
  OUTLINED_FUNCTION_12_63();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB35468(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DD0DDFBC();

  return v4;
}

unint64_t sub_1DCB354C8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_145_0()
{

  return swift_retain_n();
}

void OUTLINED_FUNCTION_145_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 8u);
}

uint64_t ResponseFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB35574()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC11SiriKitFlow21IntentServicesAdapter_appIntentRegistry;
  v3 = sub_1DD0DD39C();
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void destroy for OutputGenerationManifest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);

  v4 = *(a2 + 20);
  sub_1DD0DCC3C();
}

uint64_t OUTLINED_FUNCTION_114(unint64_t a1)
{

  return sub_1DCB41FF4(a1, v1, v2);
}

uint64_t sub_1DCB35974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t ParameterResolutionResult.__deallocating_deinit()
{
  ParameterResolutionResult.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCB359BC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v59 = v2;
  v3 = sub_1DD0DD85C();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v4, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v54 - v12;
  if (qword_1EDE4EC80 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v14 = sub_1DD0DD88C();
    OUTLINED_FUNCTION_92(v14, qword_1EDE57DD0);
    sub_1DD0DD84C();
    v15 = sub_1DD0DD87C();
    v16 = sub_1DD0DE7FC();
    if (sub_1DD0DE92C())
    {
      v17 = OUTLINED_FUNCTION_50_0();
      *v17 = 0;
      v18 = sub_1DD0DD83C();
      _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v15, v16, v18, "MakeResolutionResults", "", v17, 2u);
      OUTLINED_FUNCTION_80();
    }

    v19 = *(v6 + 16);
    OUTLINED_FUNCTION_99_8();
    v20();
    v21 = sub_1DD0DD8CC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_33_4();
    v54[1] = sub_1DD0DD8BC();
    (*(v6 + 8))(v13, v3);
    v24 = sub_1DCB369DC(v1);
    if (!v24)
    {
      goto LABEL_39;
    }

    v1 = v24;
    v25 = sub_1DCB08B14(v24);
    v60 = 0;
    v26 = 0;
    v57 = v1 & 0xC000000000000001;
    v58 = v25;
    v56 = v1 + 32;
    v27 = MEMORY[0x1E69E7CC8];
    v28 = 0xE000000000000000;
    v3 = &selRef_setResetFlowTaskState_;
    v6 = 1;
    v55 = v1;
LABEL_6:
    if (v26 == v58)
    {

LABEL_28:
      v49 = v60;
      type metadata accessor for ParameterResolutionResult();
      swift_allocObject();
      v50 = v59;
      sub_1DCB35974(v59, v27, v49, v28, 0);
      v51 = qword_1EDE4F900;
      v52 = v50;
      if (v51 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v53 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v53, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    v29 = v57;
    sub_1DCB35460(v26, v57 == 0, v1);
    if (v29)
    {
      v30 = MEMORY[0x1E12A72C0](v26, v1);
    }

    else
    {
      v30 = *(v56 + 8 * v26);
    }

    v31 = v30;
    v32 = __OFADD__(v26, 1);
    v13 = v26 + 1;
    if (v32)
    {
      goto LABEL_35;
    }

    v33 = OUTLINED_FUNCTION_48_5();
    v60 = sub_1DCB35468(v33, v34);
    v64 = v35;
    if (!v35)
    {
      break;
    }

    sub_1DCB361E8();
    if (!v36)
    {

      sub_1DCB3B864();

      OUTLINED_FUNCTION_49();
      return;
    }

    v37 = v36;
    v61 = v13;
    v63 = v31;
    v38 = OUTLINED_FUNCTION_48_5();
    v40 = sub_1DCB35468(v38, v39);
    if (!v41)
    {
      goto LABEL_38;
    }

    v42 = v40;
    v43 = v41;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v27;
    sub_1DCB361D4(v37, v42, v43, isUniquelyReferenced_nonNull_native);

    v62 = v65;
    v45 = sub_1DCB08B14(v37);
    for (i = 0; ; ++i)
    {
      if (v45 == i)
      {

        v28 = v64;
        v26 = v61;
        v27 = v62;
        v1 = v55;
        goto LABEL_6;
      }

      if ((v37 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x1E12A72C0](i, v37);
      }

      else
      {
        if (i >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v47 = *(v37 + 8 * i + 32);
      }

      v13 = v47;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v1 = [v47 resolutionResultCode];

      if (v1 > 7 || ((1 << v1) & 0xA1) == 0)
      {

        v28 = v64;
        v27 = v62;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_14_5();
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

id sub_1DCB35F18()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = [v2 batchSlotResolutionResult];
  sub_1DCB36A4C();
  v8 = v7;

  if (!v8)
  {
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_93_8();
    v17 = 0xD000000000000037;
LABEL_10:
    *v5 = CommandFailure.init(errorCode:reason:)(v15, v17, v16);
    goto LABEL_11;
  }

  result = [v3 batchSlotResolutionResult];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  sub_1DCB359BC();
  v12 = v11;

  if (!v12)
  {

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    OUTLINED_FUNCTION_94_9();
    v17 = v18 + 15;
LABEL_9:
    v16 = v1 | 0x8000000000000000;
    v15 = -1;
    goto LABEL_10;
  }

  v13 = [v3 confirmIntentCompleted];
  sub_1DCB389FC();
  v1 = v14;

  if (!v1)
  {

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    OUTLINED_FUNCTION_94_9();
    v17 = v19 + 6;
    goto LABEL_9;
  }

  *v5 = v8;
  v5[1] = v12;
  v5[2] = v1;
  type metadata accessor for ResolveConfirmProcessingResult();
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_5();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCB360BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v13 = OUTLINED_FUNCTION_2_30(a1, a2, a3);
  OUTLINED_FUNCTION_0_17(v13, v14);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v16 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v16, v6);
    OUTLINED_FUNCTION_5_21();
    if (!v18)
    {
      goto LABEL_14;
    }

    v10 = v17;
  }

  if (v9)
  {
    v19 = *(*v8 + 56);
    v20 = *(v19 + 8 * v10);
    *(v19 + 8 * v10) = v7;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_8_22();
    sub_1DCB361A4(v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_49();
  }
}

unint64_t sub_1DCB361A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

void sub_1DCB361E8()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DD0DE01C();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = [v5 _intentInstanceDescription];
  v17 = sub_1DCB35468(v3, &selRef_base64EncodedProtobufMessage);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_1DD0DAEEC();
    OUTLINED_FUNCTION_16_10();
    if (!(!v24 & v23))
    {
      v38 = v21;
      v1 = v22;

      goto LABEL_14;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);

    v26 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    OUTLINED_FUNCTION_125_4();

    if (!os_log_type_enabled(v26, v1))
    {

LABEL_36:

LABEL_37:
      goto LABEL_38;
    }

    v27 = OUTLINED_FUNCTION_151();
    v28 = OUTLINED_FUNCTION_83();
    v98 = v28;
    *v27 = 136315138;
    v29 = sub_1DCB10E9C(v19, v20, &v98);

    *(v27 + 4) = v29;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v30, v31, v32, v33, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_80();
LABEL_21:
    OUTLINED_FUNCTION_41_26();
    goto LABEL_36;
  }

  v34 = sub_1DCB35468(v3, &selRef_jsonEncodedSlotResolutionResult);
  if (!v35)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v40 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v40, qword_1EDE57E00);
    v26 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_5(v41))
    {
      goto LABEL_36;
    }

LABEL_20:
    v42 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_74_18(v42);
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v43, v44, v45, v46, v0, 2u);
    goto LABEL_21;
  }

  v0 = v34;
  sub_1DD0DE00C();
  sub_1DD0DDFCC();
  OUTLINED_FUNCTION_102_6();

  (*(v9 + 8))(v15, v6);
  if (v1 >> 60 == 15)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v36 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
    v26 = sub_1DD0DD8EC();
    v37 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_5(v37))
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v67 = OUTLINED_FUNCTION_20();
  v38 = v0;
  if (sub_1DCF49B24(v67, v68, v5))
  {

    v69 = OUTLINED_FUNCTION_19();
    sub_1DCB2C520(v69, v70);
    goto LABEL_38;
  }

LABEL_14:
  sub_1DCB35468(v3, &selRef_keyPath);
  if (v39)
  {
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_33_4();
  }

  else
  {
    v3 = 0;
  }

  v47 = [v16 slotByName_];

  if (!v47)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v61 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v61, qword_1EDE57E00);
    v26 = sub_1DD0DD8EC();
    v62 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v62))
    {
      v63 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_74_18(v63);
      OUTLINED_FUNCTION_59_22(&dword_1DCAFC000, v64, v62, "Failed to unwrap object.");
      OUTLINED_FUNCTION_41_26();
    }

    v65 = OUTLINED_FUNCTION_19();
    sub_1DCB21A14(v65, v66);
    goto LABEL_36;
  }

  if (![v47 resolutionResultClass])
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_19();
  sub_1DD0DAEFC();
  OUTLINED_FUNCTION_33_4();
  v48 = [swift_getObjCClassFromMetadata() _resolutionResultWithData_slotDescription_];

  v98 = v48;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAAF0, &qword_1DD103308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB90, &unk_1DD0E8AB0);
  if (swift_dynamicCast())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v49 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v49, qword_1EDE57E00);
    v50 = v47;
    v51 = sub_1DD0DD8EC();
    v52 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_75(v52))
    {
      v84 = OUTLINED_FUNCTION_19();
      sub_1DCB21A14(v84, v85);

      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    v96 = v16;
    v97 = v38;
    v53 = OUTLINED_FUNCTION_151();
    v54 = OUTLINED_FUNCTION_83();
    v98 = v54;
    *v53 = 136315138;
    sub_1DCB35468(v50, &selRef_name);
    v56 = v55;

    if (v56)
    {
      v57 = OUTLINED_FUNCTION_17_1();
      v60 = sub_1DCB10E9C(v57, v58, v59);

      *(v53 + 4) = v60;
      _os_log_impl(&dword_1DCAFC000, v51, v52, "Found a multicardinal resolution result for parameter %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
      sub_1DCB21A14(v97, v1);

      swift_unknownObjectRelease();
LABEL_38:
      OUTLINED_FUNCTION_49();
      return;
    }

    goto LABEL_56;
  }

  objc_opt_self();
  v71 = swift_dynamicCastObjCClass();
  if (!v71)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v86 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v86, qword_1EDE57E00);
    v87 = sub_1DD0DD8EC();
    v88 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v88))
    {
      v89 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_74_18(v89);
      OUTLINED_FUNCTION_59_22(&dword_1DCAFC000, v90, v88, "Unable to convert data provider into either multicardinal results or single results.");
      OUTLINED_FUNCTION_41_26();
    }

    v91 = OUTLINED_FUNCTION_19();
    sub_1DCB21A14(v91, v92);

    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v72 = v71;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v73 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v73, qword_1EDE57E00);
  v74 = v47;
  v75 = sub_1DD0DD8EC();
  v76 = sub_1DD0DE6DC();
  if (!OUTLINED_FUNCTION_75(v76))
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_151();
  v77 = OUTLINED_FUNCTION_109();
  v98 = v77;
  *v47 = 136315138;
  sub_1DCB35468(v74, &selRef_name);
  v79 = v78;

  if (v79)
  {
    v80 = OUTLINED_FUNCTION_17_1();
    v83 = sub_1DCB10E9C(v80, v81, v82);

    *(v47 + 1) = v83;
    _os_log_impl(&dword_1DCAFC000, v75, v76, "Found a single resolution result for parameter %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();

LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1DD0E15D0;
    *(v93 + 32) = v72;

    v94 = OUTLINED_FUNCTION_19();
    sub_1DCB21A14(v94, v95);
    goto LABEL_38;
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_1DCB369DC(void *a1)
{
  v1 = [a1 stepResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DCB10E5C(0, &qword_1EDE46250, 0x1E69C7838);
  v3 = sub_1DD0DE2EC();

  return v3;
}

void sub_1DCB36A4C()
{
  OUTLINED_FUNCTION_20_10();
  v2 = v1;
  v3 = sub_1DD0DE01C();
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  if (!v2)
  {
    goto LABEL_15;
  }

  v10 = sub_1DCB35468(v2, &selRef_base64EncodedIntent);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1DD0DAEEC();
    OUTLINED_FUNCTION_16_10();
    if (!(!v15 & v14))
    {

      goto LABEL_20;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);

    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_31;
    }

    v19 = OUTLINED_FUNCTION_151();
    v20 = OUTLINED_FUNCTION_83();
    v52 = v20;
    *v19 = 136315138;
    v21 = sub_1DCB10E9C(v12, v13, &v52);

    *(v19 + 4) = v21;
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_37();
LABEL_19:
    OUTLINED_FUNCTION_62();
LABEL_31:

    goto LABEL_32;
  }

  sub_1DCB35468(v2, &selRef_jsonEncodedIntent);
  if (!v27)
  {
LABEL_15:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v32 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_22(v33))
    {
      goto LABEL_31;
    }

LABEL_18:
    v34 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v34);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v35, v36, v37, v38, v39, 2u);
    goto LABEL_19;
  }

  sub_1DD0DE00C();
  sub_1DD0DDFCC();
  v29 = v28;

  (*(v6 + 8))(v0, v3);
  if (v29 >> 60 == 15)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v31 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_22(v31))
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

LABEL_20:
  sub_1DCB35468(v2, &selRef_typeName);
  if (v40)
  {
    v41 = sub_1DD0DDF8C();
  }

  else
  {
    v41 = 0;
  }

  OUTLINED_FUNCTION_86();
  v42 = sub_1DD0DAEFC();
  v43 = INIntentCreate();

  if (v43)
  {
    v44 = OUTLINED_FUNCTION_86();
    sub_1DCB21A14(v44, v45);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v46 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
    v47 = sub_1DD0DD8EC();
    v48 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v48))
    {
      v49 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v49);
      _os_log_impl(&dword_1DCAFC000, v47, v48, "Failed to create object", v42, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v50 = OUTLINED_FUNCTION_86();
    sub_1DCB21A14(v50, v51);
  }

LABEL_32:
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1DCB36E44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t sub_1DCB36E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RCHDelegateToNeedsValueFlowStrategyAdapter();
  OUTLINED_FUNCTION_1_100(v12, v13, v14, v15, v16);
  *&v43[0] = sub_1DCB84D04();
  swift_getWitnessTable();
  v17 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)(v43, v12);
  v19 = v18;
  swift_unknownObjectRetain();

  v20 = a4[1];
  v21 = sub_1DCB370A4(*a4);
  *a4 = v17;
  a4[1] = v19;
  OUTLINED_FUNCTION_1_100(v21, v22, v23, v24, v25);
  OUTLINED_FUNCTION_7_3();
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a1;
  sub_1DCAFF9E8(v43, (v26 + 5));
  v27 = a4[2];
  v28 = a4[3];
  swift_unknownObjectRetain();
  sub_1DCB370A4(v27);
  a4[2] = sub_1DCED7774;
  a4[3] = v26;
  OUTLINED_FUNCTION_0_96();
  v29 = type metadata accessor for RCHDelegateToNeedsDisambiguationFlowStrategyAdapter();
  OUTLINED_FUNCTION_1_100(v29, v30, v31, v32, v33);
  sub_1DCB17CA0(a3, v42);
  *&v43[0] = sub_1DCB84E4C(a1, v43, v42);
  swift_getWitnessTable();
  v34 = static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)(v43, v29);
  v36 = v35;
  swift_unknownObjectRetain();

  v37 = a4[5];
  sub_1DCB370A4(a4[4]);
  a4[4] = v34;
  a4[5] = v36;
  sub_1DCB17CA0(a3, v43);
  sub_1DCB17CA0(a2, v42);
  v38 = swift_allocObject();
  v38[2] = a5;
  v38[3] = a6;
  sub_1DCAFF9E8(v43, (v38 + 4));
  v38[9] = a1;
  sub_1DCAFF9E8(v42, (v38 + 10));
  v39 = a4[8];
  v40 = a4[9];
  swift_unknownObjectRetain();
  result = sub_1DCB370A4(v39);
  a4[8] = sub_1DCED7C00;
  a4[9] = v38;
  return result;
}

uint64_t sub_1DCB370A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DCB370B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v1 = v0[9];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);

  return swift_deallocObject();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2))(uint64_t)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEBF854;
  *(v20 + 40) = v3;
  return j__OUTLINED_FUNCTION_7_57;
}

uint64_t sub_1DCB371F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return v0;
}

uint64_t sub_1DCB37228()
{
  sub_1DCB371F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB3725C()
{
  sub_1DCB3728C();

  return swift_deallocClassInstance();
}

uint64_t *sub_1DCB3728C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  return v0;
}

uint64_t sub_1DCB372C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 96))(a4, a5))
  {
    OUTLINED_FUNCTION_0_96();
    v10 = type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy();
    sub_1DCB17CA0(a2, v19);
    *&v19[0] = sub_1DCED8FD4(a1, v19);
    swift_getWitnessTable();
    v11 = static RCHChildFlowFactoryHelper.makeConfirmIntentWithAutoCompletionFlowProducer<A>(strategy:)(v19, v10);
    v13 = v12;
    swift_unknownObjectRetain();

    v14 = *(a3 + 88);
    result = sub_1DCB370A4(*(a3 + 80));
    *(a3 + 80) = v11;
    *(a3 + 88) = v13;
  }

  else
  {
    sub_1DCB17CA0(a2, v19);
    OUTLINED_FUNCTION_7_3();
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a1;
    sub_1DCAFF9E8(v19, (v16 + 5));
    v17 = *(a3 + 80);
    v18 = *(a3 + 88);
    swift_unknownObjectRetain();
    result = sub_1DCB370A4(v17);
    *(a3 + 80) = sub_1DCED8784;
    *(a3 + 88) = v16;
  }

  return result;
}

uint64_t (*static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_30_32(v19);
  *(v20 + 32) = sub_1DCEC433C;
  *(v20 + 40) = v3;
  return sub_1DCEC9040;
}

uint64_t sub_1DCB37504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_100(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_7_3();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a1;
  sub_1DCAFF9E8(v25, (v11 + 5));
  v12 = a4[14];
  v13 = a4[15];
  swift_unknownObjectRetain();
  sub_1DCB370A4(v12);
  a4[14] = sub_1DCED8720;
  a4[15] = v11;
  OUTLINED_FUNCTION_0_96();
  v14 = type metadata accessor for RCHDelegateToHandleIntentFlowStrategy();
  OUTLINED_FUNCTION_1_100(v14, v15, v16, v17, v18);
  sub_1DCB17CA0(a3, v24);
  *&v25[0] = sub_1DCB869F4(a1, v25, v24);
  swift_getWitnessTable();
  v19 = static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)(v25, v14);
  v21 = v20;
  swift_unknownObjectRetain();

  v22 = a4[13];
  result = sub_1DCB370A4(a4[12]);
  a4[12] = v19;
  a4[13] = v21;
  return result;
}

uint64_t sub_1DCB37644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for RCHDelegateToAppResolutionFlowStrategyAdapter();
  sub_1DCB17CA0(a2, v27);
  v13 = sub_1DCB86BC0(a1, v27);
  *&v27[0] = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v16 = static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(strategy:)(v27, v12, AssociatedTypeWitness, WitnessTable);
  v18 = v17;
  v19 = a6[16];
  v20 = a6[17];
  swift_unknownObjectRetain();
  sub_1DCB370A4(v19);
  a6[16] = v16;
  a6[17] = v18;
  sub_1DCB17CA0(a3, v27);
  sub_1DCB17CA0(a4, v26);
  sub_1DCB17CA0(a5, v25);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v13;
  sub_1DCAFF9E8(v27, v21 + 32);
  sub_1DCAFF9E8(v26, v21 + 72);
  sub_1DCAFF9E8(v25, v21 + 112);
  v22 = a6[18];
  v23 = a6[19];
  swift_unknownObjectRetain();
  result = sub_1DCB370A4(v22);
  a6[18] = sub_1DCED86E4;
  a6[19] = v21;
  return result;
}

uint64_t sub_1DCB377E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);

  return swift_deallocObject();
}

uint64_t sub_1DCB37840()
{
  sub_1DCB3786C();
  OUTLINED_FUNCTION_0_3();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB3786C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t sub_1DCB37950()
{
  sub_1DCB3786C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OutputGenerationManifest()
{
  result = qword_1EDE47F30;
  if (!qword_1EDE47F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

uint64_t sub_1DCB37A98()
{
  sub_1DCB36E44();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ParameterClause()
{
  result = qword_1EDE49550;
  if (!qword_1EDE49550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t INIntent.debugDescriptionLite.getter()
{
  v1 = v0;
  v2 = sub_1DD0DD85C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = sub_1DD0DD88C();
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  v22 = qword_1EDE57E18;
  v23 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v22, v23))
  {
    return 0xD00000000000001BLL;
  }

  v33 = v5;
  v34 = v2;
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v12, qword_1EDE57DD0);
  (*(v15 + 16))(v21, v24, v12);
  sub_1DD0DD84C();
  v25 = swift_slowAlloc();
  *v25 = 0;
  v26 = sub_1DD0DD87C();
  v27 = sub_1DD0DE7FC();
  v28 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v26, v27, v28, "INIntent.debugDescriptionLite", "", v25, 2u);
  sub_1DCB37DE4(v1, &v35);
  v29 = sub_1DD0DE7EC();
  v30 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v26, v29, v30, "INIntent.debugDescriptionLite", "", v25, 2u);

  v31 = v35;
  OUTLINED_FUNCTION_80();
  (*(v33 + 8))(v11, v34);
  (*(v15 + 8))(v21, v12);
  return v31;
}

uint64_t sub_1DCB37DE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DCB3BD10(a1);
  if (!v3)
  {
    sub_1DD0DEC1C();

    swift_getObjectType();
    v108 = sub_1DD0DF2AC();
    MEMORY[0x1E12A6780](v108);

    result = MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD11CE70);
    v104 = 0x746E65746E494E49;
    v106 = 0xE900000000000028;
LABEL_58:
    *a2 = v104;
    a2[1] = v106;
    return result;
  }

  v4 = v3;
  v109 = a2;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v116 = v10;
  v114 = v9;
  v115 = v5;
  if (v8)
  {
    while (1)
    {
LABEL_9:
      v14 = (v4[6] + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v15 = *v14;
      v16 = v14[1];
      v17 = v4[2];

      if (v17 && (v18 = sub_1DCB21038(v15, v16), (v19 & 1) != 0))
      {
        sub_1DCB0DF6C(v4[7] + 32 * v18, &v125);
        sub_1DCB20B30(&v125, &v128);
      }

      else
      {
        v129 = MEMORY[0x1E69E6158];
        *&v128 = 0x3E6C6C756E3CLL;
        *(&v128 + 1) = 0xE600000000000000;
      }

      sub_1DCB0DF6C(&v128, &v125);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
      v117 = (v8 - 1) & v8;
      v118 = v16;
      v119 = v15;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_27;
      }

      v111 = v12;
      v20 = v121;
      v21 = *(v121 + 16);
      if (!v21)
      {
        break;
      }

      v130 = MEMORY[0x1E69E7CC0];
      sub_1DCB38954();
      v22 = v130;
      v23 = v20 + 32;
      do
      {
        sub_1DCB0DF6C(v23, v124);
        sub_1DCB0DF6C(v124, v120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B40, &qword_1DD0F3BD0);
        if (swift_dynamicCast())
        {
          sub_1DCAFF9E8(&v121, &v125);
          v24 = v126;
          v25 = v127;
          __swift_project_boxed_opaque_existential_1(&v125, v126);
          v26 = (*(v25 + 8))(v24, v25);
          v28 = v27;
          __swift_destroy_boxed_opaque_existential_1Tm(v124);
          v29 = &v125;
        }

        else
        {
          v123 = 0;
          v121 = 0u;
          v122 = 0u;
          sub_1DCB16D50(&v121, &qword_1ECCA5B48, &qword_1DD0F3BD8);
          sub_1DCB0DF6C(v124, &v125);
          sub_1DD0DE02C();
          sub_1DD0DE0FC();
          v30 = sub_1DD0DE1EC();
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v26 = MEMORY[0x1E12A66E0](v30, v32, v34, v36);
          v28 = v37;

          v29 = v124;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        v130 = v22;
        v38 = *(v22 + 16);
        if (v38 >= *(v22 + 24) >> 1)
        {
          sub_1DCB38954();
          v22 = v130;
        }

        *(v22 + 16) = v38 + 1;
        v39 = v22 + 16 * v38;
        *(v39 + 32) = v26;
        *(v39 + 40) = v28;
        v23 += 32;
        --v21;
      }

      while (v21);

      *&v125 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
      sub_1DCB38974();
      v40 = sub_1DD0DDF6C();
      v42 = v41;

      *&v125 = 91;
      *(&v125 + 1) = 0xE100000000000000;
      MEMORY[0x1E12A6780](v40, v42);

      MEMORY[0x1E12A6780](93, 0xE100000000000000);

      v43 = sub_1DD0DE9CC();
      v45 = v44;
      v47 = v46;
      v110 = v48;
      swift_isUniquelyReferenced_nonNull_native();
      *&v125 = v111;
      v49 = sub_1DCB21038(v119, v118);
      if (__OFADD__(v111[2], (v50 & 1) == 0))
      {
        goto LABEL_62;
      }

      v51 = v49;
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B50, &unk_1DD0F3BE0);
      if (sub_1DD0DEDCC())
      {
        v53 = v119;
        v54 = sub_1DCB21038(v119, v118);
        if ((v52 & 1) != (v55 & 1))
        {
          goto LABEL_65;
        }

        v51 = v54;
      }

      else
      {
        v53 = v119;
      }

      v12 = v125;
      if (v52)
      {
        v98 = (*(v125 + 56) + 32 * v51);
        v99 = v98[3];
        *v98 = v43;
        v98[1] = v45;
        v98[2] = v47;
        v98[3] = v110;
      }

      else
      {
        sub_1DCB3B4FC(v51, v53, v118, v43, v45, v47, v110, v125);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v128);
LABEL_54:
      v5 = v115;
      v4 = v116;
      v9 = v114;
      v8 = v117;
      if (!v117)
      {
        goto LABEL_5;
      }
    }

    v12 = v111;
LABEL_27:
    sub_1DCB0DF6C(&v128, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B40, &qword_1DD0F3BD0);
    if (swift_dynamicCast())
    {
      sub_1DCAFF9E8(&v121, &v125);
      v56 = v126;
      v57 = v127;
      __swift_project_boxed_opaque_existential_1(&v125, v126);
      (*(v57 + 8))(v56, v57);
      v112 = sub_1DD0DE9CC();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      *&v121 = v12;
      v64 = sub_1DCB21038(v119, v16);
      if (__OFADD__(v12[2], (v65 & 1) == 0))
      {
        goto LABEL_61;
      }

      v66 = v64;
      v67 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B50, &unk_1DD0F3BE0);
      if (sub_1DD0DEDCC())
      {
        v68 = v119;
        v69 = sub_1DCB21038(v119, v118);
        if ((v67 & 1) != (v70 & 1))
        {
          goto LABEL_65;
        }

        v66 = v69;
      }

      else
      {
        v68 = v119;
      }

      if (v67)
      {

        v12 = v121;
        v84 = (*(v121 + 56) + 32 * v66);
        v85 = v84[3];
        *v84 = v112;
        v84[1] = v59;
        v84[2] = v61;
        v84[3] = v63;
      }

      else
      {
        v12 = v121;
        *(v121 + 8 * (v66 >> 6) + 64) |= 1 << v66;
        v88 = (v12[6] + 16 * v66);
        *v88 = v68;
        v88[1] = v118;
        v89 = (v12[7] + 32 * v66);
        *v89 = v112;
        v89[1] = v59;
        v89[2] = v61;
        v89[3] = v63;
        v90 = v12[2];
        v91 = __OFADD__(v90, 1);
        v92 = v90 + 1;
        if (v91)
        {
          goto LABEL_64;
        }

        v12[2] = v92;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v128);
      v93 = &v125;
    }

    else
    {
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      sub_1DCB16D50(&v121, &qword_1ECCA5B48, &qword_1DD0F3BD8);
      sub_1DCB0DF6C(&v128, &v125);
      sub_1DD0DE02C();
      sub_1DD0DE0FC();
      v113 = sub_1DD0DE1EC();
      v72 = v71;
      v74 = v73;
      v76 = v75;

      swift_isUniquelyReferenced_nonNull_native();
      *&v125 = v12;
      v77 = sub_1DCB21038(v15, v16);
      if (__OFADD__(v12[2], (v78 & 1) == 0))
      {
        goto LABEL_60;
      }

      v79 = v77;
      v80 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B50, &unk_1DD0F3BE0);
      if (sub_1DD0DEDCC())
      {
        v81 = v119;
        v82 = sub_1DCB21038(v119, v118);
        if ((v80 & 1) != (v83 & 1))
        {
          goto LABEL_65;
        }

        v79 = v82;
      }

      else
      {
        v81 = v119;
      }

      v12 = v125;
      if (v80)
      {
        v86 = (*(v125 + 56) + 32 * v79);
        v87 = v86[3];
        *v86 = v113;
        v86[1] = v72;
        v86[2] = v74;
        v86[3] = v76;
      }

      else
      {
        *(v125 + 8 * (v79 >> 6) + 64) |= 1 << v79;
        v94 = (v12[6] + 16 * v79);
        *v94 = v81;
        v94[1] = v118;
        v95 = (v12[7] + 32 * v79);
        *v95 = v113;
        v95[1] = v72;
        v95[2] = v74;
        v95[3] = v76;
        v96 = v12[2];
        v91 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v91)
        {
          goto LABEL_63;
        }

        v12[2] = v97;
      }

      v93 = &v128;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    goto LABEL_54;
  }

LABEL_5:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      swift_getObjectType();
      *&v125 = sub_1DD0DF2AC();
      *(&v125 + 1) = v100;
      MEMORY[0x1E12A6780](40, 0xE100000000000000);
      v101 = sub_1DD0DDE7C();
      v103 = v102;

      MEMORY[0x1E12A6780](v101, v103);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      *&v121 = 92;
      *(&v121 + 1) = 0xE100000000000000;
      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_1DCB1C4D8();
      v104 = sub_1DD0DEA3C();
      v106 = v105;

      a2 = v109;
      goto LABEL_58;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1DD0DF12C();
  __break(1u);
  return result;
}

void sub_1DCB38890()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_9_14(v8);
      OUTLINED_FUNCTION_11_18(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCB341E4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCB38954()
{
  v1 = *v0;
  sub_1DCB38890();
  *v0 = v2;
}

unint64_t sub_1DCB38974()
{
  result = qword_1EDE46280;
  if (!qword_1EDE46280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA2758, &unk_1DD0E6880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46280);
  }

  return result;
}

void sub_1DCB389FC()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_70();
  v6 = sub_1DD0DE01C();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_10();
  if (!v0)
  {
    goto LABEL_12;
  }

  v13 = [v0 intentResponse];
  if (!v13)
  {
    sub_1DCB35468(v0, &selRef_jsonEncodedIntentResponse);
    if (v19)
    {
      sub_1DD0DE00C();
      sub_1DD0DDFCC();
      v21 = v20;

      (*(v9 + 8))(v1, v6);
      if (v21 >> 60 != 15)
      {
        v55[0] = v5;
        v55[1] = v3;

        v34 = OUTLINED_FUNCTION_126_1();
        MEMORY[0x1E12A6780](v34, 0xE800000000000000);
        goto LABEL_19;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v24))
      {
LABEL_16:

LABEL_27:
        OUTLINED_FUNCTION_49();
        return;
      }

LABEL_15:
      v27 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v27);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_62();
      goto LABEL_16;
    }

LABEL_12:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6EC();
    if (!OUTLINED_FUNCTION_22(v26))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = v13;
  sub_1DCB3B800(v13);
  OUTLINED_FUNCTION_16_10();
  if (!(!v16 & v15))
  {
    v17 = [v14 typeName];
    if (!v17)
    {

      v33 = 0;
      goto LABEL_20;
    }

    v18 = v17;
    sub_1DD0DDFBC();

LABEL_19:
    v33 = sub_1DD0DDF8C();

LABEL_20:
    OUTLINED_FUNCTION_19();
    v35 = sub_1DD0DAEFC();
    v36 = INIntentResponseCreate();

    if (v36)
    {
      v37 = OUTLINED_FUNCTION_19();
      sub_1DCB21A14(v37, v38);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v39 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
      v40 = v0;
      v41 = sub_1DD0DD8EC();
      v42 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v41, v42))
      {
        OUTLINED_FUNCTION_151();
        v43 = OUTLINED_FUNCTION_109();
        v55[0] = v43;
        *v35 = 136315138;
        v44 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA8, &qword_1DD103688);
        v45 = sub_1DD0DE02C();
        v47 = sub_1DCB10E9C(v45, v46, v55);

        *(v35 + 1) = v47;
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37();
      }

      v53 = OUTLINED_FUNCTION_19();
      sub_1DCB21A14(v53, v54);
    }

    goto LABEL_27;
  }

  __break(1u);
}

uint64_t type metadata accessor for ResolveConfirmProcessingResult()
{
  result = qword_1EDE46940;
  if (!qword_1EDE46940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCB38E1C()
{
  v51 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  sub_1DCB74408(*(v0 + 144), "SubmitProcessIntent", 19, 2, *(v0 + 152));

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_15_9();
  v7(v6);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 25);
  v11 = OUTLINED_FUNCTION_20();
  sub_1DCB390C4(v11, v12, v10);
  v13 = sub_1DD0DD8EC();
  LOBYTE(v4) = sub_1DD0DE6DC();
  v14 = OUTLINED_FUNCTION_20();
  sub_1DCB390D0(v14, v15, v10);
  if (os_log_type_enabled(v13, v4))
  {
    v16 = OUTLINED_FUNCTION_151();
    v17 = OUTLINED_FUNCTION_83();
    v49 = v17;
    *v16 = 136315138;
    *(v0 + 32) = v8;
    *(v0 + 40) = v9;
    *(v0 + 41) = v10;
    v18 = OUTLINED_FUNCTION_20();
    sub_1DCB390C4(v18, v19, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAABE0, &qword_1DD1036B8);
    v20 = sub_1DD0DE02C();
    v22 = sub_1DCB10E9C(v20, v21, &v49);

    *(v16 + 4) = v22;
    OUTLINED_FUNCTION_61_3();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_14_3();
  }

  if (v10)
  {
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    v49 = v8;
    v50 = v9;
    v30 = OUTLINED_FUNCTION_20();
    sub_1DCB6DECC(v30, v31);
    sub_1DCF46B44(v28, &v49, v29);
    v32 = OUTLINED_FUNCTION_20();
    sub_1DCB390D0(v32, v33, 1);
    v34 = OUTLINED_FUNCTION_20();
    sub_1DCB390D0(v34, v35, 1);
  }

  else
  {
    v37 = *(v0 + 96);
    v36 = *(v0 + 104);
    v38 = *(v0 + 88);
    v39 = *(v0 + 64);
    v40 = *(v0 + 72);
    sub_1DCB390DC();
    v41 = OUTLINED_FUNCTION_20();
    sub_1DCB390D0(v41, v42, 0);
    OUTLINED_FUNCTION_124();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v44 = *(v0 + 104);
    if (EnumCaseMultiPayload == 1)
    {
      **(v0 + 48) = *v44;
    }

    else
    {
      sub_1DCB3998C(v44, *(v0 + 48), type metadata accessor for ResolveConfirmProcessingResult);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
    swift_storeEnumTagMultiPayload();
  }

  v45 = *(v0 + 128);
  v46 = *(v0 + 104);

  OUTLINED_FUNCTION_29();

  return v47();
}

id sub_1DCB390C4(id result, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return sub_1DCB6DECC(result, a2);
  }

  else
  {
    return result;
  }
}

void sub_1DCB390D0(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    sub_1DCB6DE90(a1, a2);
  }

  else
  {
  }
}

void sub_1DCB390DC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v94[1] = v3;
  v94[2] = v4;
  v6 = v5;
  v95 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v9 = OUTLINED_FUNCTION_20_0(v8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v94[0] = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v94 - v16;
  v18 = type metadata accessor for NLContextUpdate();
  v19 = OUTLINED_FUNCTION_20_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  OUTLINED_FUNCTION_16();
  v25 = v24 - v23;
  v26 = [v6 batchSlotResolutionResult];
  if (v26)
  {
    v27 = v26;
    NLContextUpdate.init()(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DD0E15D0;
    *(v28 + 32) = v27;
    v29 = *(v25 + 16);
    v30 = v27;

    *(v25 + 16) = v28;
    v31 = v2[10];
    v32 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v31);
    v33 = (*(v32 + 88))(v31, v32) & 1;
    v34 = v2[5];
    v35 = v2[6];
    v0 = __swift_project_boxed_opaque_existential_1(v2 + 2, v34);
    v96 = v33;
    v36 = NLContextUpdate.doConvertToAceContextUpdate(options:)(&v96);
    AceServiceInvokerAsync.submitAndForget(_:)(v36, v34, v35);

    sub_1DCB41F98(v25);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v37 = sub_1DD0DD8FC();
  v38 = __swift_project_value_buffer(v37, qword_1EDE57E00);
  v39 = v6;
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v40, v41))
  {
    v0 = OUTLINED_FUNCTION_151();
    v42 = swift_slowAlloc();
    *v0 = 138412290;
    *(v0 + 4) = v39;
    *v42 = v39;
    v43 = v39;
    _os_log_impl(&dword_1DCAFC000, v40, v41, "Process Intent Command completed with response %@", v0, 0xCu);
    sub_1DCB16D50(v42, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_41_26();
  }

  v44 = sub_1DCB35468(v39, &selRef_lastAttemptedStep);
  v46 = v45;
  v47 = *MEMORY[0x1E69C7FC8];
  v48 = sub_1DD0DDFBC();
  if (v46)
  {
    if (v48 == v44 && v46 == v49)
    {

LABEL_23:

      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v56))
      {
        v57 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_74_18(v57);
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v58, v59, v60, v61, v0, 2u);
        OUTLINED_FUNCTION_41_26();
      }

      sub_1DCB8C088(v39, v95);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_99_8();
    v0 = sub_1DD0DF0AC();

    if (v0)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v51 = *MEMORY[0x1E69C7FB8];
  v52 = sub_1DD0DDFBC();
  if (v46)
  {
    if (v52 == v44 && v46 == v53)
    {

LABEL_35:

      v67 = sub_1DD0DD8EC();
      v68 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v68))
      {
        v69 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_74_18(v69);
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v70, v71, v72, v73, v0, 2u);
        OUTLINED_FUNCTION_41_26();
      }

      sub_1DCB35F18();
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_99_8();
    v0 = sub_1DD0DF0AC();

    if (v0)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v62 = *MEMORY[0x1E69C7FC0];
  v63 = sub_1DD0DDFBC();
  if (v46)
  {
    if (v63 == v44 && v46 == v64)
    {

      goto LABEL_47;
    }

    v66 = sub_1DD0DF0AC();

    if (v66)
    {
LABEL_47:
      OUTLINED_FUNCTION_0_1();
      v85 = v84;
      (*(v86 + 16))(v17, v38, v37);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v37);
      v87 = v94[0];
      sub_1DCBCF6C8(v17, v94[0]);
      if (__swift_getEnumTagSinglePayload(v87, 1, v37) == 1)
      {
        sub_1DCB16D50(v94[0], &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v88 = sub_1DD0DD8EC();
        v89 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = OUTLINED_FUNCTION_83();
          v96 = swift_slowAlloc();
          *v90 = 136315650;
          v91 = sub_1DD0DEC3C();
          v93 = sub_1DCB10E9C(v91, v92, &v96);

          *(v90 + 4) = v93;
          *(v90 + 12) = 2048;
          *(v90 + 14) = 232;
          *(v90 + 22) = 2080;
          *(v90 + 24) = sub_1DCB10E9C(0xD00000000000006ALL, 0x80000001DD1251E0, &v96);
          _os_log_impl(&dword_1DCAFC000, v88, v89, "FatalError at %s:%lu - %s", v90, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_80();
        }

        (*(v85 + 8))(v94[0], v37);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000006ALL, 0x80000001DD1251E0);
    }
  }

  else
  {
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v96 = 0xD000000000000020;
  v97 = 0x80000001DD1251B0;
  v74 = sub_1DCB35468(v39, &selRef_lastAttemptedStep);
  if (v75)
  {
    v76 = v75;
  }

  else
  {
    v74 = 0x3E6C696E3CLL;
    v76 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v74, v76);

  v77 = v96;
  v78 = v97;
  v79 = sub_1DD0DD8EC();
  v80 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v80))
  {
    v81 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_74_18(v81);
    OUTLINED_FUNCTION_59_22(&dword_1DCAFC000, v82, v80, "Unknown ExecutionStep received");
    OUTLINED_FUNCTION_41_26();
  }

  type metadata accessor for CommandFailure();
  OUTLINED_FUNCTION_41_4();
  swift_allocObject();
  v83 = CommandFailure.init(errorCode:reason:)(-1, v77, v78);
  *v95 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABB0, &qword_1DD103690);
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
LABEL_45:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB398D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_33_1();
  v8(v7);
  return a2;
}

uint64_t sub_1DCB3992C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DCB3998C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DCB399F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCB39AF4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_103_8();
  sub_1DCB3B864();

  OUTLINED_FUNCTION_108_8();

  OUTLINED_FUNCTION_29();

  return v2();
}

void OUTLINED_FUNCTION_104_2(const char *a1, uint64_t a2)
{

  sub_1DCB70034(a1, a2, 2, v2);
}

uint64_t OUTLINED_FUNCTION_104_3(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_104_4()
{
  v2 = *(v0 + 8);

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_104_5()
{

  sub_1DCB7C864(v0);
}

uint64_t OUTLINED_FUNCTION_104_6()
{
  result = v1;
  v3 = *(v0 + 144);
  return result;
}

uint64_t sub_1DCB39C34()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = v1[15];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[16] = v6;
  *v6 = v5;
  v6[1] = sub_1DCB3CEF4;
  v7 = v1[9];
  v8 = v1[6];
  v9 = v1[5];
  v10 = v1[4];
  v11 = v1[3];

  return sub_1DCB39DBC(v11, v7, v10, v9);
}

uint64_t sub_1DCB39DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v5[31] = *v4;
  v6 = *(*(type metadata accessor for ResolveConfirmProcessingResult() - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  v5[33] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB39EB8, 0, 0);
}

void sub_1DCB39EB8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6CC();
  OUTLINED_FUNCTION_137();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v4);
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_92_0();
  }

  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[27];
  v13 = v0[28];

  v0[35] = *(v13 + 16);
  v0[36] = *(v13 + 24);
  sub_1DCB099BC(v12, v10, &qword_1ECCAABD0, &qword_1DD0EA240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[37] = *v0[34];
    sub_1DD0DCF8C();
  }

  v14 = v0[32];
  OUTLINED_FUNCTION_21_43();
  sub_1DCB398D0(v15, v16, v17);
  sub_1DD0DCF8C();
}

void OUTLINED_FUNCTION_86_3()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 56);
  v3 = *(v1 + 48) + **(v1 + 48);
}

BOOL OUTLINED_FUNCTION_86_4()
{

  return os_log_type_enabled(v0, v1);
}