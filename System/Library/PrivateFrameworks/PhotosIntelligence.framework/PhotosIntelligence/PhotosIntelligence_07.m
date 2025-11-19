unint64_t sub_1C6FF6E2C()
{
  result = qword_1EC215C30;
  if (!qword_1EC215C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215C30);
  }

  return result;
}

unint64_t sub_1C6FF6E84()
{
  result = qword_1EC215C38;
  if (!qword_1EC215C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215C38);
  }

  return result;
}

unint64_t sub_1C6FF6EDC()
{
  result = qword_1EC215C40;
  if (!qword_1EC215C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215C40);
  }

  return result;
}

uint64_t sub_1C6FF6F30()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState;
  v2 = type metadata accessor for AppleMusicSubscriptionState();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + 16) = 0;
  *(v0 + 33) = 0;
  return v0;
}

uint64_t sub_1C6FF6F88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001C7599670;
  *(inited + 48) = sub_1C7550C7C();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001C7599690;
  sub_1C6FA7014();
  *(inited + 72) = sub_1C75513BC();
  sub_1C75504DC();
  sub_1C70C0278();
  v2 = v1;

  return v2;
}

uint64_t sub_1C6FF7070()
{
  OUTLINED_FUNCTION_0_14();
  v23 = type metadata accessor for AppleMusicSubscriptionState();
  MEMORY[0x1EEE9AC00](v23);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  if (*(v1 + 32))
  {
    v6 = 0xE700000000000000;
    v22 = v0;
  }

  else
  {
    v7 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E63B0];
    *(v8 + 16) = xmmword_1C755BAB0;
    v10 = MEMORY[0x1E69E6438];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = v7;
    v22 = sub_1C75506BC();
    v6 = v11;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1C755180C();
  v26 = v24;
  v27 = v25;
  MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C7599730);
  if (*(v1 + 16))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v1 + 16))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v12, v13);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C7599760);
  if (*(v1 + 17))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + 17))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v15);

  MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C7599780);
  MEMORY[0x1CCA5CD70](v22, v6);

  MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75997A0);
  v16 = OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState;
  swift_beginAccess();
  sub_1C6FF75B4(v1 + v16, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v23))
  {
    sub_1C6FF754C(v5);
    v17 = 0xE700000000000000;
    OUTLINED_FUNCTION_0_14();
  }

  else
  {
    v18 = v21;
    sub_1C6FF7624(v5, v21);
    sub_1C6FF754C(v5);
    v16 = AppleMusicSubscriptionState.description.getter();
    v17 = v19;
    sub_1C6FF7688(v18);
  }

  MEMORY[0x1CCA5CD70](v16, v17);

  return v26;
}

