unint64_t sub_26B6673C4()
{
  result = qword_280409AE0;
  if (!qword_280409AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AE0);
  }

  return result;
}

unint64_t sub_26B66741C()
{
  result = qword_280409AE8;
  if (!qword_280409AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AE8);
  }

  return result;
}

unint64_t sub_26B667474()
{
  result = qword_280409AF0;
  if (!qword_280409AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409AF0);
  }

  return result;
}

id OUTLINED_FUNCTION_2_6()
{

  return sub_26B667118(0xD000000000000016, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_26B6E93B4();
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_26B645A94(v1, v0);
}

uint64_t SportsClient.rawValue.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  return OUTLINED_FUNCTION_22_0();
}

uint64_t sub_26B667644()
{
  v0 = sub_26B6E99F4();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_26B6E9A24();
    v4 = v3;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  result = sub_26B669688(v2, v4);
  if (v6 == 4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t TierType.rawValue.getter()
{
  result = 0x505F315F52454954;
  switch(*v0)
  {
    case 1:
      result = 0x315F52454954;
      break;
    case 2:
      result = 0x325F52454954;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B667770(uint64_t a1, unint64_t a2)
{
  v2 = 0x534F63616DLL;
  switch(a2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v2 = 5459817;
      break;
    case 2uLL:
      v2 = 1397716596;
      break;
    case 3uLL:
      v2 = 0x534F6E6F69736976;
      break;
    default:
      v2 = a1;
      break;
  }

  sub_26B66B0E0(a1, a2);
  return v2;
}

uint64_t SportsTierConfig.featureLevel.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_26B655E98(v2);
}

BOOL static SportsTierConfig.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v10 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  if (v4 == 4)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else if (v8 == 4 || (sub_26B647D80(v4, v8) & 1) == 0)
  {
    return 0;
  }

  if (v6 != 1)
  {
    v25[0] = v6;
    v25[1] = v5;
    v25[2] = v7;
    if (v10 != 1)
    {
      v24[0] = v10;
      v24[1] = v9;
      v24[2] = v11;
      v19 = OUTLINED_FUNCTION_2_7();
      sub_26B655E98(v19);
      v20 = OUTLINED_FUNCTION_12_3();
      sub_26B655E98(v20);
      v21 = OUTLINED_FUNCTION_2_7();
      sub_26B655E98(v21);
      v22 = static TierFeatureLevelConfig.== infix(_:_:)(v25, v24);

      v23 = OUTLINED_FUNCTION_2_7();
      sub_26B655E0C(v23);
      return (v22 & 1) != 0;
    }

    v13 = OUTLINED_FUNCTION_2_7();
    sub_26B655E98(v13);
    sub_26B655E98(1);
    v14 = OUTLINED_FUNCTION_2_7();
    sub_26B655E98(v14);

    goto LABEL_12;
  }

  sub_26B655E98(1);
  if (v10 != 1)
  {
    v15 = OUTLINED_FUNCTION_12_3();
    sub_26B655E98(v15);
LABEL_12:
    v16 = OUTLINED_FUNCTION_2_7();
    sub_26B655E0C(v16);
    v17 = OUTLINED_FUNCTION_12_3();
    sub_26B655E0C(v17);
    return 0;
  }

  v12 = 1;
  sub_26B655E98(1);
  sub_26B655E0C(1);
  return v12;
}

uint64_t sub_26B6679E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795472656974 && a2 == 0xE800000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C65727574616566 && a2 == 0xEC0000006C657665)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B667AB4(char a1)
{
  if (a1)
  {
    return 0x4C65727574616566;
  }

  else
  {
    return 0x6570795472656974;
  }
}

uint64_t sub_26B667AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6679E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B667B24(uint64_t a1)
{
  v2 = sub_26B669804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B667B60(uint64_t a1)
{
  v2 = sub_26B669804();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsTierConfig.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409AF8, &qword_26B6F0080);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_0();
  v11 = *v0;
  v14 = v0[2];
  v15 = v0[1];
  v12 = v0[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26B669804();
  sub_26B6EA7C4();
  sub_26B669858();
  OUTLINED_FUNCTION_20_1();
  sub_26B6EA4E4();
  if (!v1)
  {
    sub_26B655E98(v15);
    sub_26B6698AC();
    OUTLINED_FUNCTION_20_1();
    sub_26B6EA4E4();
    sub_26B655E0C(v15);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

void SportsTierConfig.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B18, &qword_26B6F0088);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_7();
  sub_26B669804();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    sub_26B669900();
    OUTLINED_FUNCTION_16_2();
    sub_26B669954();
    OUTLINED_FUNCTION_16_2();
    v7 = OUTLINED_FUNCTION_13_3();
    v8(v7);
    *v2 = v9;
    *(v2 + 8) = v9;
    *(v2 + 24) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_37();
}

uint64_t static TierFeatureLevelConfig.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a2;

    OUTLINED_FUNCTION_12_3();
    sub_26B660968();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_26B660AA0();
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {

      sub_26B660CAC();
      v13 = v12;

      if (v13)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26B667F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F726665726F7473 && a2 == 0xEB0000000073746ELL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954656369766564 && a2 == 0xEB00000000736570;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

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

uint64_t sub_26B6680B0(char a1)
{
  if (!a1)
  {
    return 0x6F726665726F7473;
  }

  if (a1 == 1)
  {
    return 0x7954656369766564;
  }

  return 0x7365727574616566;
}

uint64_t sub_26B668120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B667F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B668148(uint64_t a1)
{
  v2 = sub_26B6699A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B668184(uint64_t a1)
{
  v2 = sub_26B6699A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierFeatureLevelConfig.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B30, &qword_26B6F0090);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_0();
  v10 = *v0;
  v13 = v0[2];
  v14 = v0[1];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v12 = sub_26B6699A8();

  OUTLINED_FUNCTION_100();
  sub_26B6EA7C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B40, &qword_26B6F0098);
  sub_26B6699FC();
  OUTLINED_FUNCTION_4_4();

  if (!v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669ADC();
    OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B70, &qword_26B6F00A8);
    sub_26B669BBC();
    OUTLINED_FUNCTION_4_4();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

void TierFeatureLevelConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B88, &qword_26B6F00B0);
  OUTLINED_FUNCTION_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_7();
  sub_26B6699A8();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B40, &qword_26B6F0098);
    sub_26B669C9C();
    OUTLINED_FUNCTION_1_7();
    sub_26B6EA414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669D7C();
    OUTLINED_FUNCTION_1_7();
    sub_26B6EA414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B70, &qword_26B6F00A8);
    sub_26B669E5C();
    OUTLINED_FUNCTION_1_7();
    sub_26B6EA414();
    v19 = OUTLINED_FUNCTION_14_3();
    v20(v19);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

BOOL static TierStoreFront.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_26B66861C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616E457062507369 && a2 == 0xEC00000064656C62)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6686BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B66861C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6686E8(uint64_t a1)
{
  v2 = sub_26B669F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B668724(uint64_t a1)
{
  v2 = sub_26B669F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierStoreFront.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BC0, &qword_26B6F00B8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  v10 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26B669F3C();
  sub_26B6EA7C4();
  sub_26B6EA4B4();
  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_12_3();
  v13(v12);
  OUTLINED_FUNCTION_37();
}

void TierStoreFront.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BD0, &qword_26B6F00C0);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_7();
  sub_26B669F3C();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    v7 = sub_26B6EA3E4();
    v8 = OUTLINED_FUNCTION_13_3();
    v9(v8);
    *v2 = v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_37();
}

uint64_t TierPlatformType.minVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

SportsKit::TierPlatformType __swiftcall TierPlatformType.init(minVersion:disabledBuilds:)(SportsKit::TierPlatformType minVersion, Swift::OpaquePointer_optional disabledBuilds)
{
  *v2 = minVersion.minVersion;
  v2[1].value._countAndFlagsBits = disabledBuilds.value._rawValue;
  minVersion.disabledBuilds = disabledBuilds;
  return minVersion;
}

uint64_t static TierPlatformType.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_26B6EA5D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v6)
    {
      v8 = OUTLINED_FUNCTION_22_0();
      if (sub_26B636ED0(v8, v9))
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26B668A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737265566E696DLL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xEE0073646C697542)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B668B4C(char a1)
{
  if (a1)
  {
    return 0x64656C6261736964;
  }

  else
  {
    return 0x69737265566E696DLL;
  }
}

uint64_t sub_26B668B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B668A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B668BC4(uint64_t a1)
{
  v2 = sub_26B669F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B668C00(uint64_t a1)
{
  v2 = sub_26B669F90();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierPlatformType.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BD8, &qword_26B6F00C8);
  OUTLINED_FUNCTION_4(v5);
  v14 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_0();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[2];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26B669F90();
  sub_26B6EA7C4();
  sub_26B6EA4A4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B669FE4(&qword_280409BF0);
    OUTLINED_FUNCTION_59_0();
    sub_26B6EA4E4();
  }

  (*(v14 + 8))(v2, v5);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_37();
}

void TierPlatformType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BF8, &qword_26B6F00D8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  OUTLINED_FUNCTION_3_7();
  sub_26B669F90();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v13 = sub_26B6EA3D4();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
    sub_26B669FE4(&qword_280409C00);
    sub_26B6EA414();
    (*(v7 + 8))(v12, v5);
    v16 = v17[1];
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v16;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t static TierFeature.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      sub_26B660AA0();
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26B669068(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B669108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B669068(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B669134(uint64_t a1)
{
  v2 = sub_26B66A050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B669170(uint64_t a1)
{
  v2 = sub_26B66A050();

  return MEMORY[0x2821FE720](a1, v2);
}

void TierFeature.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409C08, &qword_26B6F00E0);
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_26B66A050();

  OUTLINED_FUNCTION_100();
  sub_26B6EA7C4();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
  sub_26B669ADC();
  OUTLINED_FUNCTION_59_0();
  sub_26B6EA4E4();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_37();
}

void TierFeature.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409C18, &qword_26B6F00E8);
  OUTLINED_FUNCTION_4(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_7();
  sub_26B66A050();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669D7C();
    sub_26B6EA414();
    v19 = *(v15 + 8);
    v20 = OUTLINED_FUNCTION_12_3();
    v21(v20);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_37();
}

uint64_t TierType.init(from:)()
{
  OUTLINED_FUNCTION_18_2();
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA764();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v0);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA5E4();
  v6 = sub_26B6EA394();

  if (v6 >= 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  *v2 = v7;
  return __swift_destroy_boxed_opaque_existential_1(v0);
}

SportsKit::TierType_optional __swiftcall TierType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6EA394();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B6695F8@<X0>(uint64_t *a1@<X8>)
{
  result = TierType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B669688(uint64_t a1, uint64_t a2)
{
  if (a1 == 6512973 && a2 == 0xE300000000000000)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_59_0();
  if (sub_26B6EA5D4())
  {
    goto LABEL_17;
  }

  v5 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
  if (v5 || (OUTLINED_FUNCTION_59_0(), (sub_26B6EA5D4() & 1) != 0) || (a1 == 1684099177 ? (v6 = a2 == 0xE400000000000000) : (v6 = 0), v6 || (OUTLINED_FUNCTION_59_0(), (sub_26B6EA5D4() & 1) != 0) || (a1 == 0x5654656C707041 ? (v8 = a2 == 0xE700000000000000) : (v8 = 0), v8 || (OUTLINED_FUNCTION_59_0(), (sub_26B6EA5D4() & 1) != 0) || (a1 == 0x447974696C616552 ? (v9 = a2 == 0xED00006563697665) : (v9 = 0), v9 || (OUTLINED_FUNCTION_59_0(), (sub_26B6EA5D4() & 1) != 0)))))
  {
LABEL_17:
  }

  return OUTLINED_FUNCTION_22_0();
}

unint64_t sub_26B669804()
{
  result = qword_280409B00;
  if (!qword_280409B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B00);
  }

  return result;
}

unint64_t sub_26B669858()
{
  result = qword_280409B08;
  if (!qword_280409B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B08);
  }

  return result;
}

unint64_t sub_26B6698AC()
{
  result = qword_280409B10;
  if (!qword_280409B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B10);
  }

  return result;
}

unint64_t sub_26B669900()
{
  result = qword_280409B20;
  if (!qword_280409B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B20);
  }

  return result;
}

unint64_t sub_26B669954()
{
  result = qword_280409B28;
  if (!qword_280409B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B28);
  }

  return result;
}

unint64_t sub_26B6699A8()
{
  result = qword_280409B38;
  if (!qword_280409B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B38);
  }

  return result;
}

unint64_t sub_26B6699FC()
{
  result = qword_280409B48;
  if (!qword_280409B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409B40, &qword_26B6F0098);
    sub_26B669A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B48);
  }

  return result;
}

unint64_t sub_26B669A88()
{
  result = qword_280409B50;
  if (!qword_280409B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B50);
  }

  return result;
}

unint64_t sub_26B669ADC()
{
  result = qword_280409B60;
  if (!qword_280409B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B60);
  }

  return result;
}

unint64_t sub_26B669B68()
{
  result = qword_280409B68;
  if (!qword_280409B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B68);
  }

  return result;
}

unint64_t sub_26B669BBC()
{
  result = qword_280409B78;
  if (!qword_280409B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409B70, &qword_26B6F00A8);
    sub_26B669C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B78);
  }

  return result;
}

unint64_t sub_26B669C48()
{
  result = qword_280409B80;
  if (!qword_280409B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B80);
  }

  return result;
}

unint64_t sub_26B669C9C()
{
  result = qword_280409B90;
  if (!qword_280409B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409B40, &qword_26B6F0098);
    sub_26B669D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B90);
  }

  return result;
}

unint64_t sub_26B669D28()
{
  result = qword_280409B98;
  if (!qword_280409B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409B98);
  }

  return result;
}

unint64_t sub_26B669D7C()
{
  result = qword_280409BA0;
  if (!qword_280409BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409B58, &qword_26B6F00A0);
    sub_26B669E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BA0);
  }

  return result;
}

unint64_t sub_26B669E08()
{
  result = qword_280409BA8;
  if (!qword_280409BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BA8);
  }

  return result;
}

unint64_t sub_26B669E5C()
{
  result = qword_280409BB0;
  if (!qword_280409BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409B70, &qword_26B6F00A8);
    sub_26B669EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BB0);
  }

  return result;
}

unint64_t sub_26B669EE8()
{
  result = qword_280409BB8;
  if (!qword_280409BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BB8);
  }

  return result;
}

unint64_t sub_26B669F3C()
{
  result = qword_280409BC8;
  if (!qword_280409BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BC8);
  }

  return result;
}

