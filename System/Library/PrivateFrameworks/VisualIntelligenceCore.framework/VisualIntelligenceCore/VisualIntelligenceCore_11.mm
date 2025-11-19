unint64_t sub_1D8883A74()
{
  result = qword_1ECA643D0;
  if (!qword_1ECA643D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA643D0);
  }

  return result;
}

uint64_t viCore_lockUnlockWithFence(__IOSurface *a1)
{
  IOSurfaceLock(a1, 5u, 0);

  return IOSurfaceUnlock(a1, 5u, 0);
}

uint64_t sub_1D8883B2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8883C24()
{
  result = qword_1ECA64420;
  if (!qword_1ECA64420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64420);
  }

  return result;
}

void sub_1D8883C78(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1D8883C88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8864FBC;

  return sub_1D8878BF0(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_1D8883D78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D87A1544(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8883D8C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D886553C;

  return sub_1D88793D0(a1, a2, v6, v7, v9, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D8883EB4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1D8883F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D8883F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8883FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D88840C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D8884148()
{
  type metadata accessor for BuiltInAction(319);
  if (v0 <= 0x3F)
  {
    sub_1D8884350(319, qword_1EE0E40B8, type metadata accessor for CVBundle);
    if (v1 <= 0x3F)
    {
      sub_1D8884350(319, &qword_1ECA644E8, type metadata accessor for CVBuffer);
      if (v2 <= 0x3F)
      {
        sub_1D88842D4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for BuiltInActionExecutor.Request.Configuration();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              sub_1D8884350(319, qword_1ECA64500, type metadata accessor for ExecutionParameter);
              if (v6 <= 0x3F)
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

void sub_1D88842D4()
{
  if (!qword_1ECA644F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA644F8);
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA644F0);
    }
  }
}

void sub_1D8884350(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8B16470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D88843A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SearchClassifierResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D8884490()
{
  result = qword_1ECA64588;
  if (!qword_1ECA64588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64588);
  }

  return result;
}

uint64_t sub_1D8884520()
{

  return sub_1D8871884();
}

uint64_t ExecutionParameter.hash(into:)()
{
  v1 = type metadata accessor for TapToRadarDraftPayload();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B14E80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ExecutionParameter();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8884E10(v0, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v5 + 32))(v7, v10, v4);
      MEMORY[0x1DA720210](2);
      sub_1D8884F20(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
      sub_1D8B157A0();
      return (*(v5 + 8))(v7, v4);
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D8884E74(v10, v3);
      MEMORY[0x1DA720210](3);
      TapToRadarDraftPayload.hash(into:)();
      return sub_1D8885058(v3, type metadata accessor for TapToRadarDraftPayload);
    }

    v16 = 4;
    return MEMORY[0x1DA720210](v16);
  }

  if (EnumCaseMultiPayload)
  {
    v17 = *v10;
    MEMORY[0x1DA720210](1);
    v16 = v17;
    return MEMORY[0x1DA720210](v16);
  }

  v13 = *v10;
  v14 = *(v10 + 2);
  v15 = v10[24];
  MEMORY[0x1DA720210](0);
  MEMORY[0x1DA720210](v13);
  sub_1D8B16D40();
  if (v14)
  {
    sub_1D8B15A60();
  }

  MEMORY[0x1DA720210](v15);
}

uint64_t ExecutionParameter.hashValue.getter()
{
  sub_1D8B16D20();
  ExecutionParameter.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D8884898()
{
  sub_1D8B16D20();
  ExecutionParameter.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D88848DC()
{
  sub_1D8B16D20();
  ExecutionParameter.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t _s22VisualIntelligenceCore18ExecutionParameterO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraftPayload();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B14E80();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExecutionParameter();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v42 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645A8);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v42 - v23;
  v25 = &v42 + *(v22 + 56) - v23;
  sub_1D8884E10(a1, &v42 - v23);
  sub_1D8884E10(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D8884E10(v24, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *v18 ^ *v25;
        sub_1D8885058(v24, type metadata accessor for ExecutionParameter);
        v28 = v33 ^ 1;
        return v28 & 1;
      }
    }

    else
    {
      sub_1D8884E10(v24, v20);
      v29 = *(v20 + 2);
      if (!swift_getEnumCaseMultiPayload())
      {
        v34 = v20[24];
        v35 = *(v20 + 1);
        v36 = *v20;
        v37 = *v25;
        v38 = *(v25 + 1);
        v39 = *(v25 + 2);
        v40 = v25[24];
        v50[0] = v36;
        v51 = v35;
        v52 = v29;
        v53 = v34;
        v46[0] = v37;
        v47 = v38;
        v48 = v39;
        v49 = v40;
        v28 = _s22VisualIntelligenceCore18ImageSearchContextV2eeoiySbAC_ACtFZ_0(v50, v46);

        goto LABEL_19;
      }
    }

LABEL_17:
    sub_1D8884FF0(v24);
    v28 = 0;
    return v28 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8884E10(v24, v15);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = v44;
      v30 = v45;
      (*(v44 + 32))(v8, v25, v45);
      v28 = MEMORY[0x1DA71E300](v15, v8);
      v32 = *(v31 + 8);
      v32(v8, v30);
      v32(v15, v30);
      goto LABEL_19;
    }

    (*(v44 + 8))(v15, v45);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1D8884E10(v24, v12);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v27 = v43;
      sub_1D8884E74(v25, v43);
      v28 = _s22VisualIntelligenceCore22TapToRadarDraftPayloadV2eeoiySbAC_ACtFZ_0(v12, v27);
      sub_1D8885058(v27, type metadata accessor for TapToRadarDraftPayload);
      sub_1D8885058(v12, type metadata accessor for TapToRadarDraftPayload);
LABEL_19:
      sub_1D8885058(v24, type metadata accessor for ExecutionParameter);
      return v28 & 1;
    }

    sub_1D8885058(v12, type metadata accessor for TapToRadarDraftPayload);
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_17;
  }

  sub_1D8885058(v24, type metadata accessor for ExecutionParameter);
  v28 = 1;
  return v28 & 1;
}

uint64_t type metadata accessor for ExecutionParameter()
{
  result = qword_1ECA64598;
  if (!qword_1ECA64598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8884E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionParameter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8884E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraftPayload();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8884F20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8884F68()
{
  result = sub_1D8B14E80();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TapToRadarDraftPayload();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8884FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8885058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D88850B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D87F3F24(0, v1, 0);
  v2 = v24;
  v3 = a1 + 64;
  result = sub_1D8B16580();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(v6 + 36);
    swift_getKeyPath();

    swift_getAtKeyPath();

    v12 = *(v24 + 16);
    v11 = *(v24 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1D87F3F24((v11 > 1), v12 + 1, 1);
    }

    *(v24 + 16) = v12 + 1;
    *(v24 + 8 * v12 + 32) = v23;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v13 = *(a1 + 64 + 8 * v10);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v15 = v10 << 6;
      v16 = v10 + 1;
      v17 = (a1 + 72 + 8 * v10);
      v9 = v21;
      while (v16 < (v8 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1D87977B4(v5, v22, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v5, v22, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1D8885324(void *a1, int a2, float64x2_t *a3)
{
  v6 = a3[3];
  v11[2] = a3[2];
  v11[3] = v6;
  v11[4] = a3[4];
  v7 = a3[1];
  v11[0] = *a3;
  v11[1] = v7;
  os_unfair_lock_lock((v3 + 16));
  sub_1D8886DA4((v3 + 24), a2, v3, a1, v11, &v10);
  os_unfair_lock_unlock((v3 + 16));
  v8 = v10;
  if (v10)
  {

    (v8)(v9);
    sub_1D878BBCC(v8);

    sub_1D878BBCC(v8);
  }
}

void sub_1D88853F4()
{
  os_unfair_lock_lock((v0 + 16));
  sub_1D8885A78((v0 + 24), &v2);
  os_unfair_lock_unlock((v0 + 16));
  v1 = v2;
  if (v2)
  {
    v2 = MEMORY[0x1E69E7CC0];

    v1(&v2);
    sub_1D878BBCC(v1);
    sub_1D878BBCC(v1);
  }
}

uint64_t sub_1D8885484(__int128 *a1)
{
  v2 = v1;
  sub_1D8B13240();
  sub_1D888A804(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v4 = type metadata accessor for ActionPin(0);
  v5 = (v2 + *(v4 + 20));
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  sub_1D8818B80(*v5, v5[1]);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8818B80(v10, v11);
  sub_1D8B15A60();
  sub_1D87CF3E8(a1, *(v2 + *(v4 + 28)));
  sub_1D8B16D40();
  type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  return ActionPin.Pill.hash(into:)(a1);
}

uint64_t sub_1D88855C0()
{
  v1 = v0;
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D888A804(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v2 = type metadata accessor for ActionPin(0);
  v3 = (v1 + *(v2 + 20));
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  sub_1D8818B80(*v3, v3[1]);
  sub_1D8818B80(v4, v5);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8B15A60();
  sub_1D87CF3E8(v11, *(v1 + *(v2 + 28)));
  sub_1D8B16D40();
  type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  ActionPin.Pill.hash(into:)(v11);
  return sub_1D8B16D80();
}

uint64_t sub_1D888571C()
{
  v1 = v0;
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D888A804(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v2 = type metadata accessor for ActionPin(0);
  v3 = (v1 + *(v2 + 20));
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  sub_1D8818B80(*v3, v3[1]);
  sub_1D8818B80(v4, v5);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8B15A60();
  sub_1D87CF3E8(v11, *(v1 + *(v2 + 28)));
  sub_1D8B16D40();
  ActionPin.Pill.hash(into:)(v11);
  return sub_1D8B16D80();
}

uint64_t sub_1D888586C()
{
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x203A6E6970, 0xE500000000000000);
  v0 = ActionPin.description.getter();
  MEMORY[0x1DA71EFA0](v0);

  MEMORY[0x1DA71EFA0](0x203A6C6C69702020, 0xE800000000000000);
  type metadata accessor for ActionPin.Pill(0);
  sub_1D8B168A0();
  return 0;
}

uint64_t sub_1D888593C()
{
  sub_1D88853F4();
  sub_1D8885A48(v0 + 24);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D88859B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D88859F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8885A78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v146 = v117 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63388);
  v121 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v117 - v7;
  v139 = type metadata accessor for ActionPin.Pill(0);
  v133 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v123 = *(v137 - 8);
  v10 = MEMORY[0x1EEE9AC00](v137);
  v12 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v117 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v126 = v117 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v129 = v117 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v117 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v122 = v117 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645B8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v127 = v117 - v29;
  v118 = a1;
  v30 = *a1;
  if (!*(v30 + 16))
  {
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v150 = v15;

  v32 = sub_1D88850B8(v31);
  v124 = v30;

  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = (v32 + 32);
    while (1)
    {
      v36 = *v35++;
      v37 = __OFADD__(v34, v36);
      v34 += v36;
      if (v37)
      {
        break;
      }

      if (!--v33)
      {
        goto LABEL_9;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
    v34 = 0;
LABEL_9:
    v140 = v8;
    v117[0] = a2;

    v8 = *(v124 + 16);
    if (qword_1EE0E43B8 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v38 = sub_1D8B151E0();
  v149 = __swift_project_value_buffer(v38, qword_1EE0E43C0);
  v39 = sub_1D8B151C0();
  v40 = sub_1D8B16230();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134218240;
    *(v41 + 4) = v34;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v8;
    _os_log_impl(&dword_1D8783000, v39, v40, "removing %ld waiters across %ld action executions", v41, 0x16u);
    MEMORY[0x1DA721330](v41, -1, -1);
  }

  v43 = v124 + 64;
  v42 = *(v124 + 64);
  v44 = *(v124 + 32);
  v151 = 1;
  v45 = 1 << v44;
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v42;
  v119 = (v45 + 63) >> 6;
  v144 = (v121 + 8);
  v145 = v121 + 16;

  v48 = 0;
  *&v49 = 136315650;
  v120 = v49;
  *&v49 = 134218498;
  v134 = v49;
  v136 = v6;
  v8 = v140;
  v50 = v129;
  v135 = v22;
  v128 = v27;
  v125 = v43;
  v141 = v12;
  while (1)
  {
    if (!v47)
    {
      if (v119 <= v48 + 1)
      {
        v52 = v48 + 1;
      }

      else
      {
        v52 = v119;
      }

      v53 = v52 - 1;
      while (1)
      {
        v51 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_45;
        }

        if (v51 >= v119)
        {
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645C0);
          (*(*(v111 - 8) + 56))(v27, 1, 1, v111);
          v130 = 0;
          v131 = v53;
          goto LABEL_27;
        }

        v47 = *(v43 + 8 * v51);
        ++v48;
        if (v47)
        {
          v131 = v51;
          goto LABEL_26;
        }
      }
    }

    v131 = v48;
    v51 = v48;
LABEL_26:
    v130 = (v47 - 1) & v47;
    v54 = __clz(__rbit64(v47)) | (v51 << 6);
    v55 = v124;
    v56 = v122;
    sub_1D888A67C(*(v124 + 48) + *(v123 + 72) * v54, v122, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v57 = *(*(v55 + 56) + 8 * v54);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645C0);
    v59 = *(v58 + 48);
    v60 = v56;
    v27 = v128;
    sub_1D888A424(v60, v128, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    *&v27[v59] = v57;
    (*(*(v58 - 8) + 56))(v27, 0, 1, v58);

    v50 = v129;
LABEL_27:
    v61 = v127;
    sub_1D88882B8(v27, v127);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645C0);
    if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
    {
      break;
    }

    v63 = *(v61 + *(v62 + 48));
    sub_1D888A424(v61, v22, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v132 = v63;
    v64 = *(v63 + 16);
    sub_1D888A67C(v22, v50, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v65 = v126;
    sub_1D888A67C(v22, v126, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v66 = sub_1D8B151C0();
    v67 = v50;
    v68 = sub_1D8B16230();
    if (os_log_type_enabled(v66, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v152 = v70;
      *v69 = v120;
      v71 = ActionPin.description.getter();
      v148 = v64;
      v72 = v71;
      v74 = v73;
      sub_1D888A48C(v67, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v75 = sub_1D89AC714(v72, v74, &v152);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2080;
      sub_1D888A67C(v65 + *(v137 + 20), v138, type metadata accessor for ActionPin.Pill);
      v76 = sub_1D8B159E0();
      v78 = v77;
      v22 = v135;
      sub_1D888A48C(v65, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v79 = sub_1D89AC714(v76, v78, &v152);
      v8 = v140;

      *(v69 + 14) = v79;
      *(v69 + 22) = 2048;
      *(v69 + 24) = v148;
      _os_log_impl(&dword_1D8783000, v66, v68, "waiter %s %s has %ld continuations", v69, 0x20u);
      swift_arrayDestroy();
      v80 = v70;
      v6 = v136;
      MEMORY[0x1DA721330](v80, -1, -1);
      MEMORY[0x1DA721330](v69, -1, -1);
    }

    else
    {

      sub_1D888A48C(v65, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      sub_1D888A48C(v50, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    }

    v12 = v141;
    v34 = v150;
    v27 = *(v132 + 16);
    if (v27)
    {
      v81 = v132 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v82 = *(v121 + 16);
      v147 = *(v121 + 72);
      v148 = v82;
      while (1)
      {
        v148(v8, v81, v6);
        sub_1D888A67C(v22, v34, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        sub_1D888A67C(v22, v12, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v83 = sub_1D8B151C0();
        v84 = sub_1D8B16230();
        if (os_log_type_enabled(v83, v84))
        {
          v143 = v84;
          v85 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v154 = v142;
          *v85 = v134;
          *(v85 + 4) = v151;
          *(v85 + 12) = 2080;
          v152 = 0;
          v153 = 0xE000000000000000;
          sub_1D8B16720();

          v152 = 0x69506E6F69746341;
          v153 = 0xEA0000000000286ELL;
          sub_1D8B131E0();
          sub_1D8B15AA0();
          v86 = sub_1D8B15BB0();
          v88 = v87;
          v90 = v89;
          v92 = v91;

          v93 = MEMORY[0x1DA71EF10](v86, v88, v90, v92);
          v95 = v94;

          MEMORY[0x1DA71EFA0](v93, v95);

          MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
          v96 = *&v150[*(type metadata accessor for ActionPin(0) + 28)];
          if (*(v96 + 16))
          {
            v97 = v96 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
            v98 = *(v97 + 16);
            v99 = *(v97 + 24);
          }

          else
          {
            v99 = 0xE300000000000000;
            v98 = 4144959;
          }

          v12 = v141;
          MEMORY[0x1DA71EFA0](v98, v99);

          MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
          v100 = v152;
          v101 = v153;
          v102 = v150;
          sub_1D888A48C(v150, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
          v103 = sub_1D89AC714(v100, v101, &v154);

          *(v85 + 14) = v103;
          *(v85 + 22) = 2080;
          sub_1D888A67C(&v12[*(v137 + 20)], v138, type metadata accessor for ActionPin.Pill);
          v104 = sub_1D8B159E0();
          v106 = v105;
          sub_1D888A48C(v12, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
          v107 = sub_1D89AC714(v104, v106, &v154);

          *(v85 + 24) = v107;
          _os_log_impl(&dword_1D8783000, v83, v143, "%ld: %s %s", v85, 0x20u);
          v108 = v142;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v108, -1, -1);
          v109 = v85;
          v34 = v102;
          MEMORY[0x1DA721330](v109, -1, -1);

          v22 = v135;
          v6 = v136;
          v8 = v140;
        }

        else
        {

          sub_1D888A48C(v12, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
          sub_1D888A48C(v34, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        }

        v110 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
        (*(*(v110 - 8) + 56))(v146, 1, 1, v110);
        sub_1D8B15E20();
        (*v144)(v8, v6);
        v37 = __OFADD__(v151++, 1);
        if (v37)
        {
          break;
        }

        v81 += v147;
        if (!--v27)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_15:

    sub_1D888A48C(v22, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v50 = v129;
    v27 = v128;
    v43 = v125;
    v48 = v131;
    v47 = v130;
  }

  v112 = v118;
  *v118 = MEMORY[0x1E69E7CC8];
  v114 = v112[1];
  v113 = v112[2];
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v113;
  v116 = v117[0];
  *v117[0] = sub_1D888A6E4;
  *(v116 + 8) = v115;
}

uint64_t sub_1D8886964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63388);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - v10;
  v12 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v39[0] = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v39 - v16;
  os_unfair_lock_lock((a2 + 16));
  sub_1D888A67C(a3, v17, type metadata accessor for ActionPin);
  sub_1D888A67C(a4, &v17[*(v12 + 20)], type metadata accessor for ActionPin.Pill);
  v18 = *(v9 + 16);
  v39[1] = v8;
  v18(v11, a1, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + 24);
  v40 = v17;
  v41 = v20;
  *(a2 + 24) = 0x8000000000000000;
  v22 = sub_1D87EFAE0(v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_18;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D8967FEC();
      v20 = v41;
    }

LABEL_7:
    *(a2 + 24) = v20;

    v29 = *(a2 + 24);
    if ((v26 & 1) == 0)
    {
      sub_1D888A67C(v40, v15, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      sub_1D897841C(v22, v15, MEMORY[0x1E69E7CC0], v29);
    }

    v15 = v29[7];
    v20 = *&v15[8 * v22];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v15[8 * v22] = v20;
    if (v30)
    {
LABEL_10:
      v32 = v20[2];
      v31 = v20[3];
      if (v32 >= v31 >> 1)
      {
        v20 = sub_1D87C87C0(v31 > 1, v32 + 1, 1, v20);
        *&v15[8 * v22] = v20;
      }

      v20[2] = v32 + 1;
      (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v11);
      v33 = *(a2 + 24);
      v34 = v33[2];
      if (v34)
      {
        v35 = sub_1D87F3970(v33[2], 0);
        v36 = sub_1D88174CC(&v41, v35 + ((*(v39[0] + 80) + 32) & ~*(v39[0] + 80)), v34, v33);

        sub_1D87977A0();
        if (v36 == v34)
        {
LABEL_16:
          sub_1D888A48C(v40, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
          v37 = *(a2 + 32);

          os_unfair_lock_unlock((a2 + 16));
          v37(v35);
        }

        __break(1u);
      }

      v35 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }

LABEL_18:
    v20 = sub_1D87C87C0(0, v20[2] + 1, 1, v20);
    *&v15[8 * v22] = v20;
    goto LABEL_10;
  }

  sub_1D896F65C(v25, isUniquelyReferenced_nonNull_native);
  v20 = v41;
  v27 = sub_1D87EFAE0(v40);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    goto LABEL_7;
  }

  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8886DA4@<X0>(float64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, float64x2_t *a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v170 = a5;
  v169 = a4;
  v168 = a3;
  v189 = a2;
  v172 = a6;
  v188 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v7 = *(v188 - 8);
  v8 = MEMORY[0x1EEE9AC00](v188);
  v165 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v187 = &v160 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v167 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v160 - v14;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63388);
  v16 = *(v180 - 8);
  v17 = MEMORY[0x1EEE9AC00](v180);
  v164 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v206 = &v160 - v19;
  v20 = type metadata accessor for BuiltInAction(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v192 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v191 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v196 = *(v193 - 8);
  v25 = MEMORY[0x1EEE9AC00](v193);
  v163 = &v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v162 = &v160 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v175 = &v160 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v160 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v194 = &v160 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645B8);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v200 = &v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v199 = &v160 - v38;
  v174 = a1;
  v39 = *a1;

  v171 = sub_1D87C2C40(v40);
  v41 = *&v39 + 64;
  v42 = 1 << *(*&v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v202 = v43 & *(*&v39 + 64);
  v44 = (v42 + 63) >> 6;
  v190 = (v21 + 48);
  v166 = (v7 + 48);
  v178 = v16 + 16;
  v177 = (v7 + 56);
  v181 = v16;
  v176 = (v16 + 8);

  v46 = 0;
  *&v47 = 136315394;
  v173 = v47;
  *&v47 = 136315138;
  v161 = v47;
  *&v47 = 136315650;
  v160 = v47;
  v195 = v39;
  v186 = v39;
  v182 = v15;
  v201 = v33;
  v179 = *&v39 + 64;
  v197 = v44;
  v198 = v20;
  while (1)
  {
    v50 = v200;
    v51 = v202;
    if (!v202)
    {
      break;
    }

    v52 = v46;
LABEL_17:
    v202 = (v51 - 1) & v51;
    v55 = __clz(__rbit64(v51)) | (v52 << 6);
    v56 = v195;
    v57 = v194;
    sub_1D888A67C(*(*&v195 + 48) + *(v196 + 72) * v55, v194, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v58 = *(*(*&v56 + 56) + 8 * v55);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645C0);
    v60 = *(v59 + 48);
    sub_1D888A424(v57, v50, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    *(v50 + v60) = v58;
    (*(*(v59 - 8) + 56))(v50, 0, 1, v59);

    v33 = v201;
LABEL_18:
    v61 = v50;
    v62 = v199;
    sub_1D88882B8(v61, v199);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645C0);
    if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
    {

      v153 = sub_1D87C2C40(v152);
      v154 = sub_1D89506B4(v171, v153);

      if (v154)
      {

        v155 = 0;
        v156 = 0;
      }

      else
      {
        v158 = *(v174 + 1);
        v157 = *(v174 + 2);
        v156 = swift_allocObject();
        *(v156 + 2) = v158;
        *(v156 + 3) = v157;
        *(v156 + 4) = v153;

        v155 = sub_1D8888AA4;
      }

      v159 = v172;
      *v172 = v155;
      v159[1] = v156;
      return result;
    }

    v64 = *(v62 + *(v63 + 48));
    sub_1D888A424(v62, v33, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v65 = *(v64 + 16);
    v66 = v198;
    if (!v65)
    {
      goto LABEL_23;
    }

    v67 = &v33[*(v193 + 20)];
    v68 = &v67[*(type metadata accessor for ActionPin.Pill(0) + 36)];
    v69 = v191;
    sub_1D888A67C(v68, v191, type metadata accessor for ActionPin.Pill.Source);
    if ((*v190)(v69, 1, v66) == 1)
    {
      goto LABEL_31;
    }

    sub_1D888A424(v69, v192, type metadata accessor for BuiltInAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 10)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if ((EnumCaseMultiPayload - 11) < 2 || EnumCaseMultiPayload == 6)
        {
LABEL_31:
          if (qword_1EE0E43B8 != -1)
          {
            swift_once();
          }

          v72 = sub_1D8B151E0();
          __swift_project_value_buffer(v72, qword_1EE0E43C0);
          v73 = v175;
          sub_1D888A67C(v201, v175, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
          v74 = sub_1D8B151C0();
          v75 = sub_1D8B16230();
          v76 = os_log_type_enabled(v74, v75);
          v184 = v65;
          v183 = v46;
          v77 = v180;
          if (v76)
          {
            v78 = v64;
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *&v205[0].f64[0] = v80;
            *v79 = v173;
            sub_1D888A804(&qword_1ECA645C8, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
            v204 = sub_1D8B16B50();
            v82 = v81;
            sub_1D888A48C(v73, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
            v83 = sub_1D89AC714(v204, v82, v205);

            *(v79 + 4) = v83;
            *(v79 + 12) = 2048;
            *(v79 + 14) = v65;
            _os_log_impl(&dword_1D8783000, v74, v75, "got a high-resolution still for %s with %ld waiters", v79, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v80);
            MEMORY[0x1DA721330](v80, -1, -1);
            v84 = v79;
            v64 = v78;
            MEMORY[0x1DA721330](v84, -1, -1);
          }

          else
          {

            sub_1D888A48C(v73, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
          }

          v85 = v206;
          v86 = (*(v181 + 80) + 32) & ~*(v181 + 80);
          v185 = v64;
          v87 = v64 + v86;
          v88 = *(v181 + 72);
          v203 = *(v181 + 16);
          v204 = v88;
          v89 = v188;
          v90 = v182;
          v91 = v177;
          v92 = v176;
          v93 = v184;
          do
          {
            (v203)(v85, v87, v77);
            (*v91)(v90, 1, 1, v89);
            sub_1D8B15E20();
            v85 = v206;
            (*v92)(v206, v77);
            v87 += v204;
            --v93;
          }

          while (v93);

          v33 = v201;
          v94 = v186;
          v95 = sub_1D87EFAE0(v201);
          v41 = v179;
          v46 = v183;
          if (v96)
          {
            v97 = v95;
            v98 = v174;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v94 = *v98;
            v205[0].f64[0] = *v98;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D8967FEC();
              v98 = v174;
              v94 = v205[0].f64[0];
            }

            sub_1D888A48C(*(*&v94 + 48) + *(v196 + 72) * v97, type metadata accessor for HighResolutionStillBarrier.ActionExecution);

            sub_1D8AF19F0(v97, *&v94);
            *v98 = v94;
            v33 = v201;
          }

          v186 = v94;
LABEL_43:
          v48 = type metadata accessor for HighResolutionStillBarrier.ActionExecution;
          v49 = v33;
        }

        else
        {
LABEL_44:
          v33 = v201;
LABEL_4:
          sub_1D888A48C(v33, type metadata accessor for HighResolutionStillBarrier.ActionExecution);

          v48 = type metadata accessor for BuiltInAction;
          v49 = v192;
        }

        result = sub_1D888A48C(v49, v48);
        goto LABEL_6;
      }

      v33 = v201;
      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_44;
      }

      v33 = v201;
LABEL_23:
      sub_1D888A48C(v33, type metadata accessor for HighResolutionStillBarrier.ActionExecution);

      goto LABEL_6;
    }

    v33 = v201;
    if ((v189 & 1) == 0)
    {
      goto LABEL_23;
    }

    v100 = v170[3];
    v205[2] = v170[2];
    v205[3] = v100;
    v205[4] = v170[4];
    v101 = v170[1];
    v205[0] = *v170;
    v205[1] = v101;
    v102 = v167;
    sub_1D8888328(v201, v169, v205, v167);
    if ((*v166)(v102, 1, v188) != 1)
    {
      v116 = v102;
      v117 = v187;
      sub_1D888A424(v116, v187, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v185 = v64;
      v118 = *(v64 + 16);
      if (qword_1EE0E43B8 != -1)
      {
        swift_once();
      }

      v119 = sub_1D8B151E0();
      __swift_project_value_buffer(v119, qword_1EE0E43C0);
      v120 = v117;
      v121 = v165;
      sub_1D888A67C(v120, v165, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v122 = v163;
      sub_1D888A67C(v201, v163, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v123 = sub_1D8B151C0();
      v124 = sub_1D8B16230();
      v125 = os_log_type_enabled(v123, v124);
      v184 = v65;
      if (v125)
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *&v205[0].f64[0] = v127;
        *v126 = v160;
        v128 = sub_1D8919AAC();
        v204 = v118;
        v129 = v122;
        v130 = v128;
        v132 = v131;
        sub_1D888A48C(v121, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v133 = sub_1D89AC714(v130, v132, v205);

        *(v126 + 4) = v133;
        *(v126 + 12) = 2080;
        sub_1D888A804(&qword_1ECA645C8, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v134 = sub_1D8B16B50();
        v136 = v135;
        sub_1D888A48C(v129, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v137 = sub_1D89AC714(v134, v136, v205);

        *(v126 + 14) = v137;
        *(v126 + 22) = 2048;
        *(v126 + 24) = v204;
        _os_log_impl(&dword_1D8783000, v123, v124, "prediction result %s matches %s with %ld waiters", v126, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v127, -1, -1);
        MEMORY[0x1DA721330](v126, -1, -1);
      }

      else
      {

        sub_1D888A48C(v122, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        sub_1D888A48C(v121, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      v138 = v185 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
      v139 = *(v181 + 72);
      v203 = *(v181 + 16);
      v204 = v139;
      v140 = v180;
      v141 = v164;
      v142 = v176;
      v143 = v184;
      v144 = v182;
      v145 = v177;
      do
      {
        (v203)(v141, v138, v140);
        sub_1D888A67C(v187, v144, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        (*v145)(v144, 0, 1, v188);
        sub_1D8B15E20();
        (*v142)(v141, v140);
        v138 += v204;
        --v143;
      }

      while (v143);

      v33 = v201;
      v146 = v186;
      v147 = sub_1D87EFAE0(v201);
      v41 = v179;
      if (v148)
      {
        v149 = v147;
        v150 = v174;
        v151 = swift_isUniquelyReferenced_nonNull_native();
        v146 = *v150;
        v205[0].f64[0] = *v150;
        if (!v151)
        {
          sub_1D8967FEC();
          v150 = v174;
          v146 = v205[0].f64[0];
        }

        sub_1D888A48C(*(*&v146 + 48) + *(v196 + 72) * v149, type metadata accessor for HighResolutionStillBarrier.ActionExecution);

        sub_1D8AF19F0(v149, *&v146);
        *v150 = v146;
        v33 = v201;
      }

      v186 = v146;
      sub_1D888A48C(v187, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      goto LABEL_43;
    }

    sub_1D888A3BC(v102);
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v103 = sub_1D8B151E0();
    __swift_project_value_buffer(v103, qword_1EE0E43C0);
    v104 = v201;
    v105 = v162;
    sub_1D888A67C(v201, v162, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v106 = sub_1D8B151C0();
    v107 = sub_1D8B16210();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *&v205[0].f64[0] = v204;
      *v108 = v161;
      sub_1D888A804(&qword_1ECA645C8, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      LODWORD(v185) = v107;
      v109 = sub_1D8B16B50();
      v111 = v110;
      v203 = type metadata accessor for HighResolutionStillBarrier.ActionExecution;
      sub_1D888A48C(v105, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v112 = sub_1D89AC714(v109, v111, v205);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_1D8783000, v106, v185, "no matches for %s were found in prediction results", v108, 0xCu);
      v113 = v204;
      __swift_destroy_boxed_opaque_existential_1(v204);
      MEMORY[0x1DA721330](v113, -1, -1);
      MEMORY[0x1DA721330](v108, -1, -1);

      v114 = v104;
      v115 = v203;
    }

    else
    {

      sub_1D888A48C(v105, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v114 = v104;
      v115 = type metadata accessor for HighResolutionStillBarrier.ActionExecution;
    }

    result = sub_1D888A48C(v114, v115);
    v33 = v104;
LABEL_6:
    v44 = v197;
  }

  if (v44 <= v46 + 1)
  {
    v53 = v46 + 1;
  }

  else
  {
    v53 = v44;
  }

  v54 = v53 - 1;
  while (1)
  {
    v52 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v52 >= v44)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645C0);
      (*(*(v71 - 8) + 56))(v50, 1, 1, v71);
      v202 = 0;
      v46 = v54;
      goto LABEL_18;
    }

    v51 = *(v41 + 8 * v52);
    ++v46;
    if (v51)
    {
      v46 = v52;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for HighResolutionStillBarrier.ActionExecution()
{
  result = qword_1EE0E4AD0;
  if (!qword_1EE0E4AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D88882B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8888328@<X0>(uint64_t a1@<X0>, void *a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v43 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v7 = MEMORY[0x1EEE9AC00](v43);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3[3];
  v47[2] = a3[2];
  v47[3] = v19;
  v47[4] = a3[4];
  v20 = a3[1];
  v47[0] = *a3;
  v47[1] = v20;
  v45 = a1;
  sub_1D87EDB98(sub_1D888A4EC, a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D888A3BC(v14);
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D8B151E0();
    __swift_project_value_buffer(v21, qword_1EE0E43C0);
    sub_1D888A67C(a1, v9, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v22 = sub_1D8B151C0();
    v23 = sub_1D8B16210();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46[0] = v25;
      *v24 = 136315138;
      sub_1D888A804(&qword_1ECA645C8, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v26 = sub_1D8B16B50();
      v28 = v27;
      sub_1D888A48C(v9, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v29 = sub_1D89AC714(v26, v28, v46);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1D8783000, v22, v23, "%s: no exact match found; searching for a matching pill only", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1DA721330](v25, -1, -1);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    else
    {

      sub_1D888A48C(v9, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    }

    v46[0] = a2;

    v39 = sub_1D8888BAC(v46, v47);
    v40 = v46[0];
    MEMORY[0x1EEE9AC00](v39);
    *(&v43 - 2) = a1;
    sub_1D87EDB98(sub_1D888A540, v40, v44);
  }

  else
  {
    sub_1D888A424(v14, v18, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D8B151E0();
    __swift_project_value_buffer(v30, qword_1EE0E43C0);
    sub_1D888A67C(a1, v11, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B16230();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 136315138;
      sub_1D888A804(&qword_1ECA645C8, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v35 = sub_1D8B16B50();
      v37 = v36;
      sub_1D888A48C(v11, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v38 = sub_1D89AC714(v35, v37, v46);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1D8783000, v31, v32, "%s: found an exact match", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1DA721330](v34, -1, -1);
      MEMORY[0x1DA721330](v33, -1, -1);
    }

    else
    {

      sub_1D888A48C(v11, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    }

    v42 = v44;
    sub_1D888A424(v18, v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    return (*(v16 + 56))(v42, 0, 1, v15);
  }
}

uint64_t sub_1D8888980(void (*a1)(size_t), uint64_t a2, void *a3)
{
  v3 = a3[2];
  if (v3)
  {
    v5 = sub_1D87F3970(v3, 0);
    v6 = *(type metadata accessor for HighResolutionStillBarrier.ActionExecution() - 8);
    v7 = sub_1D8817750(&v10, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3, a3);

    result = sub_1D87977A0();
    if (v7 != v3)
    {
      __break(1u);
      return result;
    }

    a1(v5);
  }

  else
  {
    a1(MEMORY[0x1E69E7CC0]);
  }
}

BOOL sub_1D8888AB0(uint64_t a1, uint64_t a2, double *a3)
{
  CVBundle.corners.getter(v12);
  Corners.bounds.getter();
  v4 = *a3;
  v5 = a3[1];
  v8 = v6 * *a3 * (v7 * v5);
  CVBundle.corners.getter(v12);
  Corners.bounds.getter();
  return v4 * v9 * (v5 * v10) < v8;
}

uint64_t sub_1D8888B48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8845D1C();
  v4 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  LOBYTE(a2) = sub_1D8846100((a2 + *(v4 + 20)), v3);

  return a2 & 1;
}

uint64_t sub_1D8888BAC(void **a1, float64x2_t *a2)
{
  v4 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D885D344(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_1D8888C64(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_1D8888C64(uint64_t *a1, float64x2_t *a2)
{
  v4 = a1[1];
  result = sub_1D8B16B30();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
        v8 = sub_1D8B15D60();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_1D88890AC(v10, v11, a1, v6, a2->f64);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1D8888D9C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D8888D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float64x2_t *a5)
{
  v53 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v39 - v18;
  v41 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v48 = *a5;
    v21 = *(v17 + 72);
    v22 = v20 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v46 = v20;
    v40 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v44 = v22;
    v45 = a3;
    v42 = v25;
    v43 = v24;
    v26 = v22;
    while (1)
    {
      sub_1D888A67C(v25, v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D888A67C(v26, v15, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      CVBundle.corners.getter(&v49);
      v27 = vbslq_s8(vcgtq_f64(v49, v50), v50, v49);
      v28 = vbslq_s8(vcgtq_f64(v27, v51), v51, v27);
      v29 = vbslq_s8(vcgeq_f64(v50, v49), v50, v49);
      v30 = vbslq_s8(vcgeq_f64(v51, v29), v51, v29);
      v47 = vmulq_f64(v48, vsubq_f64(vbslq_s8(vcgeq_f64(v52, v30), v52, v30), vbslq_s8(vcgtq_f64(v28, v52), v52, v28)));
      CVBundle.corners.getter(&v49);
      v31 = vbslq_s8(vcgtq_f64(v49, v50), v50, v49);
      v32 = vbslq_s8(vcgtq_f64(v31, v51), v51, v31);
      v33 = vbslq_s8(vcgeq_f64(v50, v49), v50, v49);
      v34 = vbslq_s8(vcgeq_f64(v51, v33), v51, v33);
      v35 = vmulq_f64(v48, vsubq_f64(vbslq_s8(vcgeq_f64(v52, v34), v52, v34), vbslq_s8(vcgtq_f64(v32, v52), v52, v32)));
      v36 = vmulq_f64(vzip1q_s64(v35, v47), vzip2q_s64(v35, v47));
      v37 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v36, 1), v36)).u8[0];
      sub_1D888A48C(v15, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      result = sub_1D888A48C(v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      if ((v37 & 1) == 0)
      {
LABEL_4:
        a3 = v45 + 1;
        v22 = v44 + v40;
        v24 = v43 - 1;
        v25 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      sub_1D888A424(v25, v12, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D888A424(v12, v26, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v26 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D88890AC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, double *a5)
{
  v7 = v5;
  v147 = a5;
  v135 = a1;
  v149 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v144 = *(v149 - 8);
  v10 = MEMORY[0x1EEE9AC00](v149);
  v137 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v148 = &v128 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v128 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v128 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v128 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v142 = &v128 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  result = MEMORY[0x1EEE9AC00](v25);
  v145 = a3;
  v29 = *(a3 + 8);
  if (v29 < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v6 = *v135;
    if (!*v135)
    {
      goto LABEL_139;
    }

    a3 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_133;
    }

    result = a3;
LABEL_100:
    v156 = result;
    v123 = *(result + 16);
    if (v123 >= 2)
    {
      while (*v145)
      {
        a3 = v123 - 1;
        v124 = *(result + 16 * v123);
        v125 = result;
        v126 = *(result + 16 * (v123 - 1) + 40);
        sub_1D8889D10(*v145 + *(v144 + 72) * v124, *v145 + *(v144 + 72) * *(result + 16 * (v123 - 1) + 32), *v145 + *(v144 + 72) * v126, v6, v147);
        if (v7)
        {
        }

        if (v126 < v124)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_1D885CC68(v125);
        }

        if (v123 - 2 >= *(v125 + 2))
        {
          goto LABEL_127;
        }

        v127 = &v125[16 * v123];
        *v127 = v124;
        *(v127 + 1) = v126;
        v156 = v125;
        sub_1D885CBDC(a3);
        result = v156;
        v123 = *(v156 + 16);
        if (v123 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v132 = &v128 - v27;
  v130 = v28;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v134 = a4;
  v131 = v22;
  while (1)
  {
    v138 = v31;
    if (v30 + 1 >= v29)
    {
      v40 = v30 + 1;
      goto LABEL_24;
    }

    v146 = v29;
    v32 = *v145;
    v33 = *(v144 + 72);
    v6 = *v145 + v33 * (v30 + 1);
    *&v151.f64[0] = type metadata accessor for ActionPredictor.BundleActionPredictionResult;
    v34 = v132;
    sub_1D888A67C(v6, v132, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v150.i64[0] = v32;
    v35 = v32 + v33 * v30;
    v36 = v30;
    v37 = v130;
    sub_1D888A67C(v35, v130, *&v151.f64[0]);
    LODWORD(v143) = sub_1D8888AB0(v34, v37, v147->f64);
    if (v7)
    {
      sub_1D888A48C(v37, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D888A48C(v132, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    }

    sub_1D888A48C(v37, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    result = sub_1D888A48C(v132, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v133 = v36;
    v38 = v36 + 2;
    a3 = v150.i64[0] + v33 * (v36 + 2);
    v39 = v33;
    v150.i64[0] = v33;
    while (1)
    {
      v40 = v146;
      if (v146 == v38)
      {
        break;
      }

      v41 = v142;
      sub_1D888A67C(a3, v142, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D888A67C(v6, v22, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      CVBundle.corners.getter(&v152);
      v42 = vbslq_s8(vcgtq_f64(v152, v153), v153, v152);
      v43 = vbslq_s8(vcgtq_f64(v42, v154), v154, v42);
      v44 = vbslq_s8(vcgeq_f64(v153, v152), v153, v152);
      v45 = vbslq_s8(vcgeq_f64(v154, v44), v154, v44);
      v151 = vsubq_f64(vbslq_s8(vcgeq_f64(v155, v45), v155, v45), vbslq_s8(vcgtq_f64(v43, v155), v155, v43));
      CVBundle.corners.getter(&v152);
      v46 = vmulq_f64(v151, *v147);
      v47 = vbslq_s8(vcgtq_f64(v152, v153), v153, v152);
      v48 = vbslq_s8(vcgtq_f64(v47, v154), v154, v47);
      v49 = vbslq_s8(vcgeq_f64(v153, v152), v153, v152);
      v50 = vbslq_s8(vcgeq_f64(v154, v49), v154, v49);
      v51 = vmulq_f64(*v147, vsubq_f64(vbslq_s8(vcgeq_f64(v155, v50), v155, v50), vbslq_s8(vcgtq_f64(v48, v155), v155, v48)));
      v151 = vmulq_f64(vzip1q_s64(v51, v46), vzip2q_s64(v51, v46));
      sub_1D888A48C(v22, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      result = sub_1D888A48C(v41, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v39 = v150.i64[0];
      ++v38;
      a3 += v150.i64[0];
      v6 += v150.i64[0];
      if ((v143 & 1) == (vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_laneq_s64(v151, 1), v151))).u8[0] & 1))
      {
        v40 = v38 - 1;
        break;
      }
    }

    a4 = v134;
    v30 = v133;
    if (v143)
    {
      if (v40 < v133)
      {
        goto LABEL_132;
      }

      if (v133 < v40)
      {
        v129 = 0;
        v52 = v39 * (v40 - 1);
        v6 = v40 * v39;
        v146 = v40;
        v53 = v40;
        v54 = v133;
        v55 = v133 * v39;
        do
        {
          if (v54 != --v53)
          {
            v56 = *v145;
            if (!*v145)
            {
              goto LABEL_136;
            }

            a3 = v56 + v55;
            sub_1D888A424(v56 + v55, v137, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            if (v55 < v52 || a3 >= v56 + v6)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1D888A424(v137, v56 + v52, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            v39 = v150.i64[0];
          }

          ++v54;
          v52 -= v39;
          v6 -= v39;
          v55 += v39;
        }

        while (v54 < v53);
        v7 = v129;
        a4 = v134;
        v30 = v133;
        v40 = v146;
      }
    }

LABEL_24:
    v57 = v145[1];
    if (v40 >= v57)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v40, v30))
    {
      goto LABEL_129;
    }

    if (v40 - v30 >= a4)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v30, a4))
    {
      goto LABEL_130;
    }

    if (v30 + a4 >= v57)
    {
      v6 = v145[1];
    }

    else
    {
      v6 = v30 + a4;
    }

    if (v6 < v30)
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      result = sub_1D885CC68(a3);
      goto LABEL_100;
    }

    if (v40 == v6)
    {
LABEL_33:
      v6 = v40;
      if (v40 < v30)
      {
        goto LABEL_128;
      }

      goto LABEL_34;
    }

    v129 = v7;
    v103 = *v145;
    v151 = *v147;
    v104 = *(v144 + 72);
    v105 = v103 + v104 * (v40 - 1);
    v106 = -v104;
    v133 = v30;
    v107 = v30 - v40;
    v146 = v40;
    v136 = v104;
    v108 = v103 + v40 * v104;
    v139 = v6;
LABEL_85:
    v140 = v108;
    v109 = v108;
    v141 = v107;
    v143 = v105;
LABEL_86:
    sub_1D888A67C(v109, v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D888A67C(v105, v16, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    CVBundle.corners.getter(&v152);
    v110 = vbslq_s8(vcgtq_f64(v152, v153), v153, v152);
    v111 = vbslq_s8(vcgtq_f64(v110, v154), v154, v110);
    v112 = vbslq_s8(vcgeq_f64(v153, v152), v153, v152);
    v113 = vbslq_s8(vcgeq_f64(v154, v112), v154, v112);
    v150 = vmulq_f64(v151, vsubq_f64(vbslq_s8(vcgeq_f64(v155, v113), v155, v113), vbslq_s8(vcgtq_f64(v111, v155), v155, v111)));
    CVBundle.corners.getter(&v152);
    v114 = vbslq_s8(vcgtq_f64(v152, v153), v153, v152);
    v115 = vbslq_s8(vcgtq_f64(v114, v154), v154, v114);
    v116 = vbslq_s8(vcgeq_f64(v153, v152), v153, v152);
    v117 = vbslq_s8(vcgeq_f64(v154, v116), v154, v116);
    v118 = vmulq_f64(v151, vsubq_f64(vbslq_s8(vcgeq_f64(v155, v117), v155, v117), vbslq_s8(vcgtq_f64(v115, v155), v155, v115)));
    v119 = vmulq_f64(vzip1q_s64(v118, v150), vzip2q_s64(v118, v150));
    v120 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v119, 1), v119)).u8[0];
    a3 = type metadata accessor for ActionPredictor.BundleActionPredictionResult;
    sub_1D888A48C(v16, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    result = sub_1D888A48C(v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    if (v120)
    {
      break;
    }

LABEL_84:
    v105 = v143 + v136;
    v107 = v141 - 1;
    v108 = v140 + v136;
    ++v146;
    v6 = v139;
    if (v146 != v139)
    {
      goto LABEL_85;
    }

    v7 = v129;
    v30 = v133;
    if (v139 < v133)
    {
      goto LABEL_128;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v31 = v138;
    }

    else
    {
      result = sub_1D87C7C5C(0, *(v138 + 2) + 1, 1, v138);
      v31 = result;
    }

    a3 = *(v31 + 2);
    v58 = *(v31 + 3);
    v59 = a3 + 1;
    if (a3 >= v58 >> 1)
    {
      result = sub_1D87C7C5C((v58 > 1), a3 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v59;
    v60 = &v31[16 * a3];
    *(v60 + 4) = v30;
    *(v60 + 5) = v6;
    v61 = *v135;
    if (!*v135)
    {
      goto LABEL_138;
    }

    v139 = v6;
    if (a3)
    {
      while (1)
      {
        v6 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v31 + 4);
          v63 = *(v31 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_53:
          if (v65)
          {
            goto LABEL_117;
          }

          v78 = &v31[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_120;
          }

          v84 = &v31[16 * v6 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_124;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v6 = v59 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v88 = &v31[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_67:
        if (v83)
        {
          goto LABEL_119;
        }

        v91 = &v31[16 * v6];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_122;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_74:
        a3 = v6 - 1;
        if (v6 - 1 >= v59)
        {
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
          goto LABEL_131;
        }

        if (!*v145)
        {
          goto LABEL_135;
        }

        v99 = v31;
        v100 = *&v31[16 * a3 + 32];
        v101 = *&v31[16 * v6 + 40];
        sub_1D8889D10(*v145 + *(v144 + 72) * v100, *v145 + *(v144 + 72) * *&v31[16 * v6 + 32], *v145 + *(v144 + 72) * v101, v61, v147);
        if (v7)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_1D885CC68(v99);
        }

        if (a3 >= *(v99 + 2))
        {
          goto LABEL_114;
        }

        v102 = &v99[16 * a3];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v156 = v99;
        result = sub_1D885CBDC(v6);
        v31 = v156;
        v59 = *(v156 + 16);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v31[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_115;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_116;
      }

      v73 = &v31[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_118;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_121;
      }

      if (v77 >= v69)
      {
        v95 = &v31[16 * v6 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v64 < v98)
        {
          v6 = v59 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v29 = v145[1];
    v30 = v139;
    a4 = v134;
    v22 = v131;
    if (v139 >= v29)
    {
      goto LABEL_97;
    }
  }

  if (v103)
  {
    a3 = type metadata accessor for ActionPredictor.BundleActionPredictionResult;
    v121 = v148;
    sub_1D888A424(v109, v148, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D888A424(v121, v105, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v105 += v106;
    v109 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1D8889D10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, float64x2_t *a5)
{
  v70 = a5;
  v69 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v9 = MEMORY[0x1EEE9AC00](v69);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v60 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v60 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v20;
  v78 = a1;
  v77 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v24 < 1)
    {
      v40 = a4 + v24;
    }

    else
    {
      v38 = -v20;
      v39 = a4 + v24;
      v40 = a4 + v24;
      v63 = a4;
      v66 = -v20;
      do
      {
        v61 = v40;
        v41 = a2 + v38;
        v64 = a2;
        v65 = v41;
        while (1)
        {
          if (a2 <= a1)
          {
            v78 = a2;
            v76 = v61;
            goto LABEL_58;
          }

          v42 = a3;
          v62 = v40;
          v43 = v66;
          v44 = v67;
          v45 = v39 + v66;
          sub_1D888A67C(v39 + v66, v67, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v46 = v68;
          sub_1D888A67C(v41, v68, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          CVBundle.corners.getter(&v72);
          v47 = v42 + v43;
          v48 = vbslq_s8(vcgtq_f64(v72, v73), v73, v72);
          v49 = vbslq_s8(vcgtq_f64(v48, v74), v74, v48);
          v50 = vbslq_s8(vcgeq_f64(v73, v72), v73, v72);
          v51 = vbslq_s8(vcgeq_f64(v74, v50), v74, v50);
          v71 = vsubq_f64(vbslq_s8(vcgeq_f64(v75, v51), v75, v51), vbslq_s8(vcgtq_f64(v49, v75), v75, v49));
          CVBundle.corners.getter(&v72);
          v52 = vmulq_f64(v71, *v70);
          v53 = vbslq_s8(vcgtq_f64(v72, v73), v73, v72);
          v54 = vbslq_s8(vcgtq_f64(v53, v74), v74, v53);
          v55 = vbslq_s8(vcgeq_f64(v73, v72), v73, v72);
          v56 = vbslq_s8(vcgeq_f64(v74, v55), v74, v55);
          v57 = vmulq_f64(*v70, vsubq_f64(vbslq_s8(vcgeq_f64(v75, v56), v75, v56), vbslq_s8(vcgtq_f64(v54, v75), v75, v54)));
          v58 = vmulq_f64(vzip1q_s64(v57, v52), vzip2q_s64(v57, v52));
          v59 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v58, 1), v58)).u8[0];
          sub_1D888A48C(v46, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          sub_1D888A48C(v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          if (v59)
          {
            break;
          }

          v40 = v45;
          a3 = v47;
          if (v42 < v39 || v47 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v65;
          }

          else
          {
            v41 = v65;
            if (v42 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          a2 = v64;
          if (v45 <= v63)
          {
            goto LABEL_56;
          }
        }

        a3 = v47;
        if (v42 < v64 || v47 >= v64)
        {
          a2 = v65;
          swift_arrayInitWithTakeFrontToBack();
          v40 = v62;
          v38 = v66;
        }

        else
        {
          a2 = v65;
          v38 = v66;
          v40 = v62;
          if (v42 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v39 > v63);
    }

LABEL_56:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v23;
    v76 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      do
      {
        sub_1D888A67C(a2, v18, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D888A67C(a4, v15, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        CVBundle.corners.getter(&v72);
        v26 = vbslq_s8(vcgtq_f64(v72, v73), v73, v72);
        v27 = vbslq_s8(vcgtq_f64(v26, v74), v74, v26);
        v28 = vbslq_s8(vcgeq_f64(v73, v72), v73, v72);
        v29 = vbslq_s8(vcgeq_f64(v74, v28), v74, v28);
        v71 = vsubq_f64(vbslq_s8(vcgeq_f64(v75, v29), v75, v29), vbslq_s8(vcgtq_f64(v27, v75), v75, v27));
        CVBundle.corners.getter(&v72);
        v30 = vmulq_f64(v71, *v70);
        v31 = vbslq_s8(vcgtq_f64(v72, v73), v73, v72);
        v32 = vbslq_s8(vcgtq_f64(v31, v74), v74, v31);
        v33 = vbslq_s8(vcgeq_f64(v73, v72), v73, v72);
        v34 = vbslq_s8(vcgeq_f64(v74, v33), v74, v33);
        v35 = vmulq_f64(*v70, vsubq_f64(vbslq_s8(vcgeq_f64(v75, v34), v75, v34), vbslq_s8(vcgtq_f64(v32, v75), v75, v32)));
        v36 = vmulq_f64(vzip1q_s64(v35, v30), vzip2q_s64(v35, v30));
        v37 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v36, 1), v36)).u8[0];
        sub_1D888A48C(v15, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D888A48C(v18, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        if (v37)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v78 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_58:
  sub_1D885CD6C(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_1D888A3BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D888A424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D888A48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D888A4EC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  return sub_1D8824444(v1, (v1 + *(v2 + 20))) & 1;
}

uint64_t sub_1D888A560(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionPin(0);
  v5 = (a1 + v4[5]);
  v6 = v5[3];
  v18[2] = v5[2];
  v18[3] = v6;
  v7 = v5[1];
  v18[0] = *v5;
  v18[1] = v7;
  v8 = (a2 + v4[5]);
  v9 = v8[1];
  v17[0] = *v8;
  v17[1] = v9;
  v10 = v8[3];
  v17[2] = v8[2];
  v17[3] = v10;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v18, v17))
  {
    return 0;
  }

  v11 = v4[6];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if ((v12 != *v14 || v13 != v14[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D88E245C(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v16 = *(type metadata accessor for HighResolutionStillBarrier.ActionExecution() + 20);

  return _s22VisualIntelligenceCore9ActionPinV4PillV2eeoiySbAE_AEtFZ_0((a1 + v16), (a2 + v16));
}

uint64_t sub_1D888A67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D888A738()
{
  result = type metadata accessor for ActionPin(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionPin.Pill(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D888A804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D888A854(uint64_t a1)
{
  v3 = sub_1D8B15910();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D8B15930();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  if (*(a1 + 8))
  {
    v9 = *v1;
    if (v9 == 3)
    {
      sub_1D8B158D0();
      sub_1D87D1F20();
      if (!sub_1D8B163E0())
      {
        v12 = [objc_opt_self() mainBundle];
      }
    }

    else if (v9 == 2)
    {
      sub_1D8B158D0();
      sub_1D87D1F20();
      if (!sub_1D8B163E0())
      {
        v10 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      sub_1D8B15900();
      sub_1D8B158F0();

      sub_1D8B158E0();

      sub_1D8B158F0();
      sub_1D8B15920();
      sub_1D87D1F20();
      if (!sub_1D8B163E0())
      {
        v13 = [objc_opt_self() mainBundle];
      }
    }
  }

  else
  {
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v11 = [objc_opt_self() mainBundle];
    }
  }

  sub_1D8B132F0();
  return sub_1D8B159D0();
}

uint64_t OnboardingResponse.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D888ACA4()
{
  result = qword_1ECA645D0;
  if (!qword_1ECA645D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA645D0);
  }

  return result;
}

uint64_t TapToRadarDraftPayload.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v20 = &v19 - v2;
  v3 = sub_1D8B13000();
  v22 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  sub_1D8B15A60();

  v21 = v0;
  v8 = *(v0 + 8);
  MEMORY[0x1DA720210](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v22 + 16);
    v11 = v8 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v12 = *(v22 + 72);
    v13 = (v22 + 8);
    do
    {
      v10(v7, v11, v3);
      sub_1D888B6F4(&qword_1ECA64C80, MEMORY[0x1E6968FB0]);
      sub_1D8B157A0();
      (*v13)(v7, v3);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  v14 = type metadata accessor for TapToRadarDraftPayload();
  v15 = v20;
  sub_1D888B4E8(v21 + *(v14 + 24), v20);
  v16 = v22;
  if ((*(v22 + 48))(v15, 1, v3) == 1)
  {
    return sub_1D8B16D40();
  }

  v18 = v19;
  (*(v16 + 32))(v19, v15, v3);
  sub_1D8B16D40();
  sub_1D888B6F4(&qword_1ECA64C80, MEMORY[0x1E6968FB0]);
  sub_1D8B157A0();
  return (*(v16 + 8))(v18, v3);
}

uint64_t TapToRadarDraftPayload.hashValue.getter()
{
  sub_1D8B16D20();
  TapToRadarDraftPayload.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D888B0F4()
{
  sub_1D8B16D20();
  TapToRadarDraftPayload.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D888B138()
{
  sub_1D8B16D20();
  TapToRadarDraftPayload.hash(into:)();
  return sub_1D8B16D80();
}

BOOL _s22VisualIntelligenceCore22TapToRadarDraftPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63608);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1D87DE9EC(*a1, *a2) & 1) == 0 || (sub_1D88E3774(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for TapToRadarDraftPayload() + 24);
  v15 = *(v11 + 48);
  sub_1D888B4E8(a1 + v14, v13);
  sub_1D888B4E8(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA630C0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1D888B4E8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1D87A14E4(v13, &qword_1ECA63608);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1D888B6F4(&qword_1ECA63610, MEMORY[0x1E6968FB0]);
  v18 = sub_1D8B158C0();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1D87A14E4(v13, &qword_1ECA630C0);
  return (v18 & 1) != 0;
}

uint64_t type metadata accessor for TapToRadarDraftPayload()
{
  result = qword_1ECA645E0;
  if (!qword_1ECA645E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D888B4E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D888B5C8()
{
  sub_1D888B694(319, &qword_1ECA645F0, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D888B694(319, &qword_1EE0E98B8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D888B694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D8B13000();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D888B6F4(unint64_t *a1, void (*a2)(uint64_t))
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

void EntryPoint.imageSearchEntrypoint.getter(char *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 >= 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x1030002uLL >> (8 * v2);
  }

  *a1 = v3;
}

uint64_t EntryPoint.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x646E696677656976;
    }

    if (v1 == 4)
    {
      return 0x6F6E656C6C6572;
    }
  }

  else
  {
    if (v1 == 1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (v1 == 2)
    {
      return 0x6F4C206B63697551;
    }
  }

  sub_1D8B16720();

  strcpy(v4, "Screenshots (");
  HIWORD(v4[1]) = -4864;
  if (!v1)
  {
    sub_1D88793B8(v2, 0);
    v1 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1DA71EFA0](v2, v1);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t EntryPoint.vapWorkflow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8) - 1;
  if (v3 > 3)
  {
    v4 = MEMORY[0x1E69DFC10];
  }

  else
  {
    v4 = qword_1E8561CF8[v3];
  }

  v5 = *v4;
  v6 = sub_1D8B150F0();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_1D888B984()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6F6F4C6B63697571;
  v4 = 0x646E696677656976;
  if (v1 != 3)
  {
    v4 = 0x6F6E656C6C6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68736E6565726373;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D888BA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D888D97C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D888BA58(uint64_t a1)
{
  v2 = sub_1D888D0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D888BA94(uint64_t a1)
{
  v2 = sub_1D888D0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D888BAD0(uint64_t a1)
{
  v2 = sub_1D888D1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D888BB0C(uint64_t a1)
{
  v2 = sub_1D888D1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D888BB48(uint64_t a1)
{
  v2 = sub_1D888D13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D888BB84(uint64_t a1)
{
  v2 = sub_1D888D13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D888BBC0(uint64_t a1)
{
  v2 = sub_1D888D238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D888BBFC(uint64_t a1)
{
  v2 = sub_1D888D238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D888BC38(uint64_t a1)
{
  v2 = sub_1D888D28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D888BC74(uint64_t a1)
{
  v2 = sub_1D888D28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D888BCB0(uint64_t a1)
{
  v2 = sub_1D888D190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D888BCEC(uint64_t a1)
{
  v2 = sub_1D888D190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntryPoint.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645F8);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64600);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = v25 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64608);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = v25 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64610);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64618);
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64620);
  v38 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v17 = *v2;
  v18 = v2[1];
  v25[1] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D888D0E8();
  sub_1D8B16DD0();
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v42 = 3;
      sub_1D888D190();
      v20 = v32;
      sub_1D8B16A40();
      v22 = v33;
      v21 = v34;
    }

    else
    {
      if (v18 != 4)
      {
        goto LABEL_8;
      }

      v43 = 4;
      sub_1D888D13C();
      v20 = v35;
      sub_1D8B16A40();
      v22 = v36;
      v21 = v37;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v38 + 8))(v16, v14);
  }

  if (v18 == 1)
  {
    v39 = 0;
    sub_1D888D28C();
    sub_1D8B16A40();
    (*(v26 + 8))(v13, v11);
    return (*(v38 + 8))(v16, v14);
  }

  if (v18 != 2)
  {
LABEL_8:
    v40 = 1;
    sub_1D888D238();
    sub_1D8B16A40();
    v23 = v30;
    sub_1D8B16A50();
    (*(v28 + 8))(v10, v23);
    return (*(v38 + 8))(v16, v14);
  }

  v41 = 2;
  sub_1D888D1E4();
  v19 = v27;
  sub_1D8B16A40();
  (*(v29 + 8))(v19, v31);
  return (*(v38 + 8))(v16, v14);
}

uint64_t EntryPoint.hash(into:)()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 3;
      return MEMORY[0x1DA720210](v2);
    }

    if (v1 == 4)
    {
      v2 = 4;
      return MEMORY[0x1DA720210](v2);
    }
  }

  else
  {
    if (v1 == 1)
    {
      v2 = 0;
      return MEMORY[0x1DA720210](v2);
    }

    if (v1 == 2)
    {
      v2 = 2;
      return MEMORY[0x1DA720210](v2);
    }
  }

  MEMORY[0x1DA720210](1);
  if (!v1)
  {
    return sub_1D8B16D40();
  }

  sub_1D8B16D40();

  return sub_1D8B15A60();
}

uint64_t EntryPoint.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D8B16D20();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_12;
    }

    if (v1 == 4)
    {
      v2 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (v1 == 1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 2)
    {
      v2 = 2;
LABEL_12:
      MEMORY[0x1DA720210](v2);
      return sub_1D8B16D80();
    }
  }

  MEMORY[0x1DA720210](1);
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B15A60();
  }

  return sub_1D8B16D80();
}

uint64_t EntryPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64658);
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64660);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64668);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64670);
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64678);
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64680);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - v16;
  v18 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D888D0E8();
  v19 = v66;
  sub_1D8B16DB0();
  if (v19)
  {
    goto LABEL_10;
  }

  v20 = v13;
  v50 = v11;
  v51 = 0;
  v22 = v61;
  v21 = v62;
  v66 = v15;
  v23 = v63;
  v24 = v64;
  v25 = sub_1D8B16A20();
  v26 = (2 * *(v25 + 16)) | 1;
  v67 = v25;
  v68 = v25 + 32;
  v69 = 0;
  v70 = v26;
  v27 = sub_1D881F7C0();
  if (v27 == 5 || v69 != v70 >> 1)
  {
    v32 = sub_1D8B16770();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v34 = &type metadata for EntryPoint;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v66 + 8))(v17, v14);
    swift_unknownObjectRelease();
LABEL_10:
    v35 = v65;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  if (v27 <= 1u)
  {
    if (v27)
    {
      v71 = 1;
      sub_1D888D238();
      v44 = v10;
      v45 = v51;
      sub_1D8B16950();
      v29 = v65;
      if (!v45)
      {
        v47 = v56;
        v48 = sub_1D8B16970();
        v51 = 0;
        v30 = v48;
        v31 = v49;
        (*(v55 + 8))(v44, v47);
        (*(v66 + 8))(v17, v14);
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

LABEL_20:
      (*(v66 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v35 = v29;
      return __swift_destroy_boxed_opaque_existential_1(v35);
    }

    v71 = 0;
    sub_1D888D28C();
    v37 = v17;
    v38 = v51;
    sub_1D8B16950();
    v39 = v65;
    v51 = v38;
    if (!v38)
    {
      (*(v52 + 8))(v20, v50);
      (*(v66 + 8))(v37, v14);
      swift_unknownObjectRelease();
      v30 = 0;
      v31 = 1;
      v46 = v39;
      goto LABEL_26;
    }

    (*(v66 + 8))(v37, v14);
    swift_unknownObjectRelease();
    v35 = v39;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  if (v27 != 2)
  {
    if (v27 == 3)
    {
      v71 = 3;
      sub_1D888D190();
      v28 = v51;
      sub_1D8B16950();
      v29 = v65;
      v51 = v28;
      if (!v28)
      {
        (*(v58 + 8))(v21, v59);
        (*(v66 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 3;
LABEL_25:
        v46 = v29;
        goto LABEL_26;
      }
    }

    else
    {
      v71 = 4;
      sub_1D888D13C();
      v42 = v60;
      v43 = v51;
      sub_1D8B16950();
      v29 = v65;
      v51 = v43;
      if (!v43)
      {
        (*(v57 + 8))(v42, v23);
        (*(v66 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 4;
        goto LABEL_25;
      }
    }

    goto LABEL_20;
  }

  v71 = 2;
  sub_1D888D1E4();
  v40 = v51;
  sub_1D8B16950();
  v41 = v66;
  v51 = v40;
  if (v40)
  {
    (*(v66 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v35 = v65;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  (*(v53 + 8))(v22, v54);
  (*(v41 + 8))(v17, v14);
  swift_unknownObjectRelease();
  v30 = 0;
  v31 = 2;
  v46 = v65;
LABEL_26:
  *v24 = v30;
  v24[1] = v31;
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_1D888CCF8()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 3;
      return MEMORY[0x1DA720210](v2);
    }

    if (v1 == 4)
    {
      v2 = 4;
      return MEMORY[0x1DA720210](v2);
    }
  }

  else
  {
    if (v1 == 1)
    {
      v2 = 0;
      return MEMORY[0x1DA720210](v2);
    }

    if (v1 == 2)
    {
      v2 = 2;
      return MEMORY[0x1DA720210](v2);
    }
  }

  MEMORY[0x1DA720210](1);
  if (!v1)
  {
    return sub_1D8B16D40();
  }

  sub_1D8B16D40();

  return sub_1D8B15A60();
}

uint64_t sub_1D888CDBC()
{
  v1 = *(v0 + 8);
  sub_1D8B16D20();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_12;
    }

    if (v1 == 4)
    {
      v2 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (v1 == 1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 2)
    {
      v2 = 2;
LABEL_12:
      MEMORY[0x1DA720210](v2);
      return sub_1D8B16D80();
    }
  }

  MEMORY[0x1DA720210](1);
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B15A60();
  }

  return sub_1D8B16D80();
}

uint64_t _s22VisualIntelligenceCore10EntryPointO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (v5 == 3)
      {
        sub_1D88793B8(*a1, 3);
        v6 = v4;
        v7 = 3;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (v3 == 4)
    {
      if (v5 == 4)
      {
        sub_1D88793B8(*a1, 4);
        v6 = v4;
        v7 = 4;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        sub_1D88793B8(*a1, 2);
        v6 = v4;
        v7 = 2;
LABEL_20:
        sub_1D88793B8(v6, v7);
        return 1;
      }

      goto LABEL_21;
    }

LABEL_10:
    if ((v5 - 1) >= 4)
    {
      if (v3)
      {
        if (!v5)
        {
          sub_1D8879738(*a2, 0);
          v8 = v4;
          v9 = 0;
          goto LABEL_22;
        }

        if (v2 == v4 && v3 == v5)
        {
          sub_1D8879738(*a1, v3);
          sub_1D8879738(v2, v3);
          sub_1D88793B8(v2, v3);
          v6 = v2;
          v7 = v3;
          goto LABEL_20;
        }

        v11 = sub_1D8B16BA0();
        sub_1D8879738(v4, v5);
        sub_1D8879738(v2, v3);
        sub_1D88793B8(v2, v3);
        sub_1D88793B8(v4, v5);
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        sub_1D8879738(v4, v5);
        sub_1D8879738(v2, 0);
        sub_1D88793B8(v2, 0);
        sub_1D88793B8(v4, v5);
        if (v5)
        {
          goto LABEL_23;
        }
      }

      return 1;
    }

LABEL_21:
    v8 = *a2;
    v9 = a2[1];
LABEL_22:
    sub_1D8879738(v8, v9);
    sub_1D8879738(v2, v3);
    sub_1D88793B8(v2, v3);
LABEL_23:
    sub_1D88793B8(v4, v5);
    return 0;
  }

  if (v5 != 1)
  {
    goto LABEL_21;
  }

  sub_1D88793B8(*a1, 1);
  sub_1D88793B8(v4, 1);
  return v5;
}

unint64_t sub_1D888D0E8()
{
  result = qword_1ECA64628;
  if (!qword_1ECA64628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64628);
  }

  return result;
}

unint64_t sub_1D888D13C()
{
  result = qword_1ECA64630;
  if (!qword_1ECA64630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64630);
  }

  return result;
}

unint64_t sub_1D888D190()
{
  result = qword_1ECA64638;
  if (!qword_1ECA64638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64638);
  }

  return result;
}

unint64_t sub_1D888D1E4()
{
  result = qword_1ECA64640;
  if (!qword_1ECA64640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64640);
  }

  return result;
}

unint64_t sub_1D888D238()
{
  result = qword_1ECA64648;
  if (!qword_1ECA64648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64648);
  }

  return result;
}

unint64_t sub_1D888D28C()
{
  result = qword_1ECA64650;
  if (!qword_1ECA64650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64650);
  }

  return result;
}

unint64_t sub_1D888D2E4()
{
  result = qword_1ECA64688;
  if (!qword_1ECA64688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64688);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore10EntryPointO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D888D35C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 5)
  {
    return (v3 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D888D3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_1D888D40C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1D888D4B0()
{
  result = qword_1ECA64690;
  if (!qword_1ECA64690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64690);
  }

  return result;
}

unint64_t sub_1D888D508()
{
  result = qword_1ECA64698;
  if (!qword_1ECA64698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64698);
  }

  return result;
}

unint64_t sub_1D888D560()
{
  result = qword_1ECA646A0;
  if (!qword_1ECA646A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646A0);
  }

  return result;
}

unint64_t sub_1D888D5B8()
{
  result = qword_1ECA646A8;
  if (!qword_1ECA646A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646A8);
  }

  return result;
}

unint64_t sub_1D888D610()
{
  result = qword_1ECA646B0;
  if (!qword_1ECA646B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646B0);
  }

  return result;
}

unint64_t sub_1D888D668()
{
  result = qword_1ECA646B8;
  if (!qword_1ECA646B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646B8);
  }

  return result;
}

unint64_t sub_1D888D6C0()
{
  result = qword_1ECA646C0;
  if (!qword_1ECA646C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646C0);
  }

  return result;
}

unint64_t sub_1D888D718()
{
  result = qword_1ECA646C8;
  if (!qword_1ECA646C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646C8);
  }

  return result;
}

unint64_t sub_1D888D770()
{
  result = qword_1ECA646D0;
  if (!qword_1ECA646D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646D0);
  }

  return result;
}

unint64_t sub_1D888D7C8()
{
  result = qword_1ECA646D8;
  if (!qword_1ECA646D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646D8);
  }

  return result;
}

unint64_t sub_1D888D820()
{
  result = qword_1ECA646E0;
  if (!qword_1ECA646E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646E0);
  }

  return result;
}

unint64_t sub_1D888D878()
{
  result = qword_1ECA646E8;
  if (!qword_1ECA646E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646E8);
  }

  return result;
}

unint64_t sub_1D888D8D0()
{
  result = qword_1ECA646F0;
  if (!qword_1ECA646F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646F0);
  }

  return result;
}

unint64_t sub_1D888D928()
{
  result = qword_1ECA646F8;
  if (!qword_1ECA646F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA646F8);
  }

  return result;
}

uint64_t sub_1D888D97C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEB0000000073746FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6F4C6B63697571 && a2 == 0xE90000000000006BLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E696677656976 && a2 == 0xEA00000000007265 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6E656C6C6572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1D888DB40()
{
  v0 = sub_1D8B131D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_1D8B13000();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v46 - v15;
  v16 = type metadata accessor for InternalSettings();
  v17 = sub_1D8B15940();
  LODWORD(v16) = [v16 BOOLForKey:v17 defaultValue:0];

  if (v16)
  {
    v18 = CVBufferRef.jpegData.getter();
    if (v19 >> 60 != 15)
    {
      v20 = v18;
      v21 = v19;
      sub_1D888EB58(v6);
      v48 = v21;
      v49 = v20;
      v22 = v51;
      v23 = v52;
      (*(v51 + 56))(v6, 0, 1, v52);
      (*(v22 + 32))(v50, v6, v23);
      v24 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      sub_1D8B131C0();
      v25 = sub_1D8B13120();
      (*(v1 + 8))(v3, v0);
      v26 = [v24 stringFromDate_];

      v27 = sub_1D8B15970();
      v29 = v28;

      v53[0] = v27;
      v53[1] = v29;
      MEMORY[0x1DA71EFA0](1735420462, 0xE400000000000000);
      v30 = v14;
      sub_1D8B12F70();
      v31 = v48;

      sub_1D8B13070();
      if (qword_1ECA620D0 != -1)
      {
        swift_once();
      }

      v32 = sub_1D8B151E0();
      __swift_project_value_buffer(v32, qword_1ECA64700);
      v33 = v51;
      v34 = v52;
      (*(v51 + 16))(v11, v30, v52);
      v35 = sub_1D8B151C0();
      v36 = sub_1D8B161F0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v47 = v30;
        v38 = v37;
        v39 = swift_slowAlloc();
        v53[0] = v39;
        *v38 = 136315138;
        v40 = sub_1D8B12F20();
        v42 = v41;
        v43 = *(v33 + 8);
        v43(v11, v34);
        v44 = sub_1D89AC714(v40, v42, v53);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_1D8783000, v35, v36, "Exported media written to %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1DA721330](v39, -1, -1);
        MEMORY[0x1DA721330](v38, -1, -1);
        sub_1D87C12A4(v49, v48);

        v43(v47, v34);
        v43(v50, v34);
      }

      else
      {
        sub_1D87C12A4(v49, v31);

        v45 = *(v33 + 8);
        v45(v11, v34);
        v45(v30, v34);
        v45(v50, v34);
      }
    }
  }
}

uint64_t sub_1D888E304()
{
  MEMORY[0x1DA721450](v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_1D888E33C()
{
  type metadata accessor for SaliencyPixelSmuggler();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_1D893D928(MEMORY[0x1E69E7CC0]);
  *(v0 + 112) = result;
  qword_1EE0E5340 = v0;
  return result;
}

uint64_t static SaliencyPixelSmuggler.shared.getter()
{
  if (qword_1EE0E5338 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D888E3FC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D888E448, v2, 0);
}

uint64_t sub_1D888E448()
{
  if ((v0[6] & 0x8000000000000000) != 0)
  {
    if (qword_1ECA620D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D8B151E0();
    __swift_project_value_buffer(v13, qword_1ECA64700);
    v14 = sub_1D8B151C0();
    v15 = sub_1D8B16220();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8783000, v14, v15, "Pixel smuggler called with invalid engine identifier", v16, 2u);
      MEMORY[0x1DA721330](v16, -1, -1);
    }
  }

  else
  {
    v1 = v0[8];
    swift_beginAccess();
    if (*(*(v1 + 112) + 16))
    {
      sub_1D87EFF94(v0[6]);
      if (v2)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v0[10] = Strong;
        if (Strong)
        {
          type metadata accessor for ActionPredictor(0);
          v4 = swift_dynamicCastClass();
          if (v4)
          {
            v5 = v4;
            v6 = v0[7];
            v0[5] = v0[8];
            v7 = v6[3];
            v8 = v6[4];
            v9 = __swift_project_boxed_opaque_existential_1(v6, v7);

            v10 = swift_task_alloc();
            v0[11] = v10;
            v11 = type metadata accessor for SaliencyPixelSmuggler();
            *v10 = v0;
            v10[1] = sub_1D888E6C4;

            return sub_1D885D45C(v9, (v0 + 5), v5, v7, v11, v8, &off_1F542C498);
          }

          swift_unknownObjectRelease();
        }
      }
    }
  }

  v17 = v0[1];

  return v17(0, 0xF000000000000000);
}

uint64_t sub_1D888E6C4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D888E7E4, v2, 0);
}

uint64_t sub_1D888E7E4()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = v1;
    sub_1D888DB40();

    v3 = v2;
    v4 = CVBufferRef.jpegData.getter();
    v6 = v5;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_1D888E8A8()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1ECA64700);
  v1 = __swift_project_value_buffer(v0, qword_1ECA64700);
  if (qword_1ECA62170 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECA66A20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D888E970()
{
  v0 = sub_1D8B12F10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, qword_1ECA64718);
  __swift_project_value_buffer(v4, qword_1ECA64718);
  sub_1D8B12F40();
  v10[0] = 0xD00000000000002ELL;
  v10[1] = 0x80000001D8B43630;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1D87C12C0();
  sub_1D8B12FE0();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

void sub_1D888EB58(uint64_t a1@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8B131D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v7 = sub_1D8B15940();
  [v6 setDateFormat_];

  sub_1D8B131C0();
  v8 = sub_1D8B13120();
  (*(v3 + 8))(v5, v2);
  v9 = [v6 stringFromDate_];

  sub_1D8B15970();
  if (qword_1ECA620D8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D8B13000();
  __swift_project_value_buffer(v10, qword_1ECA64718);
  sub_1D8B12F70();

  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1D8B12F50();
  v16[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v16];

  if (v13)
  {
    v14 = v16[0];
  }

  else
  {
    v15 = v16[0];
    sub_1D8B12EB0();

    swift_willThrow();
    (*(*(v10 - 8) + 8))(a1, v10);
  }
}

uint64_t SaliencyPixelSmuggler.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SaliencyPixelSmuggler.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of SaliencyPixelSmuggler.retrieveDataWithEngineIdentifier(_:pin:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D888F054;

  return v8(a1, a2);
}

uint64_t sub_1D888F054(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1D888F158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D888F1C0()
{
  result = qword_1ECA64730;
  if (!qword_1ECA64730)
  {
    sub_1D8B13000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64730);
  }

  return result;
}

uint64_t sub_1D888F218()
{
  v1 = CGImageGetColorSpace(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Width = CGImageGetWidth(v0);
  Height = CGImageGetHeight(v0);
  if (((Height | Width) & 0x8000000000000000) == 0)
  {
    v5 = sub_1D8A4E020(Width & 0xFFFFFFFFFFFFFFFELL, Height & 0xFFFFFFFFFFFFFFFELL, 0x42475241u);
    CVPixelBufferLockBaseAddress(v5, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v5);
    v7 = CVPixelBufferGetWidth(v5);
    v8 = CVPixelBufferGetHeight(v5);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
    v10 = __CGBitmapContextCreate(BaseAddress, v7, v8, BytesPerRow, v2);
    if (v10)
    {
      sub_1D8B161D0();
    }

    CVPixelBufferUnlockBaseAddress(v5, 0);

    return v5;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void static InProcessMediaFrame.fromJpg(named:in:timestamp:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v7 = _s22VisualIntelligenceCore19InProcessMediaFrameV17pixelBufferForJpg5named2inSo11CVBufferRefaSgSS_So8NSBundleCtFZ_0(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = v7;
    Width = CVPixelBufferGetWidth(v9);
    Height = CVPixelBufferGetHeight(v9);

    *a4 = v8;
    *(a4 + 8) = 0;
    *(a4 + 16) = Width;
    *(a4 + 24) = Height;
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
    *(a4 + 48) = a5;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    v12 = 1.0;
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *(a4 + 40) = 2;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    v12 = 0.0;
    *(a4 + 48) = 0;
  }

  *(a4 + 72) = 0;
  *(a4 + 80) = v12;
  *(a4 + 88) = v12;
}

uint64_t _s22VisualIntelligenceCore19InProcessMediaFrameV17pixelBufferForJpg5named2inSo11CVBufferRefaSgSS_So8NSBundleCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = sub_1D8B15940();
  v12 = sub_1D8B15940();
  v13 = [a3 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_1D8B12FB0();

    (*(v5 + 32))(v10, v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64738);
    inited = swift_initStackObject();
    v15 = *MEMORY[0x1E695F948];
    *(inited + 32) = *MEMORY[0x1E695F948];
    *(inited + 16) = xmmword_1D8B1AB90;
    *(inited + 64) = MEMORY[0x1E69E6370];
    *(inited + 40) = 1;
    v16 = v15;
    sub_1D893DE34(inited);
    swift_setDeallocating();
    sub_1D888F7AC(inited + 32);
    v17 = objc_allocWithZone(MEMORY[0x1E695F658]);
    v18 = sub_1D8B12F50();
    type metadata accessor for CIImageOption(0);
    sub_1D888F814();
    v19 = sub_1D8B15710();

    v20 = [v17 initWithContentsOfURL:v18 options:v19];

    if (v20)
    {
      v21 = [v20 pixelBuffer];

      (*(v5 + 8))(v10, v4);
      return v21;
    }
  }

  else
  {
    v23 = sub_1D8B15940();
    v24 = [objc_opt_self() imageNamed:v23 inBundle:a3];

    if (v24)
    {
      v25 = [v24 CGImage];

      if (v25)
      {
        v26 = sub_1D888F218();

        return v26;
      }
    }
  }

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D888F7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D888F814()
{
  result = qword_1ECA62590;
  if (!qword_1ECA62590)
  {
    type metadata accessor for CIImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62590);
  }

  return result;
}

double static Angle.degrees(_:)@<D0>(double *a1@<X8>, double a2@<D0>)
{
  result = a2 * 3.14159265 / 180.0;
  *a1 = result;
  return result;
}

VisualIntelligenceCore::Angle __swiftcall Angle.init(integerLiteral:)(Swift::Int integerLiteral)
{
  result.radiansValue = integerLiteral;
  *v1 = integerLiteral;
  return result;
}

void __swiftcall CameraSourceFrameMetadata.init(imageResolution:rotationAngle:shouldAttemptDetection:timestamp:isHighResolutionStill:safeArea:)(VisualIntelligenceCore::CameraSourceFrameMetadata *__return_ptr retstr, CGSize imageResolution, VisualIntelligenceCore::Angle rotationAngle, Swift::Bool shouldAttemptDetection, Swift::Double timestamp, Swift::Bool isHighResolutionStill, __C::CGRect safeArea)
{
  v8 = *shouldAttemptDetection;
  retstr->imageResolution.width = imageResolution.width;
  retstr->imageResolution.height = imageResolution.height;
  retstr->rotationAngle.radiansValue = v8;
  retstr->shouldAttemptDetection = isHighResolutionStill;
  retstr->timestamp = rotationAngle.radiansValue;
  retstr->isHighResolutionStill = v7;
  retstr->safeArea.origin.x = timestamp;
  retstr->safeArea.origin.y = safeArea.origin.x;
  retstr->safeArea.size.width = safeArea.origin.y;
  retstr->safeArea.size.height = safeArea.size.width;
}

double CameraImage.imageResolution.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    result = 0.0;
    if (*(v0 + 8) != 1)
    {
      return result;
    }

    Width = CGImageGetWidth(*v0);
    CGImageGetHeight(v1);
  }

  else
  {
    Width = CVPixelBufferGetWidth(*v0);
    CVPixelBufferGetHeight(v1);
  }

  return Width;
}

double CameraSourceFrameMetadata.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double CameraSourceFrameMetadata.rotationAngle.setter(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

void CameraSourceFrameMetadata.safeArea.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

uint64_t sub_1D888FA88()
{
  v1 = *v0;
  v2 = 0x7365526567616D69;
  v3 = 0x6D617473656D6974;
  v4 = 0x6165724165666173;
  if (v1 == 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v5 = 0x6E6F697461746F72;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D888FB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8891A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D888FB88(uint64_t a1)
{
  v2 = sub_1D8891310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D888FBC4(uint64_t a1)
{
  v2 = sub_1D8891310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CameraSourceFrameMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64748);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = *(v1 + 24);
  v11 = *(v1 + 3);
  v13 = *(v1 + 4);
  v14 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8891310();
  sub_1D8B16DD0();
  *&v15 = v8;
  *(&v15 + 1) = v9;
  v18 = 0;
  type metadata accessor for CGSize(0);
  sub_1D889140C(&qword_1ECA64758, type metadata accessor for CGSize);
  sub_1D8B16AE0();
  if (!v2)
  {
    *&v15 = v10;
    v18 = 1;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v15) = 2;
    sub_1D8B16AA0();
    LOBYTE(v15) = 3;
    sub_1D8B16AB0();
    LOBYTE(v15) = 4;
    sub_1D8B16AA0();
    v15 = v14;
    v16 = v13;
    v18 = 5;
    type metadata accessor for CGRect(0);
    sub_1D889140C(&qword_1ECA67820, type metadata accessor for CGRect);
    sub_1D8B16AE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CameraSourceFrameMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA720250](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1DA720250](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1DA720250](*&v10);
  sub_1D8B16D40();
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1DA720250](*&v11);
  sub_1D8B16D40();

  return sub_1D88911A0(v5, v6, v7, v8);
}

uint64_t CameraSourceFrameMetadata.hashValue.getter()
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t CameraSourceFrameMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64768);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8891310();
  sub_1D8B16DB0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v18 = 0;
    sub_1D889140C(&qword_1ECA64770, type metadata accessor for CGSize);
    sub_1D8B16A10();
    v9 = v17[0];
    v18 = 1;
    sub_1D88913B8();
    sub_1D8B16A10();
    v10 = *&v17[0];
    LOBYTE(v17[0]) = 2;
    v11 = sub_1D8B169D0();
    LOBYTE(v17[0]) = 3;
    sub_1D8B169E0();
    v13 = v12;
    LOBYTE(v17[0]) = 4;
    v14 = sub_1D8B169D0();
    type metadata accessor for CGRect(0);
    v18 = 5;
    sub_1D889140C(&qword_1ECA64778, type metadata accessor for CGRect);
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11 & 1;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14 & 1;
    v16 = v17[1];
    *(a2 + 48) = v17[0];
    *(a2 + 64) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8890368()
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D88903AC()
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t CameraSourceFrameMetadata.CoordinateSpace.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

void __swiftcall CameraSourceFrameMetadata.affineTransform(_:from:)(CGAffineTransform *__return_ptr retstr, VisualIntelligenceCore::CameraSourceFrameMetadata::CoordinateSpace _, VisualIntelligenceCore::CameraSourceFrameMetadata::CoordinateSpace from)
{
  if ((*_ & 1) == 0)
  {
    if (*from)
    {
      v10 = v3[3];
      *&v12.tx = v3[2];
      v13 = v10;
      v14 = v3[4];
      sub_1D8890548(&v15);
      v12 = v15;
      CGAffineTransformInvert(&v11, &v12);
      v8 = *&v11.a;
      v7 = *&v11.c;
      v9 = *&v11.tx;
      goto LABEL_7;
    }

LABEL_6:
    v7 = xmmword_1D8B24E10;
    v8 = xmmword_1D8B24E20;
    v9 = 0uLL;
    goto LABEL_7;
  }

  if (*from)
  {
    goto LABEL_6;
  }

  v5 = v3[3];
  *&v12.tx = v3[2];
  v13 = v5;
  v14 = v3[4];
  v6 = v3[1];
  *&v12.a = *v3;
  *&v12.c = v6;
  sub_1D8890548(&v15);
  v8 = *&v15.a;
  v7 = *&v15.c;
  v9 = *&v15.tx;
LABEL_7:
  *&retstr->a = v8;
  *&retstr->c = v7;
  *&retstr->tx = v9;
}

CGFloat sub_1D8890548@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v35.origin.x = v4;
  v35.origin.y = v5;
  v35.size.width = v6;
  v35.size.height = v7;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v4;
  v36.origin.y = v5;
  v36.size.width = v6;
  v36.size.height = v7;
  MidY = CGRectGetMidY(v36);
  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  tx = t1.tx;
  ty = t1.ty;
  v12 = -v3;
  v30 = *&t1.c;
  v31 = *&t1.a;
  v37.origin.x = v4;
  v37.origin.y = v5;
  v37.size.width = v6;
  v37.size.height = v7;
  Width = CGRectGetWidth(v37);
  v38.origin.x = v4;
  v38.origin.y = v5;
  v38.size.width = v6;
  v38.size.height = v7;
  Height = CGRectGetHeight(v38);
  CGAffineTransformMakeScale(&t1, Width, Height);
  v15 = t1.tx;
  v16 = t1.ty;
  v28 = *&t1.c;
  v29 = *&t1.a;
  CGAffineTransformMakeRotation(&t1, v12);
  v17 = t1.tx;
  v18 = t1.ty;
  v26 = *&t1.c;
  v27 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  v19 = *&t1.a;
  v20 = *&t1.c;
  v21 = *&t1.tx;
  v22 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v22;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&t2.a = v19;
  *&t2.c = v20;
  *&t2.tx = v21;
  CGAffineTransformConcat(&v32, &t1, &t2);
  t1 = v32;
  *&t2.a = v27;
  *&t2.c = v26;
  t2.tx = v17;
  t2.ty = v18;
  CGAffineTransformConcat(&v32, &t1, &t2);
  t1 = v32;
  *&t2.a = v29;
  *&t2.c = v28;
  t2.tx = v15;
  t2.ty = v16;
  CGAffineTransformConcat(&v32, &t1, &t2);
  t1 = v32;
  *&t2.a = v31;
  *&t2.c = v30;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v32, &t1, &t2);
  result = v32.a;
  v24 = *&v32.c;
  v25 = *&v32.tx;
  *a1 = *&v32.a;
  a1[1] = v24;
  a1[2] = v25;
  return result;
}

uint64_t sub_1D8890778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x56736E6169646172 && a2 == 0xEC00000065756C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D8890804(uint64_t a1)
{
  v2 = sub_1D8891454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8890840(uint64_t a1)
{
  v2 = sub_1D8891454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Angle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64780);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8891454();
  sub_1D8B16DD0();
  sub_1D8B16AB0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Angle.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v1);
}

uint64_t Angle.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA720250](*&v2);
  return sub_1D8B16D80();
}

uint64_t Angle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8891454();
  sub_1D8B16DB0();
  if (!v2)
  {
    sub_1D8B169E0();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8890BBC()
{
  v1 = *v0;
  sub_1D8B16D20();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA720250](*&v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8890C18()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v1);
}

uint64_t sub_1D8890C54()
{
  v1 = *v0;
  sub_1D8B16D20();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA720250](*&v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8890CC4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64780);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8891454();
  sub_1D8B16DD0();
  sub_1D8B16AB0();
  return (*(v3 + 8))(v5, v2);
}

double static Angle.*= infix(_:_:)(double *a1, double *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

uint64_t Angle.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, a2);
  if (sub_1D8B16520() < 65)
  {
    v12 = sub_1D8B16530();
    v13 = sub_1D8B16510();
    v14 = *(v6 + 8);
    v14(a1, a2);
    result = v14(v8, a2);
    if (v12)
    {
      v11 = v13;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    sub_1D88914A8();
    sub_1D88914FC();
    sub_1D8B15700();
    v9 = *(v6 + 8);
    v9(a1, a2);
    result = v9(v8, a2);
    v11 = *&v15[1];
  }

  *a3 = v11;
  *(a3 + 8) = 0;
  return result;
}

double static Angle.* infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

double static Angle.- infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double static Angle.+ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_1D8891080@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_1D8891094(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

double sub_1D88910A8@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double sub_1D88910BC(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

double sub_1D88910D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

double CameraSourceFrame.rotationAngle.getter@<D0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  (*(a1 + 40))(&v4);
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1D88911A0(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1DA720250](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1DA720250](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1DA720250](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1DA720250](*&v9);
}

BOOL _s22VisualIntelligenceCore11CameraImageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 == 2;
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 3;
  }

  v7 = v6;
  if (*(a1 + 8) != 2)
  {
    v5 = v7;
  }

  if (*(a2 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = v2 == v3;
  }

  v9 = v8;
  v11 = v4 == 1 && v2 == v3;
  if (!*(a1 + 8))
  {
    v11 = v9;
  }

  if (*(a1 + 8) <= 1u)
  {
    return v11;
  }

  else
  {
    return v5;
  }
}

BOOL _s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4.f64[0] = *(a1 + 16);
  v5.f64[0] = *(a2 + 16);
  v4.f64[1] = *(a1 + 32);
  v5.f64[1] = *(a2 + 32);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(v4, v5))))) & 1) == 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    return CGRectEqualToRect(*(a1 + 48), *(a2 + 48));
  }

  return result;
}

unint64_t sub_1D8891310()
{
  result = qword_1ECA64750;
  if (!qword_1ECA64750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64750);
  }

  return result;
}

unint64_t sub_1D8891364()
{
  result = qword_1ECA64760;
  if (!qword_1ECA64760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64760);
  }

  return result;
}

unint64_t sub_1D88913B8()
{
  result = qword_1ECA689D0;
  if (!qword_1ECA689D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689D0);
  }

  return result;
}

uint64_t sub_1D889140C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8891454()
{
  result = qword_1ECA64788;
  if (!qword_1ECA64788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64788);
  }

  return result;
}

unint64_t sub_1D88914A8()
{
  result = qword_1ECA64798;
  if (!qword_1ECA64798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64798);
  }

  return result;
}

unint64_t sub_1D88914FC()
{
  result = qword_1ECA647A0;
  if (!qword_1ECA647A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647A0);
  }

  return result;
}

unint64_t sub_1D8891554()
{
  result = qword_1ECA647A8;
  if (!qword_1ECA647A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647A8);
  }

  return result;
}

unint64_t sub_1D88915AC()
{
  result = qword_1ECA647B0;
  if (!qword_1ECA647B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647B0);
  }

  return result;
}

unint64_t sub_1D8891600()
{
  result = qword_1ECA647B8;
  if (!qword_1ECA647B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647B8);
  }

  return result;
}

uint64_t sub_1D8891660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D88916B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore11CameraImageO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D8891758(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D88917A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1D88917E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D889186C()
{
  result = qword_1ECA647C0;
  if (!qword_1ECA647C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647C0);
  }

  return result;
}

unint64_t sub_1D88918C4()
{
  result = qword_1ECA647C8;
  if (!qword_1ECA647C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647C8);
  }

  return result;
}

unint64_t sub_1D889191C()
{
  result = qword_1ECA647D0;
  if (!qword_1ECA647D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647D0);
  }

  return result;
}

unint64_t sub_1D8891974()
{
  result = qword_1ECA647D8;
  if (!qword_1ECA647D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647D8);
  }

  return result;
}

unint64_t sub_1D88919CC()
{
  result = qword_1ECA647E0;
  if (!qword_1ECA647E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647E0);
  }

  return result;
}

unint64_t sub_1D8891A24()
{
  result = qword_1ECA647E8;
  if (!qword_1ECA647E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA647E8);
  }

  return result;
}

uint64_t sub_1D8891A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365526567616D69 && a2 == 0xEF6E6F6974756C6FLL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B43710 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B43730 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D8891CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D889342C(a3, v25 - v10);
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D889349C(v11);
  }

  else
  {
    sub_1D8B15E90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D8B15E00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D8B15A10() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D889349C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D889349C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D8891F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D889342C(a3, v25 - v10);
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D889349C(v11);
  }

  else
  {
    sub_1D8B15E90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D8B15E00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D8B15A10() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D889349C(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D889349C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t SaliencySession.Configuration.init()()
{
  type metadata accessor for SaliencySession.Configuration.HostingProcess(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static SaliencySession.Configuration.local()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  swift_storeEnumTagMultiPayload();
  sub_1D8892C50(a1, type metadata accessor for SaliencySession.Configuration.HostingProcess);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SaliencySession.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1D8892E38(a1, v5 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, type metadata accessor for SaliencySession.Configuration);
  v6 = sub_1D8B15EA0();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1D8891CA0(0, 0, v4, &unk_1D8B3F610, v7);

  sub_1D8892C50(a1, type metadata accessor for SaliencySession.Configuration);
  return v5;
}

uint64_t SaliencySession.init(configuration:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  swift_defaultActor_initialize();
  sub_1D8892E38(a1, v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, type metadata accessor for SaliencySession.Configuration);
  v6 = sub_1D8B15EA0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1D8891CA0(0, 0, v5, &unk_1D8B254E0, v7);

  sub_1D8892C50(a1, type metadata accessor for SaliencySession.Configuration);
  return v1;
}

uint64_t sub_1D88925D4()
{
  v1 = type metadata accessor for SaliencySession.ScreenshotsConfiguration(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - v5;
  v7 = type metadata accessor for InProcessStream.Configuration();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v37 - v11);
  v13 = type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SaliencySession.Configuration(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8892E38(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, v18, type metadata accessor for SaliencySession.Configuration);
  sub_1D8892DD0(v18, v15, type metadata accessor for SaliencySession.Configuration.HostingProcess);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *(v15 + 1);
      v40 = *v15;
      v41 = v20;
      v42[0] = *(v15 + 2);
      *(v42 + 15) = *(v15 + 47);
      sub_1D88A54B4(v12);
      v37 = v40;
      v38 = v41;
      v39[0] = v42[0];
      *(v39 + 15) = *(v42 + 15);
      v21 = RellenoConfiguration.configStorage.getter();
      swift_unknownObjectRelease();
      *v12 = v21;
      v12[1] = &protocol witness table for DictionaryConfigStorage;
      v22 = (v12 + *(v7 + 20));
      sub_1D88793B8(*v22, v22[1]);
      *v22 = xmmword_1D8B254D0;
      v37 = v40;
      v38 = v41;
      v39[0] = v42[0];
      *(v39 + 15) = *(v42 + 15);
      SaliencyStreamConfiguration.apply(_:)(&v37);
      sub_1D8892D7C(&v40);
      type metadata accessor for InProcessStream();
      swift_allocObject();
      return sub_1D88A5764(v12);
    }

    else
    {
      type metadata accessor for DictionaryConfigStorage();
      v25 = swift_allocObject();
      v26 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
      *(v25 + 16) = 0;
      *(v25 + 24) = v26;
      v27 = (v12 + *(v7 + 20));
      sub_1D8896240(v27);
      *v12 = v25;
      v12[1] = &protocol witness table for DictionaryConfigStorage;
      sub_1D88793B8(*v27, v27[1]);
      *v27 = xmmword_1D8B254C0;
      v28 = v27 + *(type metadata accessor for SaliencyStreamConfiguration() + 28);
      v29 = type metadata accessor for BundleManager.Configuration(0);
      v30 = *(v29 + 40);
      v31 = sub_1D8B150F0();
      v32 = *(v31 - 8);
      (*(v32 + 8))(&v28[v30], v31);
      (*(v32 + 104))(&v28[v30], *MEMORY[0x1E69DFC18], v31);
      v33 = *(v29 + 32);
      v34 = sub_1D8B15340();
      v35 = *(v34 - 8);
      (*(v35 + 8))(&v28[v33], v34);
      (*(v35 + 104))(&v28[v33], *MEMORY[0x1E69C9A80], v34);
      sub_1D8892E38(v12, v10, type metadata accessor for InProcessStream.Configuration);
      type metadata accessor for InProcessStream();
      swift_allocObject();
      v36 = sub_1D88A5764(v10);
      sub_1D8892C50(v12, type metadata accessor for InProcessStream.Configuration);
      return v36;
    }
  }

  else
  {
    sub_1D8892DD0(v15, v6, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    sub_1D8892E38(v6, v4, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    sub_1D88964A8(v4, v12);
    type metadata accessor for InProcessStream();
    swift_allocObject();
    v24 = sub_1D88A5764(v12);
    sub_1D8892C50(v6, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    return v24;
  }
}

uint64_t SaliencySession.deinit()
{
  sub_1D8892C50(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, type metadata accessor for SaliencySession.Configuration);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SaliencySession.__deallocating_deinit()
{
  sub_1D8892C50(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, type metadata accessor for SaliencySession.Configuration);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8892BA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D89A789C();
}

uint64_t sub_1D8892C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8892CB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8864FBC;

  return sub_1D89A789C();
}

uint64_t sub_1D8892DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8892E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8892EA0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D8892F94;

  return v5(v2 + 32);
}

uint64_t sub_1D8892F94()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D88930D0()
{
  result = type metadata accessor for SaliencySession.Configuration.HostingProcess(319);
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

uint64_t sub_1D88931E4()
{
  result = type metadata accessor for SaliencySession.Configuration.HostingProcess(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D8893278()
{
  sub_1D8893314();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StillAppConfiguration();
    if (v1 <= 0x3F)
    {
      sub_1D8893374();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D8893314()
{
  result = qword_1EE0E80A0;
  if (!qword_1EE0E80A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0E80A0);
  }

  return result;
}

void sub_1D8893374()
{
  if (!qword_1EE0E3A20)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3A20);
    }
  }
}

uint64_t sub_1D88933C4()
{
  result = type metadata accessor for SaliencySession.ScreenshotsConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D889342C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D889349C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8893504(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D8892EA0(a1, v4);
}

uint64_t sub_1D88935BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D8892EA0(a1, v4);
}

uint64_t sub_1D8893674(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88B7B50(a1, v4);
}

uint64_t sub_1D889372C(uint64_t a1)
{
  v3 = type metadata accessor for DetectionRequest(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v4;
  sub_1D87F4534(0, v6, 0);
  v7 = v34;
  v8 = v28 + 56;
  result = sub_1D8B16580();
  v10 = result;
  v11 = v28;
  v12 = 0;
  v27 = v28 + 64;
  v29 = v6;
  v30 = v8;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v11 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v33 = *(v11 + 36);
    v15 = v31;
    sub_1D88C7D1C(*(v11 + 48) + *(v32 + 72) * v10, v31, type metadata accessor for DetectionRequest);
    v16 = *v15;
    result = sub_1D88C7D84(v15, type metadata accessor for DetectionRequest);
    v34 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1D87F4534((v17 > 1), v18 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v18 + 1;
    *(v7 + v18 + 32) = v16;
    v13 = 1 << *(v11 + 32);
    if (v10 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v30;
    v19 = *(v30 + 8 * v14);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v14 << 6;
      v22 = v14 + 1;
      v23 = (v27 + 8 * v14);
      while (v22 < (v13 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1D87977B4(v10, v33, 0);
          v11 = v28;
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v10, v33, 0);
      v11 = v28;
    }

LABEL_4:
    ++v12;
    v10 = v13;
    if (v12 == v29)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D8893A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v6[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64908);
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v6[14] = *(v8 + 64);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8893B38, 0, 0);
}

uint64_t sub_1D8893B38()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    if (qword_1EE0E5338 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE0E5340;
    v0[18] = qword_1EE0E5340;

    return MEMORY[0x1EEE6DFA0](sub_1D8893C44, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D8893C44()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = *(v0[17] + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_identifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649B8);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1D8B04CB4(v4, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v10;
  swift_endAccess();
  v9 = (v2 + *v2);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1D8893DE8;
  v7 = v0[16];

  return v9(v7);
}

uint64_t sub_1D8893DE8()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D8893EF8, v1, 0);
}

uint64_t sub_1D8893EF8()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = sub_1D8B15EA0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v2, v1, v3);
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v7;
  (*(v4 + 32))(&v9[v8], v2, v3);
  sub_1D8891F60(0, 0, v5, &unk_1D8B25F90, v9);

  (*(v4 + 8))(v1, v3);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1D88940CC;

  return sub_1D884DE70();
}

uint64_t sub_1D88940CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88941C8, 0, 0);
}

uint64_t sub_1D88941C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8894244(uint64_t a1)
{
  v2[103] = v1;
  v2[102] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v3 = sub_1D8B15130();
  v2[106] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = type metadata accessor for LoggingSignposter(0);
  v2[111] = swift_task_alloc();
  v4 = type metadata accessor for BundleSelector.Output(0);
  v2[112] = v4;
  v5 = *(v4 - 8);
  v2[113] = v5;
  v2[114] = *(v5 + 64);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64908);
  v2[121] = v6;
  v2[122] = *(v6 - 8);
  v2[123] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649C0);
  v2[124] = v7;
  v2[125] = *(v7 - 8);
  v2[126] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8894524, v1, 0);
}

uint64_t sub_1D8894524()
{
  (*(v0[122] + 16))(v0[123], v0[102], v0[121]);
  sub_1D881CF20(&qword_1EE0E3898, &qword_1ECA64908);
  sub_1D8B15FD0();
  v0[127] = sub_1D88C7AAC(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  v0[128] = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  v0[129] = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_isPredictionRunning;
  v0[130] = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults;
  swift_beginAccess();
  v1 = v0[127];
  v2 = v0[103];
  sub_1D881CF20(&qword_1EE0E38C0, &qword_1ECA649C0);
  v3 = swift_task_alloc();
  v0[131] = v3;
  *v3 = v0;
  v3[1] = sub_1D88946F8;
  v4 = v0[120];

  return MEMORY[0x1EEE6D8D0](v4, v2, v1);
}

uint64_t sub_1D88946F8()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 824);

    return MEMORY[0x1EEE6DFA0](sub_1D8894808, v4, 0);
  }

  return result;
}

uint64_t sub_1D8894808()
{
  v1 = v0[120];
  v2 = *(v0[113] + 48);
  if (v2(v1, 1, v0[112]) == 1)
  {
    (*(v0[125] + 8))(v0[126], v0[124]);

    v3 = v0[1];

    return v3();
  }

  v81 = v2;
  sub_1D88C7124(v1, v0[118], type metadata accessor for BundleSelector.Output);
  if (qword_1EE0E62F8 != -1)
  {
    swift_once();
  }

  v5 = v0[111];
  v6 = __swift_project_value_buffer(v0[110], qword_1EE0E6300);
  sub_1D88C7D1C(v6, v5, type metadata accessor for LoggingSignposter);
  sub_1D8B15150();
  sub_1D8B15100();
  v7 = sub_1D8B15150();
  v8 = sub_1D8B16370();
  if (sub_1D8B16460())
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v7, v8, v10, "ActionPredictor.processingLoop", "", v9, 2u);
    MEMORY[0x1DA721330](v9, -1, -1);
  }

  v79 = v0[119];
  v80 = v0[128];
  v75 = v0[111];
  v76 = v0[112];
  v11 = v0[109];
  v12 = v0[108];
  v13 = v0[107];
  v14 = v0[106];
  v77 = v0[103];
  v78 = v0[118];

  v15 = *(v13 + 16);
  v15(v12, v11, v14);
  sub_1D8B151A0();
  swift_allocObject();
  v16 = sub_1D8B15190();
  v17 = type metadata accessor for LoggingSignposter.IntervalState(0);
  v0[92] = v17;
  v0[93] = &off_1F5431C78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 89);
  v15(boxed_opaque_existential_1 + v17[5], v11, v14);
  sub_1D8B131C0();
  sub_1D88C7D1C(v75, boxed_opaque_existential_1 + v17[8], type metadata accessor for LoggingSignposter);
  *boxed_opaque_existential_1 = "ActionPredictor.processingLoop";
  boxed_opaque_existential_1[1] = 30;
  *(boxed_opaque_existential_1 + 16) = 2;
  *(boxed_opaque_existential_1 + v17[6]) = v16;
  *(boxed_opaque_existential_1 + v17[9]) = 1;
  *(boxed_opaque_existential_1 + v17[10]) = 0;
  (*(v13 + 8))(v11, v14);
  sub_1D88C7D84(v75, type metadata accessor for LoggingSignposter);
  v19 = v78 + *(v76 + 20);
  v20 = *(v19 + 32);
  sub_1D87A0E38(v77 + v80, v79, &qword_1ECA640E8);
  v21 = v81(v79, 1, v76);
  v22 = v0[119];
  if (v21)
  {
    sub_1D87A14E4(v22, &qword_1ECA640E8);
    v23 = -INFINITY;
  }

  else
  {
    v24 = v0[117];
    v25 = v0[112];
    v26 = v0[119];
    sub_1D88C7D1C(v22, v24, type metadata accessor for BundleSelector.Output);
    sub_1D87A14E4(v26, &qword_1ECA640E8);
    v23 = *(v24 + *(v25 + 20) + 32);
    sub_1D88C7D84(v24, type metadata accessor for BundleSelector.Output);
  }

  v27 = *(v19 + 40);
  v28 = v0[129];
  v29 = v0[103];
  if (v27 & 1) == 0 && (*(v29 + v28))
  {
    if (v23 >= v20)
    {
      if (qword_1EE0E43B8 != -1)
      {
        swift_once();
      }

      v62 = sub_1D8B151E0();
      __swift_project_value_buffer(v62, qword_1EE0E43C0);
      v63 = sub_1D8B151C0();
      v64 = sub_1D8B16200();
      v65 = os_log_type_enabled(v63, v64);
      v34 = v0[118];
      if (v65)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1D8783000, v63, v64, "Already running; skip it", v66, 2u);
        MEMORY[0x1DA721330](v66, -1, -1);
        v67 = v0[92];
        v68 = v0[93];
        __swift_project_boxed_opaque_existential_1(v0 + 89, v67);
        (*(v68 + 8))(v67, v68);
        __swift_destroy_boxed_opaque_existential_1((v0 + 89));

LABEL_39:
        v61 = v34;
LABEL_40:
        sub_1D88C7D84(v61, type metadata accessor for BundleSelector.Output);
        v71 = v0[127];
        v72 = v0[103];
        sub_1D881CF20(&qword_1EE0E38C0, &qword_1ECA649C0);
        v73 = swift_task_alloc();
        v0[131] = v73;
        *v73 = v0;
        v73[1] = sub_1D88946F8;
        v74 = v0[120];

        return MEMORY[0x1EEE6D8D0](v74, v72, v71);
      }
    }

    else
    {
      if (qword_1EE0E43B8 != -1)
      {
        swift_once();
      }

      v30 = sub_1D8B151E0();
      __swift_project_value_buffer(v30, qword_1EE0E43C0);
      v31 = sub_1D8B151C0();
      v32 = sub_1D8B16200();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D8783000, v31, v32, "Already running; geometry update", v33, 2u);
        MEMORY[0x1DA721330](v33, -1, -1);
      }

      v34 = v0[118];

      sub_1D883B174(v35, v34);
    }

    v69 = v0[92];
    v70 = v0[93];
    __swift_project_boxed_opaque_existential_1(v0 + 89, v69);
    (*(v70 + 8))(v69, v70);
    __swift_destroy_boxed_opaque_existential_1((v0 + 89));
    goto LABEL_39;
  }

  v36 = v0[118];
  v37 = v0[116];
  v38 = v0[115];
  v39 = v0[113];
  *(v29 + v28) = 1;
  sub_1D88C7D1C(v36, v37, type metadata accessor for BundleSelector.Output);
  sub_1D88C7D1C(v37, v38, type metadata accessor for BundleSelector.Output);
  v40 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v41 = swift_allocObject();
  v0[132] = v41;
  *(v41 + 16) = v29;
  sub_1D88C7124(v37, v41 + v40, type metadata accessor for BundleSelector.Output);

  if (!v27)
  {
    v45 = v0[127];
    v46 = v0[105];
    v47 = v0[104];
    v48 = v0[103];
    sub_1D88C7D84(v0[115], type metadata accessor for BundleSelector.Output);
    v49 = sub_1D8B15EA0();
    v50 = *(v49 - 8);
    (*(v50 + 56))(v46, 1, 1, v49);
    v51 = swift_allocObject();
    v51[2] = v48;
    v51[3] = v45;
    v51[4] = v48;
    v51[5] = &unk_1D8B25FA8;
    v51[6] = v41;
    sub_1D87A0E38(v46, v47, &unk_1ECA675E0);
    LODWORD(v47) = (*(v50 + 48))(v47, 1, v49);
    swift_retain_n();

    v52 = v0[104];
    if (v47 == 1)
    {
      sub_1D87A14E4(v0[104], &unk_1ECA675E0);
    }

    else
    {
      sub_1D8B15E90();
      (*(v50 + 8))(v52, v49);
    }

    v53 = v51[2];
    swift_unknownObjectRetain();

    if (v53)
    {
      swift_getObjectType();
      v54 = sub_1D8B15E00();
      v56 = v55;
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    sub_1D87A14E4(v0[105], &unk_1ECA675E0);
    v57 = swift_allocObject();
    *(v57 + 16) = &unk_1D8B25FB0;
    *(v57 + 24) = v51;
    if (v56 | v54)
    {
      v0[94] = 0;
      v0[95] = 0;
      v0[96] = v54;
      v0[97] = v56;
    }

    v58 = v0[118];
    swift_task_create();
    v59 = v0[92];
    v60 = v0[93];
    __swift_project_boxed_opaque_existential_1(v0 + 89, v59);
    (*(v60 + 8))(v59, v60);
    __swift_destroy_boxed_opaque_existential_1((v0 + 89));

    v61 = v58;
    goto LABEL_40;
  }

  v42 = v0[115];
  v43 = v0[103];
  v44 = swift_task_alloc();
  v0[133] = v44;
  *(v44 + 16) = v43;
  *(v44 + 24) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64210);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 101, sub_1D88953F0, v0 + 82);
}

uint64_t sub_1D889540C()
{
  v1 = v0[129];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[103];

  sub_1D88C7D84(v3, type metadata accessor for BundleSelector.Output);
  v5 = v0[92];
  v6 = v0[93];
  __swift_project_boxed_opaque_existential_1(v0 + 89, v5);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 89));

  sub_1D88C7D84(v2, type metadata accessor for BundleSelector.Output);
  *(v4 + v1) = 0;
  v7 = v0[127];
  v8 = v0[103];
  sub_1D881CF20(&qword_1EE0E38C0, &qword_1ECA649C0);
  v9 = swift_task_alloc();
  v0[131] = v9;
  *v9 = v0;
  v9[1] = sub_1D88946F8;
  v10 = v0[120];

  return MEMORY[0x1EEE6D8D0](v10, v8, v7);
}

uint64_t sub_1D889559C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A50);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - v6;
  v67 = sub_1D8B13240();
  v65 = *(v67 - 8);
  v8 = MEMORY[0x1EEE9AC00](v67);
  v63 = v9;
  v64 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v42 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60);
  v11 = *(v66 - 8);
  v12 = MEMORY[0x1EEE9AC00](v66);
  v14 = &v42 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStream);
  v59 = v1;
  v60 = v15;
  v16 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v17 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 48);
  v75[2] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 32);
  v75[3] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 80);
  v75[4] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 64);
  v75[5] = v18;
  v19 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState + 16);
  v75[0] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v75[1] = v19;
  v68 = v14;
  if (v18)
  {
    v57 = a1;
    v20 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_bundles);
    v21 = v16[3];
    v72 = v16[2];
    v73 = v21;
    v74 = v16[4];
    v22 = v16[1];
    v70 = *v16;
    v71 = v22;
    MEMORY[0x1EEE9AC00](v12);
    *(&v42 - 4) = &v70;
    *(&v42 - 3) = v23;
    *(&v42 - 2) = v1;
    swift_bridgeObjectRetain_n();
    sub_1D87A0E38(v75, v69, &qword_1ECA64858);
    v53 = sub_1D8927E6C(MEMORY[0x1E69E7CC8], sub_1D88C7C98, (&v42 - 6), v20);
    sub_1D87A14E4(v75, &qword_1ECA64858);
    v61 = v20;

    v51 = *(&v70 + 1);
    v52 = v70;
    v49 = *(&v71 + 1);
    v50 = v71;
    v47 = *(&v72 + 1);
    v48 = v72;
    v45 = *(&v73 + 1);
    v46 = v73;
    v43 = *(&v74 + 1);
    v44 = v74;
  }

  else
  {
    v61 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v53 = 0;
  }

  v58 = v11;
  v57 = sub_1D88C7AAC(&qword_1EE0E85E0, type metadata accessor for BundleManager);
  sub_1D8B15EB0();
  v24 = v62;
  sub_1D8B13230();
  v26 = v64;
  v25 = v65;
  v27 = *(v65 + 16);
  v27(v64, v24, v67);
  v28 = v66;
  (*(v11 + 16))(v7, v68, v66);
  (*(v11 + 56))(v7, 0, 1, v28);
  swift_beginAccess();
  sub_1D895E908(v7, v26);
  swift_endAccess();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 24) = v57;
  swift_unknownObjectWeakInit();
  v31 = v67;
  v27(v26, v24, v67);
  v32 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v33 = (v63 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  v35 = v34 + v32;
  v36 = v26;
  v37 = v66;
  v38 = v31;
  (*(v25 + 32))(v35, v36, v31);
  *(v34 + v33) = v30;
  v39 = v68;

  sub_1D8B15EC0();
  (*(v25 + 8))(v24, v38);

  if (v61)
  {
    v69[0] = v61;
    v69[1] = v52;
    v69[2] = v51;
    v69[3] = v50;
    v69[4] = v49;
    v69[5] = v48;
    v69[6] = v47;
    v69[7] = v46;
    v69[8] = v45;
    v69[9] = v44;
    v69[10] = v43;
    v40 = v54;
    v69[11] = v53;
    sub_1D8B15EE0();
    (*(v55 + 8))(v40, v56);
  }

  return (*(v58 + 8))(v39, v37);
}

uint64_t sub_1D8895C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A08);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v46 = sub_1D8B13240();
  v42 = *(v46 - 8);
  v8 = v42;
  v48 = *(v42 + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18);
  v14 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848);
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v45 = v2;
  sub_1D8AD381C(&v65);
  v44 = sub_1D88C7AAC(&qword_1EE0E8B28, type metadata accessor for TrackManager);
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v71 = v65;
  v72 = v66;
  v37 = *(&v70 + 1);
  v47 = v70;
  v49 = v19;
  v43 = v16;
  sub_1D8B15EB0();
  v54 = v13;
  sub_1D8B13230();
  v41 = *(v8 + 16);
  v20 = v11;
  v21 = v13;
  v22 = v46;
  v41(v11, v21, v46);
  v23 = v55;
  (*(v14 + 16))(v7, v16, v55);
  v52 = v14;
  (*(v14 + 56))(v7, 0, 1, v23);
  swift_beginAccess();
  sub_1D895ED70(v7, v11);
  swift_endAccess();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 24) = v44;
  swift_unknownObjectWeakInit();
  v26 = v22;
  v41(v11, v54, v22);
  v27 = v42;
  v28 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v29 = (v48 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  v31 = v30 + v28;
  v32 = v43;
  v33 = v55;
  (*(v27 + 32))(v31, v20, v26);
  *(v30 + v29) = v25;

  sub_1D8B15EC0();
  (*(v27 + 8))(v54, v26);

  if (v47)
  {
    v56[8] = v73;
    v56[9] = v74;
    v56[10] = v75;
    v56[6] = v71;
    v56[7] = v72;
    v57 = v47;
    v58 = v37;
    v62 = v74;
    v63 = v75;
    v60 = v72;
    v61 = v73;
    v59 = v71;
    *&v64 = v47;
    *(&v64 + 1) = v37;
    sub_1D88C7A20(&v59, v56);
    v34 = v38;
    sub_1D8B15EE0();
    (*(v39 + 8))(v34, v40);
  }

  (*(v52 + 8))(v32, v33);
  (*(v50 + 32))(v53, v49, v51);
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v59 = v65;
  v60 = v66;
  return sub_1D87A14E4(&v59, &qword_1ECA64858);
}

__n128 InProcessMediaFrame.init(cameraImage:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  v4 = *(a2 + 48);
  *(a3 + 48) = *(a2 + 32);
  *(a3 + 64) = v4;
  *(a3 + 80) = *(a2 + 64);
  result = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = result;
  return result;
}

double sub_1D8896240@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D893DF5C(&unk_1F5426928);
  v3 = sub_1D8A50334(&unk_1F54269A8);
  v4 = type metadata accessor for SaliencyStreamConfiguration();
  v5 = a1 + v4[7];
  *v5 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v5 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(v5 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v6 = type metadata accessor for InternalSettings();
  v7 = sub_1D8B15940();
  LODWORD(v6) = [v6 BOOLForKey:v7 defaultValue:0];

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(v5 + 13) = v8;
  v9 = type metadata accessor for BundleManager.Configuration(0);
  v10 = v9[8];
  v11 = *MEMORY[0x1E69C9A80];
  v12 = sub_1D8B15340();
  (*(*(v12 - 8) + 104))(v5 + v10, v11, v12);
  *(v5 + v9[9]) = MEMORY[0x1E69E7CD0];
  v13 = v9[10];
  v14 = *MEMORY[0x1E69DFC20];
  v15 = sub_1D8B150F0();
  (*(*(v15 - 8) + 104))(v5 + v13, v14, v15);
  *(v5 + v9[11]) = 2;
  *a1 = xmmword_1D8B190D0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 3;
  *(a1 + 48) = v3;
  *(a1 + 56) = 1056964608;
  v16 = a1 + v4[8];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v16 + 24) = _Q0;
  *(v16 + 40) = 16908290;
  *&result = 10;
  *(v16 + 48) = xmmword_1D8B190E0;
  *(v16 + 64) = 1;
  v23 = a1 + v4[9];
  *v23 = 0x402E000000000000;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0x3FE0000000000000;
  *(v23 + 24) = 1000;
  *(v23 + 32) = 0x3FF8000000000000;
  return result;
}

uint64_t sub_1D88964A8@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a1;
  v76 = a2;
  v2 = sub_1D8B15270();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v58 - v5;
  *&v74 = type metadata accessor for StillAppConfiguration();
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SaliencyStreamConfiguration();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D893DF5C(&unk_1F5426928);
  v11 = sub_1D8A50334(&unk_1F54269F8);
  v12 = &v9[v7[7]];
  *v12 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v12 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(v12 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v13 = type metadata accessor for InternalSettings();
  v14 = sub_1D8B15940();
  LODWORD(v13) = [v13 BOOLForKey:v14 defaultValue:0];

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *(v12 + 13) = v15;
  v16 = type metadata accessor for BundleManager.Configuration(0);
  v17 = v16[8];
  v18 = *MEMORY[0x1E69C9A80];
  v19 = sub_1D8B15340();
  v20 = *(v19 - 8);
  v21 = *(v20 + 104);
  v71 = v19;
  v72 = v17;
  v70 = v20 + 104;
  v68 = v20;
  v69 = v21;
  (v21)(v12 + v17, v18);
  v59 = v16[9];
  *(v12 + v59) = MEMORY[0x1E69E7CD0];
  v22 = v16[10];
  v23 = *MEMORY[0x1E69DFC20];
  v24 = sub_1D8B150F0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v66 = v24;
  v67 = v22;
  v64 = v26;
  v65 = v25 + 104;
  (v26)(v12 + v22, v23);
  *(v12 + v16[11]) = 2;
  *v9 = xmmword_1D8B190D0;
  *(v9 + 2) = v10;
  v9[24] = 0;
  *(v9 + 4) = 1;
  v9[40] = 3;
  *(v9 + 6) = v11;
  *(v9 + 14) = 1056964608;
  v27 = &v9[v7[8]];
  *v27 = 0;
  *(v27 + 1) = *&v77[3];
  *(v27 + 1) = *v77;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v27 + 24) = _Q0;
  *(v27 + 10) = 16908290;
  *(v27 + 3) = xmmword_1D8B190E0;
  v27[64] = 1;
  v33 = &v9[v7[9]];
  *v33 = 0x402E000000000000;
  v33[8] = 0;
  *(v33 + 2) = 0x3FE0000000000000;
  *(v33 + 3) = 1000;
  *(v33 + 4) = 0x3FF8000000000000;
  v34 = type metadata accessor for SaliencySession.ScreenshotsConfiguration(0);
  v35 = v75;
  v36 = (v75 + *(v34 + 24));
  v37 = *v36;
  v38 = v36[1];
  v40 = *v9;
  v39 = *(v9 + 1);
  *v9 = *v36;
  *(v9 + 1) = v38;

  sub_1D88793B8(v40, v39);
  v41 = v35 + *(v34 + 20);
  v42 = v73;
  sub_1D88C7D1C(v41, v73, type metadata accessor for StillAppConfiguration);
  v43 = v74;
  sub_1D88C7CB8(v42 + *(v74 + 20), v12);
  v44 = v41 + *(v43 + 24);
  v45 = *(v44 + 48);
  *(v27 + 2) = *(v44 + 32);
  *(v27 + 3) = v45;
  v27[64] = *(v44 + 64);
  v46 = *(v44 + 16);
  *v27 = *v44;
  *(v27 + 1) = v46;
  if (v38 && (sub_1D89BB128(v37, v38) & 1) != 0)
  {
    v48 = v61;
    v47 = v62;
    v49 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x1E69E0210], v63);
    v50 = v60;
    sub_1D87FB314(v60, v48);
    (*(v47 + 8))(v50, v49);
  }

  v52 = v66;
  v51 = v67;
  (*(v25 + 8))(v12 + v67, v66);
  v64(v12 + v51, *MEMORY[0x1E69DFC10], v52);
  v54 = v71;
  v53 = v72;
  (*(v68 + 8))(v12 + v72, v71);
  v69(v12 + v53, *MEMORY[0x1E69C9A88], v54);
  v55 = *(type metadata accessor for InProcessStream.Configuration() + 20);
  v74 = *v35;
  v56 = v76;
  sub_1D88C7D1C(v9, v76 + v55, type metadata accessor for SaliencyStreamConfiguration);
  *v56 = v74;
  swift_unknownObjectRetain();
  sub_1D88C7D84(v35, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
  return sub_1D88C7D84(v9, type metadata accessor for SaliencyStreamConfiguration);
}

uint64_t SaliencyStream.refine(pixelBuffer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8864FBC;
  v8.n128_u64[0] = 0;

  return v10(a1, a2, a3, v8);
}

unint64_t SaliencyError.errorDescription.getter()
{
  v1 = v0[1];
  v2 = 0xD000000000000014;
  if (v1)
  {
    v2 = *v0;
  }

  if (v1 == 1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = v2;
  }

  sub_1D87DDF78(*v0, v1);
  return v3;
}

unint64_t sub_1D8896C40()
{
  v1 = v0[1];
  v2 = 0xD000000000000014;
  if (v1)
  {
    v2 = *v0;
  }

  if (v1 == 1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = v2;
  }

  sub_1D87DDF78(*v0, v1);
  return v3;
}

uint64_t SaliencyStreamIngredientsProviding.cvCoordinator.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&v4);
  v2 = v4;

  return v2;
}

