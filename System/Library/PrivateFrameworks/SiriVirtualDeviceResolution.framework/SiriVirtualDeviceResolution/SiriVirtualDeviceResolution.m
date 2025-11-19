uint64_t sub_2698CEBFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698D313C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CEC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698D40E0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CEC5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698D4D4C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CECEC@<X0>(uint64_t *a1@<X8>)
{
  result = CrossDeviceCommandExecution.FailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_2698CED14(uint64_t a1)
{
  [*(a1 + 40) invalidate];
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
}

uint64_t sub_2698CED5C()
{
  v1 = *(type metadata accessor for CrossDeviceCommandExecution(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }

    v8 = *v6;

    v9 = v6[1];

    v6 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E400, &unk_2699062F0) + 64));
  }

  v10 = sub_2699037DC();
  OUTLINED_FUNCTION_8(v10);
  (*(v11 + 8))(v6);
LABEL_5:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698CEE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13();
  v6 = sub_2699037DC();
  v7 = OUTLINED_FUNCTION_24(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(v3 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2698CEF38()
{
  v4 = OUTLINED_FUNCTION_19();
  result = OUTLINED_FUNCTION_24(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_21();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0 + 4;
  }

  return result;
}

uint64_t sub_2698CF064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13();
  v6 = sub_2699037DC();
  v7 = OUTLINED_FUNCTION_24(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2698CF114()
{
  v4 = OUTLINED_FUNCTION_19();
  result = OUTLINED_FUNCTION_24(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_21();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

uint64_t sub_2698CF198()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  if (v0[7])
  {
    v4 = v0[8];
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2698CF1F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2698CF29C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2698CF348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2698CF3A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SVDProximity.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2698CF3DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698E1E2C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CF46C()
{
  v1 = OUTLINED_FUNCTION_44_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2698CF4A4()
{
  v1 = sub_2699037DC();
  OUTLINED_FUNCTION_4_4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = OUTLINED_FUNCTION_15_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_2698CF548()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2698CF59C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2698CF614()
{
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2698CF648()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2698CF67C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2698CF6BC()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_44_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2698CF6EC()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2698CF744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  OUTLINED_FUNCTION_4_4(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = OUTLINED_FUNCTION_15_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_2698CF7F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  OUTLINED_FUNCTION_17_1(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2698CF88C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  OUTLINED_FUNCTION_17_1(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  v7 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_2698CF934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  OUTLINED_FUNCTION_4_4(v1);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_15_1();
  v8(v7);
  v9 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_2698CFA1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
  OUTLINED_FUNCTION_4_4(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_15_1();
  v8(v7);
  v9 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_2698CFB18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_4_4(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 24) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_15_1();
  v8(v7);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2698CFBE4()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_44_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2698CFC1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_17_1(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);

  v5 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2698CFD0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698FA308();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CFD3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698FAF48();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CFD6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698FBBBC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CFD9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698FC828();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CFDCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698FD494();
  *a2 = result;
  a2[1] = v5;
  return result;
}

BOOL sub_2698CFE08(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2698CFE70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_269900000();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698CFF2C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698CFFF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D0054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2698CFF2C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2698D0080(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698CFFF4(v2, v3);
}

unint64_t sub_2698D0124(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_26990396C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2699039AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

id VoiceTriggerCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x8000000269907EA0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AF4(5, v8, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap);

  return v6;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2698D0418(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E278, &qword_269906008);
    OUTLINED_FUNCTION_4();
    v2 = sub_269903EFC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(a1 + 56) + 8 * v14);

    v19 = v18;
    result = sub_2698D1D34(v17, v16);
    v20 = result;
    if (v21)
    {
      v22 = (v2[6] + 16 * result);
      v23 = v22[1];
      *v22 = v17;
      v22[1] = v16;

      v24 = (v2[7] + 16 * v20);
      v25 = *v24;
      *v24 = v19;
      v24[1] = &off_287A56EB8;
      result = swift_unknownObjectRelease();
      v11 = v12;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v26 = (v2[6] + 16 * result);
      *v26 = v17;
      v26[1] = v16;
      v27 = (v2[7] + 16 * result);
      *v27 = v19;
      v27[1] = &off_287A56EB8;
      v28 = v2[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v2[2] = v30;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v2;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2698D0604(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E260, &qword_269905FF0);
    OUTLINED_FUNCTION_4();
    v2 = sub_269903EFC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v5 &= v5 - 1;
    v21 = *(*(a1 + 48) + v11);
    v23 = *(*(a1 + 56) + 16 * v11);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E268, &qword_269905FF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E270, &qword_269906000);
    swift_dynamicCast();
    v12 = *(v2 + 40);
    sub_26990404C();
    switch(v21)
    {
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 9:
      case 10:
        OUTLINED_FUNCTION_0();
        break;
      default:
        break;
    }

    sub_26990394C();

    result = sub_26990408C();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_23;
        }
      }

      goto LABEL_27;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(*(v2 + 48) + v16) = v21;
    *(*(v2 + 56) + 8 * v16) = v22;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2698D0AF4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = v4;
  v9 = CapabilityKey.rawValue.getter();
  v11 = v10;
  v12 = (v7 + *a3);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = v9;
  v12[1] = v11;

  v14 = *a4;
  v15 = *(v7 + *a4);
  *(v7 + v14) = a2;
}

uint64_t sub_2698D0BEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000025, 0x8000000269907EA0, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2698D0C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2698D1D34(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_2698D0CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2698D1D34(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for RequestAnalyticsContext(0);
    sub_2698D20E0(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for RequestAnalyticsContext(0);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void sub_2698D0E08(unint64_t a1)
{
  v2 = sub_2698D1C94(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_3();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_3();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *VoiceTriggerCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D11EC(a1, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

uint64_t sub_2698D11EC(uint64_t a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269905F20;
  v7 = sub_2698D23FC(0, &qword_28131C820, 0x277CCACA8);
  *(v6 + 32) = v7;
  sub_269903BCC();

  if (!v40)
  {
    return sub_2698D2394(v39);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v33 = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269905F30;
  *(v9 + 32) = sub_2698D23FC(0, &qword_28033E240, 0x277CBEA60);
  *(v9 + 40) = v7;
  sub_269903BCC();

  if (!v40)
  {

    return sub_2698D2394(v39);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E248, &qword_269905FD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = (v3 + *a2);
  swift_beginAccess();
  v11 = v10[1];
  *v10 = v37;
  v10[1] = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  v12 = sub_2699038BC();
  v13 = *(v37 + 16);
  if (!v13)
  {
LABEL_20:

    v32 = *(v3 + *v33);
    *(v3 + *v33) = v12;
  }

  v35 = type metadata accessor for BooleanCapabilityPrimitive();
  v34 = type metadata accessor for ContinuousNumericCapabilityPrimitive();
  v14 = (v37 + 40);
  while (1)
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    OUTLINED_FUNCTION_6();
    v39[0] = v17;
    OUTLINED_FUNCTION_5();
    v39[1] = v18;

    MEMORY[0x26D647ED0](v15, v16);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_269905F30;
    *(v19 + 32) = v35;
    *(v19 + 40) = v34;
    sub_269903BCC();

    if (!v40)
    {

      sub_2698D2394(v39);
      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v12;
    v20 = sub_2698D1D34(v15, v16);
    if (__OFADD__(v12[2], (v21 & 1) == 0))
    {
      break;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E250, &qword_269905FD8);
    if (sub_269903DEC())
    {
      v24 = sub_2698D1D34(v15, v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_27;
      }

      v22 = v24;
    }

    if (v23)
    {

      v12 = v39[0];
      v26 = *(v39[0] + 56);
      v27 = *(v26 + 16 * v22);
      *(v26 + 16 * v22) = v36;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = v39[0];
      *(v39[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v28 = (v12[6] + 16 * v22);
      *v28 = v15;
      v28[1] = v16;
      *(v12[7] + 16 * v22) = v36;
      swift_unknownObjectRelease();
      v29 = v12[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v12[2] = v31;
    }

LABEL_19:
    v14 += 2;
    if (!--v13)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

void sub_2698D1864(void *a1, void *a2, uint64_t *a3)
{
  v6 = (v3 + *a2);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];

  v9 = sub_2699038FC();

  v10 = sub_2699038FC();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *a3;
  v12 = *(v3 + *a3);

  sub_2698D1C04(v13);
  v14 = sub_2699039FC();

  v15 = sub_2699038FC();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *(v3 + v11);
  v17 = *(v16 + 64);
  v18 = *(v16 + 32);
  OUTLINED_FUNCTION_2();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;

  v24 = 0;
  while (v21)
  {
    v25 = v24;
LABEL_7:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = (v25 << 10) | (16 * v26);
    v28 = (*(v16 + 48) + v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(*(v16 + 56) + v27);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5();
    swift_unknownObjectRetain();
    MEMORY[0x26D647ED0](v29, v30);
    swift_unknownObjectRetain();
    v32 = sub_2699038FC();

    [a1 encodeObject:v31 forKey:v32];
    swift_unknownObjectRelease_n();
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      return;
    }

    v21 = *(v16 + 64 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_7;
    }
  }

  __break(1u);
}

id VoiceTriggerCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceTriggerCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTriggerCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2698D1C04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2698D1CB8(*(a1 + 16), 0);
  v4 = sub_2698D28D0(&v6, v3 + 4, v2, a1);
  sub_2698D2A2C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2698D1C94(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_269903CAC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_2698D1CB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E258, &unk_269905FE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_2698D1D34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26990404C();
  sub_26990394C();
  v6 = sub_26990408C();

  return sub_2698D2208(a1, a2, v6);
}

uint64_t sub_2698D1F48(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *sub_2698D1FB4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void type metadata accessor for atomic_flag()
{
  if (!qword_28033E1B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28033E1B8);
    }
  }
}

uint64_t sub_2698D20E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestAnalyticsContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2698D2144()
{
  v1 = *(v0 + 40);
  sub_269903BDC();
  v2 = OUTLINED_FUNCTION_4();

  return sub_2698D22BC(v2, v3);
}

unint64_t sub_2698D2184(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2698D2BD8();

  return sub_2698D243C(a1, v4);
}

unint64_t sub_2698D21C8()
{
  v1 = *(v0 + 40);
  sub_269903BDC();
  v2 = OUTLINED_FUNCTION_4();

  return sub_2698D2810(v2, v3);
}

unint64_t sub_2698D2208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269903FAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2698D22BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_269903BEC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2698D2394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E238, &qword_269905FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2698D23FC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_2698D243C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007974696C69;
      v8 = 0x626170614358554DLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000017;
          v7 = 0x8000000269907D70;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x8000000269907D90;
          break;
        case 3:
          v8 = 0xD000000000000018;
          v7 = 0x8000000269907DB0;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x8000000269907DD0;
          break;
        case 5:
          v8 = 0xD000000000000016;
          v7 = 0x8000000269905F20;
          break;
        case 6:
          v8 = 0xD000000000000023;
          v7 = 0x8000000269907DF0;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000269907E20;
          break;
        case 8:
          break;
        case 9:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000269907E50;
          break;
        case 0xA:
          v8 = 0xD000000000000019;
          v7 = 0x8000000269907E70;
          break;
        case 0xB:
          v8 = 0x6669636570736E55;
          v7 = 0xEB00000000646569;
          break;
        default:
          v8 = 0xD000000000000017;
          v7 = 0x8000000269907D50;
          break;
      }

      v9 = 0x626170614358554DLL;
      v10 = 0xED00007974696C69;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000017;
          v10 = 0x8000000269907D70;
          break;
        case 2:
          v9 = 0xD000000000000013;
          v10 = 0x8000000269907D90;
          break;
        case 3:
          v9 = 0xD000000000000018;
          v10 = 0x8000000269907DB0;
          break;
        case 4:
          v9 = 0xD000000000000011;
          v10 = 0x8000000269907DD0;
          break;
        case 5:
          v9 = 0xD000000000000016;
          v10 = 0x8000000269905F20;
          break;
        case 6:
          v9 = 0xD000000000000023;
          v10 = 0x8000000269907DF0;
          break;
        case 7:
          v9 = 0xD00000000000001ALL;
          v10 = 0x8000000269907E20;
          break;
        case 8:
          break;
        case 9:
          v9 = 0xD00000000000001ALL;
          v10 = 0x8000000269907E50;
          break;
        case 10:
          v9 = 0xD000000000000019;
          v10 = 0x8000000269907E70;
          break;
        case 11:
          v9 = 0x6669636570736E55;
          v10 = 0xEB00000000646569;
          break;
        default:
          v9 = 0xD000000000000017;
          v10 = 0x8000000269907D50;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_269903FAC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2698D2810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for DeviceUnit();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_269903BEC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2698D28D0(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

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

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for VoiceTriggerCapability();
}

uint64_t sub_2698D2ADC(unsigned __int8 a1)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a1);
  return sub_26990408C();
}

uint64_t sub_2698D2B30(uint64_t a1)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a1);
  return sub_26990408C();
}

uint64_t sub_2698D2B78()
{
  CapabilityKey.rawValue.getter();
  sub_26990394C();
}

uint64_t sub_2698D2BD8()
{
  sub_26990404C();
  CapabilityKey.rawValue.getter();
  sub_26990394C();

  return sub_26990408C();
}

uint64_t sub_2698D2C3C(uint64_t a1, unsigned __int8 a2)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a2);
  return sub_26990408C();
}

uint64_t sub_2698D2C80(uint64_t a1, uint64_t a2)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a2);
  return sub_26990408C();
}

unint64_t sub_2698D2CC4(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_2698D2D04@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2698D2CC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2698D2D30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698D2CD4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2698D2D5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

BOOL sub_2698D2D6C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = atomic_flag_test_and_set((v2 + 16));
  swift_endAccess();
  if (!v4)
  {
    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = *(v2 + 32);

      v5(a1);
      sub_2698D3034(v5);
      v7 = *(v2 + 24);
      v8 = *(v2 + 32);
      *(v2 + 24) = 0;
      *(v2 + 32) = 0;
      sub_2698D3034(v7);
    }
  }

  return !v4;
}

uint64_t sub_2698D2E18()
{
  v1 = *(v0 + 32);
  sub_2698D3034(*(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for SafetyBlockSignal(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SafetyBlockSignal(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2698D2FE0()
{
  result = qword_28033E340;
  if (!qword_28033E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E340);
  }

  return result;
}

uint64_t sub_2698D3034(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SpeakerQualityReference.init(rawValue:)(uint64_t result)
{
  if (result == 3000)
  {
    v1 = 3000;
  }

  else
  {
    v1 = 0;
  }

  if (result == 2000)
  {
    v1 = 2000;
  }

  if (result == 1000)
  {
    v1 = 1000;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2698D30BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SpeakerQualityReference.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2698D313C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698D3204(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D3264(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698D3204(v2, v3);
}

id SpeakerCapability.init(status:qualityScore:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v2[v5] = sub_2699038BC();
  v12.receiver = v2;
  v12.super_class = OUTLINED_FUNCTION_0_0(OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  v6 = objc_msgSendSuper2(&v12, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E3C8, &qword_269906128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F30;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x8000000269908090;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v8 = v6;
  *(inited + 48) = sub_2698DBE0C(a1);
  *(inited + 56) = &off_287A56EB8;
  *(inited + 64) = 0xD00000000000001FLL;
  *(inited + 72) = 0x80000002699080C0;
  v9 = objc_allocWithZone(type metadata accessor for ContinuousNumericCapabilityPrimitive());
  *(inited + 80) = sub_2698DC330(a2);
  *(inited + 88) = &off_287A56EA8;
  v10 = sub_2699038BC();
  sub_2698D0A2C(4, v10);

  return v8;
}

uint64_t sub_2698D3580()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000020, 0x8000000269908090, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2698D3658()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_2698D1D34(0xD00000000000001FLL, 0x80000002699080C0);
  if ((v3 & 1) == 0)
  {

    return 0;
  }

  v4 = *(*(v1 + 56) + 16 * v2);
  swift_unknownObjectRetain();

  type metadata accessor for ContinuousNumericCapabilityPrimitive();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = *(v5 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value);
  result = swift_unknownObjectRelease();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v6;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

char *sub_2698D3864(uint64_t a1)
{
  result = sub_2698D2A38(a1);
  v3 = 0;
  v18 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap;
  v20 = result;
  while (1)
  {
    if (v20 == v3)
    {
      return (v20 == v3);
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      result = *(a1 + 8 * v3 + 32);
    }

    v4 = result;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v5 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    OUTLINED_FUNCTION_1_0();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_1_0();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_1_0();
    v7 = sub_26990395C();
    v8 = sub_2698D0124(v7, v6, v5);
    MEMORY[0x26D647E90](v8);

    v9 = sub_269903F0C();

    if (v9)
    {
      if (v9 != 1 || !*(*(v19 + v18) + 16))
      {
LABEL_22:

        return (v20 == v3);
      }

      v10 = *(v19 + v18);

      v11 = sub_2698D1D34(v6, v5);
      if ((v12 & 1) == 0)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_2_0(v11);

      type metadata accessor for ContinuousNumericCapabilityPrimitive();
      if (!swift_dynamicCastClass())
      {
LABEL_24:

        swift_unknownObjectRelease();
        return (v20 == v3);
      }

      v13 = sub_2698DC404(v4);

      result = swift_unknownObjectRelease();
      if (!v13)
      {
        return (v20 == v3);
      }
    }

    else
    {
      if (!*(*(v19 + v18) + 16))
      {
        goto LABEL_22;
      }

      v14 = *(v19 + v18);

      v15 = sub_2698D1D34(v6, v5);
      if ((v16 & 1) == 0)
      {
LABEL_23:

        return (v20 == v3);
      }

      OUTLINED_FUNCTION_2_0(v15);

      type metadata accessor for BooleanCapabilityPrimitive();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_24;
      }

      swift_unknownObjectRetain();
      v17 = sub_2698DBF48(v4);

      result = swift_unknownObjectRelease_n();
      if ((v17 & 1) == 0)
      {
        return (v20 == v3);
      }
    }

    ++v3;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *SpeakerCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_0(OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D11D8(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id SpeakerCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpeakerCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeakerCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2698D3DF8()
{
  result = qword_28033E3D0;
  if (!qword_28033E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E3D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for SpeakerCapability();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 16 * a1);

  return swift_unknownObjectRetain();
}

uint64_t sub_2698D40E0()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698D41A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D4208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698D41A8(v2, v3);
}

id ProfileSwitchingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x8000000269908190;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A40(7, v8);

  return v6;
}

uint64_t sub_2698D44C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000029, 0x8000000269908190, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698D45E0(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_1();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *ProfileSwitchingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1698(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id ProfileSwitchingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileSwitchingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSwitchingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for ProfileSwitchingCapability();
}

uint64_t sub_2698D4D4C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698D4E14(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D4E74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698D4E14(v2, v3);
}

id AudioPlaybackCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_2(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x8000000269908280;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A54(0, v8);

  return v6;
}

uint64_t sub_2698D5130()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000026, 0x8000000269908280, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698D524C(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_2();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_2();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_2();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *AudioPlaybackCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_2(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16AC(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AudioPlaybackCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioPlaybackCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPlaybackCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AudioPlaybackCapability();
}

uint64_t sub_2698D596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for RequestAnalyticsContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_2698DBAE8(a1, &qword_28033E4D0, &qword_269906800);
    sub_2698DB0AC(a2, a3, v11);

    return sub_2698DBAE8(v11, &qword_28033E4D0, &qword_269906800);
  }

  else
  {
    sub_2698DB04C(a1, v15, type metadata accessor for RequestAnalyticsContext);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_2698DB1F4(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

SiriVirtualDeviceResolution::ExecutionInfo::Action_optional __swiftcall ExecutionInfo.Action.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 4;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
      goto LABEL_11;
    case 3:
      v2 = 3;
LABEL_11:
      v3 = v2;
      break;
    case 4:
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    default:
      v3 = 22;
      break;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t ExecutionInfo.executionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2699037DC();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ExecutionInfo.executionId.setter()
{
  OUTLINED_FUNCTION_13();
  v0 = sub_2699037DC();
  OUTLINED_FUNCTION_8(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_16();

  return v4(v3);
}

uint64_t ExecutionInfo.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecutionInfo(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ExecutionInfo.action.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecutionInfo(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*ExecutionInfo.action.modify())()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for ExecutionInfo(v0) + 20);
  return nullsub_1;
}

uint64_t ExecutionInfo.quickStopActionResult.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecutionInfo(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ExecutionInfo.quickStopActionResult.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecutionInfo(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*ExecutionInfo.quickStopActionResult.modify())()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for ExecutionInfo(v0) + 24);
  return nullsub_1;
}

uint64_t ExecutionInfo.init(executionId:action:quickStopActionResult:)@<X0>(char *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for ExecutionInfo(0);
  v7 = *(v6 + 24);
  *(a3 + v7) = 4;
  v8 = sub_2699037DC();
  OUTLINED_FUNCTION_8(v8);
  v10 = *(v9 + 32);
  v11 = OUTLINED_FUNCTION_16();
  result = v12(v11);
  *(a3 + *(v6 + 20)) = v4;
  *(a3 + v7) = v5;
  return result;
}

uint64_t CrossDeviceCommandExecution.Result.hashValue.getter()
{
  v1 = *v0;
  sub_26990404C();
  MEMORY[0x26D6485B0](v1);
  return sub_26990408C();
}

uint64_t sub_2698D5F7C()
{
  v1 = *v0;
  sub_26990404C();
  MEMORY[0x26D6485B0](v1);
  return sub_26990408C();
}

SiriVirtualDeviceResolution::CrossDeviceCommandExecution::FailureReason_optional __swiftcall CrossDeviceCommandExecution.FailureReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SiriVirtualDeviceResolution::HomeKitTarget_optional __swiftcall HomeKitTarget.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DeviceResolutionAnalytics.logCommandExecution(_:)()
{
  v0 = sub_2699037FC();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  __swift_project_value_buffer(v0, qword_280340D98);
  v6 = OUTLINED_FUNCTION_14(v3);
  v7(v6);
  v8 = sub_2699037EC();
  v9 = sub_269903B0C();
  if (os_log_type_enabled(v8, v9))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25(&dword_2698CD000, v10, v11, "DeviceResolutionAnalytics#logCommandExecution() default implementation should not be used");
    OUTLINED_FUNCTION_20();
  }

  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_16();
  return v14(v13);
}

Swift::Void __swiftcall DeviceResolutionAnalytics.selectHomeKitTarget(_:for:)(SiriVirtualDeviceResolution::HomeKitTarget _, Swift::String a2)
{
  v2 = sub_2699037FC();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  __swift_project_value_buffer(v2, qword_280340D98);
  v8 = OUTLINED_FUNCTION_14(v5);
  v9(v8);
  v10 = sub_2699037EC();
  v11 = sub_269903B0C();
  if (os_log_type_enabled(v10, v11))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25(&dword_2698CD000, v12, v13, "DeviceResolutionAnalytics#selectHomeKitTarget() default implementation should not be used");
    OUTLINED_FUNCTION_20();
  }

  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_16();
  v16(v15);
}

uint64_t sub_2698D62B0()
{
  v1 = *(v0 + *(type metadata accessor for RequestAnalyticsContext(0) + 20));
  if (v1 && (v22 = *(v1 + 16)) != 0)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    v4 = (v1 + 40);
    while (v2 < *(v1 + 16))
    {
      v5 = *v4;
      v6 = *(v4 - 1);
      v7 = sub_269903AEC();
      if ((v3 & 0xC000000000000001) != 0)
      {
        if (v3 >= 0)
        {
          v3 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v8 = sub_269903CAC();
        if (__OFADD__(v8, 1))
        {
          goto LABEL_24;
        }

        sub_2698F7324(v3, v8 + 1);
        v3 = v9;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_2698D2144();
      if (__OFADD__(*(v3 + 16), (v11 & 1) == 0))
      {
        goto LABEL_23;
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E538, &unk_269906850);
      if (sub_269903DEC())
      {
        v14 = sub_2698D2144();
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_26;
        }

        v12 = v14;
      }

      if (v13)
      {
        v16 = *(v3 + 56);
        v17 = *(v16 + 8 * v12);
        *(v16 + 8 * v12) = v7;
      }

      else
      {
        *(v3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        *(*(v3 + 48) + 8 * v12) = v6;
        *(*(v3 + 56) + 8 * v12) = v7;
        v18 = *(v3 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_25;
        }

        *(v3 + 16) = v20;
      }

      ++v2;
      v4 += 2;
      if (v22 == v2)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
    result = sub_269903FEC();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2698D64A8()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (!v1)
  {
    v3 = [objc_opt_self() currentContext];
    v4 = objc_opt_self();
    v5 = [v4 serviceName];
    if (!v5)
    {
      sub_26990390C();
      v5 = sub_2699038FC();
    }

    v2 = [v3 createXPCConnectionWithMachServiceName:v5 options:0];

    if (v2)
    {
      v6 = v2;
      v7 = [v4 xpcInterface];
      v8 = OUTLINED_FUNCTION_23();
      [v8 v9];

      v24 = sub_2698DB8F8;
      v25 = v0;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_2698D670C;
      v23 = &block_descriptor_83;
      v10 = _Block_copy(&v20);
      v11 = v6;

      v12 = OUTLINED_FUNCTION_23();
      [v12 v13];
      _Block_release(v10);

      v24 = sub_2698DB938;
      v25 = v0;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_2698D670C;
      v23 = &block_descriptor_86;
      v14 = _Block_copy(&v20);
      v15 = v11;

      v16 = OUTLINED_FUNCTION_23();
      [v16 v17];
      _Block_release(v14);

      [v15 resume];
    }
  }

  v18 = v1;
  return v2;
}

uint64_t sub_2698D670C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2698D6750()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v35 = v4;
  v36 = v5;
  v7 = v6;
  v8 = sub_26990382C();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = sub_26990384C();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v37 = v14;
  v38 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v17 = sub_2699037FC();
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v23 = __swift_project_value_buffer(v17, qword_280340D98);
  (*(v20 + 16))(v0, v23, v17);
  v24 = sub_2699037EC();
  v25 = sub_269903B0C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2698CD000, v24, v25, v35, v26, 2u);
    OUTLINED_FUNCTION_20();
  }

  (*(v20 + 8))(v0, v17);
  v27 = *(v7 + 32);
  v39[4] = v36;
  v39[5] = v7;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v39[2] = v28;
  v39[3] = v3;
  v29 = _Block_copy(v39);

  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_9();
  sub_269903C5C();
  v32 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v32);
  _Block_release(v29);
  v33 = OUTLINED_FUNCTION_12();
  v34(v33);
  (*(v37 + 8))(v1, v38);

  OUTLINED_FUNCTION_17();
}

void sub_2698D6A8C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = sub_26990382C();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v68 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v66 = v10 - v9;
  v67 = sub_26990384C();
  v11 = OUTLINED_FUNCTION_3_0(v67);
  v65 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v64 = v16 - v15;
  v17 = type metadata accessor for CrossDeviceCommandExecution(0);
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v62 = v19;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = sub_2699037FC();
  v28 = OUTLINED_FUNCTION_3_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  __swift_project_value_buffer(v27, qword_280340D98);
  v33 = OUTLINED_FUNCTION_14(v30);
  v34(v33);
  OUTLINED_FUNCTION_7();
  sub_2698DAF98(v3, v26, v35);
  v36 = sub_2699037EC();
  v37 = sub_269903AFC();
  v61 = v27;
  v38 = v37;
  if (os_log_type_enabled(v36, v37))
  {
    v39 = swift_slowAlloc();
    v60 = v0;
    v40 = v39;
    v41 = swift_slowAlloc();
    v59 = v3;
    v42 = v41;
    v70[0] = v41;
    *v40 = 136315138;
    OUTLINED_FUNCTION_7();
    sub_2698DAF98(v26, v24, v43);
    v44 = sub_26990391C();
    v58 = v4;
    v46 = v45;
    OUTLINED_FUNCTION_10();
    v47 = sub_2698D9D70(v44, v46, v70);
    v4 = v58;

    *(v40 + 4) = v47;
    _os_log_impl(&dword_2698CD000, v36, v38, "#hal logCommandExecution with execution: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v3 = v59;
    OUTLINED_FUNCTION_20();
    v1 = v60;
    OUTLINED_FUNCTION_20();
  }

  else
  {

    OUTLINED_FUNCTION_10();
  }

  (*(v30 + 8))(v0, v61);
  v48 = *(v1 + 32);
  OUTLINED_FUNCTION_7();
  sub_2698DAF98(v3, v24, v49);
  v50 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v1;
  sub_2698DB04C(v24, v51 + v50, type metadata accessor for CrossDeviceCommandExecution);
  v70[4] = sub_2698D9CAC;
  v70[5] = v51;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v70[2] = v52;
  v70[3] = &block_descriptor;
  v53 = _Block_copy(v70);

  v54 = v64;
  sub_26990383C();
  v69 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  v57 = v66;
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v54, v57, v53);
  _Block_release(v53);
  (*(v68 + 8))(v57, v4);
  (*(v65 + 8))(v54, v67);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698D6F98(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v3 = sub_2699037DC();
  v124 = *(v3 - 8);
  v125 = v3;
  v4 = *(v124 + 64);
  MEMORY[0x28223BE20](v3);
  v123 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v118 - v8;
  v121 = type metadata accessor for RequestAnalyticsContext(0);
  v10 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for ExecutionInfo(0);
  v12 = *(*(v129 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v129);
  v128 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v118 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v118 - v17;
  v19 = type metadata accessor for CrossDeviceCommandExecution(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_2699037FC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v127 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v120 = &v118 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v119 = &v118 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v118 - v32;
  v131 = a1;
  v34 = sub_2698D64A8();
  if (v34)
  {
    v35 = v34;
    v134 = sub_2698D7F18;
    v135 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v133 = sub_2698E6978;
    *(&v133 + 1) = &block_descriptor_98;
    v36 = v23;
    v37 = v24;
    v38 = _Block_copy(&aBlock);
    v39 = [v35 remoteObjectProxyWithErrorHandler_];
    v40 = v38;
    v24 = v37;
    v23 = v36;
    _Block_release(v40);

    sub_269903C3C();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v133 = 0u;
  }

  sub_2698DBA78(&aBlock, v137);
  if (v137[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v41 = v136;
      sub_2698DAF98(v130, v22, type metadata accessor for CrossDeviceCommandExecution);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v43 = v126;
          sub_2698DB04C(v22, v126, type metadata accessor for ExecutionInfo);
          v44 = sub_2699037AC();
          v46 = v45;
          v47 = v131;
          swift_beginAccess();
          v48 = *(v47 + 24);

          sub_2698D0CE0(v44, v46, v48, v9);

          v49 = v121;
          if (__swift_getEnumTagSinglePayload(v9, 1, v121) == 1)
          {
            sub_2698DBAE8(v9, &qword_28033E4D0, &qword_269906800);
            if (qword_28033E178 != -1)
            {
              swift_once();
            }

            v50 = __swift_project_value_buffer(v23, qword_280340D98);
            v51 = v120;
            (*(v24 + 16))(v120, v50, v23);

            v52 = sub_2699037EC();
            v53 = sub_269903B0C();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = v23;
              v56 = v24;
              v57 = swift_slowAlloc();
              v136 = v57;
              *v54 = 136315138;
              v58 = sub_2698D9D70(v44, v46, &v136);

              *(v54 + 4) = v58;
              _os_log_impl(&dword_2698CD000, v52, v53, "#hal logCrossDeviceCommandEnded Failed to find analytics context in cache - logCrossDeviceCommandStarted was not called for requestId: %s. Returning.", v54, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v57);
              MEMORY[0x26D648C80](v57, -1, -1);
              MEMORY[0x26D648C80](v54, -1, -1);
              swift_unknownObjectRelease();

              (*(v56 + 8))(v120, v55);
            }

            else
            {

              swift_unknownObjectRelease();

              (*(v24 + 8))(v51, v23);
            }
          }

          else
          {
            v127 = v44;
            v128 = v24;
            v96 = v23;
            v97 = v122;
            sub_2698DB04C(v9, v122, type metadata accessor for RequestAnalyticsContext);
            v98 = v129;
            v99 = *(v43 + *(v129 + 20));
            v100 = v49;
            v101 = sub_269903AEC();
            *(v43 + *(v98 + 24));
            (*(v124 + 16))(v123, v97, v125);
            sub_2698D62B0();
            *(v97 + *(v100 + 24));
            sub_2699037AC();
            v102 = sub_2699038FC();

            v103 = sub_269903AEC();
            v104 = sub_269903AEC();
            sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
            sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
            sub_2698DB4BC();
            v105 = sub_26990388C();

            v130 = v41;
            [v41 logCrossDeviceCommandEnded:v102 action:v101 actionResult:v103 homeKitTarget:v104 contextProximityPairs:v105];

            if (qword_28033E178 != -1)
            {
              swift_once();
            }

            v106 = __swift_project_value_buffer(v96, qword_280340D98);
            v107 = v128;
            v108 = v119;
            (*(v128 + 16))(v119, v106, v96);

            v109 = v101;
            v110 = sub_2699037EC();
            v111 = sub_269903AFC();

            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              v129 = v96;
              v115 = v114;
              v136 = v114;
              *v112 = 136315394;
              *(v112 + 4) = sub_2698D9D70(v127, v46, &v136);
              *(v112 + 12) = 2112;
              *(v112 + 14) = v109;
              *v113 = v109;
              v116 = v109;
              _os_log_impl(&dword_2698CD000, v110, v111, "#hal logCrossDeviceCommandEnded for request: %s action:%@", v112, 0x16u);
              sub_2698DBAE8(v113, &qword_28033E530, &unk_269906C90);
              MEMORY[0x26D648C80](v113, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v115);
              MEMORY[0x26D648C80](v115, -1, -1);
              MEMORY[0x26D648C80](v112, -1, -1);

              (*(v107 + 8))(v108, v129);
            }

            else
            {

              (*(v107 + 8))(v108, v96);
            }

            sub_2698D914C();

            swift_unknownObjectRelease();
            (*(v124 + 8))(v123, v125);
            sub_2698DAFF8();
          }
        }

        else
        {
          v73 = v23;
          v74 = v24;
          v75 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E528, &unk_269906840) + 48));
          v76 = v128;
          sub_2698DB04C(v22, v128, type metadata accessor for ExecutionInfo);
          v77 = sub_2699037AC();
          v79 = v78;
          v80 = *(v76 + *(v129 + 20));
          v81 = sub_269903AEC();
          v82 = sub_2699038FC();
          v83 = sub_269903AEC();
          [v41 logCrossDeviceCommandFailed:v82 action:v81 reason:v83];

          if (qword_28033E178 != -1)
          {
            swift_once();
          }

          v84 = __swift_project_value_buffer(v73, qword_280340D98);
          v85 = v74;
          v86 = v127;
          (*(v74 + 16))(v127, v84, v73);

          v87 = v81;
          v88 = sub_2699037EC();
          v89 = sub_269903AFC();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v130 = v41;
            v92 = v85;
            v93 = v91;
            v94 = swift_slowAlloc();
            v137[0] = v94;
            *v90 = 136315394;
            *(v90 + 4) = sub_2698D9D70(v77, v79, v137);
            *(v90 + 12) = 2112;
            *(v90 + 14) = v87;
            *v93 = v87;
            v95 = v87;
            _os_log_impl(&dword_2698CD000, v88, v89, "#hal logCrossDeviceCommandFailed for request: %s action:%@", v90, 0x16u);
            sub_2698DBAE8(v93, &qword_28033E530, &unk_269906C90);
            MEMORY[0x26D648C80](v93, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v94);
            MEMORY[0x26D648C80](v94, -1, -1);
            MEMORY[0x26D648C80](v90, -1, -1);

            (*(v92 + 8))(v127, v73);
          }

          else
          {

            (*(v85 + 8))(v86, v73);
          }

          sub_2698D914C();

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v63 = *v22;
        v64 = v22[1];
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E400, &unk_2699062F0);
        sub_2698DB04C(v22 + *(v65 + 64), v18, type metadata accessor for ExecutionInfo);
        v66 = sub_2699037AC();
        v68 = v67;
        v69 = v18[*(v129 + 20)];
        v70 = sub_269903AEC();
        LOBYTE(v137[0]) = 8;
        v71 = swift_allocObject();
        v71[2] = v131;
        v71[3] = v66;
        v71[4] = v68;
        v71[5] = v41;
        v71[6] = v70;
        v71[7] = v63;
        v71[8] = v64;

        swift_unknownObjectRetain();
        v72 = v70;
        sub_2698D9458();

        swift_unknownObjectRelease();
      }

      sub_2698DAFF8();
      return sub_2698DBAE8(&aBlock, &qword_28033E238, &qword_269905FC8);
    }
  }

  else
  {
    sub_2698DBAE8(v137, &qword_28033E238, &qword_269905FC8);
  }

  if (qword_28033E178 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v23, qword_280340D98);
  (*(v24 + 16))(v33, v59, v23);
  v60 = sub_2699037EC();
  v61 = sub_269903B0C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_2698CD000, v60, v61, "#hal logCommandExecution Failed to get remote object", v62, 2u);
    MEMORY[0x26D648C80](v62, -1, -1);
  }

  (*(v24 + 8))(v33, v23);
  return sub_2698DBAE8(&aBlock, &qword_28033E238, &qword_269905FC8);
}

uint64_t sub_2698D7F18(void *a1)
{
  v2 = sub_2699037FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28033E178 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280340D98);
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_2699037EC();
  v10 = sub_269903B0C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_269903FFC();
    v15 = sub_2698D9D70(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2698CD000, v9, v10, "#hal logCommandExecution Error reaching remote: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D648C80](v12, -1, -1);
    MEMORY[0x26D648C80](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2698D813C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v55 = a5;
  v56 = a7;
  v59 = a4;
  v11 = sub_2699037FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for RequestAnalyticsContext(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v57 = a1;
  v26 = *(a1 + 24);

  sub_2698D0CE0(a2, a3, v26, v21);

  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2698DBAE8(v21, &qword_28033E4D0, &qword_269906800);
    if (qword_28033E178 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v11, qword_280340D98);
    (*(v12 + 16))(v17, v27, v11);
    v28 = sub_2699037EC();
    v29 = sub_269903B0C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2698CD000, v28, v29, "#hal logCommandExecution Failed to create analyticsContext for request.", v30, 2u);
      MEMORY[0x26D648C80](v30, -1, -1);
    }

    return (*(v12 + 8))(v17, v11);
  }

  else
  {
    v54 = a6;
    v32 = v12;
    v33 = v11;
    sub_2698DB04C(v21, v25, type metadata accessor for RequestAnalyticsContext);
    v34 = a2;
    v35 = sub_2699038FC();
    sub_2699037AC();
    v36 = sub_2699038FC();

    v37 = v59;
    [v59 logCrossDeviceRequestLink:v35 halRequestId:v36];

    sub_2699037AC();
    v38 = sub_2699038FC();

    v39 = v55;
    [v37 logCrossDeviceCommandStarted:v38 action:v55];

    if (qword_28033E178 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v33, qword_280340D98);
    v41 = v58;
    (*(v32 + 16))(v58, v40, v33);

    v42 = v39;
    v43 = sub_2699037EC();
    v44 = sub_269903AFC();

    v45 = a3;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55 = v45;
      v49 = v48;
      v60 = v48;
      *v46 = 136315394;
      *(v46 + 4) = sub_2698D9D70(v34, v55, &v60);
      *(v46 + 12) = 2112;
      *(v46 + 14) = v42;
      *v47 = v42;
      v50 = v42;
      _os_log_impl(&dword_2698CD000, v43, v44, "#hal logCrossDeviceCommandStarted for request: %s action:%@", v46, 0x16u);
      sub_2698DBAE8(v47, &qword_28033E530, &unk_269906C90);
      MEMORY[0x26D648C80](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v51 = v49;
      v45 = v55;
      MEMORY[0x26D648C80](v51, -1, -1);
      MEMORY[0x26D648C80](v46, -1, -1);

      (*(v32 + 8))(v58, v33);
    }

    else
    {

      (*(v32 + 8))(v41, v33);
    }

    if (v54)
    {
      v52 = v54;
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    if (v56)
    {
      v53 = v56;
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
    }

    sub_2698D8988(v34, v45, v52, v53, v59);

    return sub_2698DAFF8();
  }
}

void sub_2698D870C()
{
  OUTLINED_FUNCTION_15();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_26990382C();
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v28 = sub_26990384C();
  v13 = OUTLINED_FUNCTION_3_0(v28);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v18 = *v8;
  v19 = *(v2 + 32);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v6;
  *(v20 + 32) = v4;
  *(v20 + 40) = v18;
  v29[4] = sub_2698DA32C;
  v29[5] = v20;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v29[2] = v21;
  v29[3] = &block_descriptor_6;
  v22 = _Block_copy(v29);

  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_9();
  sub_269903C5C();
  v25 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v25);
  _Block_release(v22);
  v26 = OUTLINED_FUNCTION_12();
  v27(v26);
  (*(v15 + 8))(v1, v28);

  OUTLINED_FUNCTION_17();
}

void sub_2698D8988(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if (a3 >> 62)
  {
    v10 = sub_269903CAC();
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_269903DAC();
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D6482B0](v11, a3);
      }

      else
      {
        v12 = *(a3 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      [objc_allocWithZone(SVDDeviceUnit) initWithDeviceUnit_];

      sub_269903D8C();
      v14 = *(aBlock[0] + 16);
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
    }

    while (v10 != v11);
  }

  if (a5)
  {
    sub_2698D23FC(0, &qword_28131C450, off_279C71310);
    v15 = sub_2699039FC();

    sub_2698D23FC(0, &qword_28033E4E8, 0x277CEF390);
    v16 = sub_2699039FC();
    v17 = swift_allocObject();
    v17[2] = v6;
    v17[3] = a1;
    v17[4] = a2;
    aBlock[4] = sub_2698DB4B0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2698D9094;
    aBlock[3] = &block_descriptor_80;
    v18 = _Block_copy(aBlock);

    [a5 getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:v15 serviceContexts:v16 completion:v18];
    _Block_release(v18);
  }

  else
  {
  }
}

void sub_2698D8C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v45 = a2;
  v7 = sub_2699037FC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2698DB6EC(a1);
  if (!v12)
  {
LABEL_17:
    LOBYTE(v50[0]) = 8;
    sub_2698D9458();

    if (qword_28033E178 == -1)
    {
LABEL_18:
      v33 = __swift_project_value_buffer(v7, qword_280340D98);
      (v8[2])(v11, v33, v7);

      v34 = sub_2699037EC();
      v35 = sub_269903AFC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = a3;
        v39 = v37;
        v50[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2698D9D70(v38, a4, v50);
        _os_log_impl(&dword_2698CD000, v34, v35, "#hal fetched and cached context snapshot and proximity for request: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x26D648C80](v39, -1, -1);
        MEMORY[0x26D648C80](v36, -1, -1);
      }

      (v8[1])(v11, v7);
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  v13 = v12;
  v54 = MEMORY[0x277D84F90];
  sub_2698F81FC(0, v12 & ~(v12 >> 63), 0);
  v14 = v54;
  v51 = sub_2698DB68C(a1);
  v52 = v15;
  v53 = v16 & 1;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v40 = a3;
    v41 = a4;
    v42 = v11;
    v43 = v8;
    v44 = v7;
    a4 = 0;
    v47 = v13;
    v48 = a1 & 0xC000000000000001;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v46 = v17;
    while (!__OFADD__(a4, 1))
    {
      v49 = a4 + 1;
      v18 = v51;
      v19 = v52;
      v20 = v53;
      v11 = a1;
      sub_2698DB70C(v50, v51, v52, v53, a1);
      v7 = v21;
      v22 = v50[0];
      v8 = [v50[0] integerValue];

      v23 = v14;
      v54 = v14;
      v24 = *(v14 + 16);
      v25 = *(v23 + 24);
      if (v24 >= v25 >> 1)
      {
        sub_2698F81FC((v25 > 1), v24 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = v24 + 1;
      v26 = v23 + 16 * v24;
      *(v26 + 32) = v7;
      *(v26 + 40) = v8;
      if (v48)
      {
        if (!v20)
        {
          goto LABEL_24;
        }

        v14 = v23;
        if (sub_269903E3C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v31 = v47;
        a3 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4F8, &qword_269906810);
        v32 = sub_2699038CC();
        sub_269903EAC();
        v32(v50, 0);
      }

      else
      {
        v14 = v23;
        sub_2698DB524(v18, v19, v20, a1);
        v28 = v27;
        v7 = v29;
        v8 = v30;
        sub_2698DB8EC(v18, v19, v20);
        v51 = v28;
        v52 = v7;
        v53 = v8 & 1;
        v31 = v47;
        a3 = v49;
      }

      ++a4;
      if (a3 == v31)
      {
        sub_2698DB8EC(v51, v52, v53);
        v8 = v43;
        v7 = v44;
        a4 = v41;
        v11 = v42;
        a3 = v40;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_2698D9094(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
  sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
  sub_2698DB4BC();
  v3 = sub_26990389C();

  v2(v3);
}

void sub_2698D914C()
{
  OUTLINED_FUNCTION_15();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_26990382C();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v26 = sub_26990384C();
  v14 = OUTLINED_FUNCTION_3_0(v26);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v25 = *(v3 + 32);
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = v7;
  v19[4] = v5;
  v27[4] = sub_2698DB45C;
  v27[5] = v19;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v27[2] = v20;
  v27[3] = &block_descriptor_74;
  v21 = _Block_copy(v27);

  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_9();
  sub_269903C5C();
  v24 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v24);
  _Block_release(v21);
  (*(v11 + 8))(v1, v8);
  (*(v16 + 8))(v2, v26);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698D9380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for RequestAnalyticsContext(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  swift_beginAccess();

  sub_2698D596C(v8, a2, a3);
  return swift_endAccess();
}

void sub_2698D9458()
{
  OUTLINED_FUNCTION_15();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_26990382C();
  v16 = OUTLINED_FUNCTION_3_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = sub_26990384C();
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v33 = v21;
  v34 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  LOBYTE(v8) = *v8;
  v32 = *(v2 + 32);
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v14;
  *(v24 + 32) = v12;
  *(v24 + 40) = v10;
  *(v24 + 48) = v8;
  *(v24 + 56) = v6;
  *(v24 + 64) = v4;
  v35[4] = sub_2698DAF74;
  v35[5] = v24;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v35[2] = v25;
  v35[3] = &block_descriptor_68;
  v26 = _Block_copy(v35);

  sub_2698DAF88(v6);
  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  sub_269903C5C();
  v29 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v29);
  _Block_release(v26);
  v30 = OUTLINED_FUNCTION_12();
  v31(v30);
  (*(v33 + 8))(v1, v34);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698D96C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t), uint64_t a7)
{
  v28 = a7;
  v29 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = type metadata accessor for RequestAnalyticsContext(0);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(a1 + 24);

  sub_2698D0CE0(a2, a3, v23, v18);

  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_2699037CC();
    *&v22[v19[5]] = 0;
    v22[v19[6]] = 8;
    v22[v19[7]] = 22;
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      sub_2698DBAE8(v18, &qword_28033E4D0, &qword_269906800);
    }
  }

  else
  {
    sub_2698DB04C(v18, v22, type metadata accessor for RequestAnalyticsContext);
  }

  if (a4)
  {
    v24 = v19[5];
    v25 = *&v22[v24];

    *&v22[v24] = a4;
  }

  if (a5 != 8)
  {
    v22[v19[6]] = a5;
  }

  sub_2698DAF98(v22, v16, type metadata accessor for RequestAnalyticsContext);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
  swift_beginAccess();

  sub_2698D596C(v16, a2, a3);
  v26 = swift_endAccess();
  if (v29)
  {
    v29(v26);
  }

  return sub_2698DAFF8();
}

uint64_t DeviceResolutionAnalyticsImpl.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DeviceResolutionAnalyticsImpl.__deallocating_deinit()
{
  DeviceResolutionAnalyticsImpl.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_2698D99E8()
{
  OUTLINED_FUNCTION_15();
  v14 = sub_269903B3C();
  v2 = OUTLINED_FUNCTION_3_0(v14);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v7 = sub_269903B2C();
  v8 = OUTLINED_FUNCTION_8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v11 = sub_26990384C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_5_0();
  v13 = MEMORY[0x277D84F98];
  v0[2] = 0;
  v0[3] = v13;
  sub_2698D23FC(0, &qword_28131C430, 0x277D85C78);
  sub_26990383C();
  sub_2698DB980(&qword_28131C438, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E500, &qword_269906818);
  sub_2698DB9C8(&unk_28131C458, &unk_28033E500, &qword_269906818);
  sub_269903C5C();
  (*(v4 + 104))(v1, *MEMORY[0x277D85260], v14);
  v0[4] = sub_269903B5C();
  v0[5] = 0;
  OUTLINED_FUNCTION_17();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2698D9CAC()
{
  v1 = *(type metadata accessor for CrossDeviceCommandExecution(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2698D6F98(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2698D9D70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2698D9E34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2698DBA1C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2698D9E34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2698D9F34(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_269903D7C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2698D9F34(uint64_t a1, unint64_t a2)
{
  v4 = sub_2698D9F80(a1, a2);
  sub_2698DA098(&unk_287A56318);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2698D9F80(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26990398C())
  {
    result = sub_2698DA17C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_269903D3C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_269903D7C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2698DA098(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2698DA1EC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2698DA17C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E510, qword_269906820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2698DA1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E510, qword_269906820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2698DA32C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_2698D8940();
}

unint64_t sub_2698DA340()
{
  result = qword_28033E420;
  if (!qword_28033E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E420);
  }

  return result;
}

unint64_t sub_2698DA398()
{
  result = qword_28033E428;
  if (!qword_28033E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E428);
  }

  return result;
}

unint64_t sub_2698DA3F0()
{
  result = qword_28033E430;
  if (!qword_28033E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E430);
  }

  return result;
}

unint64_t sub_2698DA448()
{
  result = qword_28033E438;
  if (!qword_28033E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E438);
  }

  return result;
}

unint64_t sub_2698DA4A0()
{
  result = qword_28033E440;
  if (!qword_28033E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E440);
  }

  return result;
}

void sub_2698DA544()
{
  sub_2699037DC();
  if (v0 <= 0x3F)
  {
    sub_2698DAF28(319, &qword_28033E460);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionInfo.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExecutionInfo.Action(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

void sub_2698DA75C()
{
  sub_2698DA814();
  if (v0 <= 0x3F)
  {
    sub_2698DA8B8(319, &qword_28033E490);
    if (v1 <= 0x3F)
    {
      sub_2698DA8B8(319, &qword_28033E498);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2698DA814()
{
  if (!qword_28033E478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033E480, &qword_2699066F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033E488, &qword_2699066F8);
    type metadata accessor for ExecutionInfo(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28033E478);
    }
  }
}

void sub_2698DA8B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for ExecutionInfo(255);
    OUTLINED_FUNCTION_23();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CrossDeviceCommandExecution.Result(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2698DA9FC(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2698DAA84(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HomeKitTarget(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for HomeKitTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2698DADB8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2698DADF0()
{
  sub_2699037DC();
  if (v0 <= 0x3F)
  {
    sub_2698DAEC4();
    if (v1 <= 0x3F)
    {
      sub_2698DAF28(319, &qword_28033E4C0);
      if (v2 <= 0x3F)
      {
        sub_2698DAF28(319, &qword_28033E4C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2698DAEC4()
{
  if (!qword_28033E4B0)
  {
    v0 = sub_269903C0C();
    if (!v1)
    {
      atomic_store(v0, &qword_28033E4B0);
    }
  }
}

void sub_2698DAF28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269903C0C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2698DAF88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2698DAF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_8(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2698DAFF8()
{
  v1 = OUTLINED_FUNCTION_13();
  v3 = v2(v1);
  OUTLINED_FUNCTION_8(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2698DB04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_8(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698DB0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2698D1D34(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E4D8, &qword_269906808);
    sub_269903DEC();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = type metadata accessor for RequestAnalyticsContext(0);
    sub_2698DB04C(v13 + *(*(v14 - 8) + 72) * v9, a3, type metadata accessor for RequestAnalyticsContext);
    sub_269903DFC();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for RequestAnalyticsContext(0);
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_2698DB1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2698D1D34(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E4D8, &qword_269906808);
  if ((sub_269903DEC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_2698D1D34(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_269903FEC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for RequestAnalyticsContext(0) - 8) + 72) * v11;

    return sub_2698DB3F8(a1, v18);
  }

  else
  {
    sub_2698DB34C(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_2698DB34C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RequestAnalyticsContext(0);
  result = sub_2698DB04C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RequestAnalyticsContext);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2698DB3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestAnalyticsContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v3, v4, 7);
}

unint64_t sub_2698DB4BC()
{
  result = qword_28033E4F0;
  if (!qword_28033E4F0)
  {
    sub_2698D23FC(255, &qword_28033E220, 0x277CEF240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E4F0);
  }

  return result;
}

void sub_2698DB524(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_269903E4C() == *(a4 + 36))
    {
      sub_269903E5C();
      sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
      swift_dynamicCast();
      sub_2698D2144();
      v6 = v5;

      if (v6)
      {
        sub_269903E2C();
        sub_269903E7C();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a4 + 36) == a2)
  {
    sub_269903C7C();
    v7 = *(a4 + 36);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_2698DB68C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_269903E0C();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_269903C6C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2698DB6EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_269903CAC();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_2698DB70C(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_269903E8C();
      sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
      swift_dynamicCast();
      sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
      swift_dynamicCast();
      *a1 = v14;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_269903E4C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_269903E5C();
  sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
  swift_dynamicCast();
  a3 = v14;
  a2 = sub_2698D2144();
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v11 = *(*(a5 + 48) + 8 * a2);
  v12 = *(*(a5 + 56) + 8 * a2);
  *a1 = v12;
  v11;
  v13 = v12;
}

uint64_t sub_2698DB8EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2698DB980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2698DB9C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2698DBA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2698DBA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E238, &qword_269905FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698DBAE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_2698DAFF8();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_2699037DC();
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x26D648C80);
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

char *sub_2698DBE0C(uint64_t a1)
{
  *&v1[OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BooleanCapabilityPrimitive();
  result = objc_msgSendSuper2(&v4, sel_init);
  *&result[OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus] = a1;
  return result;
}

id sub_2698DBE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E558, &qword_2699068F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269906860;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (sub_2698D2A38(inited))
  {
    sub_2698DC724(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_2698DC6DC();
  }

  objc_allocWithZone(type metadata accessor for CapabilityDescription());

  return CapabilityDescription.init(key:valueSet:)();
}

uint64_t sub_2698DBF48(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet);
  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = sub_2698DC004(v3, v2);

  if (v4)
  {
    return 1;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_2698DC004(v6, v2);

  return v7;
}

BOOL sub_2698DC004(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_269903CDC();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_2698DC698();
    v6 = *(a2 + 40);
    v7 = sub_269903BDC();
    v8 = ~(-1 << *(a2 + 32));
    do
    {
      v9 = v7 & v8;
      v10 = (1 << (v7 & v8)) & *(a2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
      v11 = v10 != 0;
      if (!v10)
      {
        break;
      }

      v12 = *(*(a2 + 48) + 8 * v9);
      v13 = sub_269903BEC();

      v7 = v9 + 1;
    }

    while ((v13 & 1) == 0);
    return v11;
  }
}

void sub_2698DC11C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  v4 = OUTLINED_FUNCTION_0_4();
  [a1 encodeInteger:v3 forKey:v4];
}

id sub_2698DC1EC(void *a1)
{
  v3 = OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus;
  *&v1[OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus] = 0;
  v4 = OUTLINED_FUNCTION_0_4();
  v5 = [a1 decodeIntegerForKey_];

  v6 = CapabilitySupportStatus.init(rawValue:)(v5);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *&v1[v3] = v8;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BooleanCapabilityPrimitive();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

char *sub_2698DC330(double a1)
{
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ContinuousNumericCapabilityPrimitive();
  result = objc_msgSendSuper2(&v4, sel_init);
  *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value] = a1;
  return result;
}

void sub_2698DC38C(double a1, double a2)
{
  if (a1 > a2)
  {
    __break(1u);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CapabilityDescription());

    CapabilityDescription.init(key:valueRange:)();
  }
}

BOOL sub_2698DC404(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
  if (*(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 16))
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value);
  return *v2 <= v3 && v3 <= v2[1];
}

void sub_2698DC454(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value);
  v4 = OUTLINED_FUNCTION_1_4();
  [a1 encodeDouble:v4 forKey:v3];
}

id sub_2698DC52C(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value] = 0;
  v4 = OUTLINED_FUNCTION_1_4();
  [a1 decodeDoubleForKey_];
  v6 = v5;

  *&v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ContinuousNumericCapabilityPrimitive();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id sub_2698DC63C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2698DC698()
{
  result = qword_28131C3F0;
  if (!qword_28131C3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131C3F0);
  }

  return result;
}

uint64_t sub_2698DC6DC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2698DC724(uint64_t a1)
{
  if (sub_2698CEAE8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
    v2 = sub_269903D2C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_2698D2A38(a1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_2698F72FC(v3, v18 == 0, a1);
      result = v18 ? MEMORY[0x26D6482B0](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_269903BDC();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_2698DC698();
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_269903BEC();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return sub_2699038FC();
}

uint64_t static DeviceUnit.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_46();
  byte_28033E570 = a1;
  return result;
}

uint64_t sub_2698DCA08@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28033E570;
  return result;
}

uint64_t sub_2698DCA54(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28033E570 = v1;
  return result;
}

id sub_2698DCAF8(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_2699038FC();
  OUTLINED_FUNCTION_35();

  return a1;
}

id sub_2698DCCC0(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_2699038FC();
    OUTLINED_FUNCTION_35();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

id DeviceUnit.init(identifier:assistantId:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_identifier];
  *v7 = a1;
  v7[1] = a2;
  v8 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_assistantId];
  *v8 = a3;
  v8[1] = a4;
  if (a5)
  {
    type metadata accessor for MutableDeviceUnit();
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 57) = 0u;
    *(v9 + 80) = 0;
    *(v9 + 88) = 0;
    a5();
    v10 = *(v9 + 24);
    v11 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_name];
    *v11 = *(v9 + 16);
    v11[1] = v10;
    v12 = *(v9 + 40);
    v13 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_roomName];
    *v13 = *(v9 + 32);
    v13[1] = v12;
    v14 = *(v9 + 56);
    *&v5[OBJC_IVAR___SVDDeviceUnitSwift_proximity] = *(v9 + 48);
    v15 = *(v9 + 64);
    v16 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier];
    *v16 = v14;
    v16[1] = v15;
    v5[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice] = *(v9 + 72);
    v18 = *(v9 + 80);
    v17 = *(v9 + 88);

    v19 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier];
    *v19 = v18;
    v19[1] = v17;
  }

  else
  {
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_name);
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_roomName);
    *&v5[OBJC_IVAR___SVDDeviceUnitSwift_proximity] = 0;
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);
    v5[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice] = 0;
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
  }

  v23.receiver = v5;
  v23.super_class = type metadata accessor for DeviceUnit();
  v20 = objc_msgSendSuper2(&v23, sel_init);
  v21 = OUTLINED_FUNCTION_12_0();
  sub_2698D3034(v21);
  return v20;
}

id DeviceUnit.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return DeviceUnit.init(coder:)(v2);
}

id DeviceUnit.init(coder:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  *(OUTLINED_FUNCTION_26() + 16) = xmmword_269905F20;
  v4 = sub_2698DEE50();
  OUTLINED_FUNCTION_23_0(v4);
  sub_269903BCC();

  if (v114)
  {
    if (OUTLINED_FUNCTION_7_0())
    {
      v5 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_10_0(v5, v6, v7, v8, v9, v10, v11, v12, v70, v75, v80, v85, v90, v95, v100, v105, v13);
      OUTLINED_FUNCTION_20_0();
      sub_269903BCC();

      if (OUTLINED_FUNCTION_7_0())
      {
        v14 = v112;
        v15 = OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_10_0(v15, v16, v17, v18, v19, v20, v21, v22, v71, v76, v81, v86, v91, v96, v101, v106, v23);
        sub_269903BCC();

        if (OUTLINED_FUNCTION_7_0())
        {
          v24 = v112;
          v25 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_10_0(v25, v26, v27, v28, v29, v30, v31, v32, v72, v77, v82, v87, v92, v111, v111, v107, v33);
          OUTLINED_FUNCTION_33();
          sub_269903BCC();

          if (OUTLINED_FUNCTION_7_0())
          {
            v34 = v112;
            v35 = OUTLINED_FUNCTION_5_1();
            v36 = [a1 decodeIntegerForKey_];

            v37 = Proximity.init(rawValue:)(v36);
            if ((v38 & 1) == 0)
            {
              v39 = v37;
              v40 = OUTLINED_FUNCTION_19_0();
              OUTLINED_FUNCTION_10_0(v40, v41, v42, v43, v44, v45, v46, v47, v73, v78, v83, v111, v111, v97, v102, v112, v48);
              sub_269903BCC();

              if (OUTLINED_FUNCTION_7_0())
              {
                v51 = OUTLINED_FUNCTION_19_0();
                OUTLINED_FUNCTION_10_0(v51, v52, v53, v54, v55, v56, v57, v58, v74, v111, v112, v88, v93, v98, v103, v108, v59);
                sub_269903BCC();

                if (OUTLINED_FUNCTION_7_0())
                {
                  v60 = v111;
                  v61 = v112;
                  v62 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_identifier];
                  *v62 = v94;
                  v62[1] = v34;
                  v63 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_assistantId];
                  *v63 = v104;
                  v63[1] = v14;
                  v64 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_name];
                  *v64 = v99;
                  v64[1] = v24;
                  v65 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_roomName];
                  *v65 = v89;
                  v65[1] = v109;
                  *&v2[OBJC_IVAR___SVDDeviceUnitSwift_proximity] = v39;
                  v66 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier];
                  *v66 = v79;
                  v66[1] = v84;
                  v67 = OUTLINED_FUNCTION_42();
                  v68 = [a1 decodeBoolForKey_];

                  v2[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice] = v68;
                  v69 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier];
                  *v69 = v60;
                  v69[1] = v61;
                  v110.receiver = v2;
                  v110.super_class = type metadata accessor for DeviceUnit();
                  v49 = objc_msgSendSuper2(&v110, sel_init);

                  return v49;
                }
              }

              else
              {
              }

              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {

    sub_2698D2394(v113);
  }

LABEL_19:
  type metadata accessor for DeviceUnit();
  OUTLINED_FUNCTION_40();
  swift_deallocPartialClassInstance();
  return 0;
}

id DeviceUnit.__allocating_init(deviceUnitObjC:)(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    v2 = [a1 identifier];
    v3 = sub_26990390C();
    v5 = v4;

    v6 = [a1 assistantId];
    v7 = sub_26990390C();
    v9 = v8;

    *(swift_allocObject() + 16) = a1;
    v10 = objc_allocWithZone(type metadata accessor for DeviceUnit());
    return DeviceUnit.init(identifier:assistantId:builder:)(v3, v5, v7, v9, sub_2698DEE94);
  }

  else
  {

    return 0;
  }
}

id sub_2698DD658(void *a1, void *a2)
{
  sub_2698E0D54(a2, &selRef_name);
  if (v4)
  {
    v5 = sub_2699038FC();

    [a1 setName_];
  }

  sub_2698E0D54(a2, &selRef_roomName);
  if (v6)
  {
    v7 = sub_2699038FC();

    [a1 setRoomName_];
  }

  v8 = Proximity.init(rawValue:)([a2 proximity]);
  if ((v9 & 1) == 0)
  {
    [a1 setProximity_];
  }

  sub_2698E0D54(a2, &selRef_mediaRouteIdentifier);
  if (v10)
  {
    v11 = sub_2699038FC();

    [a1 setMediaRouteIdentifier_];
  }

  sub_2698F8820(a2);
  if (v12)
  {
    v13 = sub_2699038FC();

    [a1 setHomeKitAccessoryIdentifier_];
  }

  v14 = [a2 isCommunalDevice];

  return [a1 setIsCommunalDevice_];
}

void sub_2698DD7D8(void *a1)
{
  v3 = OUTLINED_FUNCTION_48(OBJC_IVAR___SVDDeviceUnitSwift_identifier);
  OUTLINED_FUNCTION_15_0();
  v4 = sub_2699038FC();
  OUTLINED_FUNCTION_4_1();

  v5 = OUTLINED_FUNCTION_48(OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
  v6 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_3_1(v6);

  OUTLINED_FUNCTION_25_0(OBJC_IVAR___SVDDeviceUnitSwift_name);
  if (v8)
  {
    v9 = *v7;
    sub_2699038FC();
  }

  v10 = sub_2699038FC();
  OUTLINED_FUNCTION_3_1(v10);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_25_0(OBJC_IVAR___SVDDeviceUnitSwift_roomName);
  if (v12)
  {
    v13 = *v11;
    sub_2699038FC();
  }

  v14 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_1(v14);
  swift_unknownObjectRelease();

  v15 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwift_proximity);
  v16 = OUTLINED_FUNCTION_5_1();
  [a1 encodeInteger:v15 forKey:v16];

  OUTLINED_FUNCTION_25_0(OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);
  if (v18)
  {
    v19 = *v17;
    sub_2699038FC();
  }

  v20 = sub_2699038FC();
  OUTLINED_FUNCTION_3_1(v20);
  swift_unknownObjectRelease();

  v21 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice);
  v22 = OUTLINED_FUNCTION_42();
  [a1 encodeBool:v21 forKey:v22];

  OUTLINED_FUNCTION_25_0(OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
  if (v24)
  {
    v25 = *v23;
    v26 = sub_2699038FC();
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_2699038FC();
  [a1 encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();
}

uint64_t sub_2698DDAE4()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for DeviceUnit();
  v2 = objc_msgSendSuper2(&v14, sel_description);
  v3 = sub_26990390C();

  sub_269903D4C();
  MEMORY[0x26D647ED0](0x6669746E65646928, 0xEC0000003A726569);
  OUTLINED_FUNCTION_47(&v1[OBJC_IVAR___SVDDeviceUnitSwift_identifier]);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_name);

  OUTLINED_FUNCTION_31();

  v4 = OUTLINED_FUNCTION_36();
  MEMORY[0x26D647ED0](v4, 0xEB000000003A656DLL);
  OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_roomName);

  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_47(&v1[OBJC_IVAR___SVDDeviceUnitSwift_assistantId]);
  OUTLINED_FUNCTION_21_0();
  v5 = Proximity.description.getter(*&v1[OBJC_IVAR___SVDDeviceUnitSwift_proximity]);
  MEMORY[0x26D647ED0](v5);

  MEMORY[0x26D647ED0](0x52616964656D202CLL, 0xEF3A64496574756FLL);
  OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);

  OUTLINED_FUNCTION_31();

  MEMORY[0x26D647ED0](0xD000000000000013, 0x80000002699085D0);
  if (v1[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice])
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice])
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D647ED0](v6, v7);

  MEMORY[0x26D647ED0](0x694B656D6F68202CLL, 0xEC0000003A644974);
  v9 = OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v8)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = v9;
  }

  MEMORY[0x26D647ED0](v11, v12);

  MEMORY[0x26D647ED0](41, 0xE100000000000000);

  MEMORY[0x26D647ED0](0, 0xE000000000000000);

  return v3;
}

uint64_t sub_2698DDD94(uint64_t a1)
{
  sub_2698DBA78(a1, v10);
  if (!v11)
  {
    sub_2698D2394(v10);
    goto LABEL_14;
  }

  type metadata accessor for DeviceUnit();
  if ((OUTLINED_FUNCTION_41() & 1) == 0)
  {
LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_269903FAC() & 1) == 0)
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR___SVDDeviceUnitSwift_identifier);
  if (v3 && v4 == v5)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_269903FAC();
  }

  return v7 & 1;
}

uint64_t sub_2698DDEA4()
{
  sub_26990409C();
  v1 = *(v0 + OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
  v2 = *(v0 + OBJC_IVAR___SVDDeviceUnitSwift_assistantId + 8);
  sub_26990394C();
  return sub_26990407C();
}

id DeviceUnit.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2698DDF64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_269903FAC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
    if (v6 || (sub_269903FAC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_269903FAC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
        if (v8 || (sub_269903FAC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079;
          if (v9 || (sub_269903FAC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000269908700 == a2;
            if (v10 || (sub_269903FAC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000002699085B0 == a2;
              if (v11 || (sub_269903FAC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001ALL && 0x8000000269908720 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_269903FAC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2698DE210(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0x74696D69786F7270;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2698DE31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2698DDF64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2698DE364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2698DE1FC();
  *a1 = result;
  return result;
}

uint64_t sub_2698DE38C(uint64_t a1)
{
  v2 = sub_2698E04D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698DE3C8(uint64_t a1)
{
  v2 = sub_2698E04D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2698DE4AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E5C0, &qword_269906910);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2698E04D0();
  OUTLINED_FUNCTION_43(&type metadata for DeviceUnit.CodingKeys, v15, v14);
  OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_identifier);
  LOBYTE(v19) = 0;
  OUTLINED_FUNCTION_14_0();
  sub_269903F6C();
  if (!v2)
  {
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
    OUTLINED_FUNCTION_2_2(1);
    sub_269903F6C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_name);
    OUTLINED_FUNCTION_2_2(2);
    sub_269903F5C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_roomName);
    OUTLINED_FUNCTION_2_2(3);
    sub_269903F5C();
    v19 = *(v3 + OBJC_IVAR___SVDDeviceUnitSwift_proximity);
    v18[7] = 4;
    sub_2698E0524();
    sub_269903F8C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);
    OUTLINED_FUNCTION_2_2(5);
    sub_269903F5C();
    v16 = *(v3 + OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice);
    LOBYTE(v19) = 6;
    sub_269903F7C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
    OUTLINED_FUNCTION_2_2(7);
    sub_269903F5C();
  }

  return (*(v7 + 8))(v12, v5);
}

id DeviceUnit.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E5D8, &qword_269906918);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2698E04D0();
  sub_2699040AC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for DeviceUnit();
    OUTLINED_FUNCTION_40();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_34();
    v10 = sub_269903F2C();
    OUTLINED_FUNCTION_17_0(v10, v12, OBJC_IVAR___SVDDeviceUnitSwift_identifier);
    OUTLINED_FUNCTION_0_5(1);
    v13 = sub_269903F2C();
    OUTLINED_FUNCTION_17_0(v13, v14, OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
    OUTLINED_FUNCTION_0_5(2);
    v15 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v15, v16, OBJC_IVAR___SVDDeviceUnitSwift_name);
    OUTLINED_FUNCTION_0_5(3);
    v17 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v17, v18, OBJC_IVAR___SVDDeviceUnitSwift_roomName);
    v26 = 4;
    sub_2698E0578();
    OUTLINED_FUNCTION_29();
    sub_269903F4C();
    *&v1[OBJC_IVAR___SVDDeviceUnitSwift_proximity] = v27;
    OUTLINED_FUNCTION_0_5(5);
    v19 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v19, v20, OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);
    OUTLINED_FUNCTION_0_5(6);
    v1[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice] = sub_269903F3C() & 1;
    OUTLINED_FUNCTION_0_5(7);
    v21 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v21, v22, OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
    v25.receiver = v1;
    v25.super_class = type metadata accessor for DeviceUnit();
    v3 = objc_msgSendSuper2(&v25, sel_init);
    v23 = OUTLINED_FUNCTION_1_5();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_2698DEB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = DeviceUnit.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2698DEE50()
{
  result = qword_28131C820;
  if (!qword_28131C820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131C820);
  }

  return result;
}

void *sub_2698DEE9C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  return v0;
}

uint64_t sub_2698DEED4()
{
  v0 = sub_2698DEE9C();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t static SVDDeviceUnit.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_46();
  byte_28033E571 = a1;
  return result;
}

uint64_t sub_2698DEFF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28033E571;
  return result;
}

uint64_t sub_2698DF03C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28033E571 = v1;
  return result;
}

id SVDDeviceUnit.init(identifier:assistantId:name:roomName:proximity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name];
  *v12 = a5;
  *(v12 + 1) = a6;
  v13 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName];
  *v13 = a7;
  *(v13 + 1) = a8;
  *&v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity] = a9;
  v15.receiver = v9;
  v15.super_class = type metadata accessor for SVDDeviceUnit();
  return objc_msgSendSuper2(&v15, sel_init);
}

id SVDDeviceUnit.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return SVDDeviceUnit.init(coder:)(v2);
}

id SVDDeviceUnit.init(coder:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  *(OUTLINED_FUNCTION_26() + 16) = xmmword_269905F20;
  v4 = sub_2698DEE50();
  OUTLINED_FUNCTION_23_0(v4);
  sub_269903BCC();

  if (!v58)
  {

LABEL_6:
    sub_2698D2394(v57);
LABEL_23:
    type metadata accessor for SVDDeviceUnit();
    OUTLINED_FUNCTION_40();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((OUTLINED_FUNCTION_13_0() & 1) == 0)
  {

    goto LABEL_23;
  }

  v5 = v56;
  v6 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_27(v6, v7, v8, v9, v10, v11, v12, v13, v47, v50, v14);
  OUTLINED_FUNCTION_20_0();
  sub_269903BCC();

  if (!OUTLINED_FUNCTION_13_0())
  {

LABEL_22:

    goto LABEL_23;
  }

  v16 = v55;
  v15 = v56;
  v17 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_27(v17, v18, v19, v20, v21, v22, v23, v24, v48, v51, v25);
  sub_269903BCC();

  if (!v58)
  {

    goto LABEL_6;
  }

  if ((OUTLINED_FUNCTION_13_0() & 1) == 0)
  {

LABEL_21:

    goto LABEL_22;
  }

  v26 = v56;
  v27 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_27(v27, v28, v29, v30, v31, v32, v33, v34, v49, v55, v35);
  OUTLINED_FUNCTION_33();
  sub_269903BCC();

  if (v58)
  {
    if (!OUTLINED_FUNCTION_13_0())
    {

      goto LABEL_21;
    }

    v36 = v56;
    v53 = v55;
  }

  else
  {
    sub_2698D2394(v57);
    v53 = 0;
    v36 = 0;
  }

  v37 = OUTLINED_FUNCTION_5_1();
  v38 = [a1 decodeIntegerForKey_];

  v39 = SVDProximity.init(rawValue:)(v38);
  if (v40)
  {

    goto LABEL_21;
  }

  v41 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier];
  *v41 = v55;
  *(v41 + 1) = v5;
  v42 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId];
  *v42 = v16;
  v42[1] = v15;
  v43 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name];
  *v43 = v52;
  *(v43 + 1) = v26;
  v44 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName];
  *v44 = v53;
  v44[1] = v36;
  *&v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity] = v39;
  v54.receiver = v2;
  v54.super_class = type metadata accessor for SVDDeviceUnit();
  v45 = objc_msgSendSuper2(&v54, sel_init);

  return v45;
}

void sub_2698DF5BC(void *a1)
{
  v3 = OUTLINED_FUNCTION_48(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier);
  OUTLINED_FUNCTION_15_0();
  v4 = sub_2699038FC();
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_25_0(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
  if (v6)
  {
    v7 = *v5;
    sub_2699038FC();
  }

  v8 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_3_1(v8);
  swift_unknownObjectRelease();

  v9 = OUTLINED_FUNCTION_48(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name);
  v10 = sub_2699038FC();
  OUTLINED_FUNCTION_3_1(v10);

  OUTLINED_FUNCTION_25_0(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName);
  if (v12)
  {
    v13 = *v11;
    sub_2699038FC();
  }

  v14 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_1(v14);
  swift_unknownObjectRelease();

  v15 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity);
  v16 = OUTLINED_FUNCTION_5_1();
  [a1 encodeInteger:v15 forKey:v16];
}

uint64_t sub_2698DF76C()
{
  sub_269903D4C();
  v1 = OUTLINED_FUNCTION_15_0();
  MEMORY[0x26D647ED0](v1, 0xEB000000003A7265);
  OUTLINED_FUNCTION_47((v0 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier));
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_47((v0 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name));
  v2 = OUTLINED_FUNCTION_36();
  MEMORY[0x26D647ED0](v2, 0xEB000000003A656DLL);
  v3 = OUTLINED_FUNCTION_38(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName);
  if (v4)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x26D647ED0](0xEB000000003A656DLL, v5);

  OUTLINED_FUNCTION_18_0();
  v6 = OUTLINED_FUNCTION_38(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
  if (v4)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x26D647ED0](0xEB000000003A656DLL, v7);

  OUTLINED_FUNCTION_21_0();
  v8 = SVDProximity.description.getter(*(v0 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity));
  MEMORY[0x26D647ED0](v8);

  return 0;
}

uint64_t sub_2698DF898(uint64_t a1)
{
  sub_2698DBA78(a1, v11);
  if (!v12)
  {
    sub_2698D2394(v11);
    goto LABEL_18;
  }

  type metadata accessor for SVDDeviceUnit();
  if ((OUTLINED_FUNCTION_41() & 1) == 0)
  {
LABEL_18:
    v8 = 0;
    return v8 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId + 8);
  v3 = *&v10[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId + 8];
  if (v2)
  {
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId) == *&v10[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId] && v2 == v3;
      if (v4 || (sub_269903FAC() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_17;
  }

  if (v3)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_10:
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier);
  if (v4 && v5 == v6)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_269903FAC();
  }

  return v8 & 1;
}

uint64_t sub_2698DF998(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_269903C3C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_2698D2394(v10);
  return v8 & 1;
}

uint64_t sub_2698DFA54()
{
  sub_26990409C();
  if (*(v0 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId + 8))
  {
    v1 = *(v0 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
    sub_26990406C();
    sub_26990394C();
  }

  else
  {
    sub_26990406C();
  }

  return sub_26990407C();
}

uint64_t sub_2698DFB14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_269903FAC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
    if (v6 || (sub_269903FAC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_269903FAC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
        if (v8 || (sub_269903FAC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079)
        {

          return 4;
        }

        else
        {
          v10 = sub_269903FAC();

          if (v10)
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

uint64_t sub_2698DFCD0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0x74696D69786F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2698DFD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2698DFB14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2698DFDA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2698DFCC8();
  *a1 = result;
  return result;
}

uint64_t sub_2698DFDCC(uint64_t a1)
{
  v2 = sub_2698E05F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698DFE08(uint64_t a1)
{
  v2 = sub_2698E05F0();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2698DFE5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2698DFF04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E610, &qword_269906920);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2698E05F0();
  OUTLINED_FUNCTION_43(&type metadata for SVDDeviceUnit.CodingKeys, v15, v14);
  OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier);
  v22 = 0;
  OUTLINED_FUNCTION_14_0();
  sub_269903F6C();
  if (!v2)
  {
    OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
    v21 = 1;
    OUTLINED_FUNCTION_14_0();
    sub_269903F5C();
    OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name);
    v20 = 2;
    OUTLINED_FUNCTION_14_0();
    sub_269903F6C();
    OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName);
    v19 = 3;
    OUTLINED_FUNCTION_14_0();
    sub_269903F5C();
    v18 = *(v3 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity);
    v17[15] = 4;
    sub_2698E0644();
    sub_269903F8C();
  }

  return (*(v7 + 8))(v12, v5);
}

id SVDDeviceUnit.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E628, &qword_269906928);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2698E05F0();
  sub_2699040AC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SVDDeviceUnit();
    OUTLINED_FUNCTION_40();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_34();
    v10 = sub_269903F2C();
    v12 = &v1[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier];
    *v12 = v10;
    v12[1] = v13;
    OUTLINED_FUNCTION_0_5(1);
    v14 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v14, v15, OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
    OUTLINED_FUNCTION_0_5(2);
    v16 = sub_269903F2C();
    OUTLINED_FUNCTION_17_0(v16, v17, OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name);
    OUTLINED_FUNCTION_0_5(3);
    v18 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v18, v19, OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName);
    v23 = 4;
    sub_2698E0698();
    OUTLINED_FUNCTION_29();
    sub_269903F4C();
    *&v1[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity] = v24;
    v22.receiver = v1;
    v22.super_class = type metadata accessor for SVDDeviceUnit();
    v3 = objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_1_5();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_2698E043C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = SVDDeviceUnit.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2698E04D0()
{
  result = qword_28033E5C8;
  if (!qword_28033E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E5C8);
  }

  return result;
}