uint64_t sub_1C6FF736C()
{
  sub_1C6FF754C(v0 + OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MusicStatistics()
{
  result = qword_1EC215C48;
  if (!qword_1EC215C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6FF7424()
{
  sub_1C6FF74D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C6FF74D0()
{
  if (!qword_1EDD0D8A0)
  {
    type metadata accessor for AppleMusicSubscriptionState();
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0D8A0);
    }
  }
}

uint64_t sub_1C6FF754C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6FF75B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6FF7624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicSubscriptionState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6FF7688(uint64_t a1)
{
  v2 = type metadata accessor for AppleMusicSubscriptionState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6FF7714()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7814()
{
  OUTLINED_FUNCTION_456();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_414();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF78DC()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7954()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF79CC()
{
  OUTLINED_FUNCTION_196();
  sub_1C75505AC();
}

uint64_t sub_1C6FF7ABC()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7B44(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_113_0();
      break;
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_56_7();
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF7C54()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF7D14()
{
  OUTLINED_FUNCTION_3_1();
  sub_1C75505AC();
}

uint64_t sub_1C6FF7DA4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_55_2();
      break;
    case 2:
      OUTLINED_FUNCTION_569();
      OUTLINED_FUNCTION_113_0();
      break;
    case 3:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF7E68()
{
  OUTLINED_FUNCTION_459();
  sub_1C75505AC();
}

uint64_t sub_1C6FF7F64()
{
  OUTLINED_FUNCTION_126_2();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_566();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8004(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_564();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF80B8()
{
  OUTLINED_FUNCTION_562();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_113_0();
      break;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_560();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF81B8()
{
  OUTLINED_FUNCTION_167();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_167();
      break;
    case 3:
      OUTLINED_FUNCTION_414();
      break;
    case 6:
    case 8:
      OUTLINED_FUNCTION_445();
      break;
    case 7:
      OUTLINED_FUNCTION_445();
      OUTLINED_FUNCTION_562();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF82F8()
{
  OUTLINED_FUNCTION_456();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_414();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF83E4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 2:
      OUTLINED_FUNCTION_566();
      break;
    case 4:
      OUTLINED_FUNCTION_445();
      break;
    default:
      OUTLINED_FUNCTION_113_0();
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF84C8(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_542();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8560()
{
  OUTLINED_FUNCTION_3_1();
  sub_1C75505AC();
}

uint64_t sub_1C6FF8600(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_56_7();
      break;
    case 3:
      OUTLINED_FUNCTION_113_0();
      break;
    case 5:
    case 6:
    case 7:
    case 8:
      OUTLINED_FUNCTION_372();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8728()
{
  OUTLINED_FUNCTION_459();
  sub_1C75505AC();
}

uint64_t sub_1C6FF87E8()
{
  OUTLINED_FUNCTION_196();
  sub_1C75505AC();
}

uint64_t sub_1C6FF88B0()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8928()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8994()
{
  OUTLINED_FUNCTION_167();
  switch(v0)
  {
    case 8:
      OUTLINED_FUNCTION_44_3();
      goto LABEL_3;
    case 9:
LABEL_3:
      OUTLINED_FUNCTION_532();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF8AAC()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8BC0()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8C6C()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8CC8()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8D30()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF8DF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_108_1();
}

uint64_t sub_1C6FF8E4C()
{
  OUTLINED_FUNCTION_579();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_569();
      OUTLINED_FUNCTION_113_0();
      break;
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_55_2();
      break;
  }

  sub_1C75505AC();
}

void sub_1C6FF8F38()
{
  v0 = ActivityFeatureCode.rawValue.getter();
  sub_1C75513FC();
}

uint64_t sub_1C6FF8F94()
{
  OUTLINED_FUNCTION_167();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_579();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9024(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_542();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF90BC()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9140(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_542();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF91E0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 5:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_524();
      break;
    case 2:
      OUTLINED_FUNCTION_304();
      break;
    case 3:
      OUTLINED_FUNCTION_360();
      break;
    case 4:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF92B4()
{
  OUTLINED_FUNCTION_304();
  switch(v0)
  {
    case 2:
    case 5:
      break;
    case 3:
      OUTLINED_FUNCTION_360();
      break;
    case 4:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_524();
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9384(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF94FC()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9584(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_569();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9650()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF96C4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_437();
      break;
    case 2:
      OUTLINED_FUNCTION_562();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9788()
{
  OUTLINED_FUNCTION_569();
  sub_1C75505AC();
}

uint64_t sub_1C6FF9844()
{
  OUTLINED_FUNCTION_3_1();
  sub_1C75505AC();
}

uint64_t sub_1C6FF98AC()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF993C()
{
  OUTLINED_FUNCTION_126_2();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_269();
      break;
    case 6:
      OUTLINED_FUNCTION_327();
      break;
    case 7:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9A34(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_113_0();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9B1C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_562();
      OUTLINED_FUNCTION_566();
      break;
    case 3:
      OUTLINED_FUNCTION_445();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9BE4()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9C64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_108_1();
}

uint64_t sub_1C6FF9CB4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_566();
      break;
    case 2:
      OUTLINED_FUNCTION_113_0();
      break;
    case 4:
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_196();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9D9C()
{
  OUTLINED_FUNCTION_126_2();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_269();
      break;
    case 5:
      OUTLINED_FUNCTION_327();
      break;
    default:
      break;
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9E80()
{
  sub_1C75505AC();
}

uint64_t sub_1C6FF9F08(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_269();
  }

  sub_1C75505AC();
}

uint64_t sub_1C6FF9F88(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_532();
  }

  sub_1C75505AC();
}

uint64_t ExtendedTokenSource.description.getter()
{
  if (*(v0 + 8))
  {
    return OUTLINED_FUNCTION_30_2();
  }

  OUTLINED_FUNCTION_23_9();
  v2 = PLDebugStringForAmbiguityType();
  sub_1C755068C();
  OUTLINED_FUNCTION_324();

  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);

  OUTLINED_FUNCTION_189();
  return v4;
}

uint64_t static ExtendedTokenSource.~= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return OUTLINED_FUNCTION_10_6();
}

uint64_t static ExtendedTokenSource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_10_6();
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1C6FFA100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_1C6FFA1CC(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_1C6FFA204(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7469756769626D61 && a2 == 0xED00006570795479)
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

uint64_t sub_1C6FFA2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFA100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFA2E0(uint64_t a1)
{
  v2 = sub_1C70181EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFA31C(uint64_t a1)
{
  v2 = sub_1C70181EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFA358(uint64_t a1)
{
  v2 = sub_1C7018240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFA394(uint64_t a1)
{
  v2 = sub_1C7018240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFA3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFA204(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6FFA400(uint64_t a1)
{
  v2 = sub_1C7018294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFA43C(uint64_t a1)
{
  v2 = sub_1C7018294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExtendedTokenSource.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C68);
  OUTLINED_FUNCTION_3_0();
  v18 = v3;
  v19 = v2;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_36();
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C70);
  OUTLINED_FUNCTION_3_0();
  v20 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C78);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_431();
  OUTLINED_FUNCTION_70(v10, v11);
  sub_1C70181EC();
  sub_1C755200C();
  if (v9)
  {
    OUTLINED_FUNCTION_188_0();
    sub_1C7018240();
    OUTLINED_FUNCTION_352();
    sub_1C7551C6C();
    (*(v18 + 8))(v17, v19);
  }

  else
  {
    sub_1C7018294();
    OUTLINED_FUNCTION_352();
    sub_1C7551C6C();
    type metadata accessor for PHSearchAmbiguityType(0);
    OUTLINED_FUNCTION_214();
    sub_1C70259B4(v14, v15);
    sub_1C7551D2C();
    OUTLINED_FUNCTION_429();
    v16(v1, v20);
  }

  v12 = OUTLINED_FUNCTION_35_0();
  v13(v12);
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenSource.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v59 = v3;
  v60 = v1;
  v5 = v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C80);
  OUTLINED_FUNCTION_3_0();
  v55 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C88);
  OUTLINED_FUNCTION_3_0();
  v56 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_390();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C90);
  OUTLINED_FUNCTION_3_0();
  v58 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_391();
  v16 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_70(v16, v17);
  sub_1C70181EC();
  v18 = v60;
  sub_1C7551FFC();
  if (v18)
  {
    goto LABEL_10;
  }

  v53 = v9;
  v54 = v2;
  v60 = v5;
  v52 = v10;
  v19 = v59;
  v20 = sub_1C7551C5C();
  sub_1C6FD80E0(v20, 0);
  v24 = v13;
  if (v22 == v23 >> 1)
  {
    goto LABEL_9;
  }

  v51 = 0;
  if (v22 < (v23 >> 1))
  {
    v25 = *(v21 + v22);
    sub_1C6FD80C8(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    v30 = v57;
    if (v27 == v29 >> 1)
    {
      v31 = v25;
      if (v25)
      {
        OUTLINED_FUNCTION_188_0();
        sub_1C7018240();
        v32 = v53;
        OUTLINED_FUNCTION_352();
        v33 = v51;
        sub_1C7551B4C();
        if (v33)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        (*(v55 + 8))(v32, v30);
        v41 = OUTLINED_FUNCTION_173();
        v42(v41);
        v43 = 0;
      }

      else
      {
        sub_1C7018294();
        OUTLINED_FUNCTION_352();
        v38 = v51;
        sub_1C7551B4C();
        if (v38)
        {
LABEL_13:
          v39 = OUTLINED_FUNCTION_173();
          v40(v39);
          swift_unknownObjectRelease();
          v5 = v60;
          goto LABEL_10;
        }

        LODWORD(v57) = v25;
        type metadata accessor for PHSearchAmbiguityType(0);
        OUTLINED_FUNCTION_214();
        sub_1C70259B4(v44, v45);
        sub_1C7551C1C();
        swift_unknownObjectRelease();
        v46 = OUTLINED_FUNCTION_249();
        v47(v46);
        v48 = OUTLINED_FUNCTION_173();
        v49(v48);
        v43 = v61;
        v31 = v57;
      }

      *v19 = v43;
      *(v19 + 8) = v31;
      __swift_destroy_boxed_opaque_existential_1(v60);
      goto LABEL_11;
    }

    v24 = v13;
LABEL_9:
    v34 = sub_1C75518EC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v36 = &type metadata for ExtendedTokenSource;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_429();
    v37(v0, v24);
    v5 = v60;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_11:
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_125();
    return;
  }

  __break(1u);
}

uint64_t sub_1C6FFACA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F63537465737361 && a2 == 0xEC000000676E6970;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74657373416E6F6ELL && a2 == 0xEF676E69706F6353)
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

uint64_t sub_1C6FFADB8(char a1)
{
  if (!a1)
  {
    return 0x746553746F6ELL;
  }

  if (a1 == 1)
  {
    return 0x6F63537465737361;
  }

  return 0x74657373416E6F6ELL;
}

uint64_t sub_1C6FFAE20(uint64_t a1)
{
  v2 = sub_1C7025AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAE5C(uint64_t a1)
{
  v2 = sub_1C7025AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFAEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFACA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFAEC8(uint64_t a1)
{
  v2 = sub_1C70259FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAF04(uint64_t a1)
{
  v2 = sub_1C70259FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFAF40(uint64_t a1)
{
  v2 = sub_1C7025A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAF7C(uint64_t a1)
{
  v2 = sub_1C7025A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FFAFB8(uint64_t a1)
{
  v2 = sub_1C7025AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFAFF4(uint64_t a1)
{
  v2 = sub_1C7025AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetScopingStatus.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C98);
  OUTLINED_FUNCTION_3_0();
  v29 = v6;
  v30 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v28 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CA0);
  OUTLINED_FUNCTION_3_0();
  v26 = v10;
  v27 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CA8);
  OUTLINED_FUNCTION_3_0();
  v23 = v14;
  v24 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_61_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CB0);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_389();
  v20 = *v0;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C70259FC();
  sub_1C755200C();
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1C7025AA4();
      v1 = v25;
      OUTLINED_FUNCTION_153();
      sub_1C7551C6C();
      v22 = v26;
      v21 = v27;
    }

    else
    {
      OUTLINED_FUNCTION_286();
      sub_1C7025A50();
      v1 = v28;
      OUTLINED_FUNCTION_153();
      sub_1C7551C6C();
      v22 = v29;
      v21 = v30;
    }
  }

  else
  {
    sub_1C7025AF8();
    OUTLINED_FUNCTION_153();
    sub_1C7551C6C();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v1, v21);
  (*(v18 + 8))(v2, v16);
  OUTLINED_FUNCTION_125();
}

uint64_t AssetScopingStatus.hashValue.getter()
{
  sub_1C7551F3C();
  v0 = OUTLINED_FUNCTION_224();
  MEMORY[0x1CCA5E460](v0);
  return sub_1C7551FAC();
}

void AssetScopingStatus.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v63 = v0;
  v4 = v3;
  v58 = v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CB8);
  OUTLINED_FUNCTION_3_0();
  v59 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v61 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CC0);
  OUTLINED_FUNCTION_3_0();
  v56 = v10;
  v57 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_390();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CC8);
  OUTLINED_FUNCTION_3_0();
  v55 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_251();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CD0);
  OUTLINED_FUNCTION_3_0();
  v60 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C70259FC();
  v20 = v63;
  sub_1C7551FFC();
  if (v20)
  {
    goto LABEL_10;
  }

  v52 = v12;
  v53 = v2;
  v54 = v1;
  v22 = v61;
  v21 = v62;
  v63 = v4;
  v23 = sub_1C7551C5C();
  sub_1C6FD80E0(v23, 0);
  if (v25 == v26 >> 1)
  {
    goto LABEL_9;
  }

  v51 = 0;
  if (v25 < (v26 >> 1))
  {
    v27 = *(v24 + v25);
    sub_1C6FD80C8(v25 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v29 == v31 >> 1;
    v33 = v59;
    if (v32)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          sub_1C7025AA4();
          v34 = v54;
          OUTLINED_FUNCTION_595();
          v35 = v58;
          swift_unknownObjectRelease();
          (*(v56 + 8))(v34, v57);
          v44 = OUTLINED_FUNCTION_505();
          v45(v44);
        }

        else
        {
          LODWORD(v57) = v27;
          OUTLINED_FUNCTION_286();
          sub_1C7025A50();
          v41 = v51;
          sub_1C7551B4C();
          v35 = v58;
          if (v41)
          {
            v42 = OUTLINED_FUNCTION_291();
            v43(v42);
            swift_unknownObjectRelease();
            v4 = v63;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v33 + 8))(v22, v21);
          v48 = OUTLINED_FUNCTION_291();
          v49(v48);
          LOBYTE(v27) = v57;
        }
      }

      else
      {
        sub_1C7025AF8();
        v40 = v53;
        OUTLINED_FUNCTION_595();
        swift_unknownObjectRelease();
        (*(v55 + 8))(v40, v52);
        OUTLINED_FUNCTION_429();
        v46 = OUTLINED_FUNCTION_431();
        v47(v46);
        v35 = v58;
      }

      *v35 = v27;
      __swift_destroy_boxed_opaque_existential_1(v63);
      goto LABEL_11;
    }

LABEL_9:
    v36 = sub_1C75518EC();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v38 = &type metadata for AssetScopingStatus;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_429();
    v39(v19, v15);
    v4 = v63;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  __break(1u);
}

BOOL ExtendedToken.isUsedForAssetScoping.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v4((&v7 + 1));
  if (BYTE1(v7))
  {
    (v4)(&v7, a1, a2);
    return v7 == 1;
  }

  else
  {
    sub_1C7025B4C();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C6FFB9DC()
{
  OUTLINED_FUNCTION_593();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v0);
  OUTLINED_FUNCTION_195();
}

uint64_t sub_1C6FFBA54()
{
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195();
}

uint64_t sub_1C6FFBAA8()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195();
}

uint64_t sub_1C6FFBAFC()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195();
}

uint64_t sub_1C6FFBB4C()
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195();
}

uint64_t sub_1C6FFBB9C()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195();
}

uint64_t sub_1C6FFBBEC()
{
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  OUTLINED_FUNCTION_195();
}

uint64_t sub_1C6FFBC3C()
{
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_358();
  OUTLINED_FUNCTION_195();
}

uint64_t ExtendedToken.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 64))(a2, a3);
  OUTLINED_FUNCTION_108_1();
}

uint64_t sub_1C6FFBCDC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&DynamicType);
  if (v24)
  {
    v3 = 0xEA00000000006E6FLL;
    v4 = 0x697463656C6C6F63;
  }

  else
  {
    OUTLINED_FUNCTION_542();
    if (!v8)
    {
      v6 = 0xD000000000000012;
      v5 = 0x80000001C7599F00;
    }

    if (v8 == 1)
    {
      v6 = 0xD000000000000018;
      v5 = 0x80000001C7599EE0;
    }

    if (v8 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = v6;
    }

    if (v8 == 2)
    {
      v3 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  OUTLINED_FUNCTION_64();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  DynamicType = sub_1C75506EC();
  v24 = v9;
  v10 = 0xE000000000000000;
  sub_1C6FB5E8C();
  v11 = sub_1C755155C();
  v13 = v12;

  DynamicType = v11;
  v24 = v13;
  MEMORY[0x1CCA5CD70](656420128, 0xE400000000000000);
  v14 = OUTLINED_FUNCTION_295();
  v16 = v15(v14);
  MEMORY[0x1CCA5CD70](v16);

  MEMORY[0x1CCA5CD70](2108455, 0xE300000000000000);
  MEMORY[0x1CCA5CD70](v4, v3);

  v17 = *(a2 + 56);
  v18 = OUTLINED_FUNCTION_295();
  v19 = v17(v18);
  if (v19)
  {

    v20 = OUTLINED_FUNCTION_295();
    if (v17(v20))
    {
    }

    v21 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v21);

    MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
    v19 = 10272;
    v10 = 0xE200000000000000;
  }

  MEMORY[0x1CCA5CD70](v19, v10);

  return DynamicType;
}

uint64_t PersonRelationshipAgeInfo.init(ageType:confirmedRelationship:highRecallRelationship:isMyChild:isMe:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  *a6 = result;
  *(a6 + 2) = v6;
  *(a6 + 3) = v7;
  *(a6 + 4) = a4;
  *(a6 + 5) = a5;
  return result;
}

void PersonRelationshipAgeInfo.description.getter()
{
  OUTLINED_FUNCTION_597();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  MEMORY[0x1CCA5CD70](0x3A65707954656761, 0xE900000000000020);
  type metadata accessor for PHPersonAgeType(0);
  sub_1C75519EC();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  if (v1 == 18)
  {
    OUTLINED_FUNCTION_113_0();
  }

  else
  {
    StoryPersonRelationshipType.rawValue.getter();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000019);
  if (v2 == 18)
  {
    OUTLINED_FUNCTION_113_0();
  }

  else
  {
    StoryPersonRelationshipType.rawValue.getter();
  }

  OUTLINED_FUNCTION_341();

  MEMORY[0x1CCA5CD70](0x696843794D73690ALL, 0xEC000000203A646CLL);
  OUTLINED_FUNCTION_341();

  MEMORY[0x1CCA5CD70](0x203A654D73690ALL, 0xE700000000000000);
  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_596();
}

uint64_t static PersonRelationshipAgeInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  if (v4 == 18)
  {
    if (v8 != 18)
    {
      return 0;
    }
  }

  else if (v8 == 18 || (sub_1C6FA0848(v4, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 18)
  {
    result = 0;
    if (v9 != 18)
    {
      return result;
    }

LABEL_15:
    if (((v6 ^ v10) & 1) == 0)
    {
      return v7 ^ v11 ^ 1u;
    }

    return result;
  }

  if (v9 == 18)
  {
    return 0;
  }

  v13 = sub_1C6FA0848(v5, v9);
  result = 0;
  if (v13)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1C6FFC3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954656761 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C7599CC0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C7599CE0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C696843794D7369 && a2 == 0xE900000000000064;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1699574633 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C6FFC590(char a1)
{
  result = 0x65707954656761;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6C696843794D7369;
      break;
    case 4:
      result = 1699574633;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFC63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFC3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFC664(uint64_t a1)
{
  v2 = sub_1C7025BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFC6A0(uint64_t a1)
{
  v2 = sub_1C7025BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonRelationshipAgeInfo.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CE0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_61_1();
  v2 = OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_70(v2, v3);
  sub_1C7025BA0();
  OUTLINED_FUNCTION_230();
  type metadata accessor for PHPersonAgeType(0);
  OUTLINED_FUNCTION_219();
  sub_1C70259B4(v4, v5);
  OUTLINED_FUNCTION_442();
  sub_1C7551D2C();
  if (!v0)
  {
    sub_1C7025BF4();
    OUTLINED_FUNCTION_442();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_442();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_442();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_534();
    OUTLINED_FUNCTION_442();
    sub_1C7551CDC();
  }

  v6 = OUTLINED_FUNCTION_295();
  v7(v6);
  OUTLINED_FUNCTION_125();
}

uint64_t PersonRelationshipAgeInfo.hash(into:)()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  sub_1C7551F6C();
  sub_1C7551F5C();
  if (v1 != 18)
  {
    StoryPersonRelationshipType.rawValue.getter();
    OUTLINED_FUNCTION_108_1();
  }

  sub_1C7551F5C();
  if (v2 != 18)
  {
    StoryPersonRelationshipType.rawValue.getter();
    OUTLINED_FUNCTION_108_1();
  }

  sub_1C7551F5C();
  return sub_1C7551F5C();
}

uint64_t PersonRelationshipAgeInfo.hashValue.getter()
{
  sub_1C7551F3C();
  PersonRelationshipAgeInfo.hash(into:)();
  return sub_1C7551FAC();
}

void PersonRelationshipAgeInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, __int16 a14)
{
  OUTLINED_FUNCTION_124();
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CE8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v16, v16[3]);
  sub_1C7025BA0();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (!v14)
  {
    type metadata accessor for PHPersonAgeType(0);
    OUTLINED_FUNCTION_219();
    sub_1C70259B4(v20, v21);
    OUTLINED_FUNCTION_421();
    sub_1C7551C1C();
    sub_1C7025C48();
    OUTLINED_FUNCTION_352();
    OUTLINED_FUNCTION_421();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_352();
    OUTLINED_FUNCTION_421();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_421();
    v22 = sub_1C7551BCC();
    OUTLINED_FUNCTION_534();
    OUTLINED_FUNCTION_421();
    v23 = sub_1C7551BCC();
    v24 = OUTLINED_FUNCTION_497();
    v25(v24);
    *v18 = a14;
    *(v18 + 2) = a13;
    *(v18 + 3) = a11;
    *(v18 + 4) = v22 & 1;
    *(v18 + 5) = v23 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFCC88()
{
  sub_1C7551F3C();
  PersonRelationshipAgeInfo.hash(into:)();
  return sub_1C7551FAC();
}

void PersonExtendedToken.relationshipInfo.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 52);
  v3 = *(v1 + 53);
  *a1 = *(v1 + 48);
  *(a1 + 4) = v2;
  *(a1 + 5) = v3;
}

uint64_t PersonExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PersonExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t PersonExtendedToken.init(name:source:uuid:relationshipInfo:assetUUIDs:isFavorite:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *a6;
  v12 = *(a6 + 4);
  v13 = *(a6 + 5);
  *(a9 + 54) = 0;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 24) = v10;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = v11;
  *(a9 + 52) = v12;
  *(a9 + 53) = v13;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

uint64_t static PersonExtendedToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313();
  }
}

void PersonExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_14_9();
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  sub_1C755180C();
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  v3 = OUTLINED_FUNCTION_15_1();
  MEMORY[0x1CCA5CD70](v3);
  MEMORY[0x1CCA5CD70](0x6372756F73090A2CLL, 0xEB00000000203A65);
  if (v1)
  {
    v4 = 0xEA00000000006E6FLL;
    v5 = OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
    v12 = v6;
    v13 = v7;
    v8 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_61_4();

    v9 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v9);

    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    v5 = v12;
    v4 = v13;
  }

  MEMORY[0x1CCA5CD70](v5, v4);

  MEMORY[0x1CCA5CD70](0x7575202020200A2CLL, 0xEC000000203A6469);
  v10 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v10);
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70](0xD000000000000020);
  PersonRelationshipAgeInfo.description.getter();
  MEMORY[0x1CCA5CD70]();

  v11 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v11);
  if (v2)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_602();

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C6FFD0E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684632949 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C7599D00 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C6FFD324(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 1684632949;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x4955557465737361;
      break;
    case 6:
      result = 0x69726F7661467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFD3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFD0E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFD420(uint64_t a1)
{
  v2 = sub_1C7025CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFD45C(uint64_t a1)
{
  v2 = sub_1C7025CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CF0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v12 = *(v0 + 16);
  v8 = v3[3];
  v9 = v3;
  v11 = v10;
  OUTLINED_FUNCTION_70(v9, v8);
  sub_1C7025CF0();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_431();
  sub_1C7551CCC();
  if (!v1)
  {
    OUTLINED_FUNCTION_85_1(v12);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_359();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_184();
    sub_1C7025D98();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_359();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_359();
    sub_1C7551CDC();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_125();
}

uint64_t PersonExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void PersonExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215CF8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_251();
  v6 = OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_70(v6, v7);
  sub_1C7025CF0();
  OUTLINED_FUNCTION_471();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_101_1();
    v8 = sub_1C7551BBC();
    v10 = v9;
    sub_1C7025E40();
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_155();
    v25 = v4;
    v26 = v28;
    v42 = v29;
    LOBYTE(v28) = 2;
    OUTLINED_FUNCTION_101_1();
    v11 = sub_1C7551BBC();
    v13 = v12;
    v24 = v11;
    sub_1C7025E94();
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_155();
    v21 = v28;
    v20 = BYTE2(v28);
    v19 = BYTE3(v28);
    v23 = BYTE4(v28);
    v22 = BYTE5(v28);
    sub_1C7025EE8();
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_155();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_162();
    sub_1C7551BAC();
    v18 = v8;
    v14 = v28;
    OUTLINED_FUNCTION_101_1();
    v15 = sub_1C7551BCC();
    v16 = OUTLINED_FUNCTION_160();
    v17(v16);
    v27[0] = v18;
    v27[1] = v10;
    v27[2] = v26;
    LOBYTE(v27[3]) = v29;
    v27[4] = v24;
    v27[5] = v13;
    LODWORD(v27[6]) = v28;
    WORD2(v27[6]) = WORD2(v28);
    BYTE6(v27[6]) = 2;
    v27[7] = v28;
    LOBYTE(v27[8]) = v15 & 1;
    memcpy(v25, v27, 0x41uLL);
    sub_1C7025F3C(v27, &v28);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v28 = v18;
    v29 = v10;
    v30 = v26;
    v31 = v42;
    v32 = v24;
    v33 = v13;
    v34 = v21;
    v35 = v20;
    v36 = v19;
    v37 = v23;
    v38 = v22;
    v39 = 2;
    v40 = v14;
    v41 = v15 & 1;
    sub_1C7025F74(&v28);
  }

  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFDBD4()
{
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_224();
  return sub_1C6FFBAFC();
}

uint64_t sub_1C6FFDC14()
{
  sub_1C7551F3C();
  PersonExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4();

  return sub_1C7551FAC();
}

uint64_t PetExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PetExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t PetExtendedToken.init(name:source:uuid:detectionType:assetUUIDs:isFavorite:isMyPet:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  *(a9 + 50) = 0;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 24) = v11;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 65) = a10;
  return result;
}

uint64_t static PetExtendedToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313();
  }
}

void PetExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_14_9();
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1C755180C();
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  v4 = OUTLINED_FUNCTION_55();
  MEMORY[0x1CCA5CD70](v4);
  v5 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v5);
  if (v1)
  {
    v6 = 0xEA00000000006E6FLL;
    v7 = OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_29_7();
    v14 = v8;
    v15 = v9;
    v10 = PLDebugStringForAmbiguityType();
    sub_1C755068C();

    v11 = OUTLINED_FUNCTION_15_1();
    MEMORY[0x1CCA5CD70](v11);

    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    v7 = v14;
    v6 = v15;
  }

  MEMORY[0x1CCA5CD70](v7, v6);

  MEMORY[0x1CCA5CD70](0x7575202020200A2CLL, 0xEC000000203A6469);
  v12 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v12);
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70](0xD000000000000015);
  static StoryGenerationCharacterTypes.detectionTypeString(for:isPlural:)(v2, 0);
  OUTLINED_FUNCTION_602();

  v13 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v13);
  if (v3)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_602();

  MEMORY[0x1CCA5CD70](0x50794D7369090A2CLL, 0xEC000000203A7465);
  OUTLINED_FUNCTION_602();

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C6FFE168(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684632949 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746550794D7369 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C7551DBC();

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

unint64_t sub_1C6FFE3F8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 1684632949;
      break;
    case 3:
      result = 0x6F69746365746564;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x4955557465737361;
      break;
    case 6:
      result = 0x69726F7661467369;
      break;
    case 7:
      result = 0x746550794D7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFE4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFE168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFE510@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_1_18();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FFE538(uint64_t a1)
{
  v2 = sub_1C7025FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFE574(uint64_t a1)
{
  v2 = sub_1C7025FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PetExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D00);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_263();
  v11 = v6;
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_70(v7, v8);
  sub_1C7025FA4();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  sub_1C7551CCC();
  if (!v0)
  {
    OUTLINED_FUNCTION_85_1(v11);
    OUTLINED_FUNCTION_48_6();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_255();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_184();
    type metadata accessor for PHDetectionType(0);
    OUTLINED_FUNCTION_212();
    sub_1C70259B4(v9, v10);
    OUTLINED_FUNCTION_48_6();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_48_6();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_395();
    sub_1C7551CDC();
    sub_1C7551CDC();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t PetExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_410();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void PetExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D18);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_251();
  v10 = OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_70(v10, v11);
  sub_1C7025FA4();
  OUTLINED_FUNCTION_471();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v27) = 0;
    OUTLINED_FUNCTION_101_1();
    v12 = sub_1C7551BBC();
    v14 = v13;
    sub_1C7025E40();
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_155();
    v25 = v27;
    v45 = v28;
    LOBYTE(v27) = 2;
    OUTLINED_FUNCTION_101_1();
    v24 = sub_1C7551BBC();
    v46 = v15;
    type metadata accessor for PHDetectionType(0);
    OUTLINED_FUNCTION_212();
    sub_1C70259B4(v16, v17);
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_162();
    sub_1C7551C1C();
    v23 = v27;
    sub_1C7025EE8();
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_155();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    LOBYTE(v26[0]) = 5;
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_496();
    OUTLINED_FUNCTION_162();
    sub_1C7551BAC();
    v22 = v12;
    v18 = v27;
    LOBYTE(v27) = 6;
    OUTLINED_FUNCTION_101_1();
    v21 = sub_1C7551BCC();
    v41 = 7;
    OUTLINED_FUNCTION_101_1();
    v21 &= 1u;
    v19 = sub_1C7551BCC();
    (*(v8 + 8))(v1, v6);
    v26[0] = v22;
    v26[1] = v14;
    v26[2] = v25;
    v20 = v28;
    LOBYTE(v26[3]) = v28;
    *(&v26[3] + 1) = *v44;
    HIDWORD(v26[3]) = *&v44[3];
    v26[4] = v24;
    v26[5] = v46;
    LOWORD(v26[6]) = v23;
    BYTE2(v26[6]) = 2;
    *(&v26[6] + 3) = v42;
    HIBYTE(v26[6]) = v43;
    v26[7] = v18;
    LOBYTE(v26[8]) = v21;
    BYTE1(v26[8]) = v19 & 1;
    memcpy(v5, v26, 0x42uLL);
    sub_1C7025FF8(v26, &v27);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v27 = v22;
    v28 = v14;
    v29 = v25;
    v30 = v20;
    *v31 = *v44;
    *&v31[3] = *&v44[3];
    v32 = v24;
    v33 = v46;
    v34 = v23;
    v35 = 2;
    v36 = v42;
    v37 = v43;
    v38 = v18;
    v39 = v21;
    v40 = v19 & 1;
    sub_1C7026030(&v27);
  }

  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFED50()
{
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_224();
  return sub_1C6FFBC3C();
}

uint64_t sub_1C6FFED90()
{
  sub_1C7551F3C();
  PetExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4();

  return sub_1C7551FAC();
}

uint64_t LocationExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t LocationExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_358();
  return v1;
}

void static LocationExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v12 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    if (!v11)
    {
LABEL_20:
      OUTLINED_FUNCTION_135_0();
      return;
    }
  }

  else
  {
    if (v6 == v10)
    {
      v13 = v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_20;
    }
  }

  if (v4 == v8 && v5 == v9)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_135_0();

  sub_1C7551DBC();
}

uint64_t LocationExtendedToken.init(name:detailedName:source:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  *(a7 + 41) = 0;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = v8;
  *(a7 + 48) = a6;
  return result;
}

void LocationExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_597();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000014);
  v4 = OUTLINED_FUNCTION_15_1();
  MEMORY[0x1CCA5CD70](v4);
  v5 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v5);
  if (v1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v6 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v7 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v7);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v8 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v8);
  if (v2)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_596();
}

uint64_t sub_1C6FFF164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656C6961746564 && a2 == 0xEC000000656D614ELL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C6FFF314(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x64656C6961746564;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFF3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFF164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFF3E4(uint64_t a1)
{
  v2 = sub_1C7026060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFF420(uint64_t a1)
{
  v2 = sub_1C7026060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D28);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_61_1();
  v3 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_70(v3, v4);
  sub_1C7026060();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_316();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_467();
  if (!v0)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_286();
    sub_1C7025D44();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v5 = OUTLINED_FUNCTION_380();
  v6(v5, v1);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t LocationExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void LocationExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D30);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C7026060();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v4 = sub_1C7551BBC();
    v6 = v5;
    v14 = v4;
    LOBYTE(v19) = 1;
    OUTLINED_FUNCTION_139();
    *&v13 = sub_1C7551BBC();
    *(&v13 + 1) = v7;
    sub_1C7025E40();
    sub_1C7551C1C();
    v12 = v19;
    v27 = v20;
    sub_1C7025EE8();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v8 = OUTLINED_FUNCTION_12_7();
    v9(v8);
    v10 = v26;
    *&v15 = v14;
    *(&v15 + 1) = v6;
    v16 = v13;
    *&v17 = v19;
    BYTE8(v17) = v20;
    BYTE9(v17) = 1;
    v18 = v26;
    *(v2 + 48) = v26;
    v11 = v16;
    *v2 = v15;
    *(v2 + 16) = v11;
    *(v2 + 32) = v17;
    sub_1C70260B4(&v15, &v19);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v19 = v14;
    v20 = v6;
    v21 = v13;
    v22 = v12;
    v23 = v27;
    v24 = 1;
    v25 = v10;
    sub_1C70260EC(&v19);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C6FFFA30()
{
  sub_1C7551F3C();
  LocationExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4();

  return sub_1C7551FAC();
}

uint64_t GenericLocationExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_593();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_196();
  v3 = v0;
  v1 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v1);
  return v3;
}

uint64_t static GenericLocationExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (v1 == *v2 && *(v3 + 8) == *(v2 + 8))
  {
    if (*(v3 + 24))
    {
      return v7 & 1;
    }

LABEL_8:
    v7 = (v4 == v6) & ~v7;
    return v7 & 1;
  }

  v9 = sub_1C7551DBC();
  if (!(v5 & 1 | ((v9 & 1) == 0)))
  {
    goto LABEL_8;
  }

  v7 &= v9;
  return v7 & 1;
}

uint64_t GenericLocationExtendedToken.init(name:source:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  *(a5 + 25) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = v6;
  *(a5 + 32) = a4;
  return result;
}

uint64_t GenericLocationExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_575();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD00000000000003DLL);
  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);
  v4 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v4);
  if (v1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v5 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v6 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v7 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v7);
  if (v2)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v9;
}

uint64_t sub_1C6FFFCDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
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

unint64_t sub_1C6FFFE48(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FFFED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FFFCDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FFFEF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FFFE40();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FFFF20(uint64_t a1)
{
  v2 = sub_1C702611C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FFFF5C(uint64_t a1)
{
  v2 = sub_1C702611C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GenericLocationExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D38);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  v11 = *(v0 + 16);
  v5 = v3[3];
  v6 = v3;
  v8 = v7;
  OUTLINED_FUNCTION_70(v6, v5);
  sub_1C702611C();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v1)
  {
    OUTLINED_FUNCTION_85_1(v11);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_286();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v9 = OUTLINED_FUNCTION_380();
  v10(v9, v8);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t GenericLocationExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v0);
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void GenericLocationExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D48);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C702611C();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_488();
    v4 = sub_1C7551BBC();
    v6 = v5;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_488();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_286();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_488();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_488();
    sub_1C7551BAC();
    v7 = OUTLINED_FUNCTION_401();
    v8(v7);
    *v2 = v4;
    *(v2 + 8) = v6;
    *(v2 + 16) = v9;
    *(v2 + 24) = v10;
    *(v2 + 25) = v9;
    *(v2 + 32) = v9;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7000498()
{
  OUTLINED_FUNCTION_279_0();
  v0 = sub_1C7551F3C();
  OUTLINED_FUNCTION_278(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  GenericLocationExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_473();

  return sub_1C7551FAC();
}

uint64_t TimeType.description.getter()
{
  result = 7954788;
  switch(*v0)
  {
    case 1:
      result = 0x61655968746E6F6DLL;
      break;
    case 2:
      result = 1918985593;
      break;
    case 3:
      result = 0x596568547265766FLL;
      break;
    case 4:
      result = 0x6E6F73616573;
      break;
    case 5:
      result = 0x796164696C6F68;
      break;
    case 6:
      result = 0x6D72657465646E75;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::TimeType_optional __swiftcall TimeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C7000654@<X0>(uint64_t *a1@<X8>)
{
  result = TimeType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TimeExtendedToken.startDateComponents.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = *(type metadata accessor for TimeExtendedToken(v2) + 36);
  sub_1C754DABC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t TimeExtendedToken.endDateComponents.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = v1 + *(type metadata accessor for TimeExtendedToken(v2) + 40);

  return sub_1C7026190(v3, v0);
}

uint64_t TimeExtendedToken.assetScopingStatus.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  result = type metadata accessor for TimeExtendedToken(v2);
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t TimeExtendedToken.assetScopingStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TimeExtendedToken(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t TimeExtendedToken.assetScopingStatus.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for TimeExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t TimeExtendedToken.assetUUIDs.getter()
{
  type metadata accessor for TimeExtendedToken(0);

  return sub_1C75504FC();
}

uint64_t TimeExtendedToken.assetUUIDs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for TimeExtendedToken(v2) + 48);

  *(v1 + v3) = v0;
  return result;
}

uint64_t TimeExtendedToken.assetUUIDs.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for TimeExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t TimeExtendedToken.uniquingKey.getter()
{
  result = 0x3A656D6954;
  sub_1C7004F30();
  return result;
}

void static TimeExtendedToken.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_0();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_61_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = *v25 == *v23 && *(v25 + 8) == *(v23 + 8);
  if (!v38 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v39 = *(v23 + 56);
  if (*(v25 + 56))
  {
    if (!*(v23 + 56))
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v25 + 48) != *(v23 + 48))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_23;
    }
  }

  if (sub_1C6F9F3D0(*(v25 + 57), *(v23 + 57)))
  {
    v40 = type metadata accessor for TimeExtendedToken(0);
    if (MEMORY[0x1CCA59F10](v25 + *(v40 + 36), v23 + *(v40 + 36)))
    {
      v41 = *(v40 + 40);
      v42 = *(v34 + 48);
      sub_1C7026190(v25 + v41, v37);
      sub_1C7026190(v23 + v41, &v37[v42]);
      OUTLINED_FUNCTION_601(v37);
      if (!v38)
      {
        v43 = OUTLINED_FUNCTION_64();
        sub_1C7026190(v43, v44);
        OUTLINED_FUNCTION_601(&v37[v42]);
        if (!v45)
        {
          (*(v28 + 32))(v32, &v37[v42], v26);
          OUTLINED_FUNCTION_68_4();
          sub_1C70259B4(v48, v49);
          OUTLINED_FUNCTION_295();
          sub_1C755063C();
          v50 = *(v28 + 8);
          v51 = OUTLINED_FUNCTION_90();
          v50(v51);
          v52 = OUTLINED_FUNCTION_294();
          v50(v52);
          sub_1C6FD7FC8(v37, &qword_1EC218C50);
          goto LABEL_23;
        }

        v46 = OUTLINED_FUNCTION_294();
        v47(v46);
LABEL_22:
        sub_1C6FD7FC8(v37, &qword_1EC215D50);
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_601(&v37[v42]);
      if (!v38)
      {
        goto LABEL_22;
      }

      sub_1C6FD7FC8(v37, &qword_1EC218C50);
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_25_0();
}

void TimeExtendedToken.init(name:source:type:startDateComponents:endDateComponents:month:year:assetUUIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  OUTLINED_FUNCTION_14_9();
  v51 = v29;
  v50 = v30;
  v49 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = *v40;
  v42 = *(v40 + 8);
  v44 = *v43;
  v45 = type metadata accessor for TimeExtendedToken(0);
  *(v39 + v45[11]) = 0;
  v46 = v45[12];
  *v39 = v37;
  *(v39 + 8) = v35;
  *(v39 + 48) = v41;
  *(v39 + 56) = v42;
  *(v39 + 57) = v44;
  v47 = v45[9];
  sub_1C754DABC();
  OUTLINED_FUNCTION_12();
  (*(v48 + 32))(v39 + v47, v33);
  sub_1C7026200(v49, v39 + v45[10]);
  *(v39 + 16) = v50;
  *(v39 + 24) = v51 & 1;
  *(v39 + 32) = a27;
  *(v39 + 40) = a28 & 1;
  *(v39 + v46) = a29;
  OUTLINED_FUNCTION_13_5();
}

uint64_t TimeExtendedToken.description.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](*v0, *(v0 + 8));
  v2 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v2);
  if (*(v0 + 56))
  {
    v3 = 0xEA00000000006E6FLL;
    v4 = OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v5 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v6 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_189();
    v4 = v14;
    v3 = v15;
  }

  MEMORY[0x1CCA5CD70](v4, v3);

  MEMORY[0x1CCA5CD70](0x7974202020200A2CLL, 0xEC000000203A6570);
  v7 = 0xE300000000000000;
  v8 = 7954788;
  switch(*(v1 + 57))
  {
    case 1:
      v7 = 0xE900000000000072;
      v8 = 0x61655968746E6F6DLL;
      break;
    case 2:
      v7 = 0xE400000000000000;
      v8 = 1918985593;
      break;
    case 3:
      v7 = 0xEC00000073726165;
      v8 = 0x596568547265766FLL;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v8 = 0x6E6F73616573;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v8 = 0x796164696C6F68;
      break;
    case 6:
      v7 = 0xEC00000064656E69;
      v8 = 0x6D72657465646E75;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v8, v7);

  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  v9 = type metadata accessor for TimeExtendedToken(0);
  v10 = MEMORY[0x1CCA59EF0]();
  MEMORY[0x1CCA5CD70](v10);

  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000019);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  v11 = sub_1C755148C();
  MEMORY[0x1CCA5CD70](v11);

  v12 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v12);
  if (*(v1 + *(v9 + 48)))
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v16;
}

uint64_t sub_1C7001034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1918985593 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001C7599D40 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C7599D60 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C7551DBC();

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