unint64_t sub_26B669F90()
{
  result = qword_280409BE0;
  if (!qword_280409BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409BE0);
  }

  return result;
}

uint64_t sub_26B669FE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409BE8, &qword_26B6F00D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B66A050()
{
  result = qword_280409C10;
  if (!qword_280409C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C10);
  }

  return result;
}

uint64_t SportsClient.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x5050415F5654 && a2 == 0xE600000000000000;
  if (v6 || (result = sub_26B6EA5D4(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

unint64_t sub_26B66A120()
{
  result = qword_280409C20;
  if (!qword_280409C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C20);
  }

  return result;
}

uint64_t sub_26B66A180@<X0>(uint64_t *a1@<X8>)
{
  result = SportsClient.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SportsKit22TierFeatureLevelConfigVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26B66A27C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 32))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B66A2DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26B66A338(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B66A38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TierStoreFront(unsigned __int8 *a1, unsigned int a2)
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
      if (v4)
      {
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TierStoreFront(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B66A568(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B66A5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B66A61C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B66A670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TierType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B66A7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B66A7F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B66A848(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B66A860(void *result, int a2)
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

_BYTE *sub_26B66A8AC(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TierFeatureLevelConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26B66AA34(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B66AB14()
{
  result = qword_280409C28;
  if (!qword_280409C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C28);
  }

  return result;
}

unint64_t sub_26B66AB6C()
{
  result = qword_280409C30;
  if (!qword_280409C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C30);
  }

  return result;
}

unint64_t sub_26B66ABC4()
{
  result = qword_280409C38;
  if (!qword_280409C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C38);
  }

  return result;
}

unint64_t sub_26B66AC1C()
{
  result = qword_280409C40;
  if (!qword_280409C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C40);
  }

  return result;
}

unint64_t sub_26B66AC74()
{
  result = qword_280409C48;
  if (!qword_280409C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C48);
  }

  return result;
}

unint64_t sub_26B66ACCC()
{
  result = qword_280409C50;
  if (!qword_280409C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C50);
  }

  return result;
}

unint64_t sub_26B66AD24()
{
  result = qword_280409C58;
  if (!qword_280409C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C58);
  }

  return result;
}

unint64_t sub_26B66AD7C()
{
  result = qword_280409C60;
  if (!qword_280409C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C60);
  }

  return result;
}

unint64_t sub_26B66ADD4()
{
  result = qword_280409C68;
  if (!qword_280409C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C68);
  }

  return result;
}

unint64_t sub_26B66AE2C()
{
  result = qword_280409C70;
  if (!qword_280409C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C70);
  }

  return result;
}

unint64_t sub_26B66AE84()
{
  result = qword_280409C78;
  if (!qword_280409C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C78);
  }

  return result;
}

unint64_t sub_26B66AEDC()
{
  result = qword_280409C80;
  if (!qword_280409C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C80);
  }

  return result;
}

unint64_t sub_26B66AF34()
{
  result = qword_280409C88;
  if (!qword_280409C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C88);
  }

  return result;
}

unint64_t sub_26B66AF8C()
{
  result = qword_280409C90;
  if (!qword_280409C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C90);
  }

  return result;
}

unint64_t sub_26B66AFE4()
{
  result = qword_280409C98;
  if (!qword_280409C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C98);
  }

  return result;
}

unint64_t sub_26B66B038()
{
  result = qword_280409CA0;
  if (!qword_280409CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CA0);
  }

  return result;
}

unint64_t sub_26B66B08C()
{
  result = qword_280409CA8;
  if (!qword_280409CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CA8);
  }

  return result;
}

uint64_t sub_26B66B0E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_26B6EA4E4();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_26B6EA414();
}

uint64_t SportsManagerError.errorCode.getter()
{
  v1 = *v0;
  result = 301;
  switch(v1 >> 5)
  {
    case 1u:
      return result;
    case 2u:
      result = OUTLINED_FUNCTION_6_5();
      break;
    case 3u:
      result = OUTLINED_FUNCTION_5_5();
      break;
    case 4u:
      result = OUTLINED_FUNCTION_7_4();
      break;
    case 5u:
      result = 601;
      break;
    default:
      result = v1 + 101;
      break;
  }

  return result;
}

uint64_t SportsManagerError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409CB0, &qword_26B6F0BD0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_0_7(inited, xmmword_26B6EBA50);
  v3 = sub_26B6E9A74();
  inited[4].n128_u64[1] = MEMORY[0x277D837D0];
  inited[3].n128_u64[0] = v3;
  inited[3].n128_u64[1] = v4;
  return sub_26B6E9944();
}

uint64_t SportsManagerError.SubscriptionBoundError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409CB0, &qword_26B6F0BD0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_0_7(inited, xmmword_26B6EBA50);
  v3 = sub_26B6E9A74();
  inited[4].n128_u64[1] = MEMORY[0x277D837D0];
  inited[3].n128_u64[0] = v3;
  inited[3].n128_u64[1] = v4;
  return sub_26B6E9944();
}

uint64_t sub_26B66B4F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409CB0, &qword_26B6F0BD0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_0_7(inited, xmmword_26B6EBA50);
  v1 = sub_26B6E9A74();
  inited[4].n128_u64[1] = MEMORY[0x277D837D0];
  inited[3].n128_u64[0] = v1;
  inited[3].n128_u64[1] = v2;
  return sub_26B6E9944();
}

uint64_t sub_26B66B5A8(uint64_t a1)
{
  v2 = sub_26B66C880();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B66B5E4(uint64_t a1)
{
  v2 = sub_26B66C880();

  return MEMORY[0x28211F4A8](a1, v2);
}

SportsKit::SportsManagerError::SubscriptionBoundError_optional __swiftcall SportsManagerError.SubscriptionBoundError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 101;
  if ((rawValue - 101) >= 4)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26B66B670@<X0>(uint64_t *a1@<X8>)
{
  result = SportsManagerError.SubscriptionBoundError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26B66B7A8(uint64_t a1)
{
  v2 = sub_26B66C7D8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B66B7E4(uint64_t a1)
{
  v2 = sub_26B66C7D8();
  v3 = sub_26B66C82C();
  v4 = sub_26B66C4E4();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t sub_26B66B898(uint64_t a1)
{
  v2 = sub_26B66C730();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B66B958(uint64_t a1)
{
  v2 = sub_26B66C688();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B66BA18(uint64_t a1)
{
  v2 = sub_26B66C5E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B66BAD8(uint64_t a1)
{
  v2 = sub_26B66C538();

  return MEMORY[0x28211F4B8](a1, v2);
}

unint64_t sub_26B66BB5C()
{
  result = qword_280409CB8;
  if (!qword_280409CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CB8);
  }

  return result;
}

unint64_t sub_26B66BBB4()
{
  result = qword_280409CC0;
  if (!qword_280409CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CC0);
  }

  return result;
}

unint64_t sub_26B66BC0C()
{
  result = qword_280409CC8;
  if (!qword_280409CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CC8);
  }

  return result;
}

unint64_t sub_26B66BC64()
{
  result = qword_280409CD0;
  if (!qword_280409CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CD0);
  }

  return result;
}

unint64_t sub_26B66BCBC()
{
  result = qword_280409CD8;
  if (!qword_280409CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CD8);
  }

  return result;
}

unint64_t sub_26B66BD14()
{
  result = qword_280409CE0;
  if (!qword_280409CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CE0);
  }

  return result;
}

unint64_t sub_26B66BD6C()
{
  result = qword_280409CE8;
  if (!qword_280409CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CE8);
  }

  return result;
}

unint64_t sub_26B66BDC4()
{
  result = qword_280409CF0;
  if (!qword_280409CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CF0);
  }

  return result;
}

unint64_t sub_26B66BE1C()
{
  result = qword_280409CF8;
  if (!qword_280409CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409CF8);
  }

  return result;
}

unint64_t sub_26B66BE74()
{
  result = qword_280409D00;
  if (!qword_280409D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D00);
  }

  return result;
}

unint64_t sub_26B66BECC()
{
  result = qword_280409D08;
  if (!qword_280409D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D08);
  }

  return result;
}

unint64_t sub_26B66BF24()
{
  result = qword_280409D10;
  if (!qword_280409D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D10);
  }

  return result;
}

unint64_t sub_26B66BF7C()
{
  result = qword_280409D18;
  if (!qword_280409D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D18);
  }

  return result;
}

uint64_t sub_26B66C010(uint64_t a1)
{
  v2 = sub_26B66C43C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B66C078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a3();
  v7 = a4();
  v8 = sub_26B66C4E4();

  return MEMORY[0x28211F498](a1, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for SportsManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3B)
  {
    if (a2 + 197 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 197) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 198;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7))) ^ 0x3F;
  if (v5 >= 0x3A)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for SportsManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 197 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 197) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3B)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3A)
  {
    v6 = ((a2 - 59) >> 8) + 1;
    *result = a2 - 59;
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
          *result = 4 * (((-a2 >> 3) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsManagerError.SubscriptionBoundError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26B66C394(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B66C43C()
{
  result = qword_280409D20;
  if (!qword_280409D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D20);
  }

  return result;
}

unint64_t sub_26B66C490()
{
  result = qword_280409D28;
  if (!qword_280409D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D28);
  }

  return result;
}

unint64_t sub_26B66C4E4()
{
  result = qword_280409D30;
  if (!qword_280409D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D30);
  }

  return result;
}

unint64_t sub_26B66C538()
{
  result = qword_280409D38;
  if (!qword_280409D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D38);
  }

  return result;
}

unint64_t sub_26B66C58C()
{
  result = qword_280409D40;
  if (!qword_280409D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D40);
  }

  return result;
}

unint64_t sub_26B66C5E0()
{
  result = qword_280409D48;
  if (!qword_280409D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D48);
  }

  return result;
}

unint64_t sub_26B66C634()
{
  result = qword_280409D50;
  if (!qword_280409D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D50);
  }

  return result;
}

unint64_t sub_26B66C688()
{
  result = qword_280409D58;
  if (!qword_280409D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D58);
  }

  return result;
}

unint64_t sub_26B66C6DC()
{
  result = qword_280409D60;
  if (!qword_280409D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D60);
  }

  return result;
}

unint64_t sub_26B66C730()
{
  result = qword_280409D68;
  if (!qword_280409D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D68);
  }

  return result;
}

unint64_t sub_26B66C784()
{
  result = qword_280409D70;
  if (!qword_280409D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D70);
  }

  return result;
}

unint64_t sub_26B66C7D8()
{
  result = qword_280409D78;
  if (!qword_280409D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D78);
  }

  return result;
}

unint64_t sub_26B66C82C()
{
  result = qword_280409D80;
  if (!qword_280409D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D80);
  }

  return result;
}

unint64_t sub_26B66C880()
{
  result = qword_280409D88;
  if (!qword_280409D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409D88);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_0_7(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1868983913;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_1_8(char *a1@<X8>)
{
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_26B66C918(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_26B63B9CC(0, v1, 0);
  v2 = v31;
  result = sub_26B677200(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_26B63B9CC(v14 > 1, v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = v31 + 24 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      *(v16 + 48) = 0;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_26B6784F0(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_26B6784F0(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
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
  return result;
}

uint64_t sub_26B66CB58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26B66CB9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id sub_26B66CBF4()
{
  result = [objc_allocWithZone(type metadata accessor for SportsManager()) init];
  qword_2810CD350 = result;
  return result;
}

id SportsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SportsManager.shared.getter()
{
  if (qword_2810CD348 != -1)
  {
    swift_once();
  }

  v1 = qword_2810CD350;

  return v1;
}

uint64_t sub_26B66CD88()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_26B66CDE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_26B66CD88();
}

void (*sub_26B66CE14(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC9SportsKit13SportsManager_delegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_40_2();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_26B66CE90;
}

void sub_26B66CE90(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_26B66CF8C()
{
  OUTLINED_FUNCTION_64_1();
  v2 = v1;
  v4 = v3;
  v8 = *(v0 + *v5);
  v6 = OUTLINED_FUNCTION_47_1(v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_1_9();
  sub_26B678324(v2, v4);
  sub_26B6E9674();
  OUTLINED_FUNCTION_63_1();
}

id SportsManager.init()()
{
  v0 = sub_26B6E93B4();
  v1 = OUTLINED_FUNCTION_46(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v6 = (v5 - v4);
  type metadata accessor for XPCConnectionProvider();
  OUTLINED_FUNCTION_13_4();
  v7 = swift_allocObject();
  type metadata accessor for GuaranteedProxy();
  OUTLINED_FUNCTION_7_5();
  swift_allocObject();
  *(v7 + 16) = sub_26B6DF660();
  type metadata accessor for PersistentStore(0);
  OUTLINED_FUNCTION_24_1();

  v8 = PersistentStore.__allocating_init()();
  v9 = objc_opt_self();

  v10 = [v9 defaultManager];
  NSFileManager.currentContainerURL.getter(v6);

  v11 = type metadata accessor for PlaysStore();
  OUTLINED_FUNCTION_13_2(v11);
  v12 = OUTLINED_FUNCTION_55_0();
  v13 = PlaysStore.init(storeUrl:)(v12);
  sub_26B677240(v7, v8, v13);
  OUTLINED_FUNCTION_24_1();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

void sub_26B66D16C()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_61();
  v9 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_appState);
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F00, &qword_26B6F17D8);
  sub_26B6E9634();
  swift_endAccess();
  OUTLINED_FUNCTION_13_4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26B678324(&qword_2810CD760, &unk_280409EF8);
  sub_26B6E96E4();

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_53_0();
  v12(v11);
  OUTLINED_FUNCTION_40_2();
  sub_26B6E95D4();
  swift_endAccess();

  sub_26B66D9DC();
}

void sub_26B66D32C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      if (v1 != 1)
      {
LABEL_7:

        return;
      }

      v4 = *(*__swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider), *(Strong + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider + 24)) + 16);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();

      v9 = sub_26B675164(v8);
      v10 = *(v9 + qword_2810D4240 + 8);
      (*(v9 + qword_2810D4240))(sub_26B66D9CC, 0, nullsub_1, 0);
    }

    else
    {
      v11 = *(*__swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider), *(Strong + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider + 24)) + 16);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();

      v16 = sub_26B675164(v15);
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      v19 = *(v16 + qword_2810D4240);
      v18 = *(v16 + qword_2810D4240 + 8);
      v20 = v3;
      v19(sub_26B678364, v17, sub_26B66D870, 0);
    }

    goto LABEL_7;
  }
}

id sub_26B66D510(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
  swift_beginAccess();
  v5 = *&v4[a2];

  sub_26B6E2C94(v6);
  v7 = sub_26B6E9C24();

  aBlock[4] = sub_26B66D620;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B678C08;
  aBlock[3] = &block_descriptor_120;
  v8 = _Block_copy(aBlock);
  [v3 unsubscribeFromEventsWithEventIds:v7 completion:v8];
  _Block_release(v8);

  return [v3 flushMetrics];
}

void sub_26B66D620(NSObject *a1)
{
  if (!a1)
  {
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v10 = sub_26B6E95C4();
    __swift_project_value_buffer(v10, qword_2810D4308);
    oslog = sub_26B6E95A4();
    v11 = sub_26B6E9E64();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26B630000, oslog, v11, "SportsManager: Unsubscribed from all active events", v12, 2u);
      MEMORY[0x26D67E950](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_2810CE9F0 != -1)
  {
    swift_once();
  }

  v3 = sub_26B6E95C4();
  __swift_project_value_buffer(v3, qword_2810D4308);
  v4 = a1;
  oslog = sub_26B6E95A4();
  v5 = sub_26B6E9E74();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_26B630000, oslog, v5, "SportsManager: unable to unsubscribe for some or all events: %@", v6, 0xCu);
    sub_26B6776D0(v7, &unk_280409E88);
    MEMORY[0x26D67E950](v7, -1, -1);
    MEMORY[0x26D67E950](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void sub_26B66D870(void *a1)
{
  if (qword_2810CE9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_26B6E95C4();
  __swift_project_value_buffer(v2, qword_2810D4308);
  v3 = a1;
  oslog = sub_26B6E95A4();
  v4 = sub_26B6E9E64();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_26B630000, oslog, v4, "SportsManager: unable to unsubscribe for some or all events: %@", v5, 0xCu);
    sub_26B6776D0(v6, &unk_280409E88);
    MEMORY[0x26D67E950](v6, -1, -1);
    MEMORY[0x26D67E950](v5, -1, -1);
  }
}

void sub_26B66D9DC()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v4 = sub_26B6E93B4();
  v5 = OUTLINED_FUNCTION_46(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_61();
  v8 = OBJC_IVAR____TtC9SportsKit13SportsManager_activitiesMonitor;
  if (!*&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_activitiesMonitor])
  {
    v9 = *&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore], *&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24]);
    v10 = *(v9 + 8);
    v11 = OUTLINED_FUNCTION_46_1();
    v12(v11);
    type metadata accessor for ActivitiesMonitor();
    swift_allocObject();
    v13 = sub_26B6E33AC(v0, &off_287C2BBA0, v1, v3 & 1);
    v14 = *&v0[v8];
    *&v0[v8] = v13;

    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v15 = sub_26B6E95C4();
    __swift_project_value_buffer(v15, qword_2810D4308);
    v16 = sub_26B6E95A4();
    v17 = sub_26B6E9E64();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26B630000, v16, v17, "SportsManager: Activity monitor initiated", v18, 2u);
      OUTLINED_FUNCTION_3_4();
    }
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B66DC9C(uint64_t a1)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
      v12 = v11[1];
      v6 &= v6 - 1;
      v13[0] = *v11;
      v13[1] = v12;

      sub_26B66DDA8(v13, v1);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