uint64_t SaliencyStreamIngredientsProviding.trackManager.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v4);
  v2 = v4[1];

  return v2;
}

uint64_t SaliencyStreamIngredientsProviding.bundleManager.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v4);
  v2 = v4[2];

  return v2;
}

uint64_t SaliencyStreamIngredientsProviding.bundleSelector.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v4);
  v2 = v4[3];

  return v2;
}

uint64_t SaliencyStreamIngredientsProviding.actionPredictor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v4);
  v2 = v4[4];

  return v2;
}

uint64_t SaliencyStreamIngredients.saliencyStreamIngredients.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

uint64_t sub_1D8896F60@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

uint64_t sub_1D8896FCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1D889709C;

  return sub_1D8897190(a1, a2);
}

uint64_t sub_1D889709C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8897190(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F8);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8897298, 0, 0);
}

uint64_t sub_1D8897298()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1D87A0E38(v0[3], v3, &qword_1ECA647F8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_1D87A14E4(v0[5], &qword_1ECA647F8);
    v5 = *(v4 + 16);
    v0[10] = v5;
    v6 = sub_1D8897488;
  }

  else
  {
    v7 = v0[4];
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v5 = *(v7 + 16);
    v0[9] = v5;
    v6 = sub_1D8897398;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D8897398()
{
  sub_1D889559C(*(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1D8897404, 0, 0);
}

uint64_t sub_1D8897404()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8897488()
{
  sub_1D889559C(*(v0 + 80) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SaliencyStreamInternalMonitorable<>.makeBundleManagerOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F8);
  v5[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D889761C, 0, 0);
}

uint64_t sub_1D889761C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1D87A0E38(v0[3], v3, &qword_1ECA647F8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[4];
    v4 = v0[5];
    sub_1D87A14E4(v0[7], &qword_1ECA647F8);
    v6 = SaliencyStreamIngredientsProviding.bundleManager.getter(v5, v4);
    v0[12] = v6;
    v7 = sub_1D8897834;
  }

  else
  {
    v8 = v0[5];
    v9 = v0[4];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v6 = SaliencyStreamIngredientsProviding.bundleManager.getter(v9, v8);
    v0[11] = v6;
    v7 = sub_1D889773C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D889773C()
{
  sub_1D889559C(*(v0 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1D88977B0, 0, 0);
}

uint64_t sub_1D88977B0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8897834()
{
  sub_1D889559C(*(v0 + 96) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88978C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1D88C7EBC;

  return sub_1D8897994(a1, a2);
}

uint64_t sub_1D8897994(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64808);
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8897AE0, 0, 0);
}

uint64_t sub_1D8897AE0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D87A0E38(v0[3], v3, &qword_1ECA64808);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_1D87A14E4(v0[6], &qword_1ECA64808);
    v5 = *(v4 + 24);
    v0[12] = v5;
    v6 = sub_1D8897D78;
  }

  else
  {
    v7 = v0[4];
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    v5 = *(v7 + 24);
    v0[11] = v5;
    v6 = sub_1D8897BE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D8897BE8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[2];
  sub_1D8AA7C74(v3);
  v5 = sub_1D88C7AAC(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  sub_1D88AE494(v1, v3, v2, v5, v4);
  sub_1D87A14E4(v3, &qword_1ECA640E8);

  return MEMORY[0x1EEE6DFA0](sub_1D8897CD8, 0, 0);
}

uint64_t sub_1D8897CD8()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8897D78()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];
  (*(v0[8] + 16))(v2, v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy, v0[7]);
  sub_1D8AA7C74(v3);
  v5 = sub_1D88C7AAC(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  sub_1D88AE494(v2, v3, v1, v5, v4);
  sub_1D87A14E4(v3, &qword_1ECA640E8);
  (*(v0[8] + 8))(v0[9], v0[7]);

  v6 = v0[1];

  return v6();
}

uint64_t SaliencyStreamInternalMonitorable<>.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64808);
  v5[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D889801C, 0, 0);
}