unint64_t sub_1C7001300(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x68746E6F6DLL;
      break;
    case 2:
      result = 1918985593;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70013F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7001034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C700141C(uint64_t a1)
{
  v2 = sub_1C7026270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7001458(uint64_t a1)
{
  v2 = sub_1C7026270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TimeExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D60);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C7026270();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v0)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_97();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_184();
    sub_1C7025D44();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    sub_1C70262C4();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    type metadata accessor for TimeExtendedToken(0);
    sub_1C754DABC();
    OUTLINED_FUNCTION_68_4();
    sub_1C70259B4(v4, v5);
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v6 = OUTLINED_FUNCTION_295();
  v7(v6);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

void TimeExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_391();
  v29 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v26 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D70);
  OUTLINED_FUNCTION_3_0();
  v27 = v11;
  v28 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_251();
  type metadata accessor for TimeExtendedToken(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v30 = v15;
  v16 = v15[11];
  v19 = v18 - v17;
  *(v18 - v17 + v16) = 0;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C7026270();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    *v19 = sub_1C7551BBC();
    *(v19 + 8) = v20;
    *(v19 + 16) = OUTLINED_FUNCTION_590(1);
    *(v19 + 24) = v21 & 1;
    *(v19 + 32) = OUTLINED_FUNCTION_590(2);
    *(v19 + 40) = v22 & 1;
    OUTLINED_FUNCTION_184();
    sub_1C7025E40();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_466();
    *(v19 + 48) = v31;
    *(v19 + 56) = v32;
    OUTLINED_FUNCTION_183();
    sub_1C7026318();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_466();
    *(v19 + 57) = v31;
    LOBYTE(v31) = 5;
    OUTLINED_FUNCTION_68_4();
    sub_1C70259B4(v23, v24);
    OUTLINED_FUNCTION_425();
    sub_1C7551C1C();
    (*(v26 + 32))(v19 + v30[9], v10, v29);
    OUTLINED_FUNCTION_395();
    OUTLINED_FUNCTION_425();
    sub_1C7551BAC();
    sub_1C7026200(v0, v19 + v30[10]);
    sub_1C7025EE8();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_466();
    *(v19 + v16) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_138_0();
    sub_1C7551BAC();
    v25 = v30[12];
    (*(v28 + 8))(v2, v27);
    *(v19 + v25) = v31;
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1C70265F0();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PartOfDayExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PartOfDayExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t static PartOfDayExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v8 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((v5 & 1) == 0)
  {
    if (v4 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_13:
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_90();
    sub_1C7003D44();
    return v9 & 1;
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = 0;
  return v9 & 1;
}

void sub_1C7001EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Asset(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_392();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16) && v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    do
    {
      sub_1C702659C();
      OUTLINED_FUNCTION_295();
      sub_1C702659C();
      if (*v11 == *v7 && v11[1] == v7[1])
      {
        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v18 = sub_1C7551DBC();
        sub_1C70265F0();
        sub_1C70265F0();
        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_135_0();
}

uint64_t sub_1C70020D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C7002160()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = v1 + 32;
    while (v3 != v2)
    {
      v6 = (v4 + 40 * v3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      v12 = (v5 + 40 * v3);
      v13 = v12[2];
      v14 = v12[3];
      v15 = v12[4];
      v16 = v7 == *v12 && v8 == v12[1];
      if (!v16 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_30;
      }

      if (v9 != v13 || v10 != v14)
      {
        OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_179();
        if ((sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v18 = *(v11 + 16);
      if (v18 != *(v15 + 16))
      {
        goto LABEL_30;
      }

      if (v18)
      {
        v19 = v11 == v15;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v11 + 40);
        v21 = (v15 + 40);
        while (v18)
        {
          v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
          if (!v22 && (sub_1C7551DBC() & 1) == 0)
          {
            goto LABEL_30;
          }

          v20 += 2;
          v21 += 2;
          if (!--v18)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }

LABEL_29:
      if (++v3 == v2)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C7002298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 72);
    for (i = (a1 + 72); ; i += 9)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v3 += 9;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C7002324(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == v10)
        {
          v13 = v11;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          return 0;
        }
      }

      v14 = v4 == v8 && v5 == v9;
      if (!v14 && (sub_1C7551DBC() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C7002438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 40)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == v7)
        {
          v10 = v8;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C70024FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C754DABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v42 - v10;
  v49 = type metadata accessor for TimeExtendedToken(0);
  MEMORY[0x1EEE9AC00](v49);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v43 = (v5 + 32);
    v44 = (v5 + 8);
    v47 = *(v15 + 72);
    v22 = v49;
    v45 = v9;
    while (1)
    {
      v51 = v20;
      sub_1C702659C();
      sub_1C702659C();
      v23 = *v17 == *v13 && *(v17 + 1) == *(v13 + 1);
      if (!v23 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v24 = v13[56];
      if (v17[56])
      {
        if (!v13[56])
        {
          break;
        }
      }

      else
      {
        if (*(v17 + 6) != *(v13 + 6))
        {
          v24 = 1;
        }

        if (v24)
        {
          break;
        }
      }

      v25 = 0xE300000000000000;
      v26 = 7954788;
      switch(v17[57])
      {
        case 1:
          v26 = 0x61655968746E6F6DLL;
          v25 = 0xE900000000000072;
          break;
        case 2:
          v25 = 0xE400000000000000;
          v26 = 1918985593;
          break;
        case 3:
          v26 = 0x596568547265766FLL;
          v27 = 1936875877;
          goto LABEL_23;
        case 4:
          v25 = 0xE600000000000000;
          v26 = 0x6E6F73616573;
          break;
        case 5:
          v25 = 0xE700000000000000;
          v26 = 0x796164696C6F68;
          break;
        case 6:
          v26 = 0x6D72657465646E75;
          v27 = 1684369001;
LABEL_23:
          v25 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v28 = 0xE300000000000000;
      v29 = 7954788;
      switch(v13[57])
      {
        case 1:
          v29 = 0x61655968746E6F6DLL;
          v28 = 0xE900000000000072;
          break;
        case 2:
          v28 = 0xE400000000000000;
          v29 = 1918985593;
          break;
        case 3:
          v29 = 0x596568547265766FLL;
          v30 = 1936875877;
          goto LABEL_31;
        case 4:
          v28 = 0xE600000000000000;
          v29 = 0x6E6F73616573;
          break;
        case 5:
          v28 = 0xE700000000000000;
          v29 = 0x796164696C6F68;
          break;
        case 6:
          v29 = 0x6D72657465646E75;
          v30 = 1684369001;
LABEL_31:
          v28 = v30 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      if (v26 == v29 && v25 == v28)
      {
      }

      else
      {
        v32 = sub_1C7551DBC();

        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      if ((MEMORY[0x1CCA59F10](&v17[*(v22 + 36)], &v13[*(v22 + 36)]) & 1) == 0)
      {
        break;
      }

      v33 = *(v22 + 40);
      v34 = *(v50 + 48);
      sub_1C7026190(&v17[v33], v11);
      sub_1C7026190(&v13[v33], &v11[v34]);
      if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v4) != 1)
        {
          goto LABEL_48;
        }

        sub_1C6FD7FC8(v11, &qword_1EC218C50);
        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v35 = v45;
        sub_1C7026190(v11, v45);
        if (__swift_getEnumTagSinglePayload(&v11[v34], 1, v4) == 1)
        {
          (*v44)(v35, v4);
LABEL_48:
          sub_1C6FD7FC8(v11, &qword_1EC215D50);
          break;
        }

        v36 = v48;
        (*v43)(v48, &v11[v34], v4);
        sub_1C70259B4(&qword_1EC215D58, MEMORY[0x1E6968278]);
        v46 = sub_1C755063C();
        v37 = v11;
        v38 = v35;
        v39 = *v44;
        (*v44)(v36, v4);
        v40 = v38;
        v11 = v37;
        v22 = v49;
        v39(v40, v4);
        sub_1C6FD7FC8(v11, &qword_1EC218C50);
        sub_1C70265F0();
        sub_1C70265F0();
        if ((v46 & 1) == 0)
        {
          return 0;
        }
      }

      v21 += v47;
      v20 = v51 + v47;
      if (!--v18)
      {
        return 1;
      }
    }

    sub_1C70265F0();
    sub_1C70265F0();
  }

  return 0;
}

void sub_1C7002C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C754F65C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16) && v11 && a1 != a2)
  {
    v12 = 0;
    v46 = a2 + 32;
    v47 = a1 + 32;
    v50 = v5 + 16;
    v13 = (v5 + 8);
    v42 = v11;
    while (v12 != v11)
    {
      v14 = (v47 + 56 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = *(v14 + 24);
      v19 = v14[4];
      v48 = v14[5];
      v20 = (v46 + 56 * v12);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = *(v20 + 24);
      v26 = v20[4];
      v25 = v20[5];
      v53 = v26;
      v54 = v19;
      v49 = v25;
      if (v15 != v21 || v16 != v22)
      {
        v28 = v16;
        v29 = v22;
        v30 = v12;
        v52 = v17;
        LODWORD(v51) = v24;
        v45 = v23;
        v31 = sub_1C7551DBC();
        v23 = v45;
        v24 = v51;
        v17 = v52;
        v16 = v28;
        v12 = v30;
        v22 = v29;
        if ((v31 & 1) == 0)
        {
          return;
        }
      }

      if (v18)
      {
        if (!v24)
        {
          return;
        }
      }

      else
      {
        if (v17 == v23)
        {
          v32 = v24;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          return;
        }
      }

      v33 = *(v54 + 16);
      if (v33 != *(v53 + 16))
      {
        return;
      }

      if (v33 && v54 != v53)
      {
        v43 = v12;
        v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v51 = v53 + v34;
        v52 = v54 + v34;
        v35 = v16;
        sub_1C75504FC();
        v44 = v35;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v45 = v22;
        sub_1C75504FC();
        sub_1C75504FC();
        v36 = 0;
        while (v36 < *(v54 + 16))
        {
          v37 = *(v5 + 72) * v36;
          v38 = *(v5 + 16);
          v38(v10, v52 + v37, v4);
          if (v36 >= *(v53 + 16))
          {
            goto LABEL_33;
          }

          v38(v7, v51 + v37, v4);
          sub_1C70259B4(&qword_1EC215FE8, MEMORY[0x1E69C19F0]);
          v39 = sub_1C755063C();
          v40 = *v13;
          (*v13)(v7, v4);
          v40(v10, v4);
          if ((v39 & 1) == 0)
          {

            return;
          }

          if (v33 == ++v36)
          {

            v11 = v42;
            v12 = v43;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

LABEL_27:
      if (++v12 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C7002FDC(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for PartOfWeekExtendedToken(0);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      return 1;
    }

    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(v7 + 72);
    while (1)
    {
      sub_1C702659C();
      sub_1C702659C();
      v15 = *v9 == *v5 && *(v9 + 1) == *(v5 + 1);
      if (!v15 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v16 = v5[24];
      if (v9[24])
      {
        if (!v5[24])
        {
          break;
        }
      }

      else
      {
        if (*(v9 + 2) != *(v5 + 2))
        {
          v16 = 1;
        }

        if (v16)
        {
          break;
        }
      }

      sub_1C754F09C();
      sub_1C70259B4(&qword_1EC2147B8, MEMORY[0x1E69C1750]);
      sub_1C7550A5C();
      sub_1C7550A5C();
      if (v24 == v22 && v25 == v23)
      {

        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v18 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v13 += v14;
      v12 += v14;
      if (!--v10)
      {
        return 1;
      }
    }

    sub_1C70265F0();
    sub_1C70265F0();
  }

  return 0;
}

uint64_t sub_1C70032E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 64)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        if (!v9)
        {
          return 0;
        }
      }

      else
      {
        if (v4 == v8)
        {
          v13 = v9;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          return 0;
        }
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1C7551DBC() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C70033FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = 0xEB00000000797261;
    while (1)
    {
      v5 = v4;
      v6 = *(a1 + v3 + 48);
      v7 = *(a1 + v3 + 56);
      v8 = *(a1 + v3 + 57);
      v9 = *(a2 + v3 + 48);
      v10 = *(a2 + v3 + 56);
      v11 = *(a2 + v3 + 57);
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32) || *(a1 + v3 + 40) != *(a2 + v3 + 40))
      {
        v13 = *(a2 + v3 + 57);
        v14 = sub_1C7551DBC();
        v11 = v13;
        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == v9)
        {
          v15 = v10;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          return 0;
        }
      }

      v4 = v5;
      v16 = v5;
      v17 = 0x73726576696E6E61;
      v18 = 0x73726576696E6E61;
      switch(v8)
      {
        case 1:
          v16 = 0xE800000000000000;
          v18 = 0x7961646874726962;
          break;
        case 2:
          v16 = 0xE700000000000000;
          v18 = 0x676E6964646577;
          break;
        case 3:
          v16 = 0xE700000000000000;
          v18 = 0x747265636E6F63;
          break;
        case 4:
          v18 = 0x45796164696C6F68;
          v16 = 0xEC000000746E6576;
          break;
        case 5:
          v18 = 0x65764574726F7073;
          v16 = 0xEA0000000000746ELL;
          break;
        case 6:
          v16 = 0xE700000000000000;
          v18 = 0x64656D616E6E75;
          break;
        default:
          break;
      }

      v19 = v5;
      switch(v11)
      {
        case 1:
          v19 = 0xE800000000000000;
          v17 = 0x7961646874726962;
          break;
        case 2:
          v19 = 0xE700000000000000;
          v17 = 0x676E6964646577;
          break;
        case 3:
          v19 = 0xE700000000000000;
          v17 = 0x747265636E6F63;
          break;
        case 4:
          v17 = 0x45796164696C6F68;
          v19 = 0xEC000000746E6576;
          break;
        case 5:
          v17 = 0x65764574726F7073;
          v19 = 0xEA0000000000746ELL;
          break;
        case 6:
          v19 = 0xE700000000000000;
          v17 = 0x64656D616E6E75;
          break;
        default:
          break;
      }

      if (v18 == v17 && v16 == v19)
      {
        sub_1C75504FC();
        sub_1C75504FC();
      }

      else
      {
        v21 = sub_1C7551DBC();
        sub_1C75504FC();
        sub_1C75504FC();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C700377C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C70037D4()
{
  OUTLINED_FUNCTION_14_9();
  v2 = *(v0 + 16);
  if (v2 != *(v1 + 16) || !v2 || v0 == v1)
  {
LABEL_42:
    OUTLINED_FUNCTION_13_5();
    return;
  }

  v3 = 0;
  v26 = v1 + 32;
  v27 = v0 + 32;
  while (v3 != v2)
  {
    v4 = (v27 + (v3 << 6));
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v10 = v4[4];
    v9 = v4[5];
    v12 = v4[6];
    v11 = v4[7];
    v13 = (v26 + (v3 << 6));
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    v28 = v13[5];
    v29 = v9;
    v17 = v13[6];
    v30 = v13[7];
    v31 = v11;
    v18 = v5 == *v13 && v6 == v13[1];
    if (!v18 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_42;
    }

    if (v7 != v14 || v8 != v15)
    {
      OUTLINED_FUNCTION_15_1();
      if ((sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v20 = *(v10 + 16);
    if (v20 != *(v16 + 16))
    {
      goto LABEL_42;
    }

    if (v20)
    {
      v21 = v10 == v16;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v10 + 40);
      v23 = (v16 + 40);
      while (v20)
      {
        v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
        if (!v24 && (sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_42;
        }

        v22 += 2;
        v23 += 2;
        if (!--v20)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      break;
    }

LABEL_29:
    if (v12)
    {
      if (!v17)
      {
        goto LABEL_42;
      }

      if (v29 == v28 && v12 == v17)
      {
        if (v31 != v30)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if ((sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v17)
    {
      goto LABEL_42;
    }

    if (v31 != v30)
    {
      goto LABEL_42;
    }

LABEL_41:
    if (++v3 == v2)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
}

uint64_t sub_1C7003984(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_10_6();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C70039DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          break;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (OUTLINED_FUNCTION_387() & 1) == 0)
        {
          break;
        }
      }

      else
      {

        if (v8)
        {
          break;
        }
      }

      if (v7)
      {
        if (!v10)
        {
          break;
        }
      }

      else
      {
        if (v6 == v9)
        {
          v12 = v10;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          break;
        }
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7003B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28(0) - 8;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_392();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &a9 - v35;
  v37 = *(v27 + 16);
  if (v37 == *(v25 + 16) && v37 && v27 != v25)
  {
    v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v39 = v27 + v38;
    v40 = v25 + v38;
    v41 = *(v34 + 72);
    do
    {
      OUTLINED_FUNCTION_296();
      sub_1C702659C();
      sub_1C702659C();
      v42 = v23(v36, v32);
      sub_1C70265F0();
      OUTLINED_FUNCTION_294();
      sub_1C70265F0();
      if ((v42 & 1) == 0)
      {
        break;
      }

      v40 += v41;
      v39 += v41;
      --v37;
    }

    while (v37);
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C7003D44()
{
  OUTLINED_FUNCTION_33();
  v35 = v0;
  v36 = v1;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = *(v6 + 16);
  if (v18 == *(v4 + 16) && v18 && v6 != v4)
  {
    OUTLINED_FUNCTION_191();
    v20 = v6 + v19;
    v21 = v4 + v19;
    v23 = *(v10 + 16);
    v22 = v10 + 16;
    v24 = (v22 - 8);
    v32 = *(v22 + 56);
    v33 = v23;
    while (1)
    {
      v25 = OUTLINED_FUNCTION_55();
      v26 = v33;
      (v33)(v25);
      if (!v18)
      {
        break;
      }

      v27 = v22;
      v26(v14, v21, v8);
      sub_1C70259B4(v34, v35);
      v28 = sub_1C755063C();
      v29 = *v24;
      (*v24)(v14, v8);
      v29(v17, v8);
      if (v28)
      {
        v21 += v32;
        v20 += v32;
        v30 = v18-- == 1;
        v22 = v27;
        if (!v30)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C7003F10()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = *(v3 + 16);
  if (v13 == *(v1 + 16) && v13 && v3 != v1)
  {
    v14 = 0;
    v15 = v3 + 32;
    v16 = v1 + 32;
    v36 = v3 + 32;
    v37 = v13;
    v35 = v1 + 32;
    do
    {
      memcpy(v42, (v15 + 120 * v14), sizeof(v42));
      memcpy(v43, (v16 + 120 * v14), 0x78uLL);
      if (v42[2] != v43[2] || v42[3] != v43[3])
      {
        OUTLINED_FUNCTION_15_1();
        if ((sub_1C7551DBC() & 1) == 0)
        {
          break;
        }
      }

      if (v42[8])
      {
        if (!v43[8])
        {
          break;
        }

        v18 = *(v42[8] + 16);
        if (v18 != *(v43[8] + 16))
        {
          break;
        }

        if (v18)
        {
          v19 = v42[8] == v43[8];
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = (v42[8] + 40);
          v21 = (v43[8] + 40);
          while (v18)
          {
            v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
            if (!v22 && (sub_1C7551DBC() & 1) == 0)
            {
              goto LABEL_47;
            }

            v20 += 2;
            v21 += 2;
            if (!--v18)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_50;
        }
      }

      else if (v43[8])
      {
        break;
      }

LABEL_27:
      v23 = v42[10];
      v24 = v43[10];
      v25 = *(v42[10] + 16);
      if (v25 != *(v43[10] + 16))
      {
        break;
      }

      v38 = v14;
      if (v25 && v42[10] != v43[10])
      {
        OUTLINED_FUNCTION_191();
        v39 = v23 + v26;
        sub_1C6FCA6E4(v42, v41);
        sub_1C6FCA6E4(v43, v41);
        v27 = 0;
        while (v27 < *(v23 + 16))
        {
          sub_1C702659C();
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_49;
          }

          sub_1C702659C();
          v28 = static QueryTokenSuggestion.== infix(_:_:)(v12, v9);
          sub_1C70265F0();
          OUTLINED_FUNCTION_216();
          sub_1C70265F0();
          if ((v28 & 1) == 0)
          {
            sub_1C6FDD548(v43);
            sub_1C6FDD548(v42);
            goto LABEL_47;
          }

          if (v25 == ++v27)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      sub_1C6FCA6E4(v42, v41);
      sub_1C6FCA6E4(v43, v41);
LABEL_37:
      v30 = v42[5];
      v29 = v42[6];
      v31 = v42[7];
      v33 = v43[5];
      v32 = v43[6];
      v34 = v43[7];
      sub_1C6FDD548(v43);
      sub_1C6FDD548(v42);
      if (v31)
      {
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      else if ((v34 & 1) != 0 || v30 != v33 || v29 != v32)
      {
        break;
      }

      v14 = v38 + 1;
      v16 = v35;
      v15 = v36;
    }

    while (v38 + 1 != v37);
  }

LABEL_47:
  OUTLINED_FUNCTION_25_0();
}

uint64_t PartOfDayExtendedToken.init(name:source:partsOfDay:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  *(a6 + 48) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

void PartOfDayExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_575();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  v4 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v4);
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000012);
  v5 = sub_1C754F65C();
  v6 = MEMORY[0x1CCA5D090](v2, v5);
  MEMORY[0x1CCA5CD70](v6);

  v7 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v7);
  if (v1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v8 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v9 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v9);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v10 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v10);
  if (v3)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_596();
}

uint64_t sub_1C70043EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x44664F7374726170 && a2 == 0xEA00000000007961;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C700459C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x44664F7374726170;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7004644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70043EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C700466C(uint64_t a1)
{
  v2 = sub_1C702636C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70046A8(uint64_t a1)
{
  v2 = sub_1C702636C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PartOfDayExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D80);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_263();
  v11 = v4;
  v5 = v2[3];
  v6 = v2;
  v8 = v7;
  OUTLINED_FUNCTION_70(v6, v5);
  sub_1C702636C();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v0)
  {
    OUTLINED_FUNCTION_85_1(v11);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_286();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D90);
    sub_1C70263C0();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_183();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  v9 = OUTLINED_FUNCTION_380();
  v10(v9, v8);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t PartOfDayExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void PartOfDayExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DA8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_158();
  v7 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v7, v8);
  sub_1C702636C();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_139();
    v9 = sub_1C7551BBC();
    v13 = v10;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D90);
    OUTLINED_FUNCTION_286();
    sub_1C7026474();
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_183();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    v11 = OUTLINED_FUNCTION_150();
    v12(v11, v5);
    *v4 = v9;
    *(v4 + 8) = v13;
    *(v4 + 16) = v14;
    *(v4 + 24) = v15;
    *(v4 + 32) = v14;
    *(v4 + 40) = v14;
    *(v4 + 48) = v14;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7004CC8()
{
  OUTLINED_FUNCTION_279_0();
  v0 = sub_1C7551F3C();
  OUTLINED_FUNCTION_278(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  PartOfDayExtendedToken.uniquingKey.getter();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t PartOfWeekExtendedToken.partOfWeek.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = *(type metadata accessor for PartOfWeekExtendedToken(v2) + 24);
  sub_1C754F09C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t PartOfWeekExtendedToken.assetUUIDs.getter()
{
  type metadata accessor for PartOfWeekExtendedToken(0);

  return sub_1C75504FC();
}

uint64_t PartOfWeekExtendedToken.assetUUIDs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for PartOfWeekExtendedToken(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t PartOfWeekExtendedToken.assetUUIDs.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for PartOfWeekExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t PartOfWeekExtendedToken.assetScopingStatus.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  result = type metadata accessor for PartOfWeekExtendedToken(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t PartOfWeekExtendedToken.assetScopingStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PartOfWeekExtendedToken(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t PartOfWeekExtendedToken.assetScopingStatus.modify()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for PartOfWeekExtendedToken(v0);
  return OUTLINED_FUNCTION_525();
}

uint64_t PartOfWeekExtendedToken.uniquingKey.getter()
{
  result = 0x6557664F74726150;
  sub_1C7004F30();
  return result;
}

uint64_t static PartOfWeekExtendedToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v7 = *(type metadata accessor for PartOfWeekExtendedToken(0) + 24);

  return sub_1C6FA1028(a1 + v7, a2 + v7);
}

void PartOfWeekExtendedToken.init(name:source:partOfWeek:assetUUIDs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = type metadata accessor for PartOfWeekExtendedToken(0);
  v14 = v13[7];
  *(a6 + v13[8]) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  v15 = v13[6];
  sub_1C754F09C();
  OUTLINED_FUNCTION_12();
  (*(v16 + 32))(a6 + v15, a4);
  *(a6 + v14) = a5;
  OUTLINED_FUNCTION_135_0();
}

uint64_t PartOfWeekExtendedToken.description.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](*v0, *(v0 + 8));
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000012);
  v2 = type metadata accessor for PartOfWeekExtendedToken(0);
  sub_1C754F09C();
  sub_1C75519EC();
  v3 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v3);
  if (*(v0 + 24))
  {
    v4 = 0xEA00000000006E6FLL;
    v5 = OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v6 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_61_4();

    v7 = OUTLINED_FUNCTION_216();
    MEMORY[0x1CCA5CD70](v7);

    OUTLINED_FUNCTION_189();
    v5 = v10;
    v4 = v11;
  }

  MEMORY[0x1CCA5CD70](v5, v4);

  v8 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v8);
  if (*(v1 + *(v2 + 28)))
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v12;
}

uint64_t sub_1C7005240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6557664F74726170 && a2 == 0xEA00000000006B65;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C70053F0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x6557664F74726170;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7005498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7005240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70054C0(uint64_t a1)
{
  v2 = sub_1C7026548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70054FC(uint64_t a1)
{
  v2 = sub_1C7026548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PartOfWeekExtendedToken.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DC0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C7026548();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v1)
  {
    sub_1C7025D44();
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    type metadata accessor for PartOfWeekExtendedToken(0);
    sub_1C754F09C();
    OUTLINED_FUNCTION_213();
    sub_1C70259B4(v4, v5);
    OUTLINED_FUNCTION_46_6();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_534();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_386();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  v6 = OUTLINED_FUNCTION_295();
  return v7(v6);
}

uint64_t sub_1C700579C()
{
  OUTLINED_FUNCTION_420();
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void PartOfWeekExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  sub_1C754F09C();
  OUTLINED_FUNCTION_3_0();
  v24 = v5;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DD8);
  OUTLINED_FUNCTION_3_0();
  v23 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_391();
  v11 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v17 = *(v16 + 32);
  *(v14 - v13 + v17) = 0;
  v18 = OUTLINED_FUNCTION_505();
  OUTLINED_FUNCTION_70(v18, v19);
  sub_1C7026548();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    *v15 = sub_1C7551BBC();
    *(v15 + 8) = v20;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_138_0();
    sub_1C7551C1C();
    *(v15 + 16) = v27;
    *(v15 + 24) = v28;
    LOBYTE(v27) = 2;
    OUTLINED_FUNCTION_213();
    sub_1C70259B4(v21, v22);
    sub_1C7551C1C();
    (*(v24 + 32))(v15 + *(v11 + 24), v8, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_50_5();
    sub_1C7551BAC();
    *(v15 + *(v11 + 28)) = v27;
    OUTLINED_FUNCTION_183();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_138_0();
    sub_1C7551C1C();
    (*(v23 + 8))(v0, v26);
    *(v15 + v17) = 2;
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_294();
    sub_1C70265F0();
  }

  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7005C98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1C7551F3C();
  a4(v5);
  OUTLINED_FUNCTION_109_4();

  return sub_1C7551FAC();
}

uint64_t TripExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t TripExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_358();
  return v1;
}

void static TripExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v12 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    if (!v9)
    {
LABEL_20:
      OUTLINED_FUNCTION_135_0();
      return;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_20;
    }
  }

  if (v6 == v10 && v7 == v11)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_135_0();

  sub_1C7551DBC();
}

uint64_t TripExtendedToken.init(name:source:highlightUUID:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  *(a7 + 48) = 0;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = v8;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t TripExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_575();
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000032);
  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);
  v4 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v4);
  if (v1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v5 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v6 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  v7 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v7);
  if (v2)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  return v9;
}

uint64_t sub_1C7005FF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6867696C68676968 && a2 == 0xED00004449555574;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C70061A8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x6867696C68676968;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7006254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7005FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C700627C(uint64_t a1)
{
  v2 = sub_1C7026644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70062B8(uint64_t a1)
{
  v2 = sub_1C7026644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TripExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DE8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_263();
  v8 = v3;
  v4 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_70(v4, v5);
  sub_1C7026644();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_316();
  sub_1C755200C();
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_467();
  if (!v0)
  {
    OUTLINED_FUNCTION_85_1(v8);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    OUTLINED_FUNCTION_184();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v6 = OUTLINED_FUNCTION_380();
  v7(v6, v1);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t TripExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void TripExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215DF8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_158();
  v5 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v5, v6);
  sub_1C7026644();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    LOBYTE(v23) = 0;
    OUTLINED_FUNCTION_139();
    v7 = sub_1C7551BBC();
    v9 = v8;
    sub_1C7025E40();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    v17 = v23;
    v32 = v24;
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_139();
    v16 = sub_1C7551BBC();
    v18 = v10;
    sub_1C7025EE8();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v11 = OUTLINED_FUNCTION_150();
    v12(v11, v3);
    v15 = v31;
    *&v19 = v7;
    *(&v19 + 1) = v9;
    *&v20 = v17;
    BYTE8(v20) = v24;
    *&v21 = v16;
    *(&v21 + 1) = v18;
    LOBYTE(v22) = 2;
    *(&v22 + 1) = v31;
    v13 = v20;
    *v2 = v19;
    v2[1] = v13;
    v14 = v22;
    v2[2] = v21;
    v2[3] = v14;
    sub_1C7026698(&v19, &v23);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v23 = v7;
    v24 = v9;
    v25 = v17;
    v26 = v32;
    v27 = v16;
    v28 = v18;
    v29 = 2;
    v30 = v15;
    sub_1C70266D0(&v23);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C70068B0()
{
  sub_1C7551F3C();
  TripExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_109_4();

  return sub_1C7551FAC();
}

PhotosIntelligence::ExtendedTokenEventType_optional __swiftcall ExtendedTokenEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ExtendedTokenEventType.rawValue.getter()
{
  result = 0x73726576696E6E61;
  switch(*v0)
  {
    case 1:
      result = 0x7961646874726962;
      break;
    case 2:
      result = 0x676E6964646577;
      break;
    case 3:
      result = 0x747265636E6F63;
      break;
    case 4:
      result = 0x45796164696C6F68;
      break;
    case 5:
      result = 0x65764574726F7073;
      break;
    case 6:
      result = 0x64656D616E6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7006A5C@<X0>(uint64_t *a1@<X8>)
{
  result = ExtendedTokenEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EventExtendedToken.assetUUIDs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t EventExtendedToken.uniquingKey.getter()
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_358();
  return v1;
}

uint64_t EventExtendedToken.init(name:source:eventType:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *a4;
  *(a6 + 26) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  *(a6 + 25) = v8;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static EventExtendedToken.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_154_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 25);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 25);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v10 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  return sub_1C6FA10B8(v6, v9);
}

void EventExtendedToken.description.getter()
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_575();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_95_0();
  sub_1C755180C();
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_92_2();
  MEMORY[0x1CCA5CD70](0xD000000000000033);
  v3 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v3);
  v4 = OUTLINED_FUNCTION_10_12();
  MEMORY[0x1CCA5CD70](v4);
  if (v1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    OUTLINED_FUNCTION_23_9();
    v5 = PLDebugStringForAmbiguityType();
    sub_1C755068C();
    OUTLINED_FUNCTION_324();

    v6 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_189();
  }

  OUTLINED_FUNCTION_341();

  MEMORY[0x1CCA5CD70](0x746E657665090A2CLL, 0xEE00203A65707954);
  sub_1C75519EC();
  v7 = OUTLINED_FUNCTION_6_17();
  MEMORY[0x1CCA5CD70](v7);
  if (v2)
  {
    sub_1C7025C9C();
    sub_1C75515BC();
  }

  else
  {
    OUTLINED_FUNCTION_256();
  }

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_596();
}

uint64_t sub_1C7006E64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C7599D20 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C7007018(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x707954746E657665;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70070BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7006E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70070E4(uint64_t a1)
{
  v2 = sub_1C7026700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7007120(uint64_t a1)
{
  v2 = sub_1C7026700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventExtendedToken.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E00);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_61_1();
  v8 = *(v0 + 16);
  v4 = OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_70(v4, v5);
  sub_1C7026700();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_297();
  sub_1C7551CCC();
  if (!v1)
  {
    OUTLINED_FUNCTION_85_1(v8);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_286();
    sub_1C7026754();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_184();
    sub_1C7025DEC();
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_183();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_46_6();
    sub_1C7551CBC();
  }

  v6 = OUTLINED_FUNCTION_380();
  v7(v6, v2);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t EventExtendedToken.hashValue.getter()
{
  OUTLINED_FUNCTION_420();
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_190();

  return sub_1C7551FAC();
}

void EventExtendedToken.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_247();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E18);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C7026700();
  OUTLINED_FUNCTION_248();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_139();
    v4 = sub_1C7551BBC();
    v6 = v5;
    OUTLINED_FUNCTION_188_0();
    sub_1C7025E40();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_286();
    sub_1C70267A8();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_184();
    sub_1C7025EE8();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_139();
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v7 = OUTLINED_FUNCTION_12_7();
    v8(v7);
    *v2 = v4;
    *(v2 + 8) = v6;
    *(v2 + 16) = v9;
    *(v2 + 24) = v10;
    *(v2 + 25) = v9;
    *(v2 + 26) = v9;
    *(v2 + 32) = v9;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7007690()
{
  OUTLINED_FUNCTION_279_0();
  v0 = sub_1C7551F3C();
  OUTLINED_FUNCTION_278(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  EventExtendedToken.uniquingKey.getter();
  OUTLINED_FUNCTION_473();

  return sub_1C7551FAC();
}

void __swiftcall ExtendedTokenCollection.init(personExtendedTokens:petExtendedTokens:locationExtendedTokens:genericLocationExtendedTokens:homeExtendedTokens:timeExtendedTokens:partOfDayExtendedTokens:partOfWeekExtendedTokens:tripExtendedTokens:eventExtendedTokens:)(PhotosIntelligence::ExtendedTokenCollection *__return_ptr retstr, Swift::OpaquePointer personExtendedTokens, Swift::OpaquePointer petExtendedTokens, Swift::OpaquePointer locationExtendedTokens, Swift::OpaquePointer genericLocationExtendedTokens, Swift::OpaquePointer homeExtendedTokens, Swift::OpaquePointer timeExtendedTokens, Swift::OpaquePointer partOfDayExtendedTokens, Swift::OpaquePointer partOfWeekExtendedTokens, Swift::OpaquePointer tripExtendedTokens, Swift::OpaquePointer eventExtendedTokens)
{
  retstr->personExtendedTokens = personExtendedTokens;
  retstr->petExtendedTokens = petExtendedTokens;
  retstr->locationExtendedTokens = locationExtendedTokens;
  retstr->genericLocationExtendedTokens = genericLocationExtendedTokens;
  retstr->homeExtendedTokens = homeExtendedTokens;
  retstr->timeExtendedTokens = timeExtendedTokens;
  retstr->partOfDayExtendedTokens = partOfDayExtendedTokens;
  retstr->partOfWeekExtendedTokens = partOfWeekExtendedTokens;
  retstr->tripExtendedTokens = tripExtendedTokens;
  retstr->eventExtendedTokens = eventExtendedTokens;
}

void ExtendedTokenCollection.description.getter()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for PartOfWeekExtendedToken(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v157 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v4 = type metadata accessor for TimeExtendedToken(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v7 = *v0;
  v6 = v0[1];
  v149 = v0[2];
  OUTLINED_FUNCTION_319(v0[3]);
  v151 = v8;
  v152 = v9;
  OUTLINED_FUNCTION_586(v0[7]);
  v155 = v10;
  v156 = v11;
  *&v164 = 0;
  *(&v164 + 1) = 0xE000000000000000;
  sub_1C755180C();
  v169 = 0;
  v170 = 0xE000000000000000;
  MEMORY[0x1CCA5CD70](0xD000000000000040, 0x80000001C7599B90);
  v12 = *(v7 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    OUTLINED_FUNCTION_145_0();
    v13 = v168;
    v7 += 32;
    do
    {
      OUTLINED_FUNCTION_578();
      memcpy(v14, v15, v16);
      OUTLINED_FUNCTION_578();
      memcpy(v17, v18, v19);
      sub_1C7025F3C(&v164, &v158);
      PersonExtendedToken.description.getter();
      OUTLINED_FUNCTION_107_1(v20, v21);
      OUTLINED_FUNCTION_381();
      sub_1C7025F74(&v164);

      v22 = v158;
      v23 = v159;
      v168 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_15(v24);
        OUTLINED_FUNCTION_321();
        sub_1C6F7ED9C();
        v13 = v168;
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v7 += 72;
      --v12;
    }

    while (v12);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v13, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v27 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v27);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v28 + 1, v29 | 0x8000000000000000);
  v30 = *(v6 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    OUTLINED_FUNCTION_145_0();
    v31 = v168;
    v7 = v6 + 32;
    do
    {
      OUTLINED_FUNCTION_577();
      memcpy(v32, v33, v34);
      OUTLINED_FUNCTION_577();
      memcpy(v35, v36, v37);
      sub_1C7025FF8(&v164, &v158);
      PetExtendedToken.description.getter();
      OUTLINED_FUNCTION_107_1(v38, v39);
      OUTLINED_FUNCTION_381();
      sub_1C7026030(&v164);

      v40 = v158;
      v41 = v159;
      v168 = v31;
      v43 = *(v31 + 16);
      v42 = *(v31 + 24);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_15(v42);
        OUTLINED_FUNCTION_321();
        sub_1C6F7ED9C();
        v31 = v168;
      }

      *(v31 + 16) = v43 + 1;
      v44 = v31 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v41;
      v7 += 72;
      --v30;
    }

    while (v30);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v31, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v45 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v45);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v46 + 6, v47 | 0x8000000000000000);
  v48 = *(v149 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    OUTLINED_FUNCTION_145_0();
    v49 = v168;
    v50 = v149 + 32;
    do
    {
      OUTLINED_FUNCTION_185();
      LocationExtendedToken.description.getter();
      v7 = v51;
      OUTLINED_FUNCTION_107_1(v52, v51);
      OUTLINED_FUNCTION_381();
      sub_1C70260EC(&v164);

      OUTLINED_FUNCTION_491();
      v168 = v49;
      OUTLINED_FUNCTION_238();
      if (v54)
      {
        OUTLINED_FUNCTION_15(v53);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C();
        v49 = v168;
      }

      OUTLINED_FUNCTION_413();
      v50 += 56;
      --v48;
    }

    while (v48);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v49, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v55 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v55);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v56 + 10, v57 | 0x8000000000000000);
  v58 = *(v150 + 16);
  v59 = MEMORY[0x1E69E7CC0];
  if (v58)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v59 = v158;
    v60 = (v150 + 64);
    v61 = v157;
    do
    {
      v7 = *(v60 - 3);
      v62 = *(v60 - 2);
      v63 = *(v60 - 8);
      v64 = *(v60 - 7);
      v65 = *v60;
      *&v164 = *(v60 - 4);
      *(&v164 + 1) = v7;
      *&v165 = v62;
      BYTE8(v165) = v63;
      BYTE9(v165) = v64;
      *&v166 = v65;
      sub_1C75504FC();
      sub_1C75504FC();
      v66 = GenericLocationExtendedToken.description.getter();
      OUTLINED_FUNCTION_246(v66, v67);
      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);

      OUTLINED_FUNCTION_318();
      v158 = v59;
      OUTLINED_FUNCTION_238();
      if (v54)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C();
        v59 = v158;
      }

      v60 += 5;
      OUTLINED_FUNCTION_413();
      --v58;
    }

    while (v58);
    OUTLINED_FUNCTION_309_0();
  }

  else
  {
    v61 = v157;
  }

  MEMORY[0x1CCA5D090](v59, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v68 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v68);

  MEMORY[0x1CCA5CD70](0x54656D6F68090A2CLL, 0xEE00203A6E656B6FLL);
  v69 = *(v151 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  if (v69)
  {
    OUTLINED_FUNCTION_145_0();
    v70 = v168;
    v71 = v151 + 32;
    do
    {
      OUTLINED_FUNCTION_185();
      LocationExtendedToken.description.getter();
      v7 = v72;
      OUTLINED_FUNCTION_107_1(v73, v72);
      OUTLINED_FUNCTION_381();
      sub_1C70260EC(&v164);

      OUTLINED_FUNCTION_491();
      v168 = v70;
      OUTLINED_FUNCTION_238();
      if (v54)
      {
        OUTLINED_FUNCTION_15(v74);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C();
        v70 = v168;
      }

      OUTLINED_FUNCTION_413();
      v71 += 56;
      --v69;
    }

    while (v69);
    OUTLINED_FUNCTION_309_0();
  }

  MEMORY[0x1CCA5D090](v70, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_311();
  v75 = OUTLINED_FUNCTION_291();
  MEMORY[0x1CCA5CD70](v75);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v76 + 2, v77 | 0x8000000000000000);
  v78 = *(v152 + 16);
  v79 = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    *&v160 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v79 = v160;
    OUTLINED_FUNCTION_70_4();
    v7 = v152 + (v81 & ~v80);
    v83 = *(v82 + 72);
    do
    {
      sub_1C702659C();
      *&v164 = TimeExtendedToken.description.getter();
      *(&v164 + 1) = v84;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](2604, 0xE200000000000000);

      v85 = v164;
      OUTLINED_FUNCTION_216();
      sub_1C70265F0();
      *&v160 = v79;
      v87 = *(v79 + 16);
      v86 = *(v79 + 24);
      if (v87 >= v86 >> 1)
      {
        OUTLINED_FUNCTION_63_5(v86);
        OUTLINED_FUNCTION_146();
        sub_1C6F7ED9C();
        v79 = v160;
      }

      *(v79 + 16) = v87 + 1;
      *(v79 + 16 * v87 + 32) = v85;
      v7 += v83;
      --v78;
    }

    while (v78);
    OUTLINED_FUNCTION_309_0();
    v61 = v157;
  }

  MEMORY[0x1CCA5D090](v79, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_61_4();

  v88 = OUTLINED_FUNCTION_216();
  MEMORY[0x1CCA5CD70](v88);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v89 + 15, v90 | 0x8000000000000000);
  v91 = *(v153 + 16);
  v92 = MEMORY[0x1E69E7CC0];
  if (v91)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    OUTLINED_FUNCTION_491();
    v93 = (v153 + 80);
    do
    {
      v94 = *(v93 - 5);
      v95 = *(v93 - 4);
      v96 = *(v93 - 24);
      v97 = *(v93 - 2);
      v98 = *(v93 - 1);
      v99 = *v93;
      *&v164 = *(v93 - 6);
      *(&v164 + 1) = v94;
      *&v165 = v95;
      BYTE8(v165) = v96;
      *&v166 = v97;
      *(&v166 + 1) = v98;
      LOBYTE(v167) = v99;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      PartOfDayExtendedToken.description.getter();
      v101 = v100;
      OUTLINED_FUNCTION_246(v102, v100);
      MEMORY[0x1CCA5CD70](2604, 0xE200000000000000);

      v7 = *(&v160 + 1);
      v103 = v160;
      v158 = v92;
      OUTLINED_FUNCTION_274_0();
      if (v54)
      {
        OUTLINED_FUNCTION_186();
        sub_1C6F7ED9C();
        OUTLINED_FUNCTION_491();
      }

      v93 += 56;
      *(v92 + 16) = v94;
      v104 = v92 + 16 * v101;
      *(v104 + 32) = v103;
      *(v104 + 40) = v7;
      --v91;
    }

    while (v91);
  }

  v105 = MEMORY[0x1CCA5D090](v92, MEMORY[0x1E69E6158]);
  v107 = v106;

  MEMORY[0x1CCA5CD70](v105, v107);

  OUTLINED_FUNCTION_125_1();
  MEMORY[0x1CCA5CD70](v108 + 8, v109 | 0x8000000000000000);
  v110 = *(v154 + 16);
  v111 = MEMORY[0x1E69E7CC0];
  if (v110)
  {
    *&v160 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_191();
    v113 = v154 + v112;
    v7 = *(v61 + 72);
    do
    {
      sub_1C702659C();
      *&v164 = PartOfWeekExtendedToken.description.getter();
      *(&v164 + 1) = v114;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](2604, 0xE200000000000000);

      v115 = v164;
      sub_1C70265F0();
      *&v160 = v111;
      v117 = *(v111 + 16);
      v116 = *(v111 + 24);
      if (v117 >= v116 >> 1)
      {
        OUTLINED_FUNCTION_63_5(v116);
        OUTLINED_FUNCTION_177();
        sub_1C6F7ED9C();
        OUTLINED_FUNCTION_318();
      }

      *(v111 + 16) = v117 + 1;
      *(v111 + 16 * v117 + 32) = v115;
      v113 += v7;
      --v110;
    }

    while (v110);
  }

  MEMORY[0x1CCA5D090](v111, MEMORY[0x1E69E6158]);

  v118 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v118);

  MEMORY[0x1CCA5CD70](0x5470697274090A2CLL, 0xEF203A736E656B6FLL);
  v119 = *(v155 + 16);
  v120 = MEMORY[0x1E69E7CC0];
  if (v119)
  {
    v168 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v120 = v168;
    v121 = (v155 + 32);
    do
    {
      v122 = *v121;
      v123 = v121[1];
      v124 = v121[3];
      v166 = v121[2];
      v167 = v124;
      v164 = v122;
      v165 = v123;
      v125 = v121[1];
      v160 = *v121;
      v126 = v121[2];
      v127 = v121[3];
      v161 = v125;
      v162 = v126;
      v163 = v127;
      sub_1C7026698(&v164, &v158);
      v128 = TripExtendedToken.description.getter();
      v130 = v129;
      OUTLINED_FUNCTION_107_1(v128, v129);
      MEMORY[0x1CCA5CD70](663596, 0xE300000000000000);
      sub_1C70266D0(&v164);

      v131 = v158;
      v132 = v159;
      v168 = v120;
      OUTLINED_FUNCTION_407();
      if (v54)
      {
        OUTLINED_FUNCTION_15(v133);
        OUTLINED_FUNCTION_116_0();
        sub_1C6F7ED9C();
        v120 = v168;
      }

      *(v120 + 16) = v130;
      v134 = v120 + 16 * v7;
      *(v134 + 32) = v131;
      *(v134 + 40) = v132;
      v121 += 4;
      --v119;
    }

    while (v119);
  }

  MEMORY[0x1CCA5D090](v120, MEMORY[0x1E69E6158]);

  v135 = OUTLINED_FUNCTION_173();
  MEMORY[0x1CCA5CD70](v135);

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C7599CA0);
  v136 = *(v156 + 16);
  v137 = MEMORY[0x1E69E7CC0];
  if (v136)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v137 = v158;
    v138 = (v156 + 64);
    do
    {
      v139 = *(v138 - 3);
      v140 = *(v138 - 2);
      v141 = *(v138 - 8);
      v142 = *(v138 - 7);
      v143 = *v138;
      *&v164 = *(v138 - 4);
      *(&v164 + 1) = v139;
      *&v165 = v140;
      BYTE8(v165) = v141;
      *(&v165 + 9) = v142;
      *&v166 = v143;
      sub_1C75504FC();
      sub_1C75504FC();
      EventExtendedToken.description.getter();
      OUTLINED_FUNCTION_246(v144, v145);
      MEMORY[0x1CCA5CD70](663596, 0xE300000000000000);

      OUTLINED_FUNCTION_318();
      v146 = *(&v160 + 1);
      v158 = v137;
      OUTLINED_FUNCTION_407();
      if (v54)
      {
        OUTLINED_FUNCTION_116_0();
        sub_1C6F7ED9C();
        v137 = v158;
      }

      v138 += 5;
      *(v137 + 16) = v139;
      v147 = v137 + 16 * v7;
      *(v147 + 32) = v143;
      *(v147 + 40) = v146;
      --v136;
    }

    while (v136);
  }

  MEMORY[0x1CCA5D090](v137, MEMORY[0x1E69E6158]);

  v148 = OUTLINED_FUNCTION_173();
  MEMORY[0x1CCA5CD70](v148);

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_25_0();
}