void sub_26B66DDA8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_26B6E93B4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a2 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24);
  v12 = *(a2 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), v11);
  v13 = *(v12 + 8);

  v13(v11, v12);
  type metadata accessor for SportingEventMonitor();
  swift_allocObject();
  v14 = sub_26B6E1DC0(v9, v10, v8);
  if (v2)
  {
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v15 = sub_26B6E95C4();
    __swift_project_value_buffer(v15, qword_2810D4308);

    v16 = v2;
    v17 = sub_26B6E95A4();
    v18 = sub_26B6E9E74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_26B6D22D8(v9, v10, v29);
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_26B6EA6B4();
      v23 = sub_26B6D22D8(v21, v22, v29);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_26B630000, v17, v18, "error creating event monitor for %s: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D67E950](v20, -1, -1);
      MEMORY[0x26D67E950](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v14[6] = &off_287C2BB88;
    swift_unknownObjectWeakAssign();
    v24 = *(a2 + OBJC_IVAR____TtC9SportsKit13SportsManager__clockSyncedPlaysPublisher);
    type metadata accessor for SportingEventMostRecentPlaysBuffer();
    swift_allocObject();
    sub_26B63DE38(v9, v10, v24);
    v25 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v26 = *&v25[a2];
    swift_isUniquelyReferenced_nonNull_native();
    v28 = *&v25[a2];
    sub_26B67DBE8();
    *&v25[a2] = v28;
    swift_endAccess();
  }
}

uint64_t sub_26B66E130(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_38_1();
  if (qword_2810CE9F0 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v8 = sub_26B6E95C4();
  __swift_project_value_buffer(v8, qword_2810D4308);
  OUTLINED_FUNCTION_24_1();

  v9 = sub_26B6E95A4();
  v10 = sub_26B6E9E64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = a4;
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = OUTLINED_FUNCTION_6_0();
    *(v12 + 4) = sub_26B6D22D8(v13, v14, v15);
    *(v12 + 12) = 2080;
    if (a3)
    {
      v16 = 0;
    }

    else
    {
      v16 = 28277;
    }

    if (a3)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    v18 = sub_26B6D22D8(v16, v17, &v26);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_26B630000, v9, v10, "SportsManager: setting subscription for %s to %sfollowing", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    a4 = v11;
    OUTLINED_FUNCTION_3_4();
  }

  type metadata accessor for SportsSubscriptionState();
  if (a3)
  {

    v19 = OUTLINED_FUNCTION_6_0();
LABEL_22:
    static SportsSubscriptionState.activeSubscriptionEventId.setter(v19, v20);
    return a4(0);
  }

  v21 = static SportsSubscriptionState.activeSubscriptionEventId.getter();
  if (v22)
  {
    if (v21 == v5 && v22 == v4)
    {
    }

    else
    {
      v24 = sub_26B6EA5D4();

      if ((v24 & 1) == 0)
      {
        return a4(0);
      }
    }

    v19 = 0;
    v20 = 0;
    goto LABEL_22;
  }

  return a4(0);
}

uint64_t sub_26B66E348(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DC0, &qword_26B6F1440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v49 - v10;
  v54 = sub_26B6E9FD4();
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DC8, &qword_26B6F1448);
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v55 = &v49 - v15;
  v16 = swift_allocObject();
  v58 = a3;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = *&a1[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId];
  v18 = *&a1[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId + 8];
  v19 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
  swift_beginAccess();
  v20 = *&v19[a2];
  v59 = a4;

  v21 = sub_26B6D0698(v17, v18, v20);
  v23 = v22;

  if (v23)
  {
    v57 = v16;
    sub_26B6773DC(v21, v23);
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v24 = sub_26B6E95C4();
    __swift_project_value_buffer(v24, qword_2810D4308);
    v25 = a1;
    v26 = sub_26B6E95A4();
    v27 = sub_26B6E9E64();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v62[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_26B6D22D8(v17, v18, v62);
      _os_log_impl(&dword_26B630000, v26, v27, "SportsManager: subscription for '%s' already exists, skip /register call, updating publishers with the latest state", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26D67E950](v29, -1, -1);
      MEMORY[0x26D67E950](v28, -1, -1);
    }

    v62[0] = 3;
    sub_26B66EFEC(v17, v18, v62);

    sub_26B6702C4(v17, v18, a2, v58);
  }

  else
  {
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = a1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DD8, &unk_26B6F1450);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = a1;
    v50 = sub_26B6E9614();
    v60 = v50;
    v36 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout;
    v58 = v35;
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = v51;
    sub_26B6E9FE4();
    v39 = [objc_opt_self() mainRunLoop];
    v61 = v39;
    v40 = sub_26B6E9FC4();
    v41 = v53;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v40);
    sub_26B67826C(0, &qword_280409DE0, 0x277CBEB88);
    sub_26B678324(&qword_280409DE8, &qword_280409DD8);
    sub_26B677368();
    v42 = v55;
    sub_26B6E96D4();
    sub_26B6776D0(v41, &qword_280409DC0);

    (*(v52 + 8))(v38, v54);

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v45 = v58;
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = sub_26B678A70;
    v44[5] = v16;
    sub_26B678324(&qword_280409DF8, &qword_280409DC8);
    v46 = v45;

    v47 = v57;
    sub_26B6E96A4();

    (*(v56 + 8))(v42, v47);
    swift_beginAccess();
    sub_26B6E95D4();
    swift_endAccess();
  }
}

void sub_26B66EA34()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v73 = v3;
  v74 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DC0, &qword_26B6F1440);
  OUTLINED_FUNCTION_46(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v68 = &v66 - v10;
  v69 = sub_26B6E9FD4();
  v11 = OUTLINED_FUNCTION_4(v69);
  v67 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DC8, &qword_26B6F1448);
  v19 = OUTLINED_FUNCTION_4(v18);
  v71 = v20;
  v72 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v70 = &v66 - v24;
  v26 = *&v5[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId];
  v25 = *&v5[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId + 8];
  v27 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
  OUTLINED_FUNCTION_29_2();
  v28 = *&v27[v1];

  v29 = OUTLINED_FUNCTION_43_1();
  v31 = sub_26B6D0698(v29, v30, v28);
  v33 = v32;

  if (v33)
  {
    sub_26B6773DC(v31, v33);
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v34 = sub_26B6E95C4();
    __swift_project_value_buffer(v34, qword_2810D4308);
    v35 = v5;
    v36 = sub_26B6E95A4();
    v37 = sub_26B6E9E64();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_41_0();
      v39 = OUTLINED_FUNCTION_39_2();
      v77 = v39;
      *v38 = 136315138;
      v40 = OUTLINED_FUNCTION_43_1();
      *(v38 + 4) = sub_26B6D22D8(v40, v41, v42);
      _os_log_impl(&dword_26B630000, v36, v37, "SportsManager: subscription for '%s' already exists, skip /register call, updating publishers with the latest state", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();
    }

    v43 = v74;
    v77 = 3;
    v44 = OUTLINED_FUNCTION_43_1();
    sub_26B66EFEC(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_43_1();
    sub_26B670554(v47, v48, v43);
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_7_5();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v5;
    v51 = OUTLINED_FUNCTION_46_1();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
    OUTLINED_FUNCTION_13_2(v53);
    v54 = v5;
    v66 = sub_26B6E9614();
    v75 = v66;
    v55 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout;
    OUTLINED_FUNCTION_29_2();
    v56 = *&v54[v55];
    sub_26B6E9FE4();
    v57 = [objc_opt_self() mainRunLoop];
    v76 = v57;
    v58 = sub_26B6E9FC4();
    v59 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v58);
    sub_26B67826C(0, &qword_280409DE0, 0x277CBEB88);
    sub_26B678324(&qword_280409DE8, &unk_280409DD8);
    sub_26B677368();
    v60 = v70;
    sub_26B6E96D4();
    sub_26B6776D0(v59, &qword_280409DC0);

    (*(v67 + 8))(v17, v69);

    OUTLINED_FUNCTION_13_4();
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_35_2();
    v62 = swift_allocObject();
    v62[2] = v61;
    v62[3] = v54;
    v63 = v73;
    v62[4] = v74;
    v62[5] = v63;
    sub_26B678324(&qword_280409DF8, &qword_280409DC8);
    v64 = v54;

    v65 = v72;
    sub_26B6E96A4();
    OUTLINED_FUNCTION_55_0();

    (*(v71 + 8))(v60, v65);
    OUTLINED_FUNCTION_40_2();
    sub_26B6E95D4();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B66EFEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = *a3;
  if (qword_2810CE9F0 != -1)
  {
    swift_once();
  }

  v8 = sub_26B6E95C4();
  __swift_project_value_buffer(v8, qword_2810D4308);

  v9 = sub_26B6E95A4();
  v10 = sub_26B6E9E64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26B6D22D8(a1, a2, &v17);
    *(v11 + 12) = 2080;
    v13 = sub_26B6E9A94();
    v15 = sub_26B6D22D8(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_26B630000, v9, v10, "SportsManager: updating subscription for %s with options %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D67E950](v12, -1, -1);
    MEMORY[0x26D67E950](v11, -1, -1);
  }

  swift_unknownObjectWeakInit();
  sub_26B6701A8(a1, a2, v4, &v17, v7);
  return MEMORY[0x26D67EA20](&v17);
}

uint64_t sub_26B66F1C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_26B642140(Strong + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider, v22);

    v10 = *(*__swift_project_boxed_opaque_existential_1(v22, v22[3]) + 16);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v15 = sub_26B675164(v14);
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = sub_26B678B04;
    v16[4] = v7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_26B678B04;
    *(v17 + 24) = v7;
    v19 = *(v15 + qword_2810D4240);
    v18 = *(v15 + qword_2810D4240 + 8);
    v20 = a4;

    v19(sub_26B678B44, v16, sub_26B678B50, v17);

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
  }
}

void sub_26B66F394(void **a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *&a2[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId];
  v9 = *&a2[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId + 8];
  v10 = sub_26B6E99F4();
  v11 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType;
  swift_beginAccess();
  if (a2[v11])
  {
    a2[v11];
  }

  v12 = sub_26B6E99F4();

  sub_26B6E8280();
  v13 = sub_26B6E9914();

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a2;
  aBlock[4] = sub_26B678B80;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B678C08;
  aBlock[3] = &block_descriptor_201;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v7 subscribeToEventWithEventId:v10 subscriptionType:v12 context:v13 completion:v15];
  _Block_release(v15);
}

void sub_26B66F594(void *a1, void (*a2)(void *, void, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    a2(a1, 0, 1);
  }

  else
  {
    a2(*(a4 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId), *(a4 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId + 8), 0);
  }
}

uint64_t sub_26B66F624@<X0>(uint64_t *a1@<X8>)
{
  sub_26B66BB5C();
  result = swift_allocError();
  *a1 = result;
  *v3 = 3;
  return result;
}

void sub_26B66F66C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (v6)
    {
      v13 = 2;
      v14 = 1;
      a4(&v13);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26B6EBA50;
      v10 = *(a3 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId);
      v11 = *(a3 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId + 8);
      *(inited + 32) = v10;
      *(inited + 40) = v11;

      v12 = sub_26B6CC9E8(inited);
      sub_26B66DC9C(v12);

      sub_26B670554(v10, v11, a4);
      v13 = 3;
      sub_26B66EFEC(v10, v11, &v13);
    }
  }
}

uint64_t sub_26B66F7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57();

  v5 = OUTLINED_FUNCTION_120();

  return sub_26B66E348(v5, v6, v3, a3);
}