uint64_t sub_1D889801C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1D87A0E38(v0[3], v3, &qword_1ECA64808);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    v5 = v0[4];
    sub_1D87A14E4(v0[8], &qword_1ECA64808);
    v6 = SaliencyStreamIngredientsProviding.bundleSelector.getter(v5, v4);
    v0[14] = v6;
    v7 = sub_1D88982DC;
  }

  else
  {
    v8 = v0[5];
    v9 = v0[4];
    (*(v0[10] + 32))(v0[12], v0[8], v0[9]);
    v6 = SaliencyStreamIngredientsProviding.bundleSelector.getter(v9, v8);
    v0[13] = v6;
    v7 = sub_1D8898144;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D8898144()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[7];
  v4 = v0[2];
  sub_1D8AA7C74(v3);
  v5 = sub_1D88C7AAC(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  sub_1D88AE494(v2, v3, v1, v5, v4);
  sub_1D87A14E4(v3, &qword_1ECA640E8);

  return MEMORY[0x1EEE6DFA0](sub_1D8898240, 0, 0);
}

uint64_t sub_1D8898240()
{
  (*(v0[10] + 8))(v0[12], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D88982DC()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  (*(v3 + 16))(v2, v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy, v4);
  sub_1D8AA7C74(v5);
  v7 = sub_1D88C7AAC(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  sub_1D88AE494(v2, v5, v1, v7, v6);
  sub_1D87A14E4(v5, &qword_1ECA640E8);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D8898448(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1D88C7EBC;

  return sub_1D8898518(a1, a2);
}

uint64_t sub_1D8898518(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64818);
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8898664, 0, 0);
}

uint64_t sub_1D8898664()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D87A0E38(v0[3], v3, &qword_1ECA64818);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_1D87A14E4(v0[6], &qword_1ECA64818);
    v5 = *(v4 + 32);
    v0[12] = v5;
    v6 = sub_1D88C7EB0;
  }

  else
  {
    v7 = v0[4];
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    v5 = *(v7 + 32);
    v0[11] = v5;
    v6 = sub_1D889876C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D889876C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[2];
  sub_1D88447A0(v3);
  v5 = sub_1D88C7AAC(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  sub_1D88ADC7C(v1, v3, v2, v5, v4);
  sub_1D87A14E4(v3, &qword_1ECA64290);

  return MEMORY[0x1EEE6DFA0](sub_1D88C7EB4, 0, 0);
}

uint64_t sub_1D8898868(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64818);
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88989B4, 0, 0);
}