unint64_t sub_2698E0524()
{
  result = qword_28033E5D0;
  if (!qword_28033E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E5D0);
  }

  return result;
}

unint64_t sub_2698E0578()
{
  result = qword_28033E5E0;
  if (!qword_28033E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E5E0);
  }

  return result;
}

unint64_t sub_2698E05F0()
{
  result = qword_28033E618;
  if (!qword_28033E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E618);
  }

  return result;
}

unint64_t sub_2698E0644()
{
  result = qword_28033E620;
  if (!qword_28033E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E620);
  }

  return result;
}

unint64_t sub_2698E0698()
{
  result = qword_28033E630;
  if (!qword_28033E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E630);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SVDDeviceUnit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SVDDeviceUnit.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DeviceUnit.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2698E0B34()
{
  result = qword_28033E640;
  if (!qword_28033E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E640);
  }

  return result;
}

unint64_t sub_2698E0B8C()
{
  result = qword_28033E648;
  if (!qword_28033E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E648);
  }

  return result;
}

unint64_t sub_2698E0BE4()
{
  result = qword_28033E650;
  if (!qword_28033E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E650);
  }

  return result;
}

unint64_t sub_2698E0C3C()
{
  result = qword_28033E658;
  if (!qword_28033E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E658);
  }

  return result;
}