void sub_26B66F7F0(uint64_t *a1, void (*a2)(void))
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    sub_26B66BB5C();
    v4 = swift_allocError();
    *v5 = v3;
    a2();
  }

  else
  {
    (a2)(0);
  }
}

uint64_t sub_26B66F888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  OUTLINED_FUNCTION_38_1();
  v9 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
  OUTLINED_FUNCTION_29_2();
  v10 = *&v9[v4];

  v11 = OUTLINED_FUNCTION_6_0();
  sub_26B6D0698(v11, v12, v10);
  OUTLINED_FUNCTION_56_1();

  if (v7)
  {
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_6_0();
    sub_26B675F10();
    OUTLINED_FUNCTION_56_1();
    swift_endAccess();
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_6_6((v4 + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider));
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
    OUTLINED_FUNCTION_13_2(v13);

    v15 = sub_26B675164(v14);
    OUTLINED_FUNCTION_35_2();
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = v5;
    v16[4] = a3;
    v16[5] = a4;
    OUTLINED_FUNCTION_7_5();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    OUTLINED_FUNCTION_42_1((v15 + qword_2810D4240));

    (v9)(sub_26B67742C, v16, sub_26B678C00, v17);
  }

  else
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v19 = sub_26B6E95C4();
    __swift_project_value_buffer(v19, qword_2810D4308);
    OUTLINED_FUNCTION_24_1();

    v20 = sub_26B6E95A4();
    v21 = sub_26B6E9E64();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_41_0();
      v27 = OUTLINED_FUNCTION_39_2();
      *v22 = 136315138;
      v23 = OUTLINED_FUNCTION_6_0();
      *(v22 + 4) = sub_26B6D22D8(v23, v24, v25);
      _os_log_impl(&dword_26B630000, v20, v21, "SportsManager: unsubscribeFromEvent - no active subscription for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();
    }

    return a3(0);
  }
}

void sub_26B66FB18(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_26B6E99F4();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26B678C08;
  v10[3] = &block_descriptor_167;
  v9 = _Block_copy(v10);

  [v7 unsubscribeFromEventWithEventId:v8 completion:v9];
  _Block_release(v9);
}

uint64_t sub_26B66FBF4()
{
  v1 = v0;
  OUTLINED_FUNCTION_57();
  v2 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
  result = OUTLINED_FUNCTION_29_2();
  if (*(*&v2[v0] + 16))
  {
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_53_0();
    v4 = sub_26B675F10();
    v6 = v5;
    swift_endAccess();
    result = sub_26B6773DC(v4, v6);
    if (!*(*&v2[v1] + 16))
    {
      return sub_26B66FCC0();
    }
  }

  return result;
}

uint64_t sub_26B66FCC0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E18, &qword_26B6F1468);
  sub_26B6E9964();
  swift_endAccess();
  OUTLINED_FUNCTION_6_6((v1 + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  OUTLINED_FUNCTION_13_2(v3);

  v5 = sub_26B675164(v4);
  OUTLINED_FUNCTION_7_5();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  OUTLINED_FUNCTION_7_5();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;
  OUTLINED_FUNCTION_42_1((v5 + qword_2810D4240));
  v2(sub_26B677438, v6, sub_26B678C00, v7);
}

void sub_26B66FE10(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26B678C08;
  v5[3] = &block_descriptor_164;
  v4 = _Block_copy(v5);

  [v3 unsubscribeFromAllEventsWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_26B66FEC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24));
  OUTLINED_FUNCTION_16_3();
  v2 = OUTLINED_FUNCTION_110_0();
  v3(v2);

  v4 = *(v6 + 16);

  return v4;
}

void sub_26B66FF70(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_26B6703EC(a1, a2, a3, aBlock);

  _Block_release(aBlock);
}

void sub_26B66FFD4(uint64_t a1, uint64_t a2, void (*a3)(void *, void *))
{
  OUTLINED_FUNCTION_38_1();
  v5 = *(v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), *(v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24));
  v6 = *(v5 + 56);

  v7 = OUTLINED_FUNCTION_6_0();
  v8 = v6(v7);
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
    OUTLINED_FUNCTION_29_2();
    v11 = *&v9[v10];
    v12 = v11;
    a3(v11, 0);

    OUTLINED_FUNCTION_34();
  }

  else
  {
    sub_26B66BB5C();
    v13 = swift_allocError();
    *v14 = 96;
    a3(0, v13);

    OUTLINED_FUNCTION_34();
  }
}

void sub_26B6701A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *(a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24);
  v10 = *(a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), v9);
  v11 = (*(v10 + 56))(a1, a2, 1, v9, v10);
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if (a5)
      {
        v15 = *(Strong + OBJC_IVAR____TtC9SportsKit13SportsManager__subscriptionPublisher);
        sub_26B6E95F4();
      }

      sub_26B674E84(v12);
    }

    else
    {
    }
  }

  else
  {
    v16 = 96;
    v17 = 1;
    sub_26B674CBC(&v16, a4, a5);
  }
}

void sub_26B6702C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *(a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24);
  v8 = *(a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), v7);
  v9 = (*(v8 + 56))(a1, a2, 1, v7, v8);
  if (v9)
  {
    v12 = v9;
    (a4)(0);
  }

  else
  {
    sub_26B66BB5C();
    v10 = swift_allocError();
    *v11 = 96;
    a4();
  }
}

void sub_26B6703EC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = *(a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24);
  v8 = *(a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), v7);
  v9 = *(v8 + 56);
  _Block_copy(a4);
  _Block_copy(a4);
  v10 = v9(a1, a2, 1, v7, v8);
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
    swift_beginAccess();
    a4[2](a4, *&v11[v12], 0);
  }

  else
  {
    sub_26B66BB5C();
    v13 = swift_allocError();
    *v14 = 96;
    _Block_copy(a4);
    v15 = sub_26B6E92A4();
    (a4)[2](a4, 0, v15);

    _Block_release(a4);
  }

  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

void sub_26B670554(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  OUTLINED_FUNCTION_38_1();
  v5 = *(v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), *(v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24));
  v6 = *(v5 + 56);
  v7 = OUTLINED_FUNCTION_6_0();
  v9 = v8(v7);
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v10 = v9;
    a3(&v11);

    sub_26B677440(v11, v12);
  }

  else
  {
    v11 = 96;
    v12 = 1;
    a3(&v11);
  }

  OUTLINED_FUNCTION_60_1();
}

void sub_26B67062C(uint64_t a1, uint64_t a2, char a3, void (*a4)(id *))
{
  v5 = v4;
  OUTLINED_FUNCTION_38_1();
  v8 = *(v4 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), *(v4 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24));
  v9 = *(v8 + 56);
  v10 = OUTLINED_FUNCTION_6_0();
  v12 = v11(v10);
  if (v12)
  {
    v13 = v12;
    if (a3)
    {
      v14 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
      OUTLINED_FUNCTION_29_2();
      v15 = *&v14[v5];

      v16 = OUTLINED_FUNCTION_6_0();
      v18 = sub_26B6D0698(v16, v17, v15);
      v20 = v19;
      v22 = v21;

      if (v20)
      {

        sub_26B6773DC(v18, v20);
        v23 = *(v22 + 40);

        v24 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
        OUTLINED_FUNCTION_29_2();
        v25 = *&v13[v24];
        v26 = *(v25 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
        *(v25 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays) = v23;
      }
    }

    v30 = v13;
    v31 = 0;
    v27 = v13;
    a4(&v30);

    sub_26B677440(v30, v31);
  }

  else
  {
    v28 = 96;
    v29 = 1;
    a4(&v28);
  }
}

void sub_26B6707CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_37_2(OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore);
  OUTLINED_FUNCTION_16_3();
  v11(v9, v10);

  v12 = OUTLINED_FUNCTION_51_1();
  sub_26B648500(v12, v13, a9);

  OUTLINED_FUNCTION_63_1();
}

void sub_26B670844()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_52_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  v18[1] = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager__subscriptionPublisher);
  OUTLINED_FUNCTION_7_5();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DA8, &qword_26B6F1430);
  OUTLINED_FUNCTION_1_9();
  sub_26B678324(v16, &qword_280409DA8);
  sub_26B6E96B4();

  OUTLINED_FUNCTION_3_9();
  sub_26B678324(v17, &unk_280409E28);
  sub_26B6E9674();
  (*(v9 + 8))(v14, v7);
  OUTLINED_FUNCTION_8_0();
}

void sub_26B6709E8()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v0;
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E28, &qword_26B6F1470);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_61_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E30, &qword_26B6F1478);
  OUTLINED_FUNCTION_4(v36);
  v39 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E38, &unk_26B6F1480);
  v37 = OUTLINED_FUNCTION_4(v19);
  v38 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v40 = *(v3 + OBJC_IVAR____TtC9SportsKit13SportsManager__subscriptionPublisher);
  OUTLINED_FUNCTION_7_5();
  v26 = swift_allocObject();
  *(v26 + 16) = v8;
  *(v26 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DA8, &qword_26B6F1430);
  OUTLINED_FUNCTION_1_9();
  sub_26B678324(v27, &qword_280409DA8);
  OUTLINED_FUNCTION_33_2();
  sub_26B6E96B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E40, &qword_26B6F3670);
  OUTLINED_FUNCTION_3_9();
  sub_26B678324(v28, &qword_280409E28);
  sub_26B6E9694();
  (*(v11 + 8))(v1, v9);
  OUTLINED_FUNCTION_13_4();
  v29 = swift_allocObject();
  *(v29 + 16) = v35;
  OUTLINED_FUNCTION_7_5();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26B67746C;
  *(v30 + 24) = v29;
  OUTLINED_FUNCTION_7_5();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26B677474;
  *(v31 + 24) = v30;
  OUTLINED_FUNCTION_4_6();
  sub_26B678324(v32, &qword_280409E30);
  OUTLINED_FUNCTION_55_0();

  v33 = v36;
  sub_26B6E9684();

  (*(v39 + 8))(v2, v33);
  sub_26B678324(&qword_280409E50, &qword_280409E38);
  v34 = v37;
  sub_26B6E9674();
  (*(v38 + 8))(v25, v34);
  OUTLINED_FUNCTION_8_0();
}

id sub_26B670DE0(uint64_t a1, uint64_t a2)
{
  v10 = MEMORY[0x277D84F90];
  v4 = sub_26B6542CC(a1);
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v5)
    {
      return v10;
    }

    sub_26B693DF0(v5, v6 == 0, a1);
    result = v6 ? MEMORY[0x26D67DB30](v5, a1) : *(a1 + 8 * v5 + 32);
    v8 = result;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (sub_26B6E6F84(a2))
    {
      sub_26B6EA1F4();
      v9 = *(v10 + 16);
      sub_26B6EA224();
      sub_26B6EA234();
      sub_26B6EA204();
    }

    else
    {
    }

    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B670EE4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = (*a1 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId);
  if (*v3 == a2 && v3[1] == a3)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_22_3();
  }
}

uint64_t sub_26B670F1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  *a2 = *(*(v3 + v4) + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
}

void sub_26B670F88()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E58, &qword_26B6F1490);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_61_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E60, &qword_26B6F1498);
  OUTLINED_FUNCTION_4(v22);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_1();
  v15 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager__clockSyncedPlaysPublisher);
  OUTLINED_FUNCTION_7_5();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E70, &qword_26B6F14A0);
  OUTLINED_FUNCTION_1_9();
  sub_26B678324(v17, &qword_280409E70);
  OUTLINED_FUNCTION_33_2();
  sub_26B6E96B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E40, &qword_26B6F3670);
  OUTLINED_FUNCTION_3_9();
  sub_26B678324(v18, &qword_280409E58);
  sub_26B6E9694();
  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_4_6();
  sub_26B678324(v19, &qword_280409E60);
  OUTLINED_FUNCTION_59_1();
  v20 = OUTLINED_FUNCTION_50_0();
  v21(v20);
  OUTLINED_FUNCTION_8_0();
}

void sub_26B6711FC()
{
  OUTLINED_FUNCTION_10_0();
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E58, &qword_26B6F1490);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E60, &qword_26B6F1498);
  OUTLINED_FUNCTION_4(v24);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_1();
  v16 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager__clockSyncedPlaysPublisher);
  OUTLINED_FUNCTION_7_5();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E70, &qword_26B6F14A0);
  OUTLINED_FUNCTION_1_9();
  sub_26B678324(v18, &qword_280409E70);
  OUTLINED_FUNCTION_33_2();
  sub_26B6E96B4();

  OUTLINED_FUNCTION_13_4();
  *(swift_allocObject() + 16) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E40, &qword_26B6F3670);
  OUTLINED_FUNCTION_3_9();
  sub_26B678324(v19, &qword_280409E58);
  sub_26B6E9694();

  (*(v9 + 8))(v1, v7);
  OUTLINED_FUNCTION_4_6();
  sub_26B678324(v20, &qword_280409E60);
  OUTLINED_FUNCTION_59_1();
  v21 = OUTLINED_FUNCTION_50_0();
  v22(v21);
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B671490(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 && a1[1] == a3)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_22_3();
  }
}

char *sub_26B6714BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  v31 = MEMORY[0x277D84F90];
  result = sub_26B6542CC(v4);
  v25 = v4;
  v26 = result;
  v6 = 0;
  v23 = v4 + 32;
  v24 = v4 & 0xC000000000000001;
  v27 = (a2 + 32);
  v28 = a2;
  while (1)
  {
    if (v6 == v26)
    {
      *a3 = v31;
      return result;
    }

    sub_26B693DF0(v6, v24 == 0, v25);
    result = v24 ? MEMORY[0x26D67DB30](v6, v25) : *(v23 + 8 * v6);
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    v30 = result;
    v8 = *&result[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
    v9 = *(v8 + 16);
    v10 = v8 + 32;

    v11 = 0;
    v29 = v9;
LABEL_7:
    if (v11 == v9)
    {
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        __break(1u);
        break;
      }

      v12 = *(v10 + v11++);
      v13 = *(a2 + 16);
      v14 = v27;
      while (1)
      {
        if (!v13)
        {
          a2 = v28;
          v10 = v8 + 32;
          v9 = v29;
          goto LABEL_7;
        }

        v15 = 0xE600000000000000;
        v16 = 0x737472656C41;
        switch(*v14)
        {
          case 1:
            v15 = 0xE300000000000000;
            v16 = 7105601;
            break;
          case 2:
            v16 = 0x6867696C68676948;
            v15 = 0xE900000000000074;
            break;
          case 3:
            v15 = 0xE700000000000000;
            v16 = 0x79616C5079654BLL;
            break;
          case 4:
            v15 = 0xE700000000000000;
            v16 = 0x6E6F6973736553;
            break;
          default:
            break;
        }

        v17 = 0xE600000000000000;
        v18 = 0x737472656C41;
        switch(v12)
        {
          case 1:
            v17 = 0xE300000000000000;
            v18 = 7105601;
            break;
          case 2:
            v18 = 0x6867696C68676948;
            v17 = 0xE900000000000074;
            break;
          case 3:
            v17 = 0xE700000000000000;
            v18 = 0x79616C5079654BLL;
            break;
          case 4:
            v17 = 0xE700000000000000;
            v18 = 0x6E6F6973736553;
            break;
          default:
            break;
        }

        if (v16 == v18 && v15 == v17)
        {
          break;
        }

        v20 = sub_26B6EA5D4();

        ++v14;
        --v13;
        if (v20)
        {
          a2 = v28;

          goto LABEL_29;
        }
      }

      a2 = v28;

LABEL_29:

      sub_26B6EA1F4();
      v21 = *(v31 + 16);
      sub_26B6EA224();
      sub_26B6EA234();
      result = sub_26B6EA204();
    }
  }

  __break(1u);
  return result;
}