uint64_t sub_1D88989B4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D87A0E38(v0[3], v3, &qword_1ECA64818);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_1D87A14E4(v0[6], &qword_1ECA64818);
    v5 = *(v4 + 48);
    v0[12] = v5;
    v6 = sub_1D8898ABC;
  }

  else
  {
    v7 = v0[4];
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    v5 = *(v7 + 48);
    v0[11] = v5;
    v6 = sub_1D889876C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D8898ABC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];
  (*(v0[8] + 16))(v2, v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStreamBufferingPolicy, v0[7]);
  sub_1D88447A0(v3);
  v5 = sub_1D88C7AAC(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  sub_1D88ADC7C(v2, v3, v1, v5, v4);
  sub_1D87A14E4(v3, &qword_1ECA64290);
  (*(v0[8] + 8))(v0[9], v0[7]);

  v6 = v0[1];

  return v6();
}

uint64_t SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64818);
  v5[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8898D6C, 0, 0);
}

uint64_t sub_1D8898D6C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1D87A0E38(v0[3], v3, &qword_1ECA64818);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    v5 = v0[4];
    sub_1D87A14E4(v0[8], &qword_1ECA64818);
    v6 = SaliencyStreamIngredientsProviding.actionPredictor.getter(v5, v4);
    v0[14] = v6;
    v7 = sub_1D8898F9C;
  }

  else
  {
    v8 = v0[5];
    v9 = v0[4];
    (*(v0[10] + 32))(v0[12], v0[8], v0[9]);
    v6 = SaliencyStreamIngredientsProviding.actionPredictor.getter(v9, v8);
    v0[13] = v6;
    v7 = sub_1D8898E94;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D8898E94()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[7];
  v4 = v0[2];
  sub_1D88447A0(v3);
  v5 = sub_1D88C7AAC(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  sub_1D88ADC7C(v2, v3, v1, v5, v4);
  sub_1D87A14E4(v3, &qword_1ECA64290);

  return MEMORY[0x1EEE6DFA0](sub_1D88C7EB8, 0, 0);
}

uint64_t sub_1D8898F9C()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  (*(v3 + 16))(v2, v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStreamBufferingPolicy, v4);
  sub_1D88447A0(v5);
  v7 = sub_1D88C7AAC(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  sub_1D88ADC7C(v2, v5, v1, v7, v6);
  sub_1D87A14E4(v5, &qword_1ECA64290);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D8899114(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1D88C7EBC;

  return (sub_1D88991D8)(a1);
}

uint64_t sub_1D88991D8(uint64_t a1)
{
  v2[96] = v1;
  v2[95] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838);
  v2[97] = swift_task_alloc();
  v3 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v2[98] = v3;
  v2[99] = *(v3 - 8);
  v2[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642F0);
  v2[101] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v2[102] = v4;
  v2[103] = *(v4 - 8);
  v2[104] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64830);
  v2[105] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63478);
  v2[106] = v5;
  v2[107] = *(v5 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64828) - 8);
  v2[114] = swift_task_alloc();
  v2[115] = type metadata accessor for AFMResult(0);
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  v2[119] = swift_task_alloc();
  v6 = type metadata accessor for TextDetectorResult(0);
  v2[120] = v6;
  v2[121] = *(v6 - 8);
  v2[122] = swift_task_alloc();
  v7 = type metadata accessor for CVTrackSnapshot(0);
  v2[123] = v7;
  v2[124] = *(v7 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64840);
  v2[130] = v8;
  v2[131] = *(v8 - 8);
  v2[132] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848);
  v2[133] = v9;
  v2[134] = *(v9 - 8);
  v2[135] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64850);
  v2[136] = v10;
  v2[137] = *(v10 - 8);
  v2[138] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8899748, 0, 0);
}