unint64_t sub_2698E0C94()
{
  result = qword_28033E660;
  if (!qword_28033E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E660);
  }

  return result;
}

unint64_t sub_2698E0CEC()
{
  result = qword_28033E668;
  if (!qword_28033E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E668);
  }

  return result;
}

uint64_t sub_2698E0D54(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_26990390C();
  }

  return OUTLINED_FUNCTION_12_0();
}

id OUTLINED_FUNCTION_3_1(uint64_t a1)
{

  return [v1 (v3 + 3842)];
}

id OUTLINED_FUNCTION_4_1()
{

  return [v0 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_0@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(v1 + a1 + 8);
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

__n128 OUTLINED_FUNCTION_10_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  a1[1] = a17;
  a1[2].n128_u64[0] = v17;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  return v2[1];
}

uint64_t OUTLINED_FUNCTION_17_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_27(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  a1[2].n128_u64[0] = v11;
  return result;
}

void OUTLINED_FUNCTION_28()
{

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_2699038FC();
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x26D647ED0);
}

void OUTLINED_FUNCTION_32(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_37@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_38@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = v2[1];
  if (result)
  {
    v4 = *v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FE508](a1, a1, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_47(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_48@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_2699038FC();
}

uint64_t static ObjCCompatibility.capabilities(from:)(uint64_t a1)
{
  v2 = sub_2699037FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2698D2A38(a1);
  if (!v7)
  {
    v44 = MEMORY[0x277D84F98];
LABEL_32:
    v39 = sub_2698D0604(v44);

    type metadata accessor for Capabilities();
    result = swift_allocObject();
    *(result + 16) = v39;
    return result;
  }

  v9 = v7;
  if (v7 < 1)
  {
    goto LABEL_35;
  }

  v10 = 0;
  v50 = a1 & 0xC000000000000001;
  v51 = sel__swiftBacking;
  v48 = (v3 + 16);
  v44 = MEMORY[0x277D84F98];
  v47 = (v3 + 8);
  *&v8 = 138412290;
  v43 = v8;
  v45 = v7;
  v46 = v2;
  v42 = a1;
  while (1)
  {
    if (v50)
    {
      v11 = MEMORY[0x26D6482B0](v10, a1);
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    if (![v11 respondsToSelector_])
    {
      if (qword_28131C480 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v2, qword_28131C988);
      (*v48)(v6, v17, v2);
      v18 = v12;
      v19 = sub_2699037EC();
      v20 = sub_269903B0C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = v43;
        *(v21 + 4) = v18;
        *v22 = v18;
        v23 = v18;
        _os_log_impl(&dword_2698CD000, v19, v20, "#hal Unable to convert svdCapability into capability: %@", v21, 0xCu);
        sub_2698E175C(v22);
        v24 = v22;
        v9 = v45;
        MEMORY[0x26D648C80](v24, -1, -1);
        v25 = v21;
        v2 = v46;
        MEMORY[0x26D648C80](v25, -1, -1);
      }

      else
      {
        v23 = v19;
        v19 = v18;
      }

      (*v47)(v6, v2);
      goto LABEL_29;
    }

    v13 = [v12 _swiftBacking];
    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E268, &qword_269905FF8);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_29:
    if (v9 == ++v10)
    {
      goto LABEL_32;
    }
  }

  v49 = v52;
  ObjectType = swift_getObjectType();
  v15._countAndFlagsBits = (*(*(&v49 + 1) + 32))(ObjectType);
  CapabilityKey.init(rawValue:)(v15);
  v16 = v53;
  if (v53 == 12)
  {

    goto LABEL_25;
  }

  swift_unknownObjectRetain();
  v26 = v44;
  swift_isUniquelyReferenced_nonNull_native();
  v53 = v26;
  v27 = sub_2698D2184(v16);
  if (!__OFADD__(*(v26 + 16), (v28 & 1) == 0))
  {
    v29 = v27;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E670, &unk_269906CA0);
    if (sub_269903DEC())
    {
      v31 = sub_2698D2184(v16);
      v9 = v45;
      v2 = v46;
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_36;
      }

      v29 = v31;
    }

    else
    {
      v9 = v45;
      v2 = v46;
    }

    v33 = v53;
    v44 = v53;
    if ((v30 & 1) == 0)
    {
      *(v53 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v33[6] + v29) = v16;
      *(v33[7] + 16 * v29) = v49;
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_34;
      }

      v33[2] = v38;
      swift_unknownObjectRelease();

      goto LABEL_28;
    }

    v34 = *(v53 + 56);
    v35 = *(v34 + 16 * v29);
    *(v34 + 16 * v29) = v49;
    swift_unknownObjectRelease();