void sub_26B6717DC()
{
  OUTLINED_FUNCTION_10_0();
  v8 = v0;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v15 = v1;
  if (v16)
  {
    OUTLINED_FUNCTION_6_6(&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider]);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
    OUTLINED_FUNCTION_13_2(v17);

    v19 = sub_26B675164(v18);
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    *(v20 + 24) = v14;
    *(v20 + 32) = v8;
    *(v20 + 40) = v13;
    *(v20 + 48) = v12 & 1;
    *(v20 + 56) = v11;
    *(v20 + 64) = v10;
    *(v20 + 72) = v9;
    OUTLINED_FUNCTION_7_5();
    v21 = swift_allocObject();
    *(v21 + 16) = v10;
    *(v21 + 24) = v9;
    v23 = *(v19 + qword_2810D4240);
    v22 = *(v19 + qword_2810D4240 + 8);
    swift_retain_n();

    v24 = v8;

    v23(sub_26B6774F8, v20, sub_26B678C04, v21);

    OUTLINED_FUNCTION_8_0();
  }

  else
  {
    v26 = *&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_playsStore];
    sub_26B68FCDC(v1, v2, v3, v4 & 1, v5, v6, v7);
    OUTLINED_FUNCTION_8_0();
  }
}

void sub_26B671988(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *a1;
  v15 = sub_26B6E99F4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6 & 1;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a9;
  aBlock[4] = sub_26B6784FC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B678C08;
  aBlock[3] = &block_descriptor_161;
  v18 = _Block_copy(aBlock);

  [v19 refreshCurrentEventStateFor:v15 options:2 completion:v18];
  _Block_release(v18);
}

uint64_t sub_26B671B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v11 = a6;
  if (a1)
  {
    v15 = a1;
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v16 = sub_26B6E95C4();
    __swift_project_value_buffer(v16, qword_2810D4308);
    v17 = a1;
    v18 = sub_26B6E95A4();
    v19 = sub_26B6E9E74();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = a8;
      v32 = a5;
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_26B6EA6B4();
      v24 = a4;
      v25 = a7;
      v26 = sub_26B6D22D8(v22, v23, &v35);

      *(v20 + 4) = v26;
      a7 = v25;
      a4 = v24;
      _os_log_impl(&dword_26B630000, v18, v19, "failed to refresh play history with error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v27 = v21;
      a8 = v31;
      a5 = v32;
      MEMORY[0x26D67E950](v27, -1, -1);
      MEMORY[0x26D67E950](v20, -1, -1);
    }

    else
    {
    }

    v11 = a6;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v30 = *(result + OBJC_IVAR____TtC9SportsKit13SportsManager_playsStore);

    sub_26B68FCDC(a3, a4, a5, v11 & 1, a7, a8, a9);
  }

  return result;
}

uint64_t sub_26B671D44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E80, &qword_26B6F14A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26B6EBA50;
  type metadata accessor for SportsSubscriptionState();
  static SportsSubscriptionState.filteringSelection.getter(&v3);
  v1 = v3;
  if (v3 == 5)
  {
    v1 = 1;
  }

  *(v0 + 32) = v1;
  sub_26B6717DC();
}

uint64_t sub_26B671E38()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_37_2(OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore);
  v4 = *(v3 + 208);
  v5 = OUTLINED_FUNCTION_24_1();
  v6(v5, v2);
  if (v0)
  {

    v7 = OUTLINED_FUNCTION_51_1();
    v9 = sub_26B648500(v7, v8, v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409098, &qword_26B6F14B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B6EBA50;
    *(inited + 32) = v1;
    *(inited + 40) = v0;
    *(inited + 48) = !v9;
    return sub_26B6E9944();
  }

  else
  {
    v12 = sub_26B66C918(v13);

    return sub_26B671F84(v12, &qword_280409F28, &qword_26B6F17F8, sub_26B676F2C);
  }
}

uint64_t sub_26B671F84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v5 = OUTLINED_FUNCTION_47_1(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_36_2();
    v7 = sub_26B6EA354();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;

  a4(v8, 1, &v10);

  return v10;
}

void sub_26B672030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24);
  v8 = *(v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), v7);
  (*(v8 + 216))(a1, a2, a3, v7, v8);
  OUTLINED_FUNCTION_60_1();
}

uint64_t sub_26B672234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  OUTLINED_FUNCTION_6_6(&v5[OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  OUTLINED_FUNCTION_13_2(v11);

  v13 = sub_26B675164(v12);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v5;
  v14[5] = a4;
  v14[6] = a5;
  OUTLINED_FUNCTION_7_5();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v17 = *(v13 + qword_2810D4240);
  v16 = *(v13 + qword_2810D4240 + 8);
  swift_retain_n();

  v18 = v6;
  v17(sub_26B67751C, v14, sub_26B67752C, v15);
}

void sub_26B672380(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = sub_26B6E99F4();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a5;
  v11[4] = a6;
  v13[4] = sub_26B6784D0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26B678C08;
  v13[3] = &block_descriptor_154;
  v12 = _Block_copy(v13);

  [v8 createActivityFor:v9 type:0 scheduledDate:0 completion:v12];

  _Block_release(v12);
}

void sub_26B6724B8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v8;
  v32 = v9;
  v10 = type metadata accessor for SportsActivityCreationPolicy();
  v11 = OUTLINED_FUNCTION_32_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_6_6(&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  OUTLINED_FUNCTION_13_2(v17);

  v19 = sub_26B675164(v18);
  sub_26B677554(v7, v16);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_26B6775B8(v16, v23 + v20);
  v24 = (v23 + v21);
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  *(v23 + v22) = v1;
  v26 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v5;
  v26[1] = v3;
  OUTLINED_FUNCTION_7_5();
  v27 = swift_allocObject();
  *(v27 + 16) = v5;
  *(v27 + 24) = v3;
  v29 = *(v19 + qword_2810D4240);
  v28 = *(v19 + qword_2810D4240 + 8);
  swift_retain_n();

  v30 = v1;
  v29(sub_26B67761C, v23, sub_26B678C00, v27);

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6726AC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v30 = a5;
  v9 = type metadata accessor for SportsActivityCreationPolicy();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v31 = *a1;
  v20 = sub_26B6E9564();
  v21 = 1;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  sub_26B6776D0(v19, &qword_280409370);
  sub_26B677554(a2, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) != 1)
  {
    (*(*(v20 - 8) + 32))(v19, v12, v20);
    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v21, 1, v20);
  v22 = sub_26B6E99F4();
  sub_26B678428(v19, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v20) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_26B6E94C4();
    (*(*(v20 - 8) + 8))(v17, v20);
  }

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v32;
  v27 = v33;
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v27;
  aBlock[4] = sub_26B678BC8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B678C08;
  aBlock[3] = &block_descriptor_147;
  v28 = _Block_copy(aBlock);

  [v31 createActivityFor:v22 type:0 scheduledDate:v23 completion:{v28, v30}];
  _Block_release(v28);

  return sub_26B6776D0(v19, &qword_280409370);
}

uint64_t sub_26B6729EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_29_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_26B66D9DC();
  }

  return a3(a1);
}

void sub_26B672A60()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_57();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_61_0();
  v8 = sub_26B6E9564();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  v17 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24);
  v18 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), v17);
  (*(v18 + 224))(&v30, v17, v18);
  v19 = v30;
  if (v1)
  {

    OUTLINED_FUNCTION_53_0();
    sub_26B6D071C(v19, v20);

    if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
    {

      sub_26B6776D0(v3, &qword_280409370);
      sub_26B6E9944();
    }

    else
    {
      v21 = *(v11 + 32);
      v22 = OUTLINED_FUNCTION_46_1();
      v23(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E90, &qword_26B6F14B8);
      v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0) - 8);
      v25 = *(*v24 + 72);
      v26 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26B6EBA50;
      v28 = (v27 + v26);
      v29 = v24[14];
      *v28 = v2;
      v28[1] = v1;
      (*(v11 + 16))(v27 + v26 + v29, v16, v8);
      sub_26B6E9944();
      (*(v11 + 8))(v16, v8);
    }
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B672D1C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24);
  v12 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), v11);
  v13 = sub_26B6E9564();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v13);
  (*(v12 + 232))(v10, a1, a2, v11, v12);
  return sub_26B6776D0(v10, &qword_280409370);
}

void sub_26B672E8C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_26B6E99F4();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26B678C08;
  v10[3] = &block_descriptor_140;
  v9 = _Block_copy(v10);

  [v7 destroyActivityFor:v8 type:0 completion:v9];

  _Block_release(v9);
}

void sub_26B672F6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_26B673034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_6_6((v21 + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  OUTLINED_FUNCTION_13_2(v32);

  v34 = sub_26B675164(v33);
  OUTLINED_FUNCTION_35_2();
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = v29;
  v35[4] = v27;
  v35[5] = v25;
  OUTLINED_FUNCTION_7_5();
  v36 = swift_allocObject();
  *(v36 + 16) = v27;
  *(v36 + 24) = v25;
  v38 = *(v34 + qword_2810D4240);
  v37 = *(v34 + qword_2810D4240 + 8);
  swift_retain_n();

  v38(v23, v35, a21, v36);

  OUTLINED_FUNCTION_8_0();
}

void sub_26B673150(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_26B6E99F4();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26B673230;
  v10[3] = &block_descriptor_137;
  v9 = _Block_copy(v10);

  [v7 checkForActivityFor:v8 type:0 completion:v9];

  _Block_release(v9);
}

uint64_t sub_26B673230(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_26B673284()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore), *(v0 + OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24));
  OUTLINED_FUNCTION_16_3();
  v2 = OUTLINED_FUNCTION_110_0();
  v3(v2);

  return v5;
}

void sub_26B6732EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_37_2(OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore);
  OUTLINED_FUNCTION_16_3();
  v12(v10, v11);

  if (*(a10 + 16))
  {
    OUTLINED_FUNCTION_51_1();
    sub_26B675324();
  }

  OUTLINED_FUNCTION_63_1();
}

uint64_t sub_26B673378()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6_6((v1 + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  OUTLINED_FUNCTION_13_2(v3);

  v5 = sub_26B675164(v4);
  OUTLINED_FUNCTION_7_5();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  OUTLINED_FUNCTION_7_5();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;
  OUTLINED_FUNCTION_42_1((v5 + qword_2810D4240));
  v2(sub_26B6777AC, v6, sub_26B6777B4, v7);
}

void sub_26B673488(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_26B6783F8;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26B673230;
  v8[3] = &block_descriptor_134;
  v7 = _Block_copy(v8);

  [v5 liveActivitiesEnabledWithCompletion_];
  _Block_release(v7);
}

id SportsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_26B6736AC()
{
  sub_26B6783A4();
  result = sub_26B6E9944();
  off_280409D90 = result;
  return result;
}

void SportsManager.RefreshOptions.debugDescription.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(&unk_287C28078 + v1 + 32);
    if ((v4 & ~v2) == 0)
    {
      if (qword_280408D60 != -1)
      {
        swift_once();
      }

      v5 = off_280409D90;
      if (*(off_280409D90 + 2))
      {
        v6 = sub_26B6754C0(v4);
        if (v7)
        {
          v8 = (v5[7] + 16 * v6);
          v10 = *v8;
          v9 = v8[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = *(v3 + 16);
            sub_26B63A80C();
            v3 = v14;
          }

          v11 = *(v3 + 16);
          if (v11 >= *(v3 + 24) >> 1)
          {
            sub_26B63A80C();
            v3 = v15;
          }

          *(v3 + 16) = v11 + 1;
          v12 = v3 + 16 * v11;
          *(v12 + 32) = v10;
          *(v12 + 40) = v9;
        }
      }
    }

    v1 += 8;
  }

  while (v1 != 24);
  sub_26B6EA134();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
  sub_26B678324(&qword_2810CC2A8, &qword_280409BE8);
  sub_26B6E9994();

  v16 = OUTLINED_FUNCTION_52_0();
  MEMORY[0x26D67D4D0](v16);

  MEMORY[0x26D67D4D0](41, 0xE100000000000000);
  OUTLINED_FUNCTION_34();
}

void sub_26B673940(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_26B67394C(a1);
}

uint64_t sub_26B67397C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_26B6739AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SportsKit::SportsManager::RefreshOptions sub_26B673A80@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SportsManager.RefreshOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26B673AC0@<X0>(uint64_t *a1@<X8>)
{
  result = SportsManager.RefreshOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SportsManager.refreshCurrentEventState(for:options:completion:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  OUTLINED_FUNCTION_6_6((v5 + OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  OUTLINED_FUNCTION_13_2(v11);

  v13 = sub_26B675164(v12);
  OUTLINED_FUNCTION_13_4();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v10;
  v15[5] = v14;
  v15[6] = a4;
  v15[7] = a5;
  OUTLINED_FUNCTION_7_5();
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v18 = *(v13 + qword_2810D4240);
  v17 = *(v13 + qword_2810D4240 + 8);
  swift_retain_n();

  v18(sub_26B677804, v15, sub_26B678C00, v16);
}

void sub_26B673C64(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = sub_26B6E99F4();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = v14;
  v16[7] = a4;
  aBlock[4] = sub_26B678394;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B678C08;
  aBlock[3] = &block_descriptor_127;
  v17 = _Block_copy(aBlock);

  [v12 refreshCurrentEventStateFor:v13 options:a4 completion:v17];
  _Block_release(v17);
}

void sub_26B673DE4(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v11 = a1;
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v12 = sub_26B6E95C4();
    __swift_project_value_buffer(v12, qword_2810D4308);
    v13 = a1;

    v14 = sub_26B6E95A4();
    v15 = sub_26B6E9E74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_26B6D22D8(a2, a3, v26);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_26B6EA6B4();
      v20 = sub_26B6D22D8(v18, v19, v26);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_26B630000, v14, v15, "Failed to fetch latest event state for canonical id %s, error = %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D67E950](v17, -1, -1);
      MEMORY[0x26D67E950](v16, -1, -1);
    }

    v21 = a1;
    (a4)(a1);
  }

  else
  {
    a4();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v25 = a7;
      sub_26B66EFEC(a2, a3, &v25);
    }
  }
}