uint64_t sub_1D8899748()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = *(v0[96] + 8);
  v0[139] = v3;
  *v1 = 1;
  (*(v2 + 104))();

  return MEMORY[0x1EEE6DFA0](sub_1D88997E4, v3, 0);
}

uint64_t sub_1D88997E4()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  sub_1D8895C10(v1, v0[135]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D8899880, 0, 0);
}

uint64_t sub_1D8899880()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[133];
  sub_1D8B15F10();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[140] = v4;
  *v4 = v0;
  v4[1] = sub_1D8899960;
  v5 = v0[136];

  return MEMORY[0x1EEE6D9C8](v0 + 53, 0, 0, v5);
}

uint64_t sub_1D8899960()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8899A5C, 0, 0);
}

uint64_t sub_1D8899A5C()
{
  v218 = v0;
  v1 = *(v0 + 472);
  *(v0 + 360) = *(v0 + 456);
  *(v0 + 376) = v1;
  v2 = *(v0 + 504);
  *(v0 + 392) = *(v0 + 488);
  *(v0 + 408) = v2;
  v3 = *(v0 + 424);
  v4 = *(v0 + 440);
  *(v0 + 328) = v3;
  *(v0 + 344) = v4;
  *(v0 + 720) = v3;
  *(v0 + 736) = v4;
  v5 = *(v0 + 360);
  v6 = *(v0 + 369);
  v7 = *(v0 + 385);
  v8 = *(v0 + 408);
  *(v0 + 1160) = *(v0 + 400);
  v9 = *(v0 + 368);
  *(v0 + 1128) = v9;
  *(v0 + 1129) = v6;
  *(v0 + 1145) = v7;
  if (!v8)
  {
    v53 = *(v0 + 760);
    (*(*(v0 + 1096) + 8))(*(v0 + 1104), *(v0 + 1088));
    *(v53 + 96) = 0;
    *(v53 + 64) = 0u;
    *(v53 + 80) = 0u;
    *(v53 + 32) = 0u;
    *(v53 + 48) = 0u;
    *v53 = 0u;
    *(v53 + 16) = 0u;
LABEL_105:

    v179 = *(v0 + 8);

    return v179();
  }

  if (v9 & 1) == 0 || (v10 = *(v0 + 416), *(v10 + 16)) && ((v11 = sub_1D881F7DC(5), (v12) && *(*(v10 + 56) + v11) != 2 || *(v10 + 16) && (v13 = sub_1D881F7DC(6), (v14) && *(*(v10 + 56) + v13) != 2))
  {
    sub_1D87A14E4(v0 + 328, &qword_1ECA64858);
    v52 = swift_task_alloc();
    *(v0 + 1120) = v52;
    *v52 = v0;
    v52[1] = sub_1D8899960;
    v26 = *(v0 + 1088);
    isUniquelyReferenced_nonNull_native = v0 + 424;
    v24 = 0;
    v25 = 0;

    return MEMORY[0x1EEE6D9C8](isUniquelyReferenced_nonNull_native, v24, v25, v26);
  }

  v181 = v0 + 328;
  v182 = (v0 + 1129);
  v15 = MEMORY[0x1E69E7CC0];
  *&v210 = MEMORY[0x1E69E7CC0];
  v16 = *(v8 + 16);
  v206 = v8;
  if (!v16)
  {
    v58 = MEMORY[0x1E69E7CC0];
    v183 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v99 = v58;
    v100 = v58[2];
    if (v100)
    {
      v200 = *(v0 + 992);
      v101 = *(v0 + 856);
      v208 = *(v0 + 848);
      v192 = *(*(*(v0 + 768) + 24) + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 41);
      *&v210 = v15;
      sub_1D87F4628(0, v100, 0);
      v102 = v210;
      v197 = v99;
      v103 = v99 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
      v104 = *(v101 + 72);
      v188 = v103;
      do
      {
        v105 = *(v0 + 1000);
        v106 = *(v0 + 880);
        v107 = *(v0 + 872);
        sub_1D87A0E38(v103, v106, &qword_1ECA63478);
        sub_1D881F6FC(v106, v107, &qword_1ECA63478);

        sub_1D88C7124(v107, v105, type metadata accessor for CVTrackSnapshot);
        *&v210 = v102;
        v109 = *(v102 + 16);
        v108 = *(v102 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_1D87F4628(v108 > 1, v109 + 1, 1);
          v102 = v210;
        }

        v110 = *(v0 + 1000);
        *(v102 + 16) = v109 + 1;
        sub_1D88C7124(v110, v102 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v109, type metadata accessor for CVTrackSnapshot);
        v103 += v104;
        --v100;
      }

      while (v100);
      v201 = *(v0 + 904);
      v204 = *(v0 + 984);
      *(v0 + 752) = v102;
      LOBYTE(v215) = v192;
      BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter((v0 + 600));
      v111 = *(v0 + 624);
      v112 = *(v0 + 632);
      __swift_project_boxed_opaque_existential_1((v0 + 600), v111);
      v113 = *(v0 + 736);
      v210 = *(v0 + 720);
      *v211 = v113;
      v114 = *(v0 + 1145);
      v213 = *v182;
      *&v211[16] = v5;
      v212 = *(v0 + 1128);
      *v214 = v114;
      *&v214[15] = *(v0 + 1160);
      v193 = *(v112 + 24);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F88);
      v116 = sub_1D881CF20(&qword_1ECA64860, &qword_1ECA63F88);
      v117 = v193(v0 + 752, &v210, v204, v115, &protocol witness table for CVTrackSnapshot, v116, v111, v112);

      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v0 + 600);
      v194 = *(v117 + 16);
      if (v194)
      {
        v118 = 0;
        v205 = MEMORY[0x1E69E7CC0];
        v119 = &unk_1ECA64828;
        v120 = v197;
        v190 = v117;
        while (v118 < *(v117 + 16))
        {
          v121 = v117 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v118;
          v122 = v119;
          sub_1D87A0E38(v121, *(v0 + 912), v119);
          ++v118;
          v123 = v120[2];
          if (v123)
          {
            v124 = v188;
            while (1)
            {
              sub_1D87A0E38(v124, *(v0 + 888), &qword_1ECA63478);
              if (sub_1D8B13200())
              {
                break;
              }

              sub_1D87A14E4(*(v0 + 888), &qword_1ECA63478);
              v124 += v104;
              if (!--v123)
              {
                goto LABEL_78;
              }
            }

            v125 = *(v0 + 912);
            v126 = *(v0 + 896);
            sub_1D881F6FC(*(v0 + 888), v126, &qword_1ECA63478);
            v127 = (v126 + *(v208 + 48));
            v184 = v127[1];
            v186 = *v127;
            sub_1D88C7D84(v126, type metadata accessor for CVTrackSnapshot);
            v119 = v122;
            sub_1D87A14E4(v125, v122);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1D87C8284(0, *(v205 + 16) + 1, 1, v205);
              v205 = isUniquelyReferenced_nonNull_native;
            }

            v120 = v197;
            v117 = v190;
            v129 = *(v205 + 16);
            v128 = *(v205 + 24);
            if (v129 >= v128 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1D87C8284((v128 > 1), v129 + 1, 1, v205);
              v205 = isUniquelyReferenced_nonNull_native;
            }

            *(v205 + 16) = v129 + 1;
            v130 = v205 + 16 * v129;
            *(v130 + 32) = v186;
            *(v130 + 40) = v184;
            if (v118 == v194)
            {
              goto LABEL_93;
            }
          }

          else
          {
LABEL_78:
            v119 = v122;
            isUniquelyReferenced_nonNull_native = sub_1D87A14E4(*(v0 + 912), v122);
            v120 = v197;
            v117 = v190;
            if (v118 == v194)
            {
              goto LABEL_93;
            }
          }
        }

        goto LABEL_110;
      }

      v205 = MEMORY[0x1E69E7CC0];
LABEL_93:

      v8 = v206;
    }

    else
    {

      v205 = MEMORY[0x1E69E7CC0];
    }

    v131 = *(v0 + 736);
    v215 = *(v0 + 720);
    v216 = v131;
    v209 = *(v0 + 1128);
    v132 = *(v0 + 1145);
    v210 = *v182;
    *v211 = v132;
    *&v211[15] = *(v0 + 1160);
    v133 = *(v8 + 16);
    if (v133)
    {
      v134 = 0;
      v135 = *(v0 + 992);
      v136 = *(v0 + 984);
      v137 = v8 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      while (1)
      {
        if (v134 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_109;
        }

        v138 = *(v0 + 1008);
        sub_1D88C7D1C(v137 + *(v135 + 72) * v134, v138, type metadata accessor for CVTrackSnapshot);
        if (*(v138 + *(v136 + 20)) >> 60 == 5)
        {
          v139 = *(v0 + 960);
          v140 = swift_projectBox();
          *(v0 + 704) = v139;
          *(v0 + 712) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 680));
          sub_1D88C7D1C(v140, boxed_opaque_existential_1, type metadata accessor for TextDetectorResult);
          v142 = *(v0 + 704);
          v143 = *(v0 + 712);
          __swift_project_boxed_opaque_existential_1((v0 + 680), v142);
          v144 = *(v143 + 88);
          v145 = v143;
          v8 = v206;
          v146 = v144(v142, v145);
          __swift_destroy_boxed_opaque_existential_1(v0 + 680);
          if (v146 == v5)
          {
            break;
          }
        }

        ++v134;
        isUniquelyReferenced_nonNull_native = sub_1D88C7D84(*(v0 + 1008), type metadata accessor for CVTrackSnapshot);
        if (v133 == v134)
        {
          goto LABEL_102;
        }
      }

      v147 = *(v0 + 1104);
      v148 = *(v0 + 1096);
      v149 = *(v0 + 1088);
      v150 = *(v0 + 1016);
      v151 = *(v0 + 1008);
      v152 = *(v0 + 968);
      v153 = *(v0 + 960);
      v154 = *(v0 + 952);
      sub_1D87A14E4(v181, &qword_1ECA64858);
      sub_1D88C7124(v151, v150, type metadata accessor for CVTrackSnapshot);
      v155 = *(v150 + *(v136 + 20));

      sub_1D88C7D84(v150, type metadata accessor for CVTrackSnapshot);
      v217 = v155;
      CVDetection.detection.getter((v0 + 640));
      (*(v148 + 8))(v147, v149);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
      v156 = swift_dynamicCast();
      (*(v152 + 56))(v154, v156 ^ 1u, 1, v153);
      if ((*(v152 + 48))(v154, 1, v153) == 1)
      {
        goto LABEL_103;
      }

      v157 = *(v0 + 976);
      v158 = *(v0 + 960);
      sub_1D88C7124(*(v0 + 952), v157, type metadata accessor for TextDetectorResult);
      v159 = *(v157 + *(v158 + 48));
      v160 = v159;
      sub_1D88C7D84(v157, type metadata accessor for TextDetectorResult);
    }

    else
    {
LABEL_102:
      v161 = *(v0 + 1104);
      v162 = *(v0 + 1096);
      v163 = *(v0 + 1088);
      v164 = *(v0 + 968);
      v165 = *(v0 + 960);
      v166 = *(v0 + 952);
      sub_1D87A14E4(v181, &qword_1ECA64858);
      (*(v162 + 8))(v161, v163);
      (*(v164 + 56))(v166, 1, 1, v165);
LABEL_103:
      sub_1D87A14E4(*(v0 + 952), &qword_1ECA64820);
      v159 = 0;
    }

    v167 = *(v0 + 760);
    *(v0 + 120) = v183;
    *(v0 + 128) = v159;
    v168 = v215;
    *(v0 + 152) = v216;
    v170 = v215;
    v169 = v216;
    *(v0 + 136) = v168;
    *(v0 + 168) = v5;
    *(v0 + 176) = v209;
    v171 = v210;
    *(v0 + 193) = *v211;
    v173 = v210;
    v172 = *v211;
    *(v0 + 177) = v171;
    *(v0 + 208) = *&v211[15];
    *(v0 + 216) = v205;
    v174 = *(v0 + 200);
    v175 = *(v0 + 184);
    v176 = *(v0 + 168);
    *(v167 + 96) = *(v0 + 216);
    *(v167 + 48) = v176;
    *(v167 + 64) = v175;
    v177 = *(v0 + 120);
    v178 = *(v0 + 152);
    *(v167 + 16) = *(v0 + 136);
    *(v167 + 32) = v178;
    *v167 = v177;
    *(v167 + 80) = v174;
    *(v0 + 16) = v183;
    *(v0 + 24) = v159;
    *(v0 + 32) = v170;
    *(v0 + 48) = v169;
    *(v0 + 64) = v5;
    *(v0 + 72) = v209;
    *(v0 + 73) = v173;
    *(v0 + 89) = v172;
    *(v0 + 104) = *&v211[15];
    *(v0 + 112) = v205;
    sub_1D88B7E24(v0 + 120, v0 + 224);
    sub_1D88B7E80(v0 + 16);
    goto LABEL_105;
  }

  v17 = *(v0 + 992);
  v183 = MEMORY[0x1E69E7CC0];
  v202 = *(v0 + 1032);
  v195 = *(v0 + 984);
  v198 = *(v0 + 784);
  v18 = *(v195 + 20);
  v19 = v8 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v207 = *(v17 + 72);
  v20 = (*(v0 + 792) + 56);
  v21 = v19;
  do
  {
    sub_1D88C7D1C(v21, *(v0 + 1032), type metadata accessor for CVTrackSnapshot);
    switch(*(v202 + v18) >> 60)
    {
      case 1:
        v42 = type metadata accessor for GroundedParseDetectorResult(0);
        v28 = swift_projectBox();
        *(v0 + 544) = v42;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_26;
      case 2:
        v37 = type metadata accessor for MetaDetectionResult();
        v28 = swift_projectBox();
        *(v0 + 544) = v37;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for MetaDetectionResult;
        goto LABEL_26;
      case 3:
      case 8:
        v27 = type metadata accessor for ObjectDetectorResult(0);
        v28 = swift_projectBox();
        *(v0 + 544) = v27;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_26;
      case 4:
        v43 = type metadata accessor for ParseDetectorResult(0);
        v28 = swift_projectBox();
        *(v0 + 544) = v43;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for ParseDetectorResult;
        goto LABEL_26;
      case 5:
        v44 = *(v0 + 960);
        v28 = swift_projectBox();
        *(v0 + 544) = v44;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for TextDetectorResult;
        goto LABEL_26;
      case 6:
      case 7:
        v31 = *(v0 + 784);
        v28 = swift_projectBox();
        *(v0 + 544) = v31;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_26;
      case 9:
      case 0xALL:
        v32 = *(v0 + 928);
        v33 = *(v0 + 920);
        v34 = swift_projectBox();
        sub_1D88C7D1C(v34, v32, type metadata accessor for AFMResult);
        *(v0 + 544) = v33;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
        v35 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        sub_1D88C7124(v32, v35, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v36 = type metadata accessor for SyntheticDetectionResult();
        v28 = swift_projectBox();
        *(v0 + 544) = v36;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_26;
      case 0xCLL:
        v38 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v28 = swift_projectBox();
        *(v0 + 544) = v38;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_26;
      case 0xDLL:
        v45 = type metadata accessor for GroundedParseClassificationsResult(0);
        v28 = swift_projectBox();
        *(v0 + 544) = v45;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
        v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v30 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_26:
        sub_1D88C7D1C(v28, v29, v30);
        break;
      default:
        v39 = *(v0 + 816);
        v40 = swift_projectBox();
        *(v0 + 544) = v39;
        *(v0 + 552) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
        v41 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        sub_1D87A0E38(v40, v41, &qword_1ECA67750);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v46 = swift_dynamicCast();
    v47 = *v20;
    if (!v46)
    {
      v22 = *(v0 + 776);
      v47(v22, 1, 1, *(v0 + 784));
      sub_1D87A14E4(v22, &qword_1ECA64838);
LABEL_12:
      isUniquelyReferenced_nonNull_native = sub_1D88C7D84(*(v0 + 1032), type metadata accessor for CVTrackSnapshot);
      goto LABEL_13;
    }

    v48 = *(v0 + 800);
    v49 = *(v0 + 776);
    v47(v49, 0, 1, *(v0 + 784));
    sub_1D88C7124(v49, v48, type metadata accessor for StreamingBarcodeDetectorResult);
    v50 = *(v48 + *(v198 + 40));
    sub_1D88B7ED4(v50);
    sub_1D88C7D84(v48, type metadata accessor for StreamingBarcodeDetectorResult);
    if (v50 < 2)
    {
      goto LABEL_12;
    }

    v51 = sub_1D88C7D84(*(v0 + 1032), type metadata accessor for CVTrackSnapshot);
    MEMORY[0x1DA71F1A0](v51);
    if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D8B15D20();
    }

    isUniquelyReferenced_nonNull_native = sub_1D8B15D70();
    v183 = v210;
    v8 = v206;
LABEL_13:
    v21 += v207;
    --v16;
  }

  while (v16);
  v203 = *(v8 + 16);
  if (!v203)
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_70:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_71;
  }

  v54 = 0;
  v55 = (*(v0 + 824) + 56);
  v56 = *(v0 + 856);
  v57 = (v56 + 56);
  v58 = MEMORY[0x1E69E7CC0];
  v187 = v56;
  v59 = (v56 + 48);
  v185 = *(v0 + 848);
  v189 = *(v0 + 816);
  v191 = v55;
  v196 = *(v195 + 20);
  v199 = *(v0 + 1024);
  while (v54 < *(v206 + 16))
  {
    sub_1D88C7D1C(v19, *(v0 + 1024), type metadata accessor for CVTrackSnapshot);
    ++v54;
    switch(*(v199 + v196) >> 60)
    {
      case 1:
        v75 = type metadata accessor for GroundedParseDetectorResult(0);
        v61 = swift_projectBox();
        *(v0 + 584) = v75;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_53;
      case 2:
        v70 = type metadata accessor for MetaDetectionResult();
        v61 = swift_projectBox();
        *(v0 + 584) = v70;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for MetaDetectionResult;
        goto LABEL_53;
      case 3:
      case 8:
        v60 = type metadata accessor for ObjectDetectorResult(0);
        v61 = swift_projectBox();
        *(v0 + 584) = v60;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_53;
      case 4:
        v76 = type metadata accessor for ParseDetectorResult(0);
        v61 = swift_projectBox();
        *(v0 + 584) = v76;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for ParseDetectorResult;
        goto LABEL_53;
      case 5:
        v77 = *(v0 + 960);
        v61 = swift_projectBox();
        *(v0 + 584) = v77;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for TextDetectorResult;
        goto LABEL_53;
      case 6:
      case 7:
        v64 = *(v0 + 784);
        v61 = swift_projectBox();
        *(v0 + 584) = v64;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_53;
      case 9:
      case 0xALL:
        v65 = *(v0 + 936);
        v66 = *(v0 + 920);
        v67 = swift_projectBox();
        sub_1D88C7D1C(v67, v65, type metadata accessor for AFMResult);
        *(v0 + 584) = v66;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
        v68 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        sub_1D88C7124(v65, v68, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v69 = type metadata accessor for SyntheticDetectionResult();
        v61 = swift_projectBox();
        *(v0 + 584) = v69;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_53;
      case 0xCLL:
        v71 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v61 = swift_projectBox();
        *(v0 + 584) = v71;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_53;
      case 0xDLL:
        v78 = type metadata accessor for GroundedParseClassificationsResult(0);
        v61 = swift_projectBox();
        *(v0 + 584) = v78;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
        v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v63 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_53:
        sub_1D88C7D1C(v61, v62, v63);
        break;
      default:
        v72 = *(v0 + 816);
        v73 = swift_projectBox();
        *(v0 + 584) = v72;
        *(v0 + 592) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
        v74 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        sub_1D87A0E38(v73, v74, &qword_1ECA67750);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v79 = swift_dynamicCast();
    v80 = *v55;
    if (v79)
    {
      v81 = *(v0 + 1024);
      v82 = *(v0 + 840);
      v83 = *(v0 + 832);
      v84 = *(v0 + 808);
      v80(v84, 0, 1, *(v0 + 816));
      sub_1D881F6FC(v84, v83, &qword_1ECA67750);
      sub_1D88C7D1C(v81, v82, type metadata accessor for CVTrackSnapshot);
      v85 = *(v83 + *(v189 + 44));
      if (*(v85 + 16))
      {
        v86 = v58;
        LOBYTE(isUniquelyReferenced_nonNull_native) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v85 + 32));
        if (v210 == 181)
        {
          goto LABEL_111;
        }

        v87 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v89 = v88;
      }

      else
      {
        v86 = v58;
        v89 = 0xE700000000000000;
        v87 = 0x6E776F6E6B6E75;
      }

      v92 = (*(v0 + 840) + *(v185 + 48));
      sub_1D87A14E4(*(v0 + 832), &qword_1ECA67750);
      v91 = 0;
      *v92 = v87;
      v92[1] = v89;
      v58 = v86;
    }

    else
    {
      v90 = *(v0 + 808);
      v91 = 1;
      v80(v90, 1, 1, *(v0 + 816));
      sub_1D87A14E4(v90, &qword_1ECA642F0);
    }

    v93 = *(v0 + 1024);
    v94 = *(v0 + 848);
    v95 = *(v0 + 840);
    (*v57)(v95, v91, 1, v94);
    sub_1D88C7D84(v93, type metadata accessor for CVTrackSnapshot);
    if ((*v59)(v95, 1, v94) == 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D87A14E4(*(v0 + 840), &qword_1ECA64830);
      v55 = v191;
    }

    else
    {
      sub_1D881F6FC(*(v0 + 840), *(v0 + 864), &qword_1ECA63478);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1D87C8AC8(0, v58[2] + 1, 1, v58);
      }

      v55 = v191;
      v97 = v58[2];
      v96 = v58[3];
      if (v97 >= v96 >> 1)
      {
        v58 = sub_1D87C8AC8(v96 > 1, v97 + 1, 1, v58);
      }

      v98 = *(v0 + 864);
      v58[2] = v97 + 1;
      isUniquelyReferenced_nonNull_native = sub_1D881F6FC(v98, v58 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v97, &qword_1ECA63478);
    }

    v19 += v207;
    if (v203 == v54)
    {
      v8 = v206;
      goto LABEL_70;
    }
  }

LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return MEMORY[0x1EEE6D9C8](isUniquelyReferenced_nonNull_native, v24, v25, v26);
}

uint64_t SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[98] = v3;
  v4[97] = a3;
  v4[96] = a2;
  v4[95] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  v4[99] = swift_task_alloc();
  v5 = type metadata accessor for TextDetectorResult(0);
  v4[100] = v5;
  v4[101] = *(v5 - 8);
  v4[102] = swift_task_alloc();
  v4[103] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64828) - 8);
  v4[104] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642F0);
  v4[105] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v4[106] = v6;
  v4[107] = *(v6 - 8);
  v4[108] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64830);
  v4[109] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63478);
  v4[110] = v7;
  v4[111] = *(v7 - 8);
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838);
  v4[117] = swift_task_alloc();
  v4[118] = type metadata accessor for AFMResult(0);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v8 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v4[122] = v8;
  v4[123] = *(v8 - 8);
  v4[124] = swift_task_alloc();
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v4[125] = v9;
  v4[126] = *(v9 - 8);
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64840);
  v4[132] = v10;
  v4[133] = *(v10 - 8);
  v4[134] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848);
  v4[135] = v11;
  v4[136] = *(v11 - 8);
  v4[137] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64850);
  v4[138] = v12;
  v4[139] = *(v12 - 8);
  v4[140] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D889BC08, 0, 0);
}