void ExtendedTokenCollection.intersecting(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = OUTLINED_FUNCTION_424(v23);
  v25 = type metadata accessor for PartOfWeekExtendedToken(v24);
  v26 = OUTLINED_FUNCTION_18(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_140_1();
  v29 = OUTLINED_FUNCTION_119(v28);
  v30 = type metadata accessor for TimeExtendedToken(v29);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_118_1(v33, v34, v35, v36, v37, v38, v39, v40, v240);
  v41 = OUTLINED_FUNCTION_90();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_1C7009510();
  v44 = sub_1C706D154(v43);
  v45 = 0;
  v46 = *(v20 + 16);
  OUTLINED_FUNCTION_382(MEMORY[0x1E69E7CC0]);
LABEL_2:
  while (v45 != v46)
  {
    if (v45 >= *(v20 + 16))
    {
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
      return;
    }

    memcpy(v250, (v20 + 32 + 72 * v45++), 0x41uLL);
    v47 = v250[2].n128_u64[0];
    OUTLINED_FUNCTION_91_2();
    v257 = v48;
    v49 = OUTLINED_FUNCTION_81_3(0xE700000000000000);
    sub_1C7025F3C(v49, v50);
    v51 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v51);
    OUTLINED_FUNCTION_458();
    if (v52)
    {
      v53 = v257;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v55 = v54 & &v251;
        OUTLINED_FUNCTION_136();
        if (((v56 >> v55) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_298(*(v44 + 48) + 16 * v55);
        v58 = v58 && v57 == v47;
        if (!v58)
        {
          v59 = OUTLINED_FUNCTION_312();
          v54 = v55 + 1;
          if ((v59 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v255);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v60 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716D97C();
        }

        OUTLINED_FUNCTION_123_1();
        if (v63)
        {
          OUTLINED_FUNCTION_40_11(v61);
          sub_1C716D97C();
          v62 = v259;
        }

        *(v62 + 16) = v47;
        v64 = OUTLINED_FUNCTION_540(v62 + 72 * v53);
        memcpy(v64, v65, 0x41uLL);
        goto LABEL_2;
      }
    }

    sub_1C7025F74(v250);
  }

  v66 = 0;
  OUTLINED_FUNCTION_147_0();
  v68 = v67 + 32;
  v69 = *(v67 + 16);
LABEL_19:
  while (v66 != v69)
  {
    OUTLINED_FUNCTION_83_1();
    if (v63)
    {
      goto LABEL_175;
    }

    memcpy(v250, (v68 + 72 * v66++), 0x42uLL);
    v70 = v250[2].n128_u64[0];
    v257 = 980706640;
    v71 = OUTLINED_FUNCTION_81_3(0xE400000000000000);
    sub_1C7025FF8(v71, v72);
    v73 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v73);
    OUTLINED_FUNCTION_458();
    if (v74)
    {
      v75 = v257;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v77 = v76 & &v251;
        OUTLINED_FUNCTION_136();
        if (((v78 >> v77) & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_298(*(v44 + 48) + 16 * v77);
        if (!v58 || v79 != v70)
        {
          v81 = OUTLINED_FUNCTION_312();
          v76 = v77 + 1;
          if ((v81 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v254);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v82 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716D940();
        }

        OUTLINED_FUNCTION_123_1();
        if (v63)
        {
          OUTLINED_FUNCTION_40_11(v83);
          sub_1C716D940();
          v84 = v259;
        }

        *(v84 + 16) = v70;
        v85 = OUTLINED_FUNCTION_540(v84 + 72 * v75);
        memcpy(v85, v86, 0x42uLL);
        goto LABEL_19;
      }
    }

    sub_1C7026030(v250);
  }

  v87 = 0;
  OUTLINED_FUNCTION_333();
  v89 = *(v88 + 16);
  v90 = v88 + 32;
  OUTLINED_FUNCTION_538(MEMORY[0x1E69E7CC0]);
LABEL_36:
  while (v87 != v89)
  {
    OUTLINED_FUNCTION_114_1();
    if (v87 >= v91)
    {
      goto LABEL_176;
    }

    OUTLINED_FUNCTION_54_5((v90 + 56 * v87++));
    v92 = v250[1].n128_u64[0];
    OUTLINED_FUNCTION_36_5();
    v257 = v93;
    OUTLINED_FUNCTION_234();
    v95 = OUTLINED_FUNCTION_81_3(v94);
    sub_1C70260B4(v95, v96);
    v97 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v97);
    OUTLINED_FUNCTION_458();
    if (v98)
    {
      v99 = v257;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v100 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_172() != v99 || v101 != v92)
        {
          OUTLINED_FUNCTION_312();
          OUTLINED_FUNCTION_443();
          if ((v103 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v253);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v104 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716DD2C();
        }

        OUTLINED_FUNCTION_123_1();
        if (v63)
        {
          OUTLINED_FUNCTION_40_11(v105);
          sub_1C716DD2C();
          v106 = v259;
        }

        *(v106 + 16) = v92;
        v107 = OUTLINED_FUNCTION_121_2();
        OUTLINED_FUNCTION_47_8(v108, v107, v109, v110);
        goto LABEL_36;
      }
    }

    sub_1C70260EC(v250);
  }

  v111 = 0;
  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_302(v112 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_330(v113);
LABEL_53:
  while (1)
  {
    OUTLINED_FUNCTION_266();
    if (v111 == v114)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v111 >= v115)
    {
      goto LABEL_177;
    }

    v116 = (v242 + 40 * v111);
    v118 = *v116;
    v117 = v116[1];
    OUTLINED_FUNCTION_122_1(v116);
    v120 = *(v119 + 32);
    ++v111;
    v251 = 0;
    v252 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C755180C();

    OUTLINED_FUNCTION_370();
    MEMORY[0x1CCA5CD70](v118, v117);
    v87 = v252;
    if (*(v44 + 16))
    {
      v121 = v251;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v89 = v122 & &v251;
        OUTLINED_FUNCTION_136();
        if (((v123 >> v89) & 1) == 0)
        {
          break;
        }

        v124 = (*(v44 + 48) + 16 * v89);
        if (*v124 != v121 || v124[1] != v87)
        {
          v126 = OUTLINED_FUNCTION_598();
          v122 = v89 + 1;
          if ((v126 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_117_2(&v252);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v250[0].n128_u64[0] = &v251;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_231_0();
        }

        v89 = v253;
        v87 = v253 + 1;
        if (v253 >= v254 >> 1)
        {
          OUTLINED_FUNCTION_63_5(v254);
          OUTLINED_FUNCTION_186();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_231_0();
        }

        v253 = v87;
        OUTLINED_FUNCTION_535(&v252);
        v129 = (&v251 + v89 * v128);
        v129[4] = v118;
        v129[5] = v117;
        v129[6] = v247;
        OUTLINED_FUNCTION_293(v129);
        OUTLINED_FUNCTION_432(v130);
        *(v131 + 64) = v120;
        goto LABEL_53;
      }
    }
  }

  v132 = 0;
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_302(MEMORY[0x1E69E7CC0]);
  v133 = 56;
LABEL_70:
  while (v132 != v87)
  {
    OUTLINED_FUNCTION_114_1();
    if (v132 >= v134)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_54_5((v89 + 56 * v132++));
    v135 = v250[1].n128_u64[0];
    OUTLINED_FUNCTION_36_5();
    v257 = v136;
    OUTLINED_FUNCTION_234();
    v138 = OUTLINED_FUNCTION_81_3(v137);
    sub_1C70260B4(v138, v139);
    v140 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v140);
    OUTLINED_FUNCTION_458();
    if (v141)
    {
      v142 = v257;
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v143 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_172() != v142 || v144 != v135)
        {
          OUTLINED_FUNCTION_312();
          OUTLINED_FUNCTION_443();
          if ((v146 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v260);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_376();
        if ((v147 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716DD2C();
        }

        OUTLINED_FUNCTION_123_1();
        if (v63)
        {
          OUTLINED_FUNCTION_40_11(v148);
          sub_1C716DD2C();
          v149 = v259;
        }

        *(v149 + 16) = v135;
        v150 = OUTLINED_FUNCTION_121_2();
        OUTLINED_FUNCTION_47_8(v151, v150, v152, v153);
        goto LABEL_70;
      }
    }

    sub_1C70260EC(v250);
  }

  v154 = 0;
  OUTLINED_FUNCTION_346();
  v156 = *(v155 + 16);
  while (v154 != v156)
  {
    if (v154 >= *(v155 + 16))
    {
      goto LABEL_179;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_403();
    sub_1C702659C();
    ++v154;
    OUTLINED_FUNCTION_366();
    MEMORY[0x1CCA5CD70](*v249, v249[1]);
    v157 = v252;
    if (*(v44 + 16))
    {
      OUTLINED_FUNCTION_338();
      OUTLINED_FUNCTION_315();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v158 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_298(*(v44 + 48) + 896);
        if (!v58 || v159 != v157)
        {
          OUTLINED_FUNCTION_312();
          OUTLINED_FUNCTION_537();
          if ((v161 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_1_19();
        OUTLINED_FUNCTION_402(&a16);
        sub_1C70267FC();
        OUTLINED_FUNCTION_144_0(&a9);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_406();
        if ((v162 & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DCA8();
          OUTLINED_FUNCTION_287();
        }

        OUTLINED_FUNCTION_123_1();
        if (v63)
        {
          OUTLINED_FUNCTION_28_4(v163);
          sub_1C716DCA8();
          OUTLINED_FUNCTION_287();
        }

        *(v164 + 16) = v157;
        OUTLINED_FUNCTION_1_19();
        sub_1C70267FC();
        goto LABEL_103;
      }
    }

    OUTLINED_FUNCTION_3_12();
    sub_1C70265F0();
LABEL_103:
    OUTLINED_FUNCTION_346();
  }

  v165 = 0;
  OUTLINED_FUNCTION_377(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_52_6(&v258);
LABEL_105:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v165 == v166)
    {
      break;
    }

    OUTLINED_FUNCTION_83_1();
    if (v63)
    {
      goto LABEL_180;
    }

    OUTLINED_FUNCTION_266();
    v168 = (v167 + 56 * v165);
    v169 = *v168;
    v170 = v168[1];
    OUTLINED_FUNCTION_559(v168);
    v172 = *(v171 + 32);
    v133 = *(v171 + 40);
    v245 = *(v171 + 48);
    ++v165;
    OUTLINED_FUNCTION_93_2();
    OUTLINED_FUNCTION_474(v173);
    sub_1C75504FC();
    sub_1C75504FC();
    v243 = v169;
    v174 = OUTLINED_FUNCTION_173();
    MEMORY[0x1CCA5CD70](v174);
    v156 = v252;
    if (*(v44 + 16))
    {
      v175 = v251;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_58_5();
        if ((v176 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_172() != v175 || v177 != v156)
        {
          OUTLINED_FUNCTION_598();
          OUTLINED_FUNCTION_443();
          if ((v179 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v261);
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v250[0].n128_u64[0] = v175;
        if ((v180 & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DC6C();
          v175 = v250[0].n128_u64[0];
        }

        v156 = *(v175 + 16);
        v181 = *(v175 + 24);
        if (v156 >= v181 >> 1)
        {
          OUTLINED_FUNCTION_28_4(v181);
          sub_1C716DC6C();
          OUTLINED_FUNCTION_287();
        }

        OUTLINED_FUNCTION_541();
        v184 = v183 + v156 * v182;
        *(v184 + 32) = v243;
        *(v184 + 40) = v170;
        OUTLINED_FUNCTION_433(v184);
        OUTLINED_FUNCTION_293(v185);
        *(v186 + 64) = v172;
        *(v186 + 72) = v133;
        *(v186 + 80) = v245;
        goto LABEL_105;
      }
    }
  }

  v187 = 0;
  OUTLINED_FUNCTION_368();
  OUTLINED_FUNCTION_330(MEMORY[0x1E69E7CC0]);
  while (v187 != v156)
  {
    if (v187 >= *(v188 + 16))
    {
      goto LABEL_181;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_403();
    OUTLINED_FUNCTION_197();
    ++v187;
    OUTLINED_FUNCTION_281();
    v189 = v252;
    if (*(v44 + 16))
    {
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v190 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v44 + 48) + 16 * v133);
        if (!v58 || v191 != v189)
        {
          OUTLINED_FUNCTION_387();
          OUTLINED_FUNCTION_537();
          if ((v193 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_0_15();
        OUTLINED_FUNCTION_325();
        sub_1C70267FC();
        OUTLINED_FUNCTION_144_0(&v259);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_406();
        if ((v195 & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DC24();
          OUTLINED_FUNCTION_287();
        }

        v197 = *(v194 + 16);
        v196 = *(v194 + 24);
        if (v197 >= v196 >> 1)
        {
          OUTLINED_FUNCTION_28_4(v196);
          sub_1C716DC24();
          OUTLINED_FUNCTION_287();
        }

        *(v194 + 16) = v197 + 1;
        OUTLINED_FUNCTION_0_15();
        sub_1C70267FC();
        goto LABEL_138;
      }
    }

    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_325();
    sub_1C70265F0();
LABEL_138:
    v188 = v241;
  }

  v198 = 0;
  OUTLINED_FUNCTION_159_0();
LABEL_140:
  while (v198 != v156)
  {
    OUTLINED_FUNCTION_114_1();
    if (v198 >= v199)
    {
      goto LABEL_182;
    }

    OUTLINED_FUNCTION_361(v165 + (v198++ << 6));
    v200 = v250[2].n128_u64[0];
    OUTLINED_FUNCTION_169();
    v257 = v201;
    v258 = 0xE500000000000000;
    sub_1C7026698(v250, &v251);
    v202 = OUTLINED_FUNCTION_457();
    MEMORY[0x1CCA5CD70](v202);
    OUTLINED_FUNCTION_458();
    if (v203)
    {
      OUTLINED_FUNCTION_252_0();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        OUTLINED_FUNCTION_89_3();
        if ((v204 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_259(*(v44 + 48) + 16 * v133);
        if (!v58 || v205 != v200)
        {
          OUTLINED_FUNCTION_387();
          OUTLINED_FUNCTION_537();
          if ((v207 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_144_0(&v258);
        v208 = swift_isUniquelyReferenced_nonNull_native();
        v259 = v200;
        if ((v208 & 1) == 0)
        {
          OUTLINED_FUNCTION_33_7();
          sub_1C716DBE8();
          v200 = v259;
        }

        v210 = *(v200 + 16);
        v209 = *(v200 + 24);
        v211 = v200;
        if (v210 >= v209 >> 1)
        {
          OUTLINED_FUNCTION_40_11(v209);
          sub_1C716DBE8();
          v211 = v259;
        }

        *(v211 + 16) = v210 + 1;
        v212 = OUTLINED_FUNCTION_121_2();
        OUTLINED_FUNCTION_233(v213, v212, v214, v215, v250[3]);
        goto LABEL_140;
      }
    }

    sub_1C70266D0(v250);
  }

  v216 = 0;
  v217 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_52_6(&v256);
LABEL_157:
  while (1)
  {
    OUTLINED_FUNCTION_151();
    if (v216 == v218)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v216 >= v219)
    {
      goto LABEL_183;
    }

    OUTLINED_FUNCTION_266();
    v221 = (v220 + 40 * v216);
    v222 = *v221;
    v223 = v221[1];
    v244 = v221[2];
    v248 = *(v221 + 26);
    v224 = v221[4];
    ++v216;
    OUTLINED_FUNCTION_170();
    OUTLINED_FUNCTION_591(v225);
    sub_1C75504FC();
    v246 = v222;
    MEMORY[0x1CCA5CD70](v222, v223);
    v226 = v252;
    if (*(v44 + 16))
    {
      v227 = v251;
      OUTLINED_FUNCTION_338();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_20_13();
      while (1)
      {
        v229 = v228 & &v251;
        OUTLINED_FUNCTION_136();
        if (((v230 >> v229) & 1) == 0)
        {
          break;
        }

        v231 = (*(v44 + 48) + 16 * v229);
        if (*v231 != v227 || v231[1] != v226)
        {
          v233 = OUTLINED_FUNCTION_387();
          v228 = v229 + 1;
          if ((v233 & 1) == 0)
          {
            continue;
          }
        }

        v234 = swift_isUniquelyReferenced_nonNull_native();
        v250[0].n128_u64[0] = v217;
        if ((v234 & 1) == 0)
        {
          OUTLINED_FUNCTION_32_6();
          sub_1C716DBAC();
          OUTLINED_FUNCTION_231_0();
        }

        v236 = *(v217 + 16);
        v235 = *(v217 + 24);
        if (v236 >= v235 >> 1)
        {
          OUTLINED_FUNCTION_28_4(v235);
          sub_1C716DBAC();
          OUTLINED_FUNCTION_231_0();
        }

        *(v217 + 16) = v236 + 1;
        v237 = (v217 + 40 * v236);
        v237[4] = v246;
        v237[5] = v223;
        v237[6] = v244;
        OUTLINED_FUNCTION_293(v237);
        OUTLINED_FUNCTION_432(v238);
        *(v239 + 58) = v248;
        *(v239 + 64) = v224;
        goto LABEL_157;
      }
    }
  }

  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_25_0();
}

void sub_1C7009510()
{
  OUTLINED_FUNCTION_124();
  v56 = v2;
  v3 = v1;
  v60 = v0;
  v5 = v4;
  v70 = v6;
  v71 = v7;
  v69 = v8;
  v9 = MEMORY[0x1E69E6208];
  v11 = v10;
  v13 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v64 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36();
  v57 = v5;
  v58 = v17;
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  v67 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_140_1();
  v65 = v21;
  sub_1C755149C();
  OUTLINED_FUNCTION_3_0();
  v53 = v23;
  v54 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_78();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_2();
  v66 = v31;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v32);
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_0();
  v62 = v35 - v34;
  v61 = v11;
  v72 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v59 = v36;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_61_1();
  v38 = sub_1C75509BC();
  sub_1C755199C();
  v68 = sub_1C75519AC();
  sub_1C755194C();
  (*(v63 + 16))(v62, v60, v13);
  v71 = v9;
  v63 = v13;
  sub_1C75509AC();
  if (v38 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v38)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1C755150C();
      if (__swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_18;
      }

      v69(v29, v65);
      if (v3)
      {
        v48 = OUTLINED_FUNCTION_397();
        v49(v48);

        (*(v55 + 32))(v56, v65, v57);
        v50 = OUTLINED_FUNCTION_180();
        v51(v50);
        goto LABEL_16;
      }

      v3 = 0;
      v39 = OUTLINED_FUNCTION_180();
      v40(v39);
      sub_1C755198C();
      if (!--v38)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v41 = (v64 + 32);
  v42 = (v64 + 8);
  v43 = v58;
  while (1)
  {
    sub_1C755150C();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v44 = OUTLINED_FUNCTION_397();
      v45(v44);
      (*(v53 + 8))(v26, v54);
      goto LABEL_16;
    }

    (*v41)(v43, v26, AssociatedTypeWitness);
    v69(v43, v67);
    if (v3)
    {
      break;
    }

    v3 = 0;
    (*v42)(v43, AssociatedTypeWitness);
    sub_1C755198C();
  }

  (*v42)(v43, AssociatedTypeWitness);
  v46 = OUTLINED_FUNCTION_397();
  v47(v46);

  (*(v55 + 32))(v56, v67, v57);
LABEL_16:
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

void sub_1C7009ADC()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_47_0();
  v3 = type metadata accessor for Hastings.Asset(v2);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = (v6 - v5);
  if (*(v0 + 16))
  {
    sub_1C7551F3C();
    v8 = *v1;
    v9 = v1[1];
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_79_1();
    v12 = ~v11;
    do
    {
      v13 = v10 & v12;
      OUTLINED_FUNCTION_136();
      if (((1 << v13) & v14) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_519();
      sub_1C702659C();
      if (*v7 == v8 && v7[1] == v9)
      {
        OUTLINED_FUNCTION_241();
        break;
      }

      v16 = OUTLINED_FUNCTION_598();
      OUTLINED_FUNCTION_241();
      v10 = v13 + 1;
    }

    while ((v16 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}

char *sub_1C7009C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_470();
  sub_1C75505AC();
  v6 = &v11;
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  do
  {
    OUTLINED_FUNCTION_326();
    if (!v7)
    {
      break;
    }

    OUTLINED_FUNCTION_298(*(v3 + 48) + 16 * v5);
    v9 = v9 && v8 == v4;
    if (v9)
    {
      break;
    }

    OUTLINED_FUNCTION_501();
  }

  while ((sub_1C7551DBC() & 1) == 0);
  return v6;
}

void sub_1C7009CE0()
{
  OUTLINED_FUNCTION_33();
  if (*(v1 + 16))
  {
    v2 = v1;
    v3 = v0;
    sub_1C72DF388();
    OUTLINED_FUNCTION_79_1();
    v6 = v5 & ~v4;
    if ((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v4;
      while (1)
      {
        v8 = 0xE400000000000000;
        v9 = 1701736302;
        switch(*(*(v2 + 48) + v6))
        {
          case 1:
            v8 = 0xE600000000000000;
            v10 = 1936876912;
            goto LABEL_22;
          case 2:
            v9 = 0x67416E6F73726570;
            v13 = 0x6570795465;
            goto LABEL_13;
          case 3:
            v9 = 1702125924;
            break;
          case 4:
            v8 = 0xE900000000000079;
            v9 = 0x6144664F74726170;
            break;
          case 5:
            OUTLINED_FUNCTION_437();
            v8 = v14 + 1529;
            v9 = 0x6557664F74726170;
            break;
          case 6:
            v8 = 0xE600000000000000;
            v10 = 1935762803;
LABEL_22:
            v9 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
            break;
          case 7:
            v8 = 0xE800000000000000;
            v11 = 1633906540;
            goto LABEL_17;
          case 8:
            v9 = 0x4C636972656E6567;
            v8 = 0xEF6E6F697461636FLL;
            break;
          case 9:
            v9 = 1952540791;
            break;
          case 0xA:
            v9 = 0x764563696C627570;
            v8 = 0xEB00000000746E65;
            break;
          case 0xB:
            v9 = 0x6C616E6F73726570;
            v13 = 0x746E657645;
LABEL_13:
            v8 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0xC:
            v9 = 0x746954636973756DLL;
            v8 = 0xEA0000000000656CLL;
            break;
          case 0xD:
            v8 = 0xEB00000000747369;
            v9 = 0x747241636973756DLL;
            break;
          case 0xE:
            OUTLINED_FUNCTION_437();
            v8 = v12 + 6;
            v9 = 0x6E6547636973756DLL;
            break;
          case 0xF:
            v9 = 1685024621;
            break;
          case 0x10:
            v8 = 0xE800000000000000;
            v11 = 1634891108;
LABEL_17:
            v9 = v11 | 0x6E6F697400000000;
            break;
          case 0x11:
            v8 = 0xE600000000000000;
            v9 = 0x706972547369;
            break;
          case 0x12:
            v9 = 0x6D69546C6C417369;
            v8 = 0xE900000000000065;
            break;
          case 0x13:
            v8 = 0xE900000000000072;
            v9 = 0x6564724F74726F73;
            break;
          default:
            break;
        }

        v15 = 0xE400000000000000;
        v16 = 1701736302;
        switch(v3)
        {
          case 1:
            v15 = 0xE600000000000000;
            v17 = 1936876912;
            goto LABEL_45;
          case 2:
            v16 = 0x67416E6F73726570;
            v20 = 0x6570795465;
            goto LABEL_36;
          case 3:
            v16 = 1702125924;
            break;
          case 4:
            v15 = 0xE900000000000079;
            v16 = 0x6144664F74726170;
            break;
          case 5:
            OUTLINED_FUNCTION_437();
            v15 = v21 + 1529;
            v16 = 0x6557664F74726170;
            break;
          case 6:
            v15 = 0xE600000000000000;
            v17 = 1935762803;
LABEL_45:
            v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
            break;
          case 7:
            v15 = 0xE800000000000000;
            v18 = 1633906540;
            goto LABEL_40;
          case 8:
            v16 = 0x4C636972656E6567;
            v15 = 0xEF6E6F697461636FLL;
            break;
          case 9:
            v16 = 1952540791;
            break;
          case 10:
            v16 = 0x764563696C627570;
            v15 = 0xEB00000000746E65;
            break;
          case 11:
            v16 = 0x6C616E6F73726570;
            v20 = 0x746E657645;
LABEL_36:
            v15 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 12:
            v16 = 0x746954636973756DLL;
            v15 = 0xEA0000000000656CLL;
            break;
          case 13:
            v15 = 0xEB00000000747369;
            v16 = 0x747241636973756DLL;
            break;
          case 14:
            OUTLINED_FUNCTION_437();
            v15 = v19 + 6;
            v16 = 0x6E6547636973756DLL;
            break;
          case 15:
            v16 = 1685024621;
            break;
          case 16:
            v15 = 0xE800000000000000;
            v18 = 1634891108;
LABEL_40:
            v16 = v18 | 0x6E6F697400000000;
            break;
          case 17:
            v15 = 0xE600000000000000;
            v16 = 0x706972547369;
            break;
          case 18:
            v16 = 0x6D69546C6C417369;
            v15 = 0xE900000000000065;
            break;
          case 19:
            v15 = 0xE900000000000072;
            v16 = 0x6564724F74726F73;
            break;
          default:
            break;
        }

        if (v9 == v16 && v8 == v15)
        {
          break;
        }

        OUTLINED_FUNCTION_179();
        v23 = sub_1C7551DBC();

        if ((v23 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        goto LABEL_56;
      }
    }
  }

LABEL_56:
  OUTLINED_FUNCTION_25_0();
}

char *sub_1C700A1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_470();
  sub_1C75505AC();
  v6 = &v11;
  sub_1C7551FAC();
  OUTLINED_FUNCTION_79_1();
  do
  {
    OUTLINED_FUNCTION_326();
    if (!v7)
    {
      break;
    }

    OUTLINED_FUNCTION_298(*(v3 + 48) + 16 * v5);
    v9 = v9 && v8 == v4;
    if (v9)
    {
      break;
    }

    OUTLINED_FUNCTION_501();
  }

  while ((sub_1C7551DBC() & 1) == 0);
  return v6;
}

void sub_1C700A254()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_276();
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  if (*(v0 + 16))
  {
    sub_1C7551F3C();
    v6 = *v1;
    v7 = v1[1];
    sub_1C75505AC();
    sub_1C6FF7814();
    sub_1C754F58C();
    OUTLINED_FUNCTION_211();
    sub_1C70259B4(v8, v9);
    sub_1C755059C();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_79_1();
    v12 = v11 & ~v10;
    v25 = v13;
    if ((*(v13 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v24 = ~v10;
      while (1)
      {
        sub_1C702659C();
        v14 = *v5 == v6 && *(v5 + 8) == v7;
        if (!v14 && (sub_1C7551DBC() & 1) == 0)
        {
          break;
        }

        v15 = 0xE900000000000072;
        v16 = 0x6574636172616843;
        switch(*(v5 + 16))
        {
          case 1:
            v15 = 0xE800000000000000;
            v16 = 0x6E6F697461636F4CLL;
            break;
          case 2:
            v15 = 0xE500000000000000;
            v16 = 0x746E657645;
            break;
          case 3:
            v15 = 0xE400000000000000;
            v16 = 1885958740;
            break;
          case 4:
            v15 = 0xE500000000000000;
            v16 = 0x7972657551;
            break;
          case 5:
            v16 = 0x6B61657262656954;
            v15 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        v17 = 0x6574636172616843;
        v18 = 0xE900000000000072;
        switch(*(v1 + 16))
        {
          case 1:
            v18 = 0xE800000000000000;
            v17 = 0x6E6F697461636F4CLL;
            break;
          case 2:
            v18 = 0xE500000000000000;
            v17 = 0x746E657645;
            break;
          case 3:
            v18 = 0xE400000000000000;
            v17 = 1885958740;
            break;
          case 4:
            v18 = 0xE500000000000000;
            v17 = 0x7972657551;
            break;
          case 5:
            v17 = 0x6B61657262656954;
            v18 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        if (v16 == v17 && v15 == v18)
        {
        }

        else
        {
          v20 = sub_1C7551DBC();

          if ((v20 & 1) == 0)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_211();
        sub_1C70259B4(&qword_1EC2147A0, v21);
        OUTLINED_FUNCTION_323();
        sub_1C7550A5C();
        OUTLINED_FUNCTION_323();
        sub_1C7550A5C();
        if (v28 == v26 && v29 == v27)
        {

          OUTLINED_FUNCTION_80_3();
          goto LABEL_36;
        }

        v23 = sub_1C7551DBC();

        OUTLINED_FUNCTION_80_3();
        if (v23)
        {
          goto LABEL_36;
        }

LABEL_33:
        v12 = (v12 + 1) & v24;
        if (((*(v25 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_80_3();
      goto LABEL_33;
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C700A668(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_1C7551F3C();
    MEMORY[0x1CCA5E460](v4);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_345_0();
    do
    {
      OUTLINED_FUNCTION_317();
    }

    while (v6 && *(*(a2 + 48) + v5) != v4);
  }

  return v2;
}

uint64_t sub_1C700A700(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_61_4();
  sub_1C7551F3C();
  sub_1C75505AC();
  v2 = sub_1C7551FAC();

  OUTLINED_FUNCTION_79_1();
  v4 = ~v3;
  do
  {
    OUTLINED_FUNCTION_444();
    v6 = !v11;
    if (!v5)
    {
      break;
    }

    v7 = sub_1C755068C();
    v9 = v8;
    v11 = v7 == sub_1C755068C() && v9 == v10;
    if (v11)
    {

      return 1;
    }

    OUTLINED_FUNCTION_179();
    v12 = sub_1C7551DBC();

    v2 = (v2 & v4) + 1;
  }

  while ((v12 & 1) == 0);
  return v6;
}

void sub_1C700A830()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_276();
  sub_1C754E9AC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_388();
  if (v1)
  {
    OUTLINED_FUNCTION_201();
    sub_1C70259B4(v2, v3);
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_396();
    do
    {
      OUTLINED_FUNCTION_84_2();
      if (!v4)
      {
        break;
      }

      v5 = OUTLINED_FUNCTION_100_2();
      v6(v5);
      OUTLINED_FUNCTION_201();
      sub_1C70259B4(&unk_1EDD10090, v7);
      v8 = OUTLINED_FUNCTION_250();
      v9 = OUTLINED_FUNCTION_35_0();
      v10(v9);
    }

    while ((v8 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C700A970()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_276();
  sub_1C754E97C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_388();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
    sub_1C70259B4(v2, v3);
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_396();
    do
    {
      OUTLINED_FUNCTION_84_2();
      if (!v4)
      {
        break;
      }

      v5 = OUTLINED_FUNCTION_100_2();
      v6(v5);
      OUTLINED_FUNCTION_200_0();
      sub_1C70259B4(&qword_1EDD0CB28, v7);
      v8 = OUTLINED_FUNCTION_250();
      v9 = OUTLINED_FUNCTION_35_0();
      v10(v9);
    }

    while ((v8 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C700AAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_1C7551F3C();
    MEMORY[0x1CCA5E460](a1);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_345_0();
    do
    {
      OUTLINED_FUNCTION_317();
    }

    while (v6 && *(*(a2 + 48) + 8 * v5) != a1);
  }

  return v2;
}

void sub_1C700AB48()
{
  OUTLINED_FUNCTION_33();
  v3 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = v0;
    sub_1C755170C();
  }

  else if (*(v1 + 16))
  {
    sub_1C6F65BE8(0, v2);
    sub_1C75513DC();
    OUTLINED_FUNCTION_38_5();
    v7 = ~v6;
    do
    {
      v8 = v5 & v7;
      OUTLINED_FUNCTION_444();
      if (!v9)
      {
        break;
      }

      v10 = *(*(v3 + 48) + 8 * v8);
      v11 = sub_1C75513EC();

      v5 = v8 + 1;
    }

    while ((v11 & 1) == 0);
  }

  OUTLINED_FUNCTION_25_0();
}