void sub_26B67402C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_26B6E98A4();
  v6 = OUTLINED_FUNCTION_4(v5);
  v44 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_61();
  v10 = sub_26B6E98D4();
  v11 = OUTLINED_FUNCTION_4(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  v19 = *&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 24];
  v18 = *&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore], v19);
  v20 = *(v4 + 24);
  v21 = *(v4 + 32);
  v22 = (*(v18 + 56))(v20, v21, 1, v19, v18);
  if (v22)
  {
    v23 = v22;
    v24 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
    OUTLINED_FUNCTION_29_2();
    switch(*(*&v23[v24] + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus))
    {
      case 3:

        break;
      default:
        v31 = sub_26B6EA5D4();

        if (v31)
        {
        }

        else
        {
          sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
          v32 = sub_26B6E9EB4();
          v33 = swift_allocObject();
          v33[2] = v2;
          v33[3] = v23;
          v33[4] = v4;
          v46[4] = sub_26B6782AC;
          v46[5] = v33;
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 1107296256;
          OUTLINED_FUNCTION_11_5();
          v46[2] = v34;
          v46[3] = &block_descriptor_1;
          v35 = _Block_copy(v46);
          v36 = v2;
          v37 = v23;

          sub_26B6E98B4();
          v46[0] = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_10_5();
          sub_26B6782D0(v38, v39);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE0, &qword_26B6F17A0);
          OUTLINED_FUNCTION_9_4();
          sub_26B678324(v40, v41);
          sub_26B6EA0B4();
          MEMORY[0x26D67D890](0, v17, v1, v35);
          _Block_release(v35);

          (*(v44 + 8))(v1, v5);
          (*(v42 + 8))(v17, v43);
        }

        break;
    }

    goto LABEL_14;
  }

  if (qword_2810CE9F0 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v25 = sub_26B6E95C4();
  __swift_project_value_buffer(v25, qword_2810D4308);

  v45 = sub_26B6E95A4();
  v26 = sub_26B6E9E74();

  if (os_log_type_enabled(v45, v26))
  {
    v27 = OUTLINED_FUNCTION_41_0();
    v28 = OUTLINED_FUNCTION_39_2();
    v46[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_26B6D22D8(v20, v21, v46);
    _os_log_impl(&dword_26B630000, v45, v26, "SportsManager: Failed to retrieve subscription for flatlined heartbeat. eventId: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();

LABEL_14:
    OUTLINED_FUNCTION_8_0();
    return;
  }

  OUTLINED_FUNCTION_8_0();
}

void sub_26B67457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong managerDidReceiveEventSubscriptionUpdateFor_];
    swift_unknownObjectRelease();
  }

  v7 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportsManager__subscriptionPublisher);
  v13 = a2;
  sub_26B6E95F4();
  if (qword_2810CE9F0 != -1)
  {
    swift_once();
  }

  v8 = sub_26B6E95C4();
  __swift_project_value_buffer(v8, qword_2810D4308);

  v9 = sub_26B6E95A4();
  v10 = sub_26B6E9E74();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_26B6D22D8(*(a3 + 24), *(a3 + 32), &v13);
    _os_log_impl(&dword_26B630000, v9, v10, "SportsManager: Failed to receive heartbeat within TTL for canonical id %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D67E950](v12, -1, -1);
    MEMORY[0x26D67E950](v11, -1, -1);
  }
}

void sub_26B674720()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v4 = sub_26B6E98A4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_61();
  v27 = sub_26B6E98D4();
  v9 = OUTLINED_FUNCTION_4(v27);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
  v17 = sub_26B6E9EB4();
  OUTLINED_FUNCTION_7_5();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v3;
  v29[4] = sub_26B678314;
  v29[5] = v18;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_11_5();
  v29[2] = v19;
  v29[3] = &block_descriptor_113;
  v20 = _Block_copy(v29);
  v21 = v0;
  v22 = v3;

  sub_26B6E98B4();
  v29[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_10_5();
  sub_26B6782D0(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE0, &qword_26B6F17A0);
  OUTLINED_FUNCTION_9_4();
  sub_26B678324(v25, v26);
  sub_26B6EA0B4();
  MEMORY[0x26D67D890](0, v16, v1, v20);
  _Block_release(v20);

  (*(v28 + 8))(v1, v4);
  (*(v11 + 8))(v16, v27);
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6749AC(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong managerDidReceiveEventSubscriptionUpdateFor_];
    swift_unknownObjectRelease();
  }

  v5 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportsManager__subscriptionPublisher);
  sub_26B6E95F4();
  v6 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
  result = swift_beginAccess();
  v8 = 0;
  v9 = *&v6[a1];
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = &a2[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
  v14 = (v10 + 63) >> 6;
  while (v12)
  {
LABEL_11:
    v16 = (*(v9 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v12)))));
    v17 = v16[3];
    if (*v16 != *v13 || v16[1] != *(v13 + 1))
    {
      v12 &= v12 - 1;
      result = sub_26B6EA5D4();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v19 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;

    swift_beginAccess();
    v20 = *(*&a2[v19] + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);

    sub_26B63DE50(a2);
  }

  while (1)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      return result;
    }

    v12 = *(v9 + 64 + 8 * v15);
    ++v8;
    if (v12)
    {
      v8 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_26B674B78(uint64_t a1)
{
  v2 = v1;
  if (qword_2810CE9F0 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v4 = sub_26B6E95C4();
  __swift_project_value_buffer(v4, qword_2810D4308);
  OUTLINED_FUNCTION_28_2();

  v5 = sub_26B6E95A4();
  v6 = sub_26B6E9E64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_41_0();
    v8 = OUTLINED_FUNCTION_39_2();
    v13 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x26D67D610](a1, MEMORY[0x277D837D0]);
    v11 = sub_26B6D22D8(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26B630000, v5, v6, "SportsManager: Activity monitor - Activities updated - %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  v12 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportsManager__activitiesPublisher);
  v13 = a1;
  sub_26B6E95F4();
  OUTLINED_FUNCTION_60_1();
}

void sub_26B674CBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v5)
    {
      if (qword_2810CE9F0 != -1)
      {
        swift_once();
      }

      v8 = sub_26B6E95C4();
      __swift_project_value_buffer(v8, qword_2810D4308);
      v9 = sub_26B6E95A4();
      v10 = sub_26B6E9E74();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136315138;
        sub_26B66BB5C();
        v13 = sub_26B6EA6B4();
        v15 = sub_26B6D22D8(v13, v14, &v17);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_26B630000, v9, v10, "SportsManager.updateSubscriptionPublishersWithLatestState error - %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x26D67E950](v12, -1, -1);
        MEMORY[0x26D67E950](v11, -1, -1);
      }
    }

    else
    {
      if (a3)
      {
        v16 = *(Strong + OBJC_IVAR____TtC9SportsKit13SportsManager__subscriptionPublisher);
        v17 = v4;
        sub_26B6E95F4();
      }

      sub_26B674E84(v4);
    }
  }
}

uint64_t sub_26B674E84(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
  v5 = *&a1[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8];
  v6 = OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions;
  result = OUTLINED_FUNCTION_29_2();
  v8 = *&v6[v2];
  if (*(v8 + 16))
  {
    v9 = *&v6[v2];

    OUTLINED_FUNCTION_110_0();
    v10 = sub_26B675324();
    if (v11)
    {
      v12 = (*(v8 + 56) + 32 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = v12[3];

      v17 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportsManager_playsStore);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      v18 = a1;
      v19 = OUTLINED_FUNCTION_110_0();
      sub_26B68ED68(v19, v20, 0, 1, v21, v17, v14, v13, v15, v16, v18);

      return swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  return result;
}

void sub_26B674FE8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  if (a2)
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v8 = sub_26B6E95C4();
    __swift_project_value_buffer(v8, qword_2810D4308);
    v9 = OUTLINED_FUNCTION_28_2();
    oslog = sub_26B6E95A4();
    v10 = sub_26B6E9E74();
    sub_26B678AF8(a1, 1);
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = OUTLINED_FUNCTION_41_0();
      v12 = OUTLINED_FUNCTION_39_2();
      v17 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_26B6EA6B4();
      sub_26B6D22D8(v13, v14, &v17);
      OUTLINED_FUNCTION_28_2();

      *(v11 + 4) = v16;
      _os_log_impl(&dword_26B630000, oslog, v10, "SportsManager.updatePlaysPublishersWithLatestState error - %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();
    }

    else
    {
    }
  }

  else
  {
    sub_26B63DE50(a7);
  }
}

uint64_t sub_26B675164(uint64_t a1)
{
  sub_26B6E9584();
  v3 = (v1 + qword_2810D4240);
  *v3 = sub_26B6788C0;
  v3[1] = a1;
  v4 = (v1 + qword_2810D4248);
  *v4 = &unk_26B6F1810;
  v4[1] = a1;

  return v1;
}

uint64_t sub_26B6751E8(void (*a1)(void *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{

  return sub_26B6DE0D0(a3, a4, a5, a1);
}

uint64_t sub_26B675254(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B678BC0;

  return (sub_26B6DE318)(a3, a1, a2);
}

unint64_t sub_26B675324()
{
  OUTLINED_FUNCTION_57();
  v1 = *(v0 + 40);
  sub_26B6EA714();
  sub_26B6E9AE4();
  sub_26B6EA744();
  v2 = OUTLINED_FUNCTION_53_0();

  return sub_26B6755A0(v2, v3, v4);
}

unint64_t sub_26B6753C0()
{
  OUTLINED_FUNCTION_45_1();
  sub_26B6EA2D4();
  sub_26B6E9974();
  v0 = OUTLINED_FUNCTION_36_2();

  return sub_26B6758B8(v0, v1);
}

uint64_t sub_26B675440(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_26B6EA714();
  a2(v10, a1);
  v7 = sub_26B6EA744();

  return a3(a1, v7);
}

unint64_t sub_26B6754C0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](a1);
  v4 = sub_26B6EA744();

  return sub_26B675C30(a1, v4);
}

unint64_t sub_26B67552C()
{
  OUTLINED_FUNCTION_45_1();
  sub_26B6E9594();
  OUTLINED_FUNCTION_12_4();
  sub_26B6782D0(v0, v1);
  OUTLINED_FUNCTION_52_0();
  sub_26B6E9974();
  v2 = OUTLINED_FUNCTION_36_2();

  return sub_26B675C90(v2, v3);
}