uint64_t sub_1D889BC08()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = SaliencyStreamIngredientsProviding.trackManager.getter(v0[96], v0[97]);
  v0[141] = v4;
  *v1 = 1;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8640], v3);

  return MEMORY[0x1EEE6DFA0](sub_1D889BCC0, v4, 0);
}

uint64_t sub_1D889BCC0()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  sub_1D8895C10(v1, v0[137]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D889BD64, 0, 0);
}

uint64_t sub_1D889BD64()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  sub_1D8B15F10();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[142] = v4;
  *v4 = v0;
  v4[1] = sub_1D889BE44;
  v5 = v0[138];

  return MEMORY[0x1EEE6D9C8](v0 + 53, 0, 0, v5);
}

uint64_t sub_1D889BE44()
{

  return MEMORY[0x1EEE6DFA0](sub_1D889BF40, 0, 0);
}

uint64_t sub_1D889BF40()
{
  v220 = v0;
  v1 = *(v0 + 472);
  v2 = (v0 + 1145);
  *(v0 + 360) = *(v0 + 456);
  *(v0 + 376) = v1;
  v3 = *(v0 + 504);
  *(v0 + 392) = *(v0 + 488);
  *(v0 + 408) = v3;
  v4 = *(v0 + 424);
  v5 = *(v0 + 440);
  *(v0 + 328) = v4;
  *(v0 + 344) = v5;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  v6 = *(v0 + 360);
  v7 = *(v0 + 369);
  v8 = *(v0 + 385);
  v9 = *(v0 + 408);
  *(v0 + 1176) = *(v0 + 400);
  v10 = *(v0 + 368);
  *(v0 + 1144) = v10;
  *(v0 + 1145) = v7;
  *(v0 + 1161) = v8;
  if (!v9)
  {
    v54 = *(v0 + 760);
    (*(*(v0 + 1112) + 8))(*(v0 + 1120), *(v0 + 1104));
    *(v54 + 96) = 0;
    *(v54 + 64) = 0u;
    *(v54 + 80) = 0u;
    *(v54 + 32) = 0u;
    *(v54 + 48) = 0u;
    *v54 = 0u;
    *(v54 + 16) = 0u;
LABEL_106:

    v186 = *(v0 + 8);

    return v186();
  }

  if (v10 & 1) == 0 || (v11 = *(v0 + 416), v208 = v9, *(v11 + 16)) && ((v12 = sub_1D881F7DC(5), v9 = v208, (v13) && *(*(v11 + 56) + v12) != 2 || *(v11 + 16) && (v14 = sub_1D881F7DC(6), v9 = v208, (v15) && *(*(v11 + 56) + v14) != 2))
  {
    sub_1D87A14E4(v0 + 328, &qword_1ECA64858);
    v53 = swift_task_alloc();
    *(v0 + 1136) = v53;
    *v53 = v0;
    v53[1] = sub_1D889BE44;
    v27 = *(v0 + 1104);
    isUniquelyReferenced_nonNull_native = v0 + 424;
    v25 = 0;
    v26 = 0;

    return MEMORY[0x1EEE6D9C8](isUniquelyReferenced_nonNull_native, v25, v26, v27);
  }

  v188 = v0 + 328;
  *&v212 = MEMORY[0x1E69E7CC0];
  v16 = *(v9 + 16);
  if (!v16)
  {
    v101 = MEMORY[0x1E69E7CC0];
    v192 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_72:
      v102 = *(SaliencyStreamIngredientsProviding.bundleSelector.getter(*(v0 + 768), *(v0 + 776)) + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 41);

      v103 = v101[2];
      v104 = MEMORY[0x1E69E7CC0];
      v210 = v101;
      if (v103)
      {
        v197 = v102;
        v105 = *(v0 + 1008);
        v106 = *(v0 + 888);
        *&v212 = MEMORY[0x1E69E7CC0];
        sub_1D87F4628(0, v103, 0);
        v104 = v212;
        v107 = v101 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v202 = *(v106 + 72);
        do
        {
          v108 = *(v0 + 1032);
          v109 = *(v0 + 920);
          v110 = *(v0 + 912);
          sub_1D87A0E38(v107, v109, &qword_1ECA63478);
          sub_1D881F6FC(v109, v110, &qword_1ECA63478);

          sub_1D88C7124(v110, v108, type metadata accessor for CVTrackSnapshot);
          *&v212 = v104;
          v112 = *(v104 + 16);
          v111 = *(v104 + 24);
          if (v112 >= v111 >> 1)
          {
            sub_1D87F4628(v111 > 1, v112 + 1, 1);
            v104 = v212;
          }

          v113 = *(v0 + 1032);
          *(v104 + 16) = v112 + 1;
          sub_1D88C7124(v113, v104 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v112, type metadata accessor for CVTrackSnapshot);
          v107 += v202;
          --v103;
        }

        while (v103);
        v102 = v197;
      }

      v194 = *(v0 + 888);
      v191 = *(v0 + 880);
      v203 = *(v0 + 824);
      v207 = *(v0 + 1000);
      *(v0 + 752) = v104;
      LOBYTE(v217) = v102;
      BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter((v0 + 600));
      v114 = *(v0 + 624);
      v115 = *(v0 + 632);
      __swift_project_boxed_opaque_existential_1((v0 + 600), v114);
      v116 = *(v0 + 736);
      v212 = *(v0 + 720);
      *v213 = v116;
      v117 = *(v0 + 1161);
      v215 = *(v0 + 1145);
      *&v213[16] = v6;
      v214 = *(v0 + 1144);
      *v216 = v117;
      *&v216[15] = *(v0 + 1176);
      v118 = *(v115 + 24);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F88);
      v120 = sub_1D881CF20(&qword_1ECA64860, &qword_1ECA63F88);
      v121 = v118(v0 + 752, &v212, v207, v119, &protocol witness table for CVTrackSnapshot, v120, v114, v115);

      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v0 + 600);
      v200 = *(v121 + 16);
      if (v200)
      {
        v122 = 0;
        v206 = MEMORY[0x1E69E7CC0];
        v123 = &qword_1ECA64828;
        v124 = v210;
        v198 = v121;
        while (v122 < *(v121 + 16))
        {
          v125 = v121 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v122;
          v126 = v123;
          sub_1D87A0E38(v125, *(v0 + 832), v123);
          ++v122;
          v127 = v124[2];
          if (v127)
          {
            v128 = v210 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
            v129 = *(v194 + 72);
            while (1)
            {
              sub_1D87A0E38(v128, *(v0 + 896), &qword_1ECA63478);
              if (sub_1D8B13200())
              {
                break;
              }

              sub_1D87A14E4(*(v0 + 896), &qword_1ECA63478);
              v128 += v129;
              if (!--v127)
              {
                goto LABEL_80;
              }
            }

            v130 = *(v0 + 904);
            v131 = *(v0 + 832);
            sub_1D881F6FC(*(v0 + 896), v130, &qword_1ECA63478);
            v132 = (v130 + *(v191 + 48));
            v134 = *v132;
            v133 = v132[1];
            sub_1D88C7D84(v130, type metadata accessor for CVTrackSnapshot);
            v135 = v131;
            v123 = v126;
            sub_1D87A14E4(v135, v126);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1D87C8284(0, *(v206 + 16) + 1, 1, v206);
              v206 = isUniquelyReferenced_nonNull_native;
            }

            v121 = v198;
            v137 = *(v206 + 16);
            v136 = *(v206 + 24);
            if (v137 >= v136 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1D87C8284((v136 > 1), v137 + 1, 1, v206);
              v206 = isUniquelyReferenced_nonNull_native;
            }

            *(v206 + 16) = v137 + 1;
            v138 = v206 + 16 * v137;
            *(v138 + 32) = v134;
            *(v138 + 40) = v133;
            v124 = v210;
            if (v122 == v200)
            {
              goto LABEL_94;
            }
          }

          else
          {
LABEL_80:
            isUniquelyReferenced_nonNull_native = sub_1D87A14E4(*(v0 + 832), v123);
            v121 = v198;
            v124 = v210;
            if (v122 == v200)
            {
              goto LABEL_94;
            }
          }
        }

        goto LABEL_111;
      }

      v206 = MEMORY[0x1E69E7CC0];