LABEL_25:
    swift_unknownObjectRelease();
LABEL_28:
    a1 = v42;
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

uint64_t sub_2698E175C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E530, &unk_269906C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ObjCCompatibility(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ObjCCompatibility(_BYTE *result, int a2, int a3)
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

uint64_t SVDProximity.init(rawValue:)(uint64_t result)
{
  if (result == 4000)
  {
    v1 = 4000;
  }

  else
  {
    v1 = 0;
  }

  if (result == 3000)
  {
    v1 = 3000;
  }

  if (result == 2000)
  {
    v1 = 2000;
  }

  if (result == 1000)
  {
    v1 = 1000;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2698E1A04(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 4000:
      return 0x7972616D697270;
    case 2000:
      return 1918985582;
    case 3000:
      return 0x74616964656D6D69;
    case 1000:
      return 7496038;
  }

  result = sub_269903FCC();
  __break(1u);
  return result;
}

unint64_t sub_2698E1AE0()
{
  result = qword_28033E678;
  if (!qword_28033E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E678);
  }

  return result;
}

unint64_t sub_2698E1B68()
{
  result = qword_28033E690;
  if (!qword_28033E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E690);
  }

  return result;
}

uint64_t sub_2698E1BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2698E1D28()
{
  result = qword_28033E6A8;
  if (!qword_28033E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E6A8);
  }

  return result;
}