unint64_t sub_26B6755A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26B6EA5D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26B675654(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x65726F6353;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1936618834;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1937008968;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x73726F727245;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x73656B69727453;
          break;
        case 5:
          v9 = 1819042114;
          goto LABEL_12;
        case 6:
          v8 = 1937012047;
          v7 = 0xE400000000000000;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x74756F746F6F6853;
          break;
        case 8:
          v9 = 1818324807;
LABEL_12:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
          break;
        default:
          break;
      }

      v10 = 0xE500000000000000;
      v11 = 0x65726F6353;
      switch(a1)
      {
        case 1:
          v10 = 0xE400000000000000;
          v11 = 1936618834;
          break;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1937008968;
          break;
        case 3:
          v10 = 0xE600000000000000;
          v11 = 0x73726F727245;
          break;
        case 4:
          v10 = 0xE700000000000000;
          v11 = 0x73656B69727453;
          break;
        case 5:
          v12 = 1819042114;
          goto LABEL_22;
        case 6:
          v11 = 1937012047;
          v10 = 0xE400000000000000;
          break;
        case 7:
          v10 = 0xE800000000000000;
          v11 = 0x74756F746F6F6853;
          break;
        case 8:
          v12 = 1818324807;
LABEL_22:
          v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_26B6EA5D4();

      if ((v14 & 1) == 0)
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

unint64_t sub_26B6758B8(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_26B6EA2D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4);
    v11 = sub_26B6E99D4();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26B675A3C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x737472656C41;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7105601;
          break;
        case 2:
          v8 = 0x6867696C68676948;
          v7 = 0xE900000000000074;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x79616C5079654BLL;
          break;
        case 4:
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x737472656C41;
      switch(a1)
      {
        case 1:
          v9 = 0xE300000000000000;
          v10 = 7105601;
          break;
        case 2:
          v10 = 0x6867696C68676948;
          v9 = 0xE900000000000074;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x79616C5079654BLL;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_26B6EA5D4();

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

unint64_t sub_26B675C30(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_26B675C90(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_26B6E9594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_26B6782D0(&qword_2810CD7A0, MEMORY[0x277CC95F0]);
    v10 = sub_26B6E99D4();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26B675F10()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26B675324();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F38, &unk_26B6F1820);
  sub_26B6EA2E4();
  v8 = *(*(v15 + 48) + 16 * v5 + 8);

  v9 = (*(v15 + 56) + 32 * v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  sub_26B6EA304();
  *v1 = v15;
  return v10;
}

void sub_26B676120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64_1();
  v12 = v10;
  v14 = v13;
  v15 = *v10;
  v16 = sub_26B6753C0();
  if (v17)
  {
    v18 = v16;
    v19 = *v12;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_44_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F08, &qword_26B6F17E0);
    OUTLINED_FUNCTION_26_2();
    v20 = *(a10 + 48);
    v21 = sub_26B6EA2D4();
    OUTLINED_FUNCTION_17_2(v21);
    (*(v22 + 8))(v20 + *(v22 + 72) * v18, v11);
    sub_26B643E0C((*(a10 + 56) + 32 * v18), v14);
    OUTLINED_FUNCTION_120();
    sub_26B6EA304();
    *v12 = a10;
  }

  else
  {
    *v14 = 0u;
    v14[1] = 0u;
  }

  OUTLINED_FUNCTION_63_1();
}

void sub_26B676204()
{
  OUTLINED_FUNCTION_64_1();
  v1 = v0;
  v2 = *v0;
  v3 = sub_26B67552C();
  if (v4)
  {
    v5 = v3;
    v6 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v1;
    v7 = *(*v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EE8, &unk_26B6F17C0);
    sub_26B6EA2E4();
    v8 = *(v14 + 48);
    v9 = sub_26B6E9594();
    OUTLINED_FUNCTION_17_2(v9);
    (*(v10 + 8))(v8 + *(v10 + 72) * v5, v7);
    v11 = *(*(v14 + 56) + 8 * v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EF0, &unk_26B6F2840);
    OUTLINED_FUNCTION_12_4();
    sub_26B6782D0(v12, v13);
    OUTLINED_FUNCTION_52_0();
    sub_26B6EA304();
    *v1 = v14;
  }

  OUTLINED_FUNCTION_63_1();
}

uint64_t sub_26B676328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409ED0, &qword_26B6F17A8);
  v39 = a2;
  result = sub_26B6EA344();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_26B676BD4(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_26B6EA714();
    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_26B6765DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F28, &qword_26B6F17F8);
  v38 = a2;
  result = sub_26B6EA344();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_26B676BD4(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_26B6EA714();
    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_26B676878()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v52 = sub_26B6E9564();
  v6 = OUTLINED_FUNCTION_4(v52);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v51 = v12 - v11;
  v13 = *v0;
  if (*(*v0 + 24) > v5)
  {
    v14 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F10, &qword_26B6F17E8);
  v49 = v3;
  v15 = sub_26B6EA344();
  v16 = v15;
  if (!*(v13 + 16))
  {
LABEL_34:

LABEL_35:
    *v1 = v16;
    OUTLINED_FUNCTION_8_0();
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
  v46 = (v8 + 16);
  v47 = v13;
  v48 = v8;
  v50 = (v8 + 32);
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
        goto LABEL_37;
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

    if ((v49 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_35;
    }

    v45 = 1 << *(v13 + 32);
    v1 = v0;
    if (v45 >= 64)
    {
      sub_26B676BD4(0, (v45 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v45;
    }

    *(v13 + 16) = 0;
    goto LABEL_34;
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
    v32 = *(v48 + 72);
    v33 = v28 + v32 * v27;
    if (v49)
    {
      (*v50)(v51, v33, v52);
    }

    else
    {
      (*v46)(v51, v33, v52);
    }

    v34 = *(v16 + 40);
    sub_26B6EA714();
    sub_26B6E9AE4();
    v35 = sub_26B6EA744();
    v36 = -1 << *(v16 + 32);
    v37 = v35 & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v44 = (*(v16 + 48) + 16 * v39);
    *v44 = v31;
    v44[1] = v30;
    (*v50)(*(v16 + 56) + v32 * v39, v51, v52);
    ++*(v16 + 16);
    v13 = v47;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  v40 = 0;
  v41 = (63 - v36) >> 6;
  while (++v38 != v41 || (v40 & 1) == 0)
  {
    v42 = v38 == v41;
    if (v38 == v41)
    {
      v38 = 0;
    }

    v40 |= v42;
    v43 = *(v23 + 8 * v38);
    if (v43 != -1)
    {
      v39 = __clz(__rbit64(~v43)) + (v38 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_26B676BD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26B6ED030;
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

void sub_26B676C38(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26B6EA674();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_26B675324();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409ED8, &qword_26B6F17B0);
      sub_26B6EA2F4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_26B676328(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_26B675324();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EE0, &qword_26B6F17B8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_26B6EA134();
  MEMORY[0x26D67D4D0](0xD00000000000001BLL, 0x800000026B6FBEA0);
  sub_26B6EA244();
  MEMORY[0x26D67D4D0](39, 0xE100000000000000);
  sub_26B6EA314();
  __break(1u);
}

void sub_26B676F2C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26B6EA674();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_26B675324();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F30, &qword_26B6F1800);
      sub_26B6EA2F4();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_26B6765DC(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_26B675324();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EE0, &qword_26B6F17B8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_26B6EA134();
  MEMORY[0x26D67D4D0](0xD00000000000001BLL, 0x800000026B6FBEA0);
  sub_26B6EA244();
  MEMORY[0x26D67D4D0](39, 0xE100000000000000);
  sub_26B6EA314();
  __break(1u);
}

uint64_t sub_26B677200(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_26B6EA0C4();
  v4 = *(a1 + 36);
  return result;
}

id sub_26B677240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCConnectionProvider();
  v16[3] = v6;
  v16[4] = &off_287C2FFC8;
  v16[0] = a1;
  v7 = objc_allocWithZone(type metadata accessor for SportsManager());
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_26B678520(*v11, a2, a3, v7);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

unint64_t sub_26B677368()
{
  result = qword_280409DF0;
  if (!qword_280409DF0)
  {
    sub_26B67826C(255, &qword_280409DE0, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409DF0);
  }

  return result;
}

uint64_t sub_26B6773DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_26B677440(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_26B677474()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26B67749C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26B67752C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26B677554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityCreationPolicy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6775B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsActivityCreationPolicy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B67761C(id *a1)
{
  v3 = type metadata accessor for SportsActivityCreationPolicy();
  OUTLINED_FUNCTION_32_2(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);
  v15 = (v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  return sub_26B6726AC(a1, v1 + v8, v12, v13, v14, v16, v17);
}

uint64_t sub_26B6776D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_26B677780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_26B6777B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 1);
}

unint64_t sub_26B677818()
{
  result = qword_280409EA0;
  if (!qword_280409EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409EA0);
  }

  return result;
}

unint64_t sub_26B677870()
{
  result = qword_280409EA8;
  if (!qword_280409EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409EA8);
  }

  return result;
}

unint64_t sub_26B6778C4()
{
  result = qword_280409EB0;
  if (!qword_280409EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409EB0);
  }

  return result;
}

unint64_t sub_26B67791C()
{
  result = qword_280409EB8;
  if (!qword_280409EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409EB8);
  }

  return result;
}

uint64_t dispatch thunk of SportsManager.subscribeToEvent(request:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
}

uint64_t getEnumTagSinglePayload for SportsManager.RefreshOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SportsManager.RefreshOptions(uint64_t result, int a2, int a3)
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

uint64_t sub_26B67826C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B6782D0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_36_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B678324(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_47_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_36_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B6783A4()
{
  result = qword_280409F20;
  if (!qword_280409F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409F20);
  }

  return result;
}

uint64_t sub_26B6783F8(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 & 1, 0);
}

uint64_t sub_26B678428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_143Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_26B6784F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_26B678520(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v25[3] = type metadata accessor for PersistentStore(0);
  v25[4] = &protocol witness table for PersistentStore;
  v25[0] = a2;
  v24[3] = type metadata accessor for XPCConnectionProvider();
  v24[4] = &off_287C2FFC8;
  v24[0] = a1;
  v8 = OBJC_IVAR____TtC9SportsKit13SportsManager_appState;
  *&a4[v8] = [objc_allocWithZone(type metadata accessor for AppState()) init];
  *(OBJC_IVAR____TtC9SportsKit13SportsManager_activeSubscriptions + a4) = MEMORY[0x277D84F98];
  *&a4[OBJC_IVAR____TtC9SportsKit13SportsManager_activitiesMonitor] = 0;
  *&a4[OBJC_IVAR____TtC9SportsKit13SportsManager_disposables] = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SportsKit13SportsManager__clockSyncedPlaysPublisher;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E70, &qword_26B6F14A0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&a4[v9] = sub_26B6E9604();
  v13 = OBJC_IVAR____TtC9SportsKit13SportsManager__subscriptionPublisher;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DA8, &qword_26B6F1430);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&a4[v13] = sub_26B6E9604();
  v17 = OBJC_IVAR____TtC9SportsKit13SportsManager__activitiesPublisher;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409DB8, &qword_26B6F1438);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&a4[v17] = sub_26B6E9604();
  sub_26B642140(v24, &a4[OBJC_IVAR____TtC9SportsKit13SportsManager_xpcConnectionProvider]);
  sub_26B642140(v25, &a4[OBJC_IVAR____TtC9SportsKit13SportsManager_dataStore]);
  *&a4[OBJC_IVAR____TtC9SportsKit13SportsManager_playsStore] = a3;
  v23.receiver = a4;
  v23.super_class = type metadata accessor for SportsManager();

  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_26B66D16C();

  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21;
}

uint64_t sub_26B678720(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B6787CC;

  return sub_26B675254(a1, a2, v6);
}

uint64_t sub_26B6787CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26B6788C8()
{
  OUTLINED_FUNCTION_23_1();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B67897C;
  v3 = OUTLINED_FUNCTION_51_1();

  return v4(v3);
}

uint64_t sub_26B67897C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_7_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

void sub_26B678AF8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26B678B04(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_26B678B50(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0, 1);
}

void *OUTLINED_FUNCTION_6_6(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(*result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return sub_26B6EA2E4();
}

void OUTLINED_FUNCTION_27_2()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42_1@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  v2 = *(v0 - 96);

  return sub_26B6E9674();
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return sub_26B6773DC(v0, v1);
}

id sub_26B678FC8(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26B6E9324();
  v14[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v14];

  v4 = v14[0];
  if (v3)
  {
    v5 = sub_26B6E93B4();
    OUTLINED_FUNCTION_16(v5);
    v7 = *(v6 + 8);
    v8 = v4;
    v7(a1, v5);
  }

  else
  {
    v9 = v14[0];
    sub_26B6E92B4();

    swift_willThrow();
    v10 = sub_26B6E93B4();
    OUTLINED_FUNCTION_16(v10);
    (*(v11 + 8))(a1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

void *sub_26B679110(uint64_t a1)
{
  v2 = v1;
  v61 = sub_26B6E98A4();
  v4 = OUTLINED_FUNCTION_4(v61);
  v58 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v57 = v9 - v8;
  v60 = sub_26B6E98D4();
  v10 = OUTLINED_FUNCTION_4(v60);
  v55 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v54 = v15 - v14;
  v16 = sub_26B6E9F14();
  v17 = OUTLINED_FUNCTION_4(v16);
  v52 = v18;
  v53 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v23 = v22 - v21;
  v24 = sub_26B6E93B4();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_0();
  v32 = v31 - v30;
  *(v1 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v33 = OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_url;
  v34 = *(v27 + 16);
  v34(v1 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_url, a1, v24);
  v1[2] = sub_26B6E9314();
  v1[3] = v35;
  sub_26B67826C(0, &qword_2810CC278, 0x277CCA9F8);
  v34(v32, a1, v24);
  v36 = sub_26B678FC8(v32);
  if (v62)
  {
    v37 = *(v27 + 8);
    v37(a1, v24);
    v38 = v2[3];

    v37(v2 + v33, v24);
    sub_26B67836C(v2 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate);
    type metadata accessor for FileSystemMonitor();
    v39 = *(*v2 + 48);
    v40 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v36;
    *(v2 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_fileHandle) = v36;
    sub_26B67826C(0, &qword_2810CC240, 0x277D85CA0);
    [v41 fileDescriptor];
    sub_26B6E9F04();
    sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
    v51 = v24;
    v42 = sub_26B6E9EB4();
    v43 = sub_26B6E9F34();

    (*(v52 + 8))(v23, v53);
    *(v2 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_source) = v43;
    v63 = OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_source;
    swift_getObjectType();
    v44 = swift_allocObject();
    swift_weakInit();
    v68 = sub_26B67A048;
    v69 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_26B66CB58;
    v67 = &block_descriptor_2;
    v45 = _Block_copy(&aBlock);

    sub_26B67EF8C();
    sub_26B67EF90();
    sub_26B6E9F44();
    _Block_release(v45);
    v59 = *(v58 + 8);
    v59(v57, v61);
    v56 = *(v55 + 8);
    v56(v54, v60);

    v46 = *(v2 + v63);
    swift_getObjectType();
    v47 = swift_allocObject();
    swift_weakInit();

    v68 = sub_26B67A068;
    v69 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_26B66CB58;
    v67 = &block_descriptor_9;
    v48 = _Block_copy(&aBlock);

    sub_26B6E98B4();
    sub_26B679A24();
    sub_26B6E9F54();
    _Block_release(v48);
    v59(v57, v61);
    v56(v54, v60);

    v49 = *(v2 + v63);
    swift_getObjectType();
    sub_26B6E9F74();
    (*(v27 + 8))(a1, v51);
  }

  return v2;
}

uint64_t sub_26B679758()
{
  v0 = sub_26B6E9F14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_source);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_26B6E9F94();
    swift_unknownObjectRelease();
    (*(v1 + 32))(v7, v5, v0);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_26B679D08();
    }

    return (*(v1 + 8))(v7, v0);
  }

  return result;
}

void sub_26B6798F8()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_fileHandle);

  v9[0] = 0;
  v2 = [v1 closeAndReturnError_];

  v3 = v9[0];
  if (!v2)
  {
    v6 = v9[0];
    v7 = sub_26B6E92B4();

    swift_willThrow();
LABEL_7:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *MEMORY[0x277D85DE8];

  v5 = v3;
}

uint64_t sub_26B679A24()
{
  sub_26B6E98A4();
  sub_26B67A070(&qword_2810CD750, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE0, &qword_26B6F17A0);
  sub_26B63F490();
  return sub_26B6EA0B4();
}

uint64_t sub_26B679ADC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_source;
  v3 = *(v0 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_source);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_26B6E9F64();
  swift_unknownObjectRelease();
  v4 = *(v1 + 24);

  v5 = OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_url;
  v6 = sub_26B6E93B4();
  OUTLINED_FUNCTION_16(v6);
  (*(v7 + 8))(v1 + v5);

  v8 = *(v1 + v2);
  swift_unknownObjectRelease();
  sub_26B67836C(v1 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate);
  return v1;
}