LABEL_94:

      v2 = (v0 + 1145);
      goto LABEL_95;
    }

LABEL_69:

    v206 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v139 = *(v0 + 736);
    v217 = *(v0 + 720);
    v218 = v139;
    v211 = *(v0 + 1144);
    v140 = v2[1];
    v212 = *v2;
    *v213 = v140;
    *&v213[15] = *(v2 + 31);
    v141 = v208;
    v142 = *(v208 + 16);
    if (v142)
    {
      v143 = 0;
      v144 = *(v0 + 1008);
      v145 = *(v0 + 1000);
      v146 = v208 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      while (1)
      {
        if (v143 >= *(v141 + 16))
        {
          __break(1u);
          goto LABEL_110;
        }

        v147 = *(v0 + 1016);
        sub_1D88C7D1C(v146 + *(v144 + 72) * v143, v147, type metadata accessor for CVTrackSnapshot);
        if (*(v147 + *(v145 + 20)) >> 60 == 5)
        {
          v148 = *(v0 + 800);
          v149 = swift_projectBox();
          *(v0 + 704) = v148;
          *(v0 + 712) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 680));
          sub_1D88C7D1C(v149, boxed_opaque_existential_1, type metadata accessor for TextDetectorResult);
          v151 = *(v0 + 704);
          v152 = *(v0 + 712);
          __swift_project_boxed_opaque_existential_1((v0 + 680), v151);
          v153 = (*(v152 + 88))(v151, v152);
          __swift_destroy_boxed_opaque_existential_1(v0 + 680);
          if (v153 == v6)
          {
            break;
          }
        }

        ++v143;
        isUniquelyReferenced_nonNull_native = sub_1D88C7D84(*(v0 + 1016), type metadata accessor for CVTrackSnapshot);
        v141 = v208;
        if (v142 == v143)
        {
          goto LABEL_103;
        }
      }

      v154 = *(v0 + 1120);
      v155 = *(v0 + 1112);
      v156 = *(v0 + 1104);
      v157 = *(v0 + 1024);
      v158 = *(v0 + 1016);
      v159 = *(v0 + 808);
      v160 = *(v0 + 800);
      v161 = *(v0 + 792);
      sub_1D87A14E4(v188, &qword_1ECA64858);
      sub_1D88C7124(v158, v157, type metadata accessor for CVTrackSnapshot);
      v162 = *(v157 + *(v145 + 20));

      sub_1D88C7D84(v157, type metadata accessor for CVTrackSnapshot);
      v219 = v162;
      CVDetection.detection.getter((v0 + 640));
      (*(v155 + 8))(v154, v156);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
      v163 = swift_dynamicCast();
      (*(v159 + 56))(v161, v163 ^ 1u, 1, v160);
      if ((*(v159 + 48))(v161, 1, v160) == 1)
      {
        goto LABEL_104;
      }

      v164 = *(v0 + 816);
      v165 = *(v0 + 800);
      sub_1D88C7124(*(v0 + 792), v164, type metadata accessor for TextDetectorResult);
      v166 = *(v164 + *(v165 + 48));
      v167 = v166;
      sub_1D88C7D84(v164, type metadata accessor for TextDetectorResult);
    }

    else
    {
LABEL_103:
      v168 = *(v0 + 1120);
      v169 = *(v0 + 1112);
      v170 = *(v0 + 1104);
      v171 = *(v0 + 808);
      v172 = *(v0 + 800);
      v173 = *(v0 + 792);
      sub_1D87A14E4(v188, &qword_1ECA64858);
      (*(v169 + 8))(v168, v170);
      (*(v171 + 56))(v173, 1, 1, v172);
LABEL_104:
      sub_1D87A14E4(*(v0 + 792), &qword_1ECA64820);
      v166 = 0;
    }

    v174 = *(v0 + 760);
    *(v0 + 120) = v192;
    *(v0 + 128) = v166;
    v175 = v217;
    *(v0 + 152) = v218;
    v177 = v217;
    v176 = v218;
    *(v0 + 136) = v175;
    *(v0 + 168) = v6;
    *(v0 + 176) = v211;
    v178 = v212;
    *(v0 + 193) = *v213;
    v180 = v212;
    v179 = *v213;
    *(v0 + 177) = v178;
    *(v0 + 208) = *&v213[15];
    *(v0 + 216) = v206;
    v181 = *(v0 + 200);
    v182 = *(v0 + 184);
    v183 = *(v0 + 168);
    *(v174 + 96) = *(v0 + 216);
    *(v174 + 48) = v183;
    *(v174 + 64) = v182;
    v184 = *(v0 + 120);
    v185 = *(v0 + 152);
    *(v174 + 16) = *(v0 + 136);
    *(v174 + 32) = v185;
    *v174 = v184;
    *(v174 + 80) = v181;
    *(v0 + 16) = v192;
    *(v0 + 24) = v166;
    *(v0 + 32) = v177;
    *(v0 + 48) = v176;
    *(v0 + 64) = v6;
    *(v0 + 72) = v211;
    *(v0 + 73) = v180;
    *(v0 + 89) = v179;
    *(v0 + 104) = *&v213[15];
    *(v0 + 112) = v206;
    sub_1D88B7E24(v0 + 120, v0 + 224);
    sub_1D88B7E80(v0 + 16);
    goto LABEL_106;
  }

  v17 = *(v0 + 1008);
  v192 = MEMORY[0x1E69E7CC0];
  v18 = *(v0 + 1048);
  v204 = *(v0 + 976);
  v195 = *(v0 + 1000);
  v19 = *(v195 + 20);
  v20 = v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v209 = *(v17 + 72);
  v21 = (*(v0 + 984) + 56);
  v22 = v20;
  do
  {
    sub_1D88C7D1C(v22, *(v0 + 1048), type metadata accessor for CVTrackSnapshot);
    switch(*(v18 + v19) >> 60)
    {
      case 1:
        v43 = type metadata accessor for GroundedParseDetectorResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v43;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_26;
      case 2:
        v38 = type metadata accessor for MetaDetectionResult();
        v29 = swift_projectBox();
        *(v0 + 544) = v38;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for MetaDetectionResult;
        goto LABEL_26;
      case 3:
      case 8:
        v28 = type metadata accessor for ObjectDetectorResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v28;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_26;
      case 4:
        v44 = type metadata accessor for ParseDetectorResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v44;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for ParseDetectorResult;
        goto LABEL_26;
      case 5:
        v45 = *(v0 + 800);
        v29 = swift_projectBox();
        *(v0 + 544) = v45;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for TextDetectorResult;
        goto LABEL_26;
      case 6:
      case 7:
        v32 = *(v0 + 976);
        v29 = swift_projectBox();
        *(v0 + 544) = v32;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_26;
      case 9:
      case 0xALL:
        v33 = *(v0 + 968);
        v34 = *(v0 + 944);
        v35 = swift_projectBox();
        sub_1D88C7D1C(v35, v33, type metadata accessor for AFMResult);
        *(v0 + 544) = v34;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
        v36 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        sub_1D88C7124(v33, v36, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v37 = type metadata accessor for SyntheticDetectionResult();
        v29 = swift_projectBox();
        *(v0 + 544) = v37;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_26;
      case 0xCLL:
        v39 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v39;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_26;
      case 0xDLL:
        v46 = type metadata accessor for GroundedParseClassificationsResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v46;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_26:
        sub_1D88C7D1C(v29, v30, v31);
        break;
      default:
        v40 = *(v0 + 848);
        v41 = swift_projectBox();
        *(v0 + 544) = v40;
        *(v0 + 552) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
        v42 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        sub_1D87A0E38(v41, v42, &qword_1ECA67750);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v47 = swift_dynamicCast();
    v48 = *v21;
    if ((v47 & 1) == 0)
    {
      v23 = *(v0 + 936);
      v48(v23, 1, 1, *(v0 + 976));
      sub_1D87A14E4(v23, &qword_1ECA64838);
LABEL_12:
      isUniquelyReferenced_nonNull_native = sub_1D88C7D84(*(v0 + 1048), type metadata accessor for CVTrackSnapshot);
      goto LABEL_13;
    }

    v49 = *(v0 + 992);
    v50 = *(v0 + 936);
    v48(v50, 0, 1, *(v0 + 976));
    sub_1D88C7124(v50, v49, type metadata accessor for StreamingBarcodeDetectorResult);
    v51 = *(v49 + *(v204 + 40));
    sub_1D88B7ED4(v51);
    sub_1D88C7D84(v49, type metadata accessor for StreamingBarcodeDetectorResult);
    if (v51 < 2)
    {
      goto LABEL_12;
    }

    v52 = sub_1D88C7D84(*(v0 + 1048), type metadata accessor for CVTrackSnapshot);
    MEMORY[0x1DA71F1A0](v52);
    if (*((v212 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v212 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D8B15D20();
    }

    isUniquelyReferenced_nonNull_native = sub_1D8B15D70();
    v192 = v212;
LABEL_13:
    v22 += v209;
    --v16;
  }

  while (v16);
  v55 = v208;
  v205 = *(v208 + 16);
  if (!v205)
  {
    v101 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v2 = (v0 + 1145);
    if (v101[2])
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  v56 = 0;
  v201 = (*(v0 + 856) + 56);
  v57 = *(v0 + 888);
  v58 = (v57 + 56);
  v59 = MEMORY[0x1E69E7CC0];
  v190 = v57;
  v60 = (v57 + 48);
  v189 = *(v0 + 880);
  v193 = *(v0 + 848);
  v196 = *(v195 + 20);
  v199 = *(v0 + 1040);
  while (v56 < *(v55 + 16))
  {
    sub_1D88C7D1C(v20, *(v0 + 1040), type metadata accessor for CVTrackSnapshot);
    ++v56;
    switch(*(v199 + v196) >> 60)
    {
      case 1:
        v77 = type metadata accessor for GroundedParseDetectorResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v77;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_53;
      case 2:
        v72 = type metadata accessor for MetaDetectionResult();
        v62 = swift_projectBox();
        *(v0 + 584) = v72;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for MetaDetectionResult;
        goto LABEL_53;
      case 3:
      case 8:
        v61 = type metadata accessor for ObjectDetectorResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v61;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_53;
      case 4:
        v78 = type metadata accessor for ParseDetectorResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v78;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for ParseDetectorResult;
        goto LABEL_53;
      case 5:
        v79 = *(v0 + 800);
        v62 = swift_projectBox();
        *(v0 + 584) = v79;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for TextDetectorResult;
        goto LABEL_53;
      case 6:
      case 7:
        v65 = *(v0 + 976);
        v62 = swift_projectBox();
        *(v0 + 584) = v65;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_53;
      case 9:
      case 0xALL:
        v66 = *(v0 + 960);
        v67 = v59;
        v68 = *(v0 + 944);
        v69 = swift_projectBox();
        sub_1D88C7D1C(v69, v66, type metadata accessor for AFMResult);
        *(v0 + 584) = v68;
        v59 = v67;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
        v70 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        sub_1D88C7124(v66, v70, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v71 = type metadata accessor for SyntheticDetectionResult();
        v62 = swift_projectBox();
        *(v0 + 584) = v71;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_53;
      case 0xCLL:
        v73 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v73;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_53;
      case 0xDLL:
        v80 = type metadata accessor for GroundedParseClassificationsResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v80;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_53:
        sub_1D88C7D1C(v62, v63, v64);
        break;
      default:
        v74 = *(v0 + 848);
        v75 = swift_projectBox();
        *(v0 + 584) = v74;
        *(v0 + 592) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
        v76 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        sub_1D87A0E38(v75, v76, &qword_1ECA67750);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v81 = swift_dynamicCast();
    v82 = *v201;
    if (v81)
    {
      v83 = *(v0 + 1040);
      v84 = *(v0 + 872);
      v85 = *(v0 + 864);
      v86 = *(v0 + 840);
      v82(v86, 0, 1, *(v0 + 848));
      sub_1D881F6FC(v86, v85, &qword_1ECA67750);
      sub_1D88C7D1C(v83, v84, type metadata accessor for CVTrackSnapshot);
      v87 = *(v85 + *(v193 + 44));
      if (*(v87 + 16))
      {
        LOBYTE(isUniquelyReferenced_nonNull_native) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v87 + 32));
        if (v212 == 181)
        {
          goto LABEL_112;
        }

        v88 = v59;
        v89 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v91 = v90;
      }

      else
      {
        v88 = v59;
        v91 = 0xE700000000000000;
        v89 = 0x6E776F6E6B6E75;
      }

      v94 = (*(v0 + 872) + *(v189 + 48));
      sub_1D87A14E4(*(v0 + 864), &qword_1ECA67750);
      v93 = 0;
      *v94 = v89;
      v94[1] = v91;
      v59 = v88;
    }

    else
    {
      v92 = *(v0 + 840);
      v93 = 1;
      v82(v92, 1, 1, *(v0 + 848));
      sub_1D87A14E4(v92, &qword_1ECA642F0);
    }

    v95 = *(v0 + 1040);
    v96 = *(v0 + 880);
    v97 = *(v0 + 872);
    (*v58)(v97, v93, 1, v96);
    sub_1D88C7D84(v95, type metadata accessor for CVTrackSnapshot);
    if ((*v60)(v97, 1, v96) == 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D87A14E4(*(v0 + 872), &qword_1ECA64830);
    }

    else
    {
      sub_1D881F6FC(*(v0 + 872), *(v0 + 928), &qword_1ECA63478);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1D87C8AC8(0, v59[2] + 1, 1, v59);
      }

      v99 = v59[2];
      v98 = v59[3];
      if (v99 >= v98 >> 1)
      {
        v59 = sub_1D87C8AC8(v98 > 1, v99 + 1, 1, v59);
      }

      v100 = *(v0 + 928);
      v59[2] = v99 + 1;
      isUniquelyReferenced_nonNull_native = sub_1D881F6FC(v100, v59 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v99, &qword_1ECA63478);
    }

    v55 = v208;
    v20 += v209;
    if (v205 == v56)
    {
      v101 = v59;
      goto LABEL_71;
    }
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return MEMORY[0x1EEE6D9C8](isUniquelyReferenced_nonNull_native, v25, v26, v27);
}