unint64_t sub_2698E1D7C()
{
  result = qword_28033E6B0;
  if (!qword_28033E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E6B0);
  }

  return result;
}

uint64_t sub_2698E1E2C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698E1EF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698E1F54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698E1EF4(v2, v3);
}

id AlarmTimerIntentsHandlingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_6(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000032;
  *(inited + 40) = 0x8000000269908900;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A68(6, v8);

  return v6;
}

uint64_t sub_2698E2210()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000032, 0x8000000269908900, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698E232C(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_6();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_6();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_6();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *AlarmTimerIntentsHandlingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_6(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16C0(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AlarmTimerIntentsHandlingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlarmTimerIntentsHandlingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmTimerIntentsHandlingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_6@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AlarmTimerIntentsHandlingCapability();
}

uint64_t sub_2698E2AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E2B78;

  return DeviceResolutionProviding.pairedCompanionDevice()();
}

uint64_t sub_2698E2B78(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2698E2CE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.meDevice()();
}

uint64_t sub_2698E2DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.devicesMatching(capabilityDescriptions:)();
}

uint64_t sub_2698E2EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.devices(matchingAny:)();
}

uint64_t sub_2698E2FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.devicesWithProximity(closerBound:fartherBound:)();
}

uint64_t sub_2698E30D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.sourceDevices(for:)();
}