uint64_t sub_26B679BA0()
{
  sub_26B679ADC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FileSystemMonitor()
{
  result = qword_2810CCDC8;
  if (!qword_2810CCDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B679C4C()
{
  result = sub_26B6E93B4();
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

void sub_26B679D08()
{
  v1 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26B6E9F14();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  sub_26B6E9F04();
  sub_26B67A070(&unk_2810CC250, MEMORY[0x277D85288]);
  v11 = sub_26B6EA094();
  (*(v5 + 8))(v10, v2);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_fileHandle);
    v13 = [v12 readDataToEndOfFile];
    v14 = sub_26B6E9474();
    v16 = v15;

    v17 = v1 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v14, v16, *(v1 + 16), *(v1 + 24), ObjectType, v18);
      swift_unknownObjectRelease();
    }

    v29[0] = 0;
    if ([v12 seekToOffset:0 error:v29])
    {
      v20 = v29[0];
      sub_26B645A94(v14, v16);
    }

    else
    {
      v21 = v29[0];
      v22 = sub_26B6E92B4();

      swift_willThrow();
      if (qword_280408DA0 != -1)
      {
        swift_once();
      }

      v23 = sub_26B6E95C4();
      __swift_project_value_buffer(v23, qword_280421AE0);

      v24 = sub_26B6E95A4();
      v25 = sub_26B6E9E64();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_26B6D22D8(*(v1 + 16), *(v1 + 24), v29);
        _os_log_impl(&dword_26B630000, v24, v25, "Could not read to beginning of file: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x26D67E950](v27, -1, -1);
        MEMORY[0x26D67E950](v26, -1, -1);
      }

      sub_26B645A94(v14, v16);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B67A070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CloudChannelSubscription.Demand.key.getter()
{
  v1 = 7105633;
  if (*(v0 + 8) == 1)
  {
    v1 = 0x73746E657665;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x7365756761656CLL;
  }
}

uint64_t CloudChannelSubscription.Demand.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (!v7 && (sub_26B6EA5D4() & 1) == 0)
  {
    if (a3)
    {
      v11 = a1 == 0x7365756761656CLL && a2 == 0xE700000000000000;
      if (v11 || (sub_26B6EA5D4() & 1) != 0)
      {

        v10 = 0;
        goto LABEL_7;
      }

      if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
      {
      }

      else
      {
        v13 = sub_26B6EA5D4();

        if ((v13 & 1) == 0)
        {

          a3 = 0;
          goto LABEL_16;
        }
      }

      v10 = 1;
      goto LABEL_7;
    }

LABEL_16:
    v10 = -1;
    goto LABEL_7;
  }

  a3 = 0;
  v10 = 2;
LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v10;
  return result;
}

uint64_t CloudChannelSubscription.CacheValue.channelID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CloudChannelSubscription.CacheValue.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CloudChannelSubscription.CacheValue() + 20);
  v4 = sub_26B6E9564();
  v5 = OUTLINED_FUNCTION_16(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for CloudChannelSubscription.CacheValue()
{
  result = qword_2810CC898;
  if (!qword_2810CC898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B67A344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B67A41C(char a1)
{
  if (a1)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0x496C656E6E616863;
  }
}

uint64_t sub_26B67A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B67A344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B67A48C(uint64_t a1)
{
  v2 = sub_26B67A698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B67A4C8(uint64_t a1)
{
  v2 = sub_26B67A698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudChannelSubscription.CacheValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F48, &qword_26B6F18E0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B67A698();
  sub_26B6EA7C4();
  v14 = *v3;
  v15 = v3[1];
  v20[15] = 0;
  sub_26B6EA4F4();
  if (!v2)
  {
    v16 = *(type metadata accessor for CloudChannelSubscription.CacheValue() + 20);
    v20[14] = 1;
    sub_26B6E9564();
    OUTLINED_FUNCTION_1_10();
    sub_26B67E758(v17, v18);
    OUTLINED_FUNCTION_59_0();
    sub_26B6EA534();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_26B67A698()
{
  result = qword_2810CC8C8;
  if (!qword_2810CC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC8C8);
  }

  return result;
}

uint64_t CloudChannelSubscription.CacheValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_26B6E9564();
  v4 = OUTLINED_FUNCTION_4(v30);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F50, &qword_26B6F18E8);
  OUTLINED_FUNCTION_4(v31);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for CloudChannelSubscription.CacheValue();
  v15 = OUTLINED_FUNCTION_16(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v20 = (v19 - v18);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B67A698();
  sub_26B6EA784();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *v20 = sub_26B6EA424();
  v20[1] = v22;
  OUTLINED_FUNCTION_1_10();
  sub_26B67E758(v23, v24);
  sub_26B6EA464();
  v25 = OUTLINED_FUNCTION_11_6();
  v26(v25);
  (*(v28 + 32))(v20 + *(v14 + 20), v10, v30);
  sub_26B67A9B4(v20, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26B67AA18(v20);
}

uint64_t sub_26B67A9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudChannelSubscription.CacheValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B67AA18(uint64_t a1)
{
  v2 = type metadata accessor for CloudChannelSubscription.CacheValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CloudChannelSubscription.__allocating_init(demand:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5();
  v2 = swift_allocObject();
  CloudChannelSubscription.init(demand:)(a1);
  return v2;
}

uint64_t CloudChannelSubscription.init(demand:)(uint64_t a1)
{
  v3 = MEMORY[0x277D84F98];
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t CloudChannelSubscription.updateDemand(for:deadline:)()
{
  OUTLINED_FUNCTION_25_2();
  v78 = v1;
  v79 = v2;
  v3 = v0;
  v72 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v63 - v11;
  v13 = sub_26B6E9564();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_0();
  v71 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v74 = v63 - v20;
  v22 = v6 + 56;
  v21 = *(v6 + 56);
  v23 = *(v6 + 32);
  OUTLINED_FUNCTION_13_5();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v70 = (v29 + 32);
  v64 = (v29 + 8);
  v65 = "isWinnerIndicatorVisible";
  v68 = v29;
  v63[1] = v29 + 40;
  v73 = v6;

  v30 = 0;
  v69 = v13;
  v66 = "r";
  for (i = v28; v26; v28 = i)
  {
LABEL_6:
    v32 = (*(v73 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v26)))));
    v33 = v32[1];
    v76 = *v32;
    sub_26B67E194(v72, v12, &qword_280409370, &qword_26B6ED070);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
    v75 = v33;
    if (EnumTagSinglePayload != 1)
    {
      (*v70)(v74, v12, v13);

      goto LABEL_16;
    }

    sub_26B6E9534();
    v35 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v36 = sub_26B667118(0xD000000000000016, v65 | 0x8000000000000000);
    if (v36)
    {
      v37 = v36;
      v38 = [v36 dictionaryRepresentation];
      v39 = sub_26B6E9924();

      if (*(v39 + 16))
      {
        OUTLINED_FUNCTION_14_4();
        sub_26B675324();
        v41 = v40;

        if (v41)
        {
          OUTLINED_FUNCTION_14_4();
          v42 = sub_26B6E99F4();
          [v37 integerForKey_];

          goto LABEL_14;
        }
      }

      else
      {
      }
    }

LABEL_14:
    v43 = v71;
    sub_26B6E94B4();
    (*v64)(v43, v13);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_26B650BBC(v12, &qword_280409370, &qword_26B6ED070);
    }

LABEL_16:
    swift_beginAccess();
    v44 = *(v3 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v3 + 16);
    v45 = v77;
    *(v3 + 16) = 0x8000000000000000;
    v46 = sub_26B675324();
    if (__OFADD__(*(v45 + 16), (v47 & 1) == 0))
    {
      goto LABEL_28;
    }

    v48 = v46;
    v13 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
    if (sub_26B6EA2E4())
    {
      v49 = sub_26B675324();
      if ((v13 & 1) != (v50 & 1))
      {
        goto LABEL_30;
      }

      v48 = v49;
    }

    if (v13)
    {

      v51 = v77;
      v52 = OUTLINED_FUNCTION_15_2();
      (*(v53 + 40))(v52, v74, v13);
    }

    else
    {
      v51 = v77;
      OUTLINED_FUNCTION_4_7(v77 + 8 * (v48 >> 6));
      v54 = (*(v51 + 48) + 16 * v48);
      v55 = v75;
      *v54 = v76;
      v54[1] = v55;
      v56 = OUTLINED_FUNCTION_15_2();
      (*(v57 + 32))(v56, v74, v13);
      v58 = *(v51 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_29;
      }

      *(v51 + 16) = v60;
    }

    v26 &= v26 - 1;
    v61 = *(v3 + 16);
    *(v3 + 16) = v51;

    swift_endAccess();
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
    }

    v26 = *(v22 + 8 * v31);
    ++v30;
    if (v26)
    {
      v30 = v31;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_26B6EA674();
  __break(1u);
  return result;
}

double static CloudChannelPreferences.subscriptionLifetime.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26B667118(0xD000000000000016, 0x800000026B6FBAA0);
  v2 = 30.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 dictionaryRepresentation];
    v5 = sub_26B6E9924();

    if (*(v5 + 16))
    {
      OUTLINED_FUNCTION_14_4();
      sub_26B675324();
      v7 = v6;

      if (v7)
      {
        OUTLINED_FUNCTION_14_4();
        v8 = sub_26B6E99F4();
        v9 = [v3 integerForKey_];

        v10 = 60;
        if (v9 < 60)
        {
          v10 = v9;
        }

        if (v10 <= 10)
        {
          v10 = 10;
        }

        return v10;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return v2;
}

uint64_t CloudChannelSubscription.audit(clearExpiredEntries:deadline:limit:)(int a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v47 = a2;
  v46 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - v8;
  v9 = sub_26B6E9564();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F58, &unk_26B6F18F0);
  v19 = OUTLINED_FUNCTION_46(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_30_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = (&v42 - v26);
  v51[7] = MEMORY[0x277D84FA0];
  v52 = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v44 = v3;
  v28 = *(v3 + 16);

  v51[0] = sub_26B67C608(v29);
  v30 = 0;
  sub_26B67C478(v51);

  v31 = (v12 + 32);
  v32 = (v12 + 8);
  v33 = *(v51[0] + 16);
  v42 = v27;
  v48 = v33;
  v49 = v51[0];
  while (1)
  {
    if (v30 == v33)
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v34);
      v50 = v33;
      goto LABEL_7;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v30 >= *(v49 + 16))
    {
      goto LABEL_18;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
    sub_26B67E194(v49 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)) + *(*(v35 - 8) + 72) * v30, v24, &qword_280409090, &unk_26B6EC1B0);
    v50 = (v30 + 1);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v35);
LABEL_7:
    sub_26B67EDE8(v24, v27, &qword_280409F58, &unk_26B6F18F0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
    if (__swift_getEnumTagSinglePayload(v27, 1, v36) == 1)
    {

      return v52;
    }

    v37 = *v27;
    v38 = v27[1];
    (*v31)(v17, v27 + *(v36 + 48), v9);
    OUTLINED_FUNCTION_1_10();
    sub_26B67E758(&unk_2810CEB20, v39);
    if ((sub_26B6E99A4() & 1) == 0 && *(v52 + 16) < v45)
    {
      sub_26B652648(v51, v37, v38);

LABEL_13:
      (*v32)(v17, v9);
      goto LABEL_15;
    }

    sub_26B652648(v51, v37, v38);

    if (v46)
    {
      swift_beginAccess();
      v40 = v43;
      sub_26B676010(v37, v38);
      swift_endAccess();

      v27 = v42;
      sub_26B650BBC(v40, &qword_280409370, &qword_26B6ED070);
      goto LABEL_13;
    }

    (*v32)(v17, v9);

LABEL_15:
    v33 = v48;
    v30 = v50;
  }

  __break(1u);
LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t CloudChannelSubscription.readChannelMap()()
{
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t CloudChannelSubscription.updateChannelMap(_:deadline:)()
{
  OUTLINED_FUNCTION_25_2();
  v90 = v1;
  v91 = v2;
  v3 = v0;
  v84 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = sub_26B6E9564();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_0();
  v75 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v83 = type metadata accessor for CloudChannelSubscription.CacheValue();
  v24 = OUTLINED_FUNCTION_4(v83);
  v81 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_30_0();
  v87 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v82 = (&v74 - v31);
  v33 = v6 + 64;
  v32 = *(v6 + 64);
  v34 = *(v6 + 32);
  OUTLINED_FUNCTION_13_5();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v85 = v6;
  v86 = (v16 + 32);
  v40 = (v16 + 8);
  v41 = v13;
  v74 = v40;

  v42 = 0;
  v77 = v39;
  v78 = v6 + 64;
  v79 = v12;
  v80 = v23;
  v76 = v3;
  if (v37)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_2:
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v43 >= v39)
    {
    }

    v37 = *(v33 + 8 * v43);
    ++v42;
  }

  while (!v37);
  v42 = v43;
  while (1)
  {
LABEL_6:
    v44 = (v42 << 10) | (16 * __clz(__rbit64(v37)));
    v45 = *(v85 + 56);
    v46 = (*(v85 + 48) + v44);
    v47 = v46[1];
    v88 = *v46;
    v48 = (v45 + v44);
    v49 = *v48;
    v50 = v48[1];
    sub_26B67E194(v84, v12, &qword_280409370, &qword_26B6ED070);
    v51 = v23;
    if (__swift_getEnumTagSinglePayload(v12, 1, v41) == 1)
    {

      v52 = v41;
      v53 = v75;
      sub_26B6E9534();
      sub_26B6E94B4();
      (*v74)(v53, v52);
      if (__swift_getEnumTagSinglePayload(v12, 1, v52) != 1)
      {
        sub_26B650BBC(v12, &qword_280409370, &qword_26B6ED070);
      }
    }

    else
    {
      (*v86)(v23, v12, v41);

      v52 = v41;
    }

    v55 = v82;
    v54 = v83;
    *v82 = v49;
    *(v55 + 8) = v50;
    (*v86)((v55 + *(v54 + 20)), v51, v52);
    swift_beginAccess();
    sub_26B67E34C(v55, v87);
    v56 = *(v3 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v3 + 24);
    v57 = v89;
    *(v3 + 24) = 0x8000000000000000;
    v58 = sub_26B675324();
    if (__OFADD__(*(v57 + 16), (v59 & 1) == 0))
    {
      break;
    }

    v60 = v58;
    v61 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F60, &qword_26B6F1900);
    if (sub_26B6EA2E4())
    {
      v62 = sub_26B675324();
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_24;
      }

      v60 = v62;
    }

    v41 = v52;
    v23 = v80;
    if (v61)
    {

      v64 = v89;
      OUTLINED_FUNCTION_18_4();
      sub_26B67E3B0(v87, v65);
    }

    else
    {
      v64 = v89;
      OUTLINED_FUNCTION_4_7(v89 + 8 * (v60 >> 6));
      v66 = (*(v64 + 48) + 16 * v60);
      *v66 = v88;
      v66[1] = v47;
      OUTLINED_FUNCTION_18_4();
      sub_26B67E34C(v67, v68);
      v69 = *(v64 + 16);
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_23;
      }

      *(v64 + 16) = v71;
    }

    v37 &= v37 - 1;
    v3 = v76;
    v72 = *(v76 + 24);
    *(v76 + 24) = v64;

    swift_endAccess();
    v33 = v78;
    v12 = v79;
    v39 = v77;
    if (!v37)
    {
      goto LABEL_2;
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_26B6EA674();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CloudChannelSubscription.clearChannelMap()()
{
  type metadata accessor for CloudChannelSubscription.CacheValue();
  v1 = sub_26B6E9944();
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  v2 = *(v0 + 24);
  *(v0 + 24) = v1;
}

uint64_t sub_26B67BBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6564 && a2 == 0xE600000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B67BC8C(char a1)
{
  if (a1)
  {
    return 0x736C656E6E616863;
  }

  else
  {
    return 0x646E616D6564;
  }
}

uint64_t sub_26B67BCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B67BBC8(a1, a2);
  *a3 = result;
  return result;
}