uint64_t sub_2698E32C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.homeAutomationAccessories(matchingAny:checkForReachability:)();
}

uint64_t dispatch thunk of DeviceResolutionProviding.pairedCompanionDevice()()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_4_2();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_5_2(v9);

  return v12(v3, v1);
}

uint64_t sub_2698E3530(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DeviceResolutionProviding.meDevice()()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_4_2();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_5_2(v9);

  return v12(v3, v1);
}

uint64_t dispatch thunk of DeviceResolutionProviding.devicesMatching(capabilityDescriptions:)()
{
  OUTLINED_FUNCTION_9_1();
  v3 = *(OUTLINED_FUNCTION_3_2(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_8_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_3(v8);

  return v11(v10);
}

uint64_t dispatch thunk of DeviceResolutionProviding.devices(matchingAny:)()
{
  OUTLINED_FUNCTION_9_1();
  v3 = *(OUTLINED_FUNCTION_3_2(v0, v1, v2) + 48);
  OUTLINED_FUNCTION_8_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_3(v8);

  return v11(v10);
}

uint64_t dispatch thunk of DeviceResolutionProviding.devicesWithProximity(closerBound:fartherBound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 56);
  OUTLINED_FUNCTION_4_2();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_5_2(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DeviceResolutionProviding.sourceDevices(for:)()
{
  OUTLINED_FUNCTION_9_1();
  v3 = *(OUTLINED_FUNCTION_3_2(v0, v1, v2) + 64);
  OUTLINED_FUNCTION_8_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_3(v8);

  return v11(v10);
}

uint64_t dispatch thunk of DeviceResolutionProviding.homeAutomationAccessories(matchingAny:checkForReachability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 96);
  OUTLINED_FUNCTION_4_2();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_5_2(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  return MEMORY[0x2821FD720](a1, 11, 2, 0xD00000000000002DLL, a3 | 0x8000000000000000, a2, 59, 2);
}

id CapabilityDescription.__allocating_init(key:valueRange:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_8());
  OUTLINED_FUNCTION_2_4();
  return CapabilityDescription.init(key:valueRange:)();
}

uint64_t CapabilityDescription.key.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);
  v2 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8);

  return v1;
}

uint64_t CapabilityDescription.valueRange.getter()
{
  result = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
  v2 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 8);
  v3 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 16);
  return result;
}

uint64_t CapabilityDescription.capabilityKey.getter()
{
  v5 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);
  v6 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8);
  sub_2698E42D4();
  v1 = sub_269903C1C();
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id CapabilityDescription.valueRangeLowerBound.getter()
{
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
  if (v1)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }
}

id CapabilityDescription.valueRangeUpperBound.getter()
{
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
  if (v1)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }
}

id CapabilityDescription.init(key:valueSet:)()
{
  OUTLINED_FUNCTION_6_2();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
  *v5 = v3;
  *(v5 + 1) = v2;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet] = v0;
  v6 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id CapabilityDescription.init(key:valueRange:)()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
  *v6 = v2;
  *(v6 + 1) = v0;
  v7 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
  *v7 = v4;
  *(v7 + 1) = v3;
  v7[16] = 0;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_2698E42D4()
{
  result = qword_28131C470;
  if (!qword_28131C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131C470);
  }

  return result;
}

void CapabilityDescription.__allocating_init(key:lowerbound:upperbound:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_8());
  v1 = OUTLINED_FUNCTION_2_4();
  CapabilityDescription.init(key:lowerbound:upperbound:)(v1, v2);
}

void CapabilityDescription.init(key:lowerbound:upperbound:)(double a1, double a2)
{
  if (a1 > a2)
  {
    __break(1u);
  }

  else
  {
    v2 = objc_allocWithZone(swift_getObjectType());
    CapabilityDescription.init(key:valueRange:)();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }
}

uint64_t static CapabilityDescription.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_28033E6D0 = a1;
  return result;
}

uint64_t sub_2698E455C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28033E6D0;
  return result;
}

uint64_t sub_2698E45A8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28033E6D0 = v1;
  return result;
}

Swift::Void __swiftcall CapabilityDescription.encode(with:)(NSCoder with)
{
  v2 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);
  v3 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8);
  v4 = sub_2699038FC();
  v5 = sub_2699038FC();
  v6 = OUTLINED_FUNCTION_5_3();
  [v6 v7];

  v8 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet);
  if (v8)
  {
    sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
    sub_2698E47B8();
    v8 = sub_269903A9C();
  }

  v9 = sub_2699038FC();
  v10 = OUTLINED_FUNCTION_5_3();
  [v10 v11];

  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
  if ((v13 & 1) == 0)
  {
    v14 = v12[1];
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v16 = OUTLINED_FUNCTION_7_2();
    v17 = OUTLINED_FUNCTION_5_3();
    [v17 v18];

    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v22 = OUTLINED_FUNCTION_7_2();
    v20 = OUTLINED_FUNCTION_5_3();
    [v20 v21];
  }
}

unint64_t sub_2698E47B8()
{
  result = qword_28131C400;
  if (!qword_28131C400)
  {
    sub_2698D23FC(255, &qword_28131C3F0, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131C400);
  }

  return result;
}

void CapabilityDescription.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269905F20;
  v6 = sub_2698D23FC(0, &qword_28131C820, 0x277CCACA8);
  *(v5 + 32) = v6;
  sub_269903BCC();

  if (!v57)
  {

    sub_2698D2394(v56);
LABEL_8:
    swift_deallocPartialClassInstance();
    return;
  }

  OUTLINED_FUNCTION_1_8(v7, v8, v9, MEMORY[0x277D837D0], v10, v11, v12, v13, 1, 2, v53.receiver, v53.super_class, v54);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  v14 = v55;
  v15 = &v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
  *v15 = v54;
  *(v15 + 1) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2699070F0;
  *(v16 + 32) = v6;
  v17 = sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_2698D23FC(0, &unk_28131C418, 0x277CBEB98);
  sub_269903BCC();

  if (v57)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E6F0, &qword_269907100);
    OUTLINED_FUNCTION_1_8(v18, v19, v20, v18, v21, v22, v23, v24, v52, *(&v52 + 1), v53.receiver, v53.super_class, v54);
    if (swift_dynamicCast())
    {
      v25 = v54;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2698D2394(v56);
  }

  v25 = 0;
LABEL_11:
  *&v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet] = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v52;
  *(v26 + 32) = v17;
  OUTLINED_FUNCTION_4_3();

  if (v57)
  {
    OUTLINED_FUNCTION_1_8(v27, v28, v29, v30, v31, v32, v33, v34, v52, *(&v52 + 1), v53.receiver, v53.super_class, v54);
    if (!swift_dynamicCast())
    {
LABEL_25:
      v51 = &v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
      *v51 = 0;
      *(v51 + 1) = 0;
      v51[16] = 1;
      goto LABEL_26;
    }

    v35 = v54;
  }

  else
  {
    sub_2698D2394(v56);
    v35 = 0;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v52;
  *(v36 + 32) = v17;
  OUTLINED_FUNCTION_4_3();

  if (!v57)
  {
    sub_2698D2394(v56);
    if (v35)
    {
      goto LABEL_22;
    }

    v45 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_8(v37, v38, v39, v40, v41, v42, v43, v44, v52, *(&v52 + 1), v53.receiver, v53.super_class, v54);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    goto LABEL_25;
  }

  v45 = v54;
  if (!v35)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (!v54)
  {
    goto LABEL_22;
  }

  [v35 doubleValue];
  v47 = v46;
  [v54 doubleValue];
  v49 = v48;

  if (v47 <= v49)
  {
    v50 = &v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
    *v50 = v47;
    v50[1] = v49;
    *(v50 + 16) = 0;
LABEL_26:
    v53.receiver = v2;
    v53.super_class = ObjectType;
    objc_msgSendSuper2(&v53, sel_init);

    return;
  }

  __break(1u);
}