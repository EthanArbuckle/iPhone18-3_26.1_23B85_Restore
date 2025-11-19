void *SportsPersonalizationEntity.sportsItem.setter(const void *a1)
{
  OUTLINED_FUNCTION_5_83();
  memcpy(v3, v4, v5);
  sub_1DD3ADFD0(&v7, &qword_1ECCDF690, &qword_1DD660BF0);
  return memcpy(v1, a1, 0x80uLL);
}

void *SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)@<X0>(const void *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  sub_1DD5C5498(v7);
  memcpy(__dst, v7, sizeof(__dst));
  sub_1DD3ADFD0(__dst, &qword_1ECCDF690, &qword_1DD660BF0);
  result = memcpy(a3, a1, 0x80uLL);
  a3[128] = v5;
  return result;
}

double sub_1DD5C5498(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1DD642F70;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  return result;
}

BOOL static SportsPersonalizationEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_121(v15);
  v4 = *(a1 + 128);
  OUTLINED_FUNCTION_3_90(v16);
  v5 = *(a2 + 128);
  OUTLINED_FUNCTION_1_121(__src);
  OUTLINED_FUNCTION_3_90(&__src[128]);
  OUTLINED_FUNCTION_1_121(v17);
  if (OUTLINED_FUNCTION_0_99(v17) == 1)
  {
    OUTLINED_FUNCTION_3_90(__dst);
    if (OUTLINED_FUNCTION_0_99(__dst) == 1)
    {
      OUTLINED_FUNCTION_1_121(v13);
      sub_1DD5C52F8(v15, v11);
      sub_1DD5C52F8(v16, v11);
      sub_1DD3ADFD0(v13, &qword_1ECCDF690, &qword_1DD660BF0);
      goto LABEL_10;
    }

    sub_1DD5C52F8(v15, v13);
    sub_1DD5C52F8(v16, v13);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD3ADFD0(__dst, &qword_1ECCDF698, &qword_1DD660130);
    return 0;
  }

  OUTLINED_FUNCTION_1_121(v13);
  OUTLINED_FUNCTION_1_121(v11);
  OUTLINED_FUNCTION_3_90(__dst);
  if (OUTLINED_FUNCTION_0_99(__dst) == 1)
  {
    OUTLINED_FUNCTION_1_121(v10);
    sub_1DD5C52F8(v15, v9);
    sub_1DD5C52F8(v16, v9);
    sub_1DD5C52F8(v13, v9);
    sub_1DD400C58(v10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_90(v10);
  sub_1DD5C52F8(v15, v9);
  sub_1DD5C52F8(v16, v9);
  sub_1DD5C52F8(v13, v9);
  v7 = static SportsItem.== infix(_:_:)(v11, v10);
  memcpy(v8, v10, sizeof(v8));
  sub_1DD400C58(v8);
  memcpy(v9, v11, sizeof(v9));
  sub_1DD400C58(v9);
  OUTLINED_FUNCTION_1_121(v10);
  sub_1DD3ADFD0(v10, &qword_1ECCDF690, &qword_1DD660BF0);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v4 != 5)
  {
    return v5 != 5 && (sub_1DD3AF3B8(v4, v5) & 1) != 0;
  }

  return v5 == 5;
}

uint64_t sub_1DD5C56F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74497374726F7073 && a2 == 0xEA00000000006D65;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DD674560 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD5C57CC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x74497374726F7073;
  }
}

uint64_t sub_1DD5C5814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C56F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5C583C(uint64_t a1)
{
  v2 = sub_1DD5C5E1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C5878(uint64_t a1)
{
  v2 = sub_1DD5C5E1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SportsPersonalizationEntity.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF6A0, &qword_1DD660138);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10 - 8];
  OUTLINED_FUNCTION_5_83();
  memcpy(v12, v13, v14);
  v20 = *(v0 + 128);
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DD5C52F8(v19, v18);
  sub_1DD5C5E1C();
  sub_1DD640EF8();
  memcpy(v18, v19, sizeof(v18));
  sub_1DD5C5E70();
  sub_1DD640C08();
  memcpy(v17, v18, sizeof(v17));
  sub_1DD3ADFD0(v17, &qword_1ECCDF690, &qword_1DD660BF0);
  if (!v1)
  {
    sub_1DD5C5EC4();
    sub_1DD640C08();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_86();
}

void SportsPersonalizationEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_93();
  v14 = v13;
  v26 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF6C0, &qword_1DD660140);
  OUTLINED_FUNCTION_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27[-v22 - 8];
  sub_1DD5C5498(v34);
  memcpy(v33, v34, sizeof(v33));
  v24 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1DD5C5E1C();
  sub_1DD640ED8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    memcpy(v31, v33, sizeof(v31));
    v32 = 5;
  }

  else
  {
    v25 = v26;
    sub_1DD5C5F18();
    OUTLINED_FUNCTION_8_67();
    memcpy(v28, v30, sizeof(v28));
    memcpy(v29, v33, sizeof(v29));
    sub_1DD3ADFD0(v29, &qword_1ECCDF690, &qword_1DD660BF0);
    memcpy(v33, v28, sizeof(v33));
    sub_1DD5C5F6C();
    OUTLINED_FUNCTION_8_67();
    (*(v18 + 8))(v23, v16);
    memcpy(v27, v28, 0x80uLL);
    v27[128] = a12;
    memcpy(v25, v27, 0x81uLL);
    sub_1DD3C4DAC(v27, v31);
    __swift_destroy_boxed_opaque_existential_1(v14);
    memcpy(v31, v28, sizeof(v31));
    v32 = a12;
  }

  sub_1DD3C4E08(v31);
  OUTLINED_FUNCTION_86();
}

SiriInference::PersonalizationLevel_optional __swiftcall PersonalizationLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationLevel.rawValue.getter()
{
  result = 0x74726F7073;
  switch(*v0)
  {
    case 1:
      result = 0x65756761656CLL;
      break;
    case 2:
      result = 1835099508;
      break;
    case 3:
      result = 0x6574656C687461;
      break;
    case 4:
      result = 7105633;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD5C5E1C()
{
  result = qword_1ECCDF6A8;
  if (!qword_1ECCDF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6A8);
  }

  return result;
}

unint64_t sub_1DD5C5E70()
{
  result = qword_1ECCDF6B0;
  if (!qword_1ECCDF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6B0);
  }

  return result;
}

unint64_t sub_1DD5C5EC4()
{
  result = qword_1ECCDF6B8;
  if (!qword_1ECCDF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6B8);
  }

  return result;
}

unint64_t sub_1DD5C5F18()
{
  result = qword_1ECCDF6C8;
  if (!qword_1ECCDF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6C8);
  }

  return result;
}

unint64_t sub_1DD5C5F6C()
{
  result = qword_1ECCDF6D0;
  if (!qword_1ECCDF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6D0);
  }

  return result;
}

uint64_t sub_1DD5C5FE4@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalizationLevel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DD5C60C0()
{
  result = qword_1ECCDF6D8;
  if (!qword_1ECCDF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference10SportsItemVSg(uint64_t a1)
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

uint64_t sub_1DD5C614C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 129))
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

uint64_t sub_1DD5C61AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalizationLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SportsPersonalizationEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SportsRecommendationQuery.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5C6490()
{
  result = qword_1ECCDF6E0;
  if (!qword_1ECCDF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6E0);
  }

  return result;
}

unint64_t sub_1DD5C64E8()
{
  result = qword_1ECCDF6E8;
  if (!qword_1ECCDF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6E8);
  }

  return result;
}

unint64_t sub_1DD5C6540()
{
  result = qword_1ECCDF6F0;
  if (!qword_1ECCDF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6F0);
  }

  return result;
}

unint64_t sub_1DD5C6598()
{
  result = qword_1ECCDF6F8;
  if (!qword_1ECCDF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6F8);
  }

  return result;
}

unint64_t sub_1DD5C65F0()
{
  result = qword_1ECCDF700;
  if (!qword_1ECCDF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF700);
  }

  return result;
}

unint64_t sub_1DD5C6648()
{
  result = qword_1ECCDF708;
  if (!qword_1ECCDF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF708);
  }

  return result;
}

unint64_t sub_1DD5C669C()
{
  result = qword_1ECCDF710;
  if (!qword_1ECCDF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF710);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_90(void *a1)
{

  return memcpy(a1, v1, 0x80uLL);
}

uint64_t sub_1DD5C670C(uint64_t a1)
{
  v2 = sub_1DD5C6898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C6748(uint64_t a1)
{
  v2 = sub_1DD5C6898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsResolutionContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF718, &qword_1DD660670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C6898();
  sub_1DD640EF8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DD5C6898()
{
  result = qword_1ECCDF720;
  if (!qword_1ECCDF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF720);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsResolutionContext(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5C6A04()
{
  result = qword_1ECCDF728;
  if (!qword_1ECCDF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF728);
  }

  return result;
}

unint64_t sub_1DD5C6A5C()
{
  result = qword_1ECCDF730;
  if (!qword_1ECCDF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF730);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsResolutionInfo(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD5C6B60(uint64_t a1)
{
  v2 = sub_1DD5C6CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C6B9C(uint64_t a1)
{
  v2 = sub_1DD5C6CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsResolutionSpec.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF738, &qword_1DD6607C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C6CEC();
  sub_1DD640EF8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DD5C6CEC()
{
  result = qword_1ECCDF740;
  if (!qword_1ECCDF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF740);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsResolutionSpec(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5C6E58()
{
  result = qword_1ECCDF748;
  if (!qword_1ECCDF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF748);
  }

  return result;
}

unint64_t sub_1DD5C6EB0()
{
  result = qword_1ECCDF750;
  if (!qword_1ECCDF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF750);
  }

  return result;
}

uint64_t sub_1DD5C6F04(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC7E0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD5CC868(v6, &qword_1ECCDCA60, &qword_1DD649F18, sub_1DD5CCBA0, sub_1DD5CC984);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD5C6FA8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC7F8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD5CC868(v6, &qword_1ECCDCA58, &qword_1DD649F08, sub_1DD5CD1CC, sub_1DD5CCA7C);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD5C704C(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v12 = a4;
    v8 = a2(v5, 0);
    v9 = a3(&v13, v8 + 32, v5, a1);

    result = sub_1DD3AA5A4();
    if (v9 != v5)
    {
      __break(1u);
      return result;
    }

    a4 = v12;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v14 = v8;
  a4(&v14);
  v11 = v14;
  if (v4)
  {
  }

  return v11;
}

uint64_t SportsResolver.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD63F0C8();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v18 - v14;
  (*(v5 + 104))(v10, *MEMORY[0x1E69D29C8], v2, v13);
  sub_1DD63F2C8();
  (*(v5 + 8))(v10, v2);
  v16 = sub_1DD63F308();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  return sub_1DD4DDCBC(v15, a1, &qword_1ECCDCCE8, &unk_1DD64AF90);
}

uint64_t SportsResolver.makeRecommendation(query:)(uint64_t *a1)
{
  v2 = sub_1DD640478();
  v3 = OUTLINED_FUNCTION_0(v2);
  v24 = v4;
  v25 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_1DD640438();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = sub_1DD63FBD8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2();
  v16 = type metadata accessor for SELFLoggingService();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v23 = *a1;
  sub_1DD63F178();
  sub_1DD406E2C();
  sub_1DD63FB98();
  sub_1DD3FAC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  (*(v24 + 104))(v9, *MEMORY[0x1E69E8090], v25);
  *(v21 + *(v17 + 28)) = sub_1DD6404A8();
  sub_1DD504CCC();
  return sub_1DD4A562C(v21);
}

void *sub_1DD5C75AC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v20 = a1;
  result = sub_1DD5C7960(&v20, __src);
  if (!v2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v15[0] = a1;
    v6 = sub_1DD5C7E44(v15);
    memcpy(v15, __dst, sizeof(v15));
    sub_1DD5C8470(v15, v6, v16);

    sub_1DD390754(__dst, &qword_1ECCDEB48, &unk_1DD65B2C0);
    memcpy(v19, v16, 0x81uLL);
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD63F9F8();
    __swift_project_value_buffer(v7, qword_1ECD0DDD8);
    sub_1DD4DDC08(v19, v15, &qword_1ECCDF758, &qword_1DD660918);
    v8 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    sub_1DD390754(v19, &qword_1ECCDF758, &qword_1DD660918);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15[0] = v11;
      *v10 = 136315138;
      v12 = sub_1DD4A8508();
      v14 = sub_1DD39565C(v12, v13, v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DD38D000, v8, v9, "makeRecommendation(). SportsItem recommendation: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12B3DA0](v11, -1, -1);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
    }

    return memcpy(a2, v19, 0x81uLL);
  }

  return result;
}

uint64_t type metadata accessor for SportsResolver()
{
  result = qword_1EE165980;
  if (!qword_1EE165980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5C789C()
{
  sub_1DD5C7908();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD5C7908()
{
  if (!qword_1EE163988)
  {
    sub_1DD63F308();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE163988);
    }
  }
}

void *sub_1DD5C7960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (memmove(&__dst, (v4 + 32), 0x80uLL), OUTLINED_FUNCTION_0_99(&__dst) != 1))
  {
    v10 = *(v4 + 160);
    __src[20] = v2;
    switch(v10)
    {
      case 1:
        v34 = 0;
        v35 = 0;
        v29 = 0;
        v30 = 0;
        v36 = v41;
        v37 = 0;
        v31 = 0xE000000000000000;
        v32 = v49;
        v33 = 0;
        v12 = v42;
        v13 = 0xE000000000000000;
        v14 = 0xE000000000000000;
        v15 = 0xE000000000000000;
        v19 = v50;
        goto LABEL_16;
      case 2:
        v36 = 0;
        v37 = 0;
        v33 = 0;
        v34 = 0;
        v35 = v43;
        v31 = 0xE000000000000000;
        v32 = 0;
        v29 = 0;
        v30 = v51;
        v12 = 0xE000000000000000;
        v13 = v44;
        v14 = 0xE000000000000000;
        v15 = 0xE000000000000000;
        v19 = 0xE000000000000000;
        v20 = v52;
        goto LABEL_17;
      case 3:
        v36 = 0;
        v37 = 0;
        v32 = 0;
        v33 = 0;
        v34 = v45;
        v35 = 0;
        v30 = 0;
        v31 = 0xE000000000000000;
        v29 = v53;
        v12 = 0xE000000000000000;
        v13 = 0xE000000000000000;
        v14 = v46;
        v15 = 0xE000000000000000;
        v19 = 0xE000000000000000;
        v20 = 0xE000000000000000;
        v18 = v54;
        goto LABEL_18;
      case 4:
      case 5:
        v11 = v40;
        v12 = v42;
        v36 = v41;
        v37 = __dst;
        v13 = v44;
        v14 = v46;
        v34 = v45;
        v35 = v43;
        v15 = v48;
        v16 = v50;
        v32 = v49;
        v33 = v47;
        v17 = v52;
        v18 = v54;
        v29 = v53;
        v30 = v51;

        v31 = v11;

        v19 = v16;
        v20 = v17;
        goto LABEL_18;
      default:
        v35 = 0;
        v36 = 0;
        v29 = 0;
        v30 = 0;
        v37 = __dst;
        v12 = 0xE000000000000000;
        v33 = v47;
        v34 = 0;
        v31 = v40;
        v32 = 0;
        v13 = 0xE000000000000000;
        v14 = 0xE000000000000000;
        v15 = v48;
        v19 = 0xE000000000000000;
LABEL_16:
        v20 = 0xE000000000000000;
LABEL_17:
        v18 = 0xE000000000000000;
LABEL_18:

        __src[0] = v37;
        __src[1] = v31;
        __src[2] = v36;
        __src[3] = v12;
        __src[4] = v35;
        __src[5] = v13;
        __src[6] = v34;
        __src[7] = v14;
        __src[8] = v33;
        __src[9] = v15;
        __src[10] = v32;
        __src[11] = v19;
        __src[12] = v30;
        __src[13] = v20;
        __src[14] = v29;
        __src[15] = v18;
        LOBYTE(__src[16]) = 0;
        __src[17] = 1;
        if (qword_1ECCDB0D0 != -1)
        {
          swift_once();
        }

        v21 = sub_1DD63F9F8();
        __swift_project_value_buffer(v21, qword_1ECD0DDD8);
        sub_1DD4DDC08(__src, v38, &qword_1ECCDEB48, &unk_1DD65B2C0);
        v22 = sub_1DD63F9D8();
        v23 = sub_1DD640368();
        sub_1DD390754(__src, &qword_1ECCDEB48, &unk_1DD65B2C0);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v38[0] = v25;
          *v24 = 136315138;
          v26 = sub_1DD5593B0();
          v28 = sub_1DD39565C(v26, v27, v38);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_1DD38D000, v22, v23, "resolveSportsPersonalizationLevel(). sportsItemWithSignal: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x1E12B3DA0](v25, -1, -1);
          MEMORY[0x1E12B3DA0](v24, -1, -1);
        }

        result = memcpy(a2, __src, 0x90uLL);
        break;
    }
  }

  else
  {
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1ECD0DDD8);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DD38D000, v6, v7, "resolveSportsPersonalizationLevel().\nInput sportsPersonalizationEntities[0].sportsItem in sportsRecommendationQuery is nil.", v8, 2u);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    if (qword_1ECCDB138 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(__src, &xmmword_1ECCDF518, 0x80uLL);
    memcpy(a2, &xmmword_1ECCDF518, 0x80uLL);
    *(a2 + 128) = 0;
    *(a2 + 136) = 1;
    return sub_1DD400BFC(__src, v38);
  }

  return result;
}

uint64_t sub_1DD5C7E44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    if (qword_1ECCDB0D0 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = 0x1ECCDB000uLL;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v6 = (v4 + 136 * v3);
  while (v2 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    memcpy(__dst, v6, 0x81uLL);
    memcpy(v39, v6, 0x80uLL);
    if (OUTLINED_FUNCTION_0_99(v39) == 1)
    {
      goto LABEL_14;
    }

    memcpy(v34, __dst, sizeof(v34));
    sub_1DD400BFC(v34, v33);
    sub_1DD400BFC(v34, v33);
    if (*(v5 + 312) != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(v35, &xmmword_1ECCDF518, sizeof(v35));
    memcpy(__src, &xmmword_1ECCDF518, sizeof(__src));
    nullsub_1(__src);
    memcpy(v33, __dst, 0x80uLL);
    memcpy(&v33[128], __src, 0x80uLL);
    memcpy(v37, __dst, sizeof(v37));
    if (OUTLINED_FUNCTION_0_99(v37) != 1)
    {
      memcpy(v32, v33, sizeof(v32));
      memcpy(v30, v33, sizeof(v30));
      memcpy(v31, &v33[128], 0x80uLL);
      if (OUTLINED_FUNCTION_0_99(v31) == 1)
      {
        memcpy(v29, v33, sizeof(v29));
        sub_1DD400BFC(v35, v28);
        sub_1DD4DDC08(v32, v28, &qword_1ECCDF690, &qword_1DD660BF0);
        sub_1DD400C58(v29);
LABEL_18:
        memcpy(v31, v33, sizeof(v31));
        sub_1DD390754(v31, &qword_1ECCDF698, &qword_1DD660130);
LABEL_19:
        v8 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v24;
        v10 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD42BECC(0, *(v24 + 16) + 1, 1);
          v8 = v40;
        }

        v4 = v1 + 32;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1DD42BECC(v11 > 1, v12 + 1, 1);
          v4 = v1 + 32;
          v8 = v40;
        }

        ++v3;
        *(v8 + 16) = v12 + 1;
        v24 = v8;
        memcpy((v8 + 136 * v12 + 32), __dst, 0x81uLL);
        v5 = v10;
        goto LABEL_3;
      }

      memcpy(v26, &v33[128], sizeof(v26));
      sub_1DD400BFC(v35, v25);
      sub_1DD4DDC08(v32, v25, &qword_1ECCDF690, &qword_1DD660BF0);
      v7 = static SportsItem.== infix(_:_:)(v30, v26);
      memcpy(v27, v26, sizeof(v27));
      sub_1DD400C58(v27);
      memcpy(v28, v30, sizeof(v28));
      sub_1DD400C58(v28);
      memcpy(v29, v33, sizeof(v29));
      sub_1DD390754(v29, &qword_1ECCDF690, &qword_1DD660BF0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_14:
      sub_1DD3C4E08(__dst);
      goto LABEL_15;
    }

    memcpy(v31, &v33[128], 0x80uLL);
    if (OUTLINED_FUNCTION_0_99(v31) != 1)
    {
      sub_1DD400BFC(v35, v32);
      goto LABEL_18;
    }

    sub_1DD400BFC(v35, v32);
    sub_1DD3C4E08(__dst);
    memcpy(v32, v33, sizeof(v32));
    sub_1DD390754(v32, &qword_1ECCDF690, &qword_1DD660BF0);
LABEL_15:
    v6 += 136;
    ++v3;
  }

  v13 = *(v24 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v37[0] = MEMORY[0x1E69E7CC0];
  sub_1DD42BEAC(0, v13, 0);
  v14 = 0;
  v15 = v37[0];
  v16 = 32;
  while (v14 < *(v24 + 16))
  {
    memcpy(v31, (v24 + v16), 0x80uLL);
    memmove(v33, (v24 + v16), 0x80uLL);
    result = OUTLINED_FUNCTION_0_99(v33);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    memcpy(__dst, v31, 0x80uLL);
    sub_1DD400BFC(__dst, v39);
    v37[0] = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1DD42BEAC(v18 > 1, v19 + 1, 1);
      v15 = v37[0];
    }

    *(v15 + 16) = v19 + 1;
    memcpy((v15 + (v19 << 7) + 32), v33, 0x80uLL);
    if (v13 - 1 == v14)
    {

      return v15;
    }

    v16 += 136;
    ++v14;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_34:
  v20 = sub_1DD63F9F8();
  __swift_project_value_buffer(v20, qword_1ECD0DDD8);
  v21 = sub_1DD63F9D8();
  v22 = sub_1DD640368();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DD38D000, v21, v22, "resolveSportsItemCandidates().\nInput sportsPersonalizationEntities in sportsRecommendationQuery is nil.", v23, 2u);
    MEMORY[0x1E12B3DA0](v23, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1DD5C8470@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v482 = a2;
  v487 = sub_1DD63F148();
  v492 = *(v487 - 8);
  v7 = *(v492 + 64);
  MEMORY[0x1EEE9AC00](v487);
  v491 = &v476 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
  v9 = *(*(v499 - 8) + 64);
  MEMORY[0x1EEE9AC00](v499);
  *&v498 = &v476 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v497 = &v476 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v496 = &v476 - v14;
  v501 = sub_1DD63F2B8();
  v15 = *(v501 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v501);
  v490 = &v476 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v493 = &v476 - v19;
  v20 = sub_1DD63F028();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v484 = &v476 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v489 = &v476 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v506 = &v476 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v476 - v30;
  v505 = sub_1DD63F308();
  v500 = *(v505 - 1);
  v32 = *(v500 + 64);
  MEMORY[0x1EEE9AC00](v505);
  v495 = &v476 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_1DD63F428();
  v507 = *(isUniquelyReferenced_nonNull_native - 8);
  v35 = *(v507 + 64);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v479 = (&v476 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v494 = &v476 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v504 = (&v476 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v503 = &v476 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v502 = &v476 - v44;
  memcpy(v518, a1, sizeof(v518));
  memcpy(v512, a1, 0x80uLL);
  sub_1DD400BFC(v518, v511);
  if (qword_1ECCDB138 != -1)
  {
    goto LABEL_284;
  }

  while (1)
  {
    swift_beginAccess();
    memcpy(v519, &xmmword_1ECCDF518, sizeof(v519));
    memcpy(v511, &xmmword_1ECCDF518, 0x80uLL);
    sub_1DD400BFC(v519, v513);
    v45 = static SportsItem.== infix(_:_:)(v512, v511);
    memcpy(v520, v511, sizeof(v520));
    sub_1DD400C58(v520);
    memcpy(__dst, v512, 0x80uLL);
    sub_1DD400C58(__dst);
    if (v45)
    {
      if (qword_1ECCDB0D0 != -1)
      {
LABEL_286:
        swift_once();
      }

      v46 = sub_1DD63F9F8();
      __swift_project_value_buffer(v46, qword_1ECD0DDD8);
      v47 = sub_1DD63F9D8();
      v48 = sub_1DD640368();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1DD38D000, v47, v48, "makeRecommendationInternal(). sportsItemWithSignal.value is EmptySportsItem.\nReturning .none #1.", v49, 2u);
        MEMORY[0x1E12B3DA0](v49, -1, -1);
      }

      sub_1DD472D70(v512);
      v50 = v512;
      v51 = a3;
      return memcpy(v51, v50, 0x81uLL);
    }

    v476 = v15;
    v481 = v4;
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v53 = sub_1DD63F9F8();
    v54 = __swift_project_value_buffer(v53, qword_1ECD0DDD8);
    sub_1DD400BFC(v518, v512);
    v483 = v54;
    v55 = sub_1DD63F9D8();
    v56 = sub_1DD640368();
    sub_1DD400C58(v518);
    v57 = os_log_type_enabled(v55, v56);
    v477 = a3;
    v508 = isUniquelyReferenced_nonNull_native;
    v480 = v21;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v513[0] = v59;
      *v58 = 136315138;
      memcpy(v512, v518, 0x80uLL);
      sub_1DD400BFC(v518, v511);
      v60 = sub_1DD63FE38();
      v62 = sub_1DD39565C(v60, v61, v513);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1DD38D000, v55, v56, "makeRecommendationInternal(). sportsItemWithSignal.value = %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1E12B3DA0](v59, -1, -1);
      MEMORY[0x1E12B3DA0](v58, -1, -1);
    }

    v63 = v482;
    v64 = v507;
    v65 = v31;
    v488 = *(v482 + 16);
    if (v488)
    {

      v66 = sub_1DD63F9D8();
      v67 = sub_1DD640368();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v512[0] = v69;
        *v68 = 136315138;
        v70 = MEMORY[0x1E12B2430](v63, &type metadata for SportsItem);
        v478 = v20;
        v72 = sub_1DD39565C(v70, v71, v512);
        v20 = v478;

        *(v68 + 4) = v72;
        _os_log_impl(&dword_1DD38D000, v66, v67, "makeRecommendationInternal(). Received a list of SportsItems,\nsportsItemsFromPirene = %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x1E12B3DA0](v69, -1, -1);
        MEMORY[0x1E12B3DA0](v68, -1, -1);
      }

      a3 = v492;
      v64 = v507;
      v73 = v508;
      v65 = v31;
    }

    else
    {
      v74 = sub_1DD63F9D8();
      v75 = sub_1DD640368();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_1DD38D000, v74, v75, "makeRecommendationInternal(). Received an Empty list of SportsItems from Pegasus.", v76, 2u);
        MEMORY[0x1E12B3DA0](v76, -1, -1);
      }

      a3 = v492;
      v73 = v508;
    }

    v77 = v494;
    v78 = v518[1];
    v79 = MEMORY[0x1E69D2AB0];
    if (v518[1])
    {
      v80 = v518[0];
      v81 = v502;
      *v502 = 0x6D614E74726F7073;
      v81[1] = 0xE900000000000065;
      v81[2] = v80;
      v81[3] = v78;
      v82 = *v79;
      (*(v64 + 104))();

      sub_1DD3C0E4C();
      v84 = v83;
      v85 = *(v83 + 16);
      if (v85 >= *(v83 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v84 = v466;
      }

      *(v84 + 16) = v85 + 1;
      v86 = *(v64 + 32);
      v87 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v486 = v84;
      v88 = v84 + v87 + *(v64 + 72) * v85;
      v73 = v508;
      v86(v88, v502, v508);
    }

    else
    {
      v486 = MEMORY[0x1E69E7CC0];
    }

    v89 = v518[3];
    if (v518[3])
    {
      v90 = v518[2];
      v91 = v503;
      *v503 = 0x614E65756761656CLL;
      *(v91 + 1) = 0xEA0000000000656DLL;
      *(v91 + 2) = v90;
      *(v91 + 3) = v89;
      v92 = *v79;
      (*(v64 + 104))();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v93 = v486;
      }

      else
      {
        v467 = *(v486 + 16);
        sub_1DD3C0E4C();
        v93 = v468;
      }

      v94 = *(v93 + 16);
      if (v94 >= *(v93 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v93 = v469;
      }

      *(v93 + 16) = v94 + 1;
      v95 = *(v64 + 32);
      v96 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v486 = v93;
      v97 = v93 + v96 + *(v64 + 72) * v94;
      v73 = v508;
      v95(v97, v503, v508);
    }

    v98 = v518[5];
    if (v518[5])
    {
      v99 = v518[4];
      v100 = v504;
      *v504 = 0x656D614E6D616574;
      v100[1] = 0xE800000000000000;
      v100[2] = v99;
      v100[3] = v98;
      v101 = *v79;
      (*(v64 + 104))();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v102 = v486;
      }

      else
      {
        v470 = *(v486 + 16);
        sub_1DD3C0E4C();
        v102 = v471;
      }

      v103 = *(v102 + 16);
      if (v103 >= *(v102 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v102 = v472;
      }

      *(v102 + 16) = v103 + 1;
      v104 = *(v64 + 32);
      v105 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v486 = v102;
      v106 = v102 + v105 + *(v64 + 72) * v103;
      v73 = v508;
      v104(v106, v504, v508);
    }

    v107 = v518[7];
    if (v518[7])
    {
      v108 = v518[6];
      *v77 = 0x4E6574656C687461;
      v77[1] = 0xEB00000000656D61;
      v77[2] = v108;
      v77[3] = v107;
      (*(v64 + 104))(v77, *v79, v73);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v109 = v486;
      }

      else
      {
        v473 = *(v486 + 16);
        sub_1DD3C0E4C();
        v109 = v474;
      }

      v110 = *(v109 + 16);
      if (v110 >= *(v109 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v109 = v475;
      }

      *(v109 + 16) = v110 + 1;
      v111 = *(v64 + 32);
      v112 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v486 = v109;
      v111(v109 + v112 + *(v64 + 72) * v110, v77, v73);
    }

    sub_1DD4DDC08(v485, v65, &qword_1ECCDCCE8, &unk_1DD64AF90);
    v113 = v505;
    if (__swift_getEnumTagSinglePayload(v65, 1, v505) == 1)
    {
      sub_1DD390754(v65, &qword_1ECCDCCE8, &unk_1DD64AF90);
      v114 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      (*(v500 + 32))(v495, v65, v113);
      v115 = v484;
      sub_1DD63F018();
      v116 = v489;
      sub_1DD63F008();
      v117 = v20;
      v478 = v20;
      v118 = *(v480 + 8);
      v480 += 8;
      v118(v115, v117);
      v119 = v479;
      *v479 = v486;
      (*(v64 + 104))(v119, *MEMORY[0x1E69D2AA8], v73);

      sub_1DD63EFD8();
      (*(v64 + 8))(v119, v73);
      v508 = v118;
      v118(v116, v478);
      v120 = v490;
      sub_1DD63F2A8();
      v121 = v493;
      sub_1DD63F238();
      v122 = v500;
      v507 = v476[1];
      (v507)(v120, v501);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF468, &qword_1DD65F508);
      v123 = sub_1DD63F1C8();
      v124 = *(v123 - 8);
      v125 = *(v124 + 72);
      v126 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_1DD643F90;
      (*(v124 + 104))(v127 + v126, *MEMORY[0x1E69D2A38], v123);
      v128 = v495;
      v129 = v481;
      v130 = sub_1DD63F208();
      v481 = v129;
      if (v129)
      {

        (v507)(v121, v501);
        (v508)(v506, v478);
        (*(v122 + 8))(v128, v505);
      }

      v131 = v130;

      (v507)(v121, v501);
      (v508)(v506, v478);
      (*(v122 + 8))(v128, v505);
      v114 = v131;
      a3 = v492;
    }

    v31 = *(v114 + 2);
    v132 = MEMORY[0x1E69E7CC0];
    v506 = v114;
    if (!v31)
    {
      v505 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    v512[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42C094(0, v31, 0);
    v504 = v512[0];
    v134 = sub_1DD5FAA4C(v114);
    v135 = 0;
    v4 = (v114 + 64);
    v494 = v114 + 64;
    v495 = (a3 + 16);
    v136 = v114[32];
    v484 = v114 + 72;
    v137 = v114;
    v138 = v487;
    v508 = (a3 + 32);
    v489 = v31;
    v490 = v133;
    do
    {
      if (v134 < 0 || v134 >= 1 << v136)
      {
        goto LABEL_263;
      }

      if ((*(v4 + 8 * (v134 >> 6)) & (1 << v134)) == 0)
      {
        goto LABEL_264;
      }

      if (*(v137 + 9) != v133)
      {
        goto LABEL_265;
      }

      v501 = 1 << v134;
      v502 = v134 >> 6;
      v500 = v135;
      v139 = v499;
      v140 = *(v499 + 48);
      v141 = *(v137 + 7);
      v142 = *(v137 + 6) + 16 * v134;
      v143 = *(v142 + 8);
      v503 = *v142;
      v505 = v143;
      v507 = *(a3 + 72);
      v144 = v496;
      v145 = v138;
      v493 = *(a3 + 16);
      (v493)(&v496[v140], v141 + v507 * v134, v138);
      v146 = v497;
      *v497 = v503;
      *(v146 + 8) = v143;
      v147 = *(a3 + 32);
      v147(v146 + *(v139 + 48), &v144[v140], v145);
      v148 = v146;
      v149 = v147;
      v150 = v498;
      sub_1DD4DDCBC(v148, v498, &qword_1ECCDE588, &qword_1DD657E40);
      v151 = *(v150 + 8);

      v152 = v491;
      v147(v491, (v150 + *(v139 + 48)), v145);
      v153 = v504;
      v512[0] = v504;
      v154 = v145;
      v156 = v504[2];
      v155 = v504[3];
      if (v156 >= v155 >> 1)
      {
        sub_1DD42C094(v155 > 1, v156 + 1, 1);
        v153 = v512[0];
      }

      *(v153 + 16) = v156 + 1;
      v157 = v492;
      v158 = *(v492 + 80);
      v504 = v153;
      v159 = v507;
      v149(v153 + ((v158 + 32) & ~v158) + v156 * v507, v152, v154);
      v137 = v506;
      v136 = v506[32];
      v160 = 1 << v136;
      if (v134 >= 1 << v136)
      {
        goto LABEL_266;
      }

      v503 = v149;
      v4 = v494;
      v161 = *&v494[8 * v502];
      if ((v161 & v501) == 0)
      {
        goto LABEL_267;
      }

      LODWORD(v133) = v490;
      if (*(v506 + 9) != v490)
      {
        goto LABEL_268;
      }

      v138 = v154;
      a3 = v157;
      v21 = v159;
      v162 = v161 & (-2 << (v134 & 0x3F));
      if (v162)
      {
        v160 = __clz(__rbit64(v162)) | v134 & 0x7FFFFFFFFFFFFFC0;
        v31 = v489;
      }

      else
      {
        v163 = v502 << 6;
        v164 = v502 + 1;
        v165 = &v484[8 * v502];
        v31 = v489;
        while (v164 < (v160 + 63) >> 6)
        {
          v167 = *v165++;
          v166 = v167;
          v163 += 64;
          ++v164;
          if (v167)
          {
            v160 = __clz(__rbit64(v166)) + v163;
            break;
          }
        }
      }

      v134 = v160;
      v135 = v500 + 1;
    }

    while (v500 + 1 != v31);
    v20 = *(v506 + 2);
    if (!v20)
    {
      break;
    }

    v15 = v506;
    v512[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4();
    v505 = v512[0];
    isUniquelyReferenced_nonNull_native = sub_1DD5FAA4C(v15);
    v491 = (a3 + 8);
    v169 = v20 - 1;
    v170 = v15;
    if (isUniquelyReferenced_nonNull_native < 0)
    {
      goto LABEL_276;
    }

    while (1)
    {
      if (isUniquelyReferenced_nonNull_native >= 1 << *(v170 + 32))
      {
        goto LABEL_276;
      }

      if ((*(v4 + 8 * (isUniquelyReferenced_nonNull_native >> 6)) & (1 << isUniquelyReferenced_nonNull_native)) == 0)
      {
        goto LABEL_277;
      }

      if (v168 != *(v170 + 9))
      {
        break;
      }

      v501 = 1 << isUniquelyReferenced_nonNull_native;
      v502 = isUniquelyReferenced_nonNull_native >> 6;
      v500 = v168;
      v492 = v169;
      v171 = v499;
      v172 = *(v499 + 48);
      v173 = (v170[6] + 16 * isUniquelyReferenced_nonNull_native);
      v175 = *v173;
      v174 = v173[1];
      v176 = v170[7] + v21 * isUniquelyReferenced_nonNull_native;
      v177 = v496;
      v178 = v487;
      (v493)(&v496[v172], v176, v487);
      v179 = v497;
      *v497 = v175;
      *(v179 + 8) = v174;
      (v503)(v179 + *(v171 + 48), &v177[v172], v178);
      v15 = v498;
      sub_1DD4DDCBC(v179, v498, &qword_1ECCDE588, &qword_1DD657E40);
      v21 = *v15;
      v4 = v15[1];
      v180 = *(v171 + 48);
      a3 = v491;
      v181 = *v491;

      v181(v15 + v180, v178);
      v182 = v505;
      v512[0] = v505;
      v31 = v505[2];
      v20 = v31 + 1;
      if (v31 >= v505[3] >> 1)
      {
        sub_1DD42A2D4();
        v182 = v512[0];
      }

      *(v182 + 16) = v20;
      v183 = v182 + 16 * v31;
      *(v183 + 32) = v21;
      *(v183 + 40) = v4;
      if (isUniquelyReferenced_nonNull_native >= -(-1 << v506[32]))
      {
        goto LABEL_279;
      }

      v4 = v494;
      if ((*&v494[8 * v502] & v501) == 0)
      {
        goto LABEL_280;
      }

      if (v500 != *(v506 + 9))
      {
        goto LABEL_281;
      }

      v505 = v182;
      v184 = sub_1DD640748();
      if (!v492)
      {
        goto LABEL_80;
      }

      isUniquelyReferenced_nonNull_native = v184;
      v170 = v506;
      v21 = v507;
      v168 = *(v506 + 9);
      v169 = v492 - 1;
      if (v184 < 0)
      {
        goto LABEL_276;
      }
    }

LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    swift_once();
  }

  v505 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v132 = v504;
LABEL_81:
  sub_1DD63F338();
  v504 = v132;
  v185 = sub_1DD63F0F8();
  v186 = *(v185 + 16);
  v507 = v185;
  v503 = v186;
  if (v186)
  {
    a3 = 0;
    v502 = v185 + 32;
    v4 = MEMORY[0x1E69E7CC8];
    v187 = v505;
    v188 = v505 + 5;
    while (a3 < *(v185 + 16))
    {
      if (a3 >= *(v187 + 16))
      {
        goto LABEL_270;
      }

      v189 = *(v502 + 8 * a3);
      v20 = *(v188 - 1);
      v31 = *v188;
      v508 = v188;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v512[0] = v4;
      v190 = sub_1DD3978DC();
      v192 = *(v4 + 16);
      v193 = (v191 & 1) == 0;
      v15 = (v192 + v193);
      if (__OFADD__(v192, v193))
      {
        goto LABEL_271;
      }

      v21 = v190;
      v194 = v191;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      if (sub_1DD640A08())
      {
        v195 = sub_1DD3978DC();
        if ((v194 & 1) != (v196 & 1))
        {
          goto LABEL_295;
        }

        v21 = v195;
      }

      if (v194)
      {

        v4 = v512[0];
        *(*(v512[0] + 56) + 8 * v21) = v189;
      }

      else
      {
        v4 = v512[0];
        *(v512[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v197 = (*(v4 + 48) + 16 * v21);
        *v197 = v20;
        v197[1] = v31;
        *(*(v4 + 56) + 8 * v21) = v189;
        v198 = *(v4 + 16);
        v199 = __OFADD__(v198, 1);
        v200 = v198 + 1;
        if (v199)
        {
          goto LABEL_282;
        }

        *(v4 + 16) = v200;
      }

      ++a3;
      v185 = v507;
      v188 = (v508 + 16);
      v187 = v505;
      if (v503 == a3)
      {
        goto LABEL_96;
      }
    }

LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_96:
  swift_bridgeObjectRetain_n();
  v201 = sub_1DD63F9D8();
  v202 = sub_1DD640368();

  v203 = os_log_type_enabled(v201, v202);
  v503 = v4;
  if (v203)
  {
    v204 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v512[0] = v205;
    *v204 = 136315138;
    v206 = sub_1DD63FC68();
    v31 = v207;
    v208 = sub_1DD39565C(v206, v207, v512);

    *(v204 + 4) = v208;
    _os_log_impl(&dword_1DD38D000, v201, v202, "makeRecommendationInternal(). uuidScores = %s", v204, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v205);
    v209 = v205;
    v4 = v503;
    MEMORY[0x1E12B3DA0](v209, -1, -1);
    MEMORY[0x1E12B3DA0](v204, -1, -1);
  }

  v15 = 0;
  v211 = v4 + 64;
  v212 = 1 << *(v4 + 32);
  v213 = -1;
  if (v212 < 64)
  {
    v213 = ~(-1 << v212);
  }

  a3 = v213 & *(v4 + 64);
  v214 = MEMORY[0x1E69E7CC8];
  v215 = (v212 + 63) >> 6;
  *&v210 = 136315138;
  v499 = v210;
  v500 = MEMORY[0x1E69E7CC8];
  v501 = v215;
  v502 = v4 + 64;
  while (a3)
  {
LABEL_106:
    v217 = __clz(__rbit64(a3));
    a3 &= a3 - 1;
    v218 = v217 | (v15 << 6);
    v219 = (*(v4 + 48) + 16 * v218);
    v220 = *v219;
    v221 = v219[1];
    v222 = *(*(v4 + 56) + 8 * v218);

    sub_1DD5CC110(v220, v221, v512);

    memcpy(v514, v512, sizeof(v514));
    isUniquelyReferenced_nonNull_native = v514[13];
    if (!v514[13] || (v223 = v514[12]) == 0 && v514[13] == 0xE000000000000000 || (sub_1DD640CD8() & 1) != 0)
    {
      v508 = v214;
      v231 = v500;
      swift_isUniquelyReferenced_nonNull_native();
      v511[0] = v231;
      v232 = sub_1DD3FED1C();
      v234 = *(v231 + 16);
      v235 = (v233 & 1) == 0;
      v31 = v234 + v235;
      if (__OFADD__(v234, v235))
      {
LABEL_291:
        __break(1u);
        goto LABEL_292;
      }

      v236 = v232;
      v237 = v233;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF760, &qword_1DD660920);
      if (sub_1DD640A08())
      {
        v238 = sub_1DD3FED1C();
        if ((v237 & 1) != (v239 & 1))
        {
          goto LABEL_295;
        }

        v236 = v238;
      }

      v500 = v511[0];
      if (v237)
      {
        *(*(v511[0] + 56) + 8 * v236) = v222;
      }

      else
      {
        sub_1DD400964(v236, v222, v514, v511[0]);
        sub_1DD400BFC(v514, v512);
      }

      sub_1DD400BFC(v514, v512);
      v240 = sub_1DD63F9D8();
      v241 = sub_1DD640368();
      sub_1DD400C58(v514);
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v511[0] = v243;
        *v242 = v499;
        memcpy(v512, v514, 0x80uLL);
        v244 = sub_1DD63FE38();
        v31 = v245;
        v246 = sub_1DD39565C(v244, v245, v511);

        *(v242 + 4) = v246;
        _os_log_impl(&dword_1DD38D000, v240, v241, "sportsItemfromUuid.teamQId == nil.\nsportsItemfromUuid = %s", v242, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v243);
        MEMORY[0x1E12B3DA0](v243, -1, -1);
        MEMORY[0x1E12B3DA0](v242, -1, -1);
      }

      else
      {

        sub_1DD400C58(v514);
      }

      v214 = v508;
      v211 = v502;
      v4 = v503;
      v215 = v501;
    }

    else
    {

      sub_1DD400C58(v514);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v512[0] = v214;
      v508 = v223;
      v224 = sub_1DD3978DC();
      v226 = *(v214 + 16);
      v227 = (v225 & 1) == 0;
      v20 = v226 + v227;
      if (__OFADD__(v226, v227))
      {
        goto LABEL_283;
      }

      v31 = v224;
      v228 = v225;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      if (sub_1DD640A08())
      {
        v229 = sub_1DD3978DC();
        if ((v228 & 1) != (v230 & 1))
        {
          goto LABEL_295;
        }

        v31 = v229;
      }

      v211 = v502;
      v214 = v512[0];
      if (v228)
      {
        *(*(v512[0] + 56) + 8 * v31) = v222;
      }

      else
      {
        sub_1DD4005CC(v31, v508, isUniquelyReferenced_nonNull_native, v512[0]);
      }

      v4 = v503;
      v215 = v501;
    }
  }

  while (1)
  {
    v216 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    if (v216 >= v215)
    {
      break;
    }

    a3 = *(v211 + 8 * v216);
    v15 = (v15 + 1);
    if (a3)
    {
      v15 = v216;
      goto LABEL_106;
    }
  }

  v247 = sub_1DD63F9D8();
  v248 = sub_1DD640368();
  if (os_log_type_enabled(v247, v248))
  {
    v249 = swift_slowAlloc();
    v508 = swift_slowAlloc();
    v512[0] = v508;
    *v249 = 136315394;

    v250 = v214;
    v251 = sub_1DD63FC68();
    v253 = v252;

    v254 = sub_1DD39565C(v251, v253, v512);

    *(v249 + 4) = v254;
    *(v249 + 12) = 2080;
    sub_1DD5CDDCC();

    v255 = sub_1DD63FC68();
    v257 = v256;

    v258 = sub_1DD39565C(v255, v257, v512);
    v214 = v250;

    *(v249 + 14) = v258;
    _os_log_impl(&dword_1DD38D000, v247, v248, "makeRecommendationInternal(). sRQIdScoreDict = %s,\nsRUuidNoQIdScoreDict = %s", v249, 0x16u);
    v259 = v508;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v259, -1, -1);
    MEMORY[0x1E12B3DA0](v249, -1, -1);
  }

  v260 = v477;
  v261 = v488;
  v262 = *(v214 + 16);
  v508 = v214;
  if (!v262)
  {
    v302 = sub_1DD63F9D8();
    v303 = sub_1DD640368();
    if (os_log_type_enabled(v302, v303))
    {
      v304 = swift_slowAlloc();
      *v304 = 0;
      _os_log_impl(&dword_1DD38D000, v302, v303, "makeRecommendationInternal(). sRQIdScoreDict is Empty, no QIds found in/donated to SiriRemembers.\nLooking for SportsItem without QId in SiriRemembers only.", v304, 2u);
      v305 = v304;
      v261 = v488;
      MEMORY[0x1E12B3DA0](v305, -1, -1);
    }

    v306 = v481;
    if (!*(v500 + 16))
    {
      v376 = sub_1DD63F9D8();
      v377 = sub_1DD640368();
      if (os_log_type_enabled(v376, v377))
      {
        v378 = swift_slowAlloc();
        *v378 = 0;
        _os_log_impl(&dword_1DD38D000, v376, v377, "makeRecommendationInternal(). sRUuidNoQIdScoreDict is Empty.", v378, 2u);
        v379 = v378;
        v261 = v488;
        MEMORY[0x1E12B3DA0](v379, -1, -1);
      }

      goto LABEL_132;
    }

    v308 = v306;
    v309 = sub_1DD5C704C(v307, sub_1DD3C1940, sub_1DD5D5664, sub_1DD5C6FA8);

    if (*(v309 + 16))
    {
      sub_1DD408C00(0, 1, v309);
      memcpy(v512, (v309 + 32), sizeof(v512));
      sub_1DD4DDC08(v512, v511, &qword_1ECCDCA58, &qword_1DD649F08);

      memcpy(v516, v512, sizeof(v516));
      v310 = (v482 + 32);
      v481 = v308;
      if (v261)
      {
        while (1)
        {
          memcpy(v517, v310, sizeof(v517));
          memcpy(v513, v310, 0x80uLL);
          memcpy(v511, v310, 0x80uLL);
          memcpy(v510, v516, sizeof(v510));
          sub_1DD400BFC(v517, v509);
          if (static SportsItem.partiallyEqual(lhs:rhs:)(v511, v510))
          {
            break;
          }

          sub_1DD400C58(v517);
          v310 += 128;
          v261 = (v261 - 1);
          if (!v261)
          {
            goto LABEL_176;
          }
        }

        v397 = swift_allocObject();
        memcpy((v397 + 16), v517, 0x80uLL);
        v398 = swift_allocObject();
        memcpy((v398 + 16), v516, 0x80uLL);
        sub_1DD4DDC08(v512, v511, &qword_1ECCDCA58, &qword_1DD649F08);
        sub_1DD400BFC(v517, v511);
        v506 = sub_1DD63F9D8();
        LODWORD(v507) = sub_1DD640368();
        v399 = swift_allocObject();
        *(v399 + 16) = 32;
        v400 = swift_allocObject();
        *(v400 + 16) = 8;
        v401 = swift_allocObject();
        *(v401 + 16) = sub_1DD5CDE20;
        *(v401 + 24) = v397;
        v402 = swift_allocObject();
        *(v402 + 16) = sub_1DD3FAEA4;
        *(v402 + 24) = v401;
        v403 = swift_allocObject();
        *(v403 + 16) = 32;
        v404 = swift_allocObject();
        *(v404 + 16) = 8;
        v405 = v506;
        v406 = swift_allocObject();
        *(v406 + 16) = sub_1DD5CDE20;
        *(v406 + 24) = v398;
        v407 = swift_allocObject();
        *(v407 + 16) = sub_1DD3FAEA4;
        *(v407 + 24) = v406;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
        v408 = swift_allocObject();
        *(v408 + 16) = xmmword_1DD644F40;
        *(v408 + 32) = sub_1DD3FAEC8;
        *(v408 + 40) = v399;
        *(v408 + 48) = sub_1DD3FAEC8;
        *(v408 + 56) = v400;
        *(v408 + 64) = sub_1DD3FAE9C;
        *(v408 + 72) = v402;
        *(v408 + 80) = sub_1DD3FAEC8;
        *(v408 + 88) = v403;
        *(v408 + 96) = sub_1DD3FAEC8;
        *(v408 + 104) = v404;
        *(v408 + 112) = sub_1DD3FAE9C;
        *(v408 + 120) = v407;
        swift_setDeallocating();
        v409 = v507;
        sub_1DD46CBF0();
        if (os_log_type_enabled(v405, v409))
        {
          v410 = swift_slowAlloc();
          v411 = swift_slowAlloc();
          v509[0] = v411;
          *v410 = 136315394;
          memcpy(v511, v517, 0x80uLL);
          sub_1DD400BFC(v517, v510);
          v412 = sub_1DD63FE38();
          v414 = sub_1DD39565C(v412, v413, v509);

          *(v410 + 4) = v414;
          *(v410 + 12) = 2080;
          memcpy(v511, v516, 0x80uLL);
          v415 = sub_1DD63FE38();
          v417 = sub_1DD39565C(v415, v416, v509);

          *(v410 + 14) = v417;
          _os_log_impl(&dword_1DD38D000, v405, v409, "makeRecommendationInternal().\nrecommendedSportsItemNoQId = %s,\nmaxScoreSportsItemNoQId = %s", v410, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12B3DA0](v411, -1, -1);
          MEMORY[0x1E12B3DA0](v410, -1, -1);
        }

        else
        {

          sub_1DD390754(v512, &qword_1ECCDCA58, &qword_1DD649F08);
        }

        v449 = v477;
        memcpy(v511, v513, 0x80uLL);
        sub_1DD472DA8(v511);
        v50 = v511;
        v51 = v449;
        return memcpy(v51, v50, 0x81uLL);
      }

LABEL_176:

      v311 = swift_allocObject();
      memcpy((v311 + 16), v516, 0x80uLL);
      sub_1DD4DDC08(v512, v511, &qword_1ECCDCA58, &qword_1DD649F08);
      v312 = sub_1DD63F9D8();
      v313 = sub_1DD640368();
      v314 = swift_allocObject();
      *(v314 + 16) = 32;
      v315 = swift_allocObject();
      *(v315 + 16) = 8;
      v316 = swift_allocObject();
      *(v316 + 16) = sub_1DD5CDE20;
      *(v316 + 24) = v311;
      v317 = swift_allocObject();
      *(v317 + 16) = sub_1DD3FAEA4;
      *(v317 + 24) = v316;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
      v318 = swift_allocObject();
      *(v318 + 16) = xmmword_1DD6444F0;
      *(v318 + 32) = sub_1DD3FAEC8;
      *(v318 + 40) = v314;
      *(v318 + 48) = sub_1DD3FAEC8;
      *(v318 + 56) = v315;
      *(v318 + 64) = sub_1DD3FAE9C;
      *(v318 + 72) = v317;
      swift_setDeallocating();
      sub_1DD46CBF0();
      if (os_log_type_enabled(v312, v313))
      {
        v319 = swift_slowAlloc();
        v320 = swift_slowAlloc();
        v513[0] = v320;
        *v319 = v499;
        memcpy(v511, v516, 0x80uLL);
        v321 = sub_1DD63FE38();
        v323 = sub_1DD39565C(v321, v322, v513);

        *(v319 + 4) = v323;
        _os_log_impl(&dword_1DD38D000, v312, v313, "makeRecommendationInternal(). recommendedSportsItemNoQId is Empty.\nmaxScoreSportsItemNoQId = %s.\nReturning .none #3.", v319, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v320);
        MEMORY[0x1E12B3DA0](v320, -1, -1);
        MEMORY[0x1E12B3DA0](v319, -1, -1);
      }

      else
      {

        sub_1DD390754(v512, &qword_1ECCDCA58, &qword_1DD649F08);
      }

      sub_1DD472D70(v511);
      v50 = v511;
    }

    else
    {

      v394 = sub_1DD63F9D8();
      v395 = sub_1DD640368();
      if (os_log_type_enabled(v394, v395))
      {
        v396 = swift_slowAlloc();
        *v396 = 0;
        _os_log_impl(&dword_1DD38D000, v394, v395, "makeRecommendationInternal(). No maxScoreSportsItemNoQId in sRUuidNoQIdScoreDict.\nReturning .none #2.", v396, 2u);
        MEMORY[0x1E12B3DA0](v396, -1, -1);
      }

      sub_1DD472D70(v512);
      v50 = v512;
    }

    v51 = v260;
    return memcpy(v51, v50, 0x81uLL);
  }

LABEL_132:
  v263 = 0;
  v21 = MEMORY[0x1E69E7CC8];
  v264 = v482 + 32;
  v502 = v482 + 32;
LABEL_133:
  v265 = (v264 + (v263 << 7));
  while (v261 != v263)
  {
    if (v263 >= v261)
    {
      goto LABEL_261;
    }

    memcpy(v512, v265, 0x80uLL);
    v266 = v263 + 1;
    if (__OFADD__(v263, 1))
    {
      goto LABEL_262;
    }

    v267 = v512[13];
    if (v512[13])
    {
      v268 = v512[12];
      v269 = HIBYTE(v512[13]) & 0xF;
      if ((v512[13] & 0x2000000000000000) == 0)
      {
        v269 = v512[12] & 0xFFFFFFFFFFFFLL;
      }

      if (v269)
      {
        sub_1DD400BFC(v512, v511);
        sub_1DD400BFC(v512, v511);

        swift_isUniquelyReferenced_nonNull_native();
        v513[0] = v21;
        v270 = sub_1DD3FE8AC();
        if (__OFADD__(*(v21 + 16), (v271 & 1) == 0))
        {
          __break(1u);
          goto LABEL_291;
        }

        v272 = v270;
        v273 = v271;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF768, &qword_1DD660928);
        if (sub_1DD640A08())
        {
          v274 = sub_1DD3FE8AC();
          if ((v273 & 1) != (v275 & 1))
          {
            goto LABEL_296;
          }

          v272 = v274;
          if ((v273 & 1) == 0)
          {
LABEL_147:
            v21 = v513[0];
            *(v513[0] + 8 * (v272 >> 6) + 64) |= 1 << v272;
            v276 = (*(v21 + 48) + 16 * v272);
            *v276 = v268;
            v276[1] = v267;
            memcpy((*(v21 + 56) + (v272 << 7)), v512, 0x80uLL);
            sub_1DD400C58(v512);
            v277 = *(v21 + 16);
            v199 = __OFADD__(v277, 1);
            v278 = v277 + 1;
            if (!v199)
            {
              *(v21 + 16) = v278;
              goto LABEL_151;
            }

LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }
        }

        else if ((v273 & 1) == 0)
        {
          goto LABEL_147;
        }

        v21 = v513[0];
        v279 = (*(v513[0] + 56) + (v272 << 7));
        memcpy(v511, v279, 0x80uLL);
        memcpy(v279, v512, 0x80uLL);
        sub_1DD400C58(v511);
        sub_1DD400C58(v512);
LABEL_151:
        v261 = v488;
        v264 = v502;
        v263 = v266;
        goto LABEL_133;
      }

      v261 = v488;
    }

    ++v263;
    v265 += 128;
  }

  v280 = swift_allocObject();
  *(v280 + 16) = v21;

  v281 = sub_1DD63F9D8();
  isUniquelyReferenced_nonNull_native = sub_1DD640368();
  v282 = swift_allocObject();
  *(v282 + 16) = 32;
  v283 = swift_allocObject();
  *(v283 + 16) = 8;
  v284 = swift_allocObject();
  *(v284 + 16) = sub_1DD5CDD28;
  *(v284 + 24) = v280;
  v285 = swift_allocObject();
  *(v285 + 16) = sub_1DD3FA514;
  *(v285 + 24) = v284;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
  v20 = swift_allocObject();
  v498 = xmmword_1DD6444F0;
  *(v20 + 16) = xmmword_1DD6444F0;
  *(v20 + 32) = sub_1DD3FA50C;
  *(v20 + 40) = v282;
  *(v20 + 48) = sub_1DD3FAEC8;
  *(v20 + 56) = v283;
  *(v20 + 64) = sub_1DD3FA51C;
  *(v20 + 72) = v285;
  swift_setDeallocating();
  sub_1DD46CBF0();
  if (os_log_type_enabled(v281, isUniquelyReferenced_nonNull_native))
  {
    v286 = swift_slowAlloc();
    v287 = swift_slowAlloc();
    v512[0] = v287;
    *v286 = v499;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
    sub_1DD51D290();
    v288 = sub_1DD63FC68();
    v20 = sub_1DD39565C(v288, v289, v512);

    *(v286 + 4) = v20;
    _os_log_impl(&dword_1DD38D000, v281, isUniquelyReferenced_nonNull_native, "pireneQIdSportsItemDict = %s", v286, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v287);
    MEMORY[0x1E12B3DA0](v287, -1, -1);
    MEMORY[0x1E12B3DA0](v286, -1, -1);
  }

  v4 = v481;
  v31 = v508;
  v290 = v488;
  a3 = v500;
  if (!*(v21 + 16))
  {

    v324 = sub_1DD63F9D8();
    v325 = sub_1DD640368();
    if (!os_log_type_enabled(v324, v325))
    {
      goto LABEL_181;
    }

    v326 = swift_slowAlloc();
    *v326 = 0;
    v327 = "makeRecommendationInternal(). pireneQIdSportsItemDict is Empty.\nReturning .none #4.";
    goto LABEL_180;
  }

  v15 = 0;
  v291 = MEMORY[0x1E69E7CC0];
LABEL_156:
  v292 = (v482 + (v15 << 7));
  v293 = v15;
  while (v290 != v293)
  {
    if (v293 >= v290)
    {
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

    v15 = (v293 + 1);
    if (__OFADD__(v293, 1))
    {
      goto LABEL_275;
    }

    isUniquelyReferenced_nonNull_native = v292[17];
    v292 += 16;
    v293 = (v293 + 1);
    if (isUniquelyReferenced_nonNull_native)
    {
      v20 = v4;
      v294 = *v292;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v297 = *(v291 + 16);
        sub_1DD3BE2A4();
        v291 = v298;
      }

      v295 = *(v291 + 16);
      if (v295 >= *(v291 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v291 = v299;
      }

      *(v291 + 16) = v295 + 1;
      v296 = v291 + 16 * v295;
      *(v296 + 32) = v294;
      *(v296 + 40) = isUniquelyReferenced_nonNull_native;
      v4 = v20;
      v290 = v488;
      a3 = v500;
      v31 = v508;
      goto LABEL_156;
    }
  }

  v300 = sub_1DD41859C(v291);
  v301 = sub_1DD55C538(v300);
  if (v4)
  {
  }

  v328 = v301;
  v481 = 0;

  v329 = swift_allocObject();
  *(v329 + 16) = v328;

  v330 = sub_1DD63F9D8();
  v331 = sub_1DD640368();
  v332 = swift_allocObject();
  *(v332 + 16) = 32;
  v333 = swift_allocObject();
  *(v333 + 16) = 8;
  v334 = swift_allocObject();
  *(v334 + 16) = sub_1DD5CDD30;
  *(v334 + 24) = v329;
  v335 = swift_allocObject();
  *(v335 + 16) = sub_1DD3FAEA4;
  *(v335 + 24) = v334;
  v336 = swift_allocObject();
  *(v336 + 16) = v498;
  *(v336 + 32) = sub_1DD3FAEC8;
  *(v336 + 40) = v332;
  *(v336 + 48) = sub_1DD3FAEC8;
  *(v336 + 56) = v333;
  *(v336 + 64) = sub_1DD3FAE9C;
  *(v336 + 72) = v335;
  swift_setDeallocating();
  sub_1DD46CBF0();
  if (os_log_type_enabled(v330, v331))
  {
    v337 = swift_slowAlloc();
    v338 = swift_slowAlloc();
    v512[0] = v338;
    *v337 = v499;
    v339 = sub_1DD63FC68();
    v341 = sub_1DD39565C(v339, v340, v512);

    *(v337 + 4) = v341;
    _os_log_impl(&dword_1DD38D000, v330, v331, "makeRecommendationInternal(). portraitQIdScoresDict = %s", v337, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v338);
    MEMORY[0x1E12B3DA0](v338, -1, -1);
    MEMORY[0x1E12B3DA0](v337, -1, -1);
  }

  v342 = v481;
  if (!*(v508 + 2) && !*(v328 + 2) && !*(v500 + 16))
  {
LABEL_272:

    v324 = sub_1DD63F9D8();
    v325 = sub_1DD640368();
    if (!os_log_type_enabled(v324, v325))
    {
      goto LABEL_181;
    }

    v326 = swift_slowAlloc();
    *v326 = 0;
    v327 = "makeRecommendationInternal(). Both SiriRemembers and Portrait Recommendations are empty.\nReturning .none #5.";
LABEL_180:
    _os_log_impl(&dword_1DD38D000, v324, v325, v327, v326, 2u);
    MEMORY[0x1E12B3DA0](v326, -1, -1);
LABEL_181:

    sub_1DD472D70(v512);
    v50 = v512;
    v51 = v477;
    return memcpy(v51, v50, 0x81uLL);
  }

  if (*(v21 + 16))
  {
    v496 = v328;
    v343 = 1 << *(v21 + 32);
    v344 = -1;
    if (v343 < 64)
    {
      v344 = ~(-1 << v343);
    }

    v345 = v344 & *(v21 + 64);
    v346 = (v343 + 63) >> 6;

    a3 = 0;
    v497 = MEMORY[0x1E69E7CC8];
LABEL_191:
    if (v345)
    {
      goto LABEL_196;
    }

    while (1)
    {
      v347 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
        goto LABEL_286;
      }

      if (v347 >= v346)
      {
        break;
      }

      v345 = *(v21 + 64 + 8 * v347);
      ++a3;
      if (v345)
      {
        a3 = v347;
LABEL_196:
        v348 = __clz(__rbit64(v345));
        v345 &= v345 - 1;
        v349 = (*(v21 + 48) + ((a3 << 10) | (16 * v348)));
        v350 = v349[1];
        if (v350)
        {
          v351 = *v349;
          v352 = v496;
          v353 = *(v496 + 2);
          v354 = v349[1];

          v355 = 0.0;
          v356 = 0.0;
          if (v353)
          {
            v357 = sub_1DD3978DC();
            if ((v358 & 1) == 0 || (v356 = 1.0, *(*(v352 + 7) + 8 * v357) * 3.4 <= 1.0))
            {
              v356 = 0.0;
              if (*(v352 + 2))
              {
                v359 = sub_1DD3978DC();
                if (v360)
                {
                  v356 = *(*(v352 + 7) + 8 * v359) * 3.4;
                }
              }
            }
          }

          if (*(v508 + 2))
          {
            v361 = sub_1DD3978DC();
            if (v362)
            {
              v355 = *(*(v508 + 7) + 8 * v361);
            }
          }

          v363 = v497;
          LODWORD(v494) = swift_isUniquelyReferenced_nonNull_native();
          v512[0] = v363;
          v495 = v351;
          v493 = sub_1DD3978DC();
          v364 = *(v363 + 16);
          LODWORD(v497) = v365;
          if (__OFADD__(v364, (v365 & 1) == 0))
          {
            goto LABEL_293;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
          if (sub_1DD640A08())
          {
            v366 = v495;
            v367 = sub_1DD3978DC();
            v369 = v497;
            if ((v497 & 1) == (v368 & 1))
            {
              v370 = v367;
              goto LABEL_211;
            }

            while (1)
            {
LABEL_295:
              sub_1DD640D58();
              __break(1u);
LABEL_296:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
            }
          }

          v366 = v495;
          v370 = v493;
          v369 = v497;
LABEL_211:
          v371 = v356 + v355;
          if (v369)
          {

            v497 = v512[0];
            *(*(v512[0] + 56) + 8 * v370) = v371;
          }

          else
          {
            v372 = v512[0];
            *(v512[0] + 8 * (v370 >> 6) + 64) |= 1 << v370;
            v373 = (v372[6] + 16 * v370);
            *v373 = v366;
            v373[1] = v350;
            *(v372[7] + 8 * v370) = v371;
            v374 = v372[2];
            v199 = __OFADD__(v374, 1);
            v375 = v374 + 1;
            if (v199)
            {
              goto LABEL_294;
            }

            v497 = v372;
            v372[2] = v375;
          }
        }

        goto LABEL_191;
      }
    }

    v380 = swift_allocObject();
    v381 = v497;
    *(v380 + 16) = v497;

    v382 = sub_1DD63F9D8();
    v383 = sub_1DD640368();
    v384 = swift_allocObject();
    *(v384 + 16) = 32;
    v385 = swift_allocObject();
    *(v385 + 16) = 8;
    v386 = swift_allocObject();
    *(v386 + 16) = sub_1DD5CDE24;
    *(v386 + 24) = v380;
    v387 = swift_allocObject();
    *(v387 + 16) = sub_1DD3FAEA4;
    *(v387 + 24) = v386;
    v388 = swift_allocObject();
    *(v388 + 16) = v498;
    *(v388 + 32) = sub_1DD3FAEC8;
    *(v388 + 40) = v384;
    *(v388 + 48) = sub_1DD3FAEC8;
    *(v388 + 56) = v385;
    *(v388 + 64) = sub_1DD3FAE9C;
    *(v388 + 72) = v387;
    swift_setDeallocating();
    sub_1DD46CBF0();
    if (os_log_type_enabled(v382, v383))
    {
      v389 = swift_slowAlloc();
      v390 = swift_slowAlloc();
      v512[0] = v390;
      *v389 = v499;
      v391 = sub_1DD63FC68();
      v393 = sub_1DD39565C(v391, v392, v512);

      *(v389 + 4) = v393;
      _os_log_impl(&dword_1DD38D000, v382, v383, "makeRecommendationInternal(). qIdScoresDict = %s", v389, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v390);
      MEMORY[0x1E12B3DA0](v390, -1, -1);
      MEMORY[0x1E12B3DA0](v389, -1, -1);
    }

    v342 = v481;
  }

  else
  {

    v418 = sub_1DD63F9D8();
    v419 = sub_1DD640368();
    if (os_log_type_enabled(v418, v419))
    {
      v420 = swift_slowAlloc();
      *v420 = 0;
      _os_log_impl(&dword_1DD38D000, v418, v419, "makeRecommendationInternal(). Didn't get any QId(s) and SportsItem(s) from Pegasus. ", v420, 2u);
      MEMORY[0x1E12B3DA0](v420, -1, -1);
    }

    v381 = MEMORY[0x1E69E7CC8];
  }

  v497 = v381;
  v421 = sub_1DD5C704C(v381, sub_1DD3C18D8, sub_1DD5D5588, sub_1DD5C6F04);
  v481 = v342;

  v422 = swift_allocObject();
  *(v422 + 16) = v421;

  v423 = sub_1DD63F9D8();
  v424 = sub_1DD640368();
  v425 = swift_allocObject();
  *(v425 + 16) = 32;
  v426 = swift_allocObject();
  *(v426 + 16) = 8;
  v427 = swift_allocObject();
  *(v427 + 16) = sub_1DD5CDD38;
  *(v427 + 24) = v422;
  v428 = swift_allocObject();
  *(v428 + 16) = sub_1DD3FAEA4;
  *(v428 + 24) = v427;
  v429 = swift_allocObject();
  *(v429 + 16) = v498;
  *(v429 + 32) = sub_1DD3FAEC8;
  *(v429 + 40) = v425;
  *(v429 + 48) = sub_1DD3FAEC8;
  *(v429 + 56) = v426;
  *(v429 + 64) = sub_1DD3FAE9C;
  *(v429 + 72) = v428;
  swift_setDeallocating();
  sub_1DD46CBF0();
  if (os_log_type_enabled(v423, v424))
  {
    v430 = swift_slowAlloc();
    v431 = swift_slowAlloc();
    v512[0] = v431;
    *v430 = v499;
    v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA60, &qword_1DD649F18);
    v433 = MEMORY[0x1E12B2430](v421, v432);
    v435 = sub_1DD39565C(v433, v434, v512);

    *(v430 + 4) = v435;
    _os_log_impl(&dword_1DD38D000, v423, v424, "Sorted by Score dict = %s", v430, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v431);
    MEMORY[0x1E12B3DA0](v431, -1, -1);
    MEMORY[0x1E12B3DA0](v430, -1, -1);
  }

  v436 = v477;
  v437 = sub_1DD559054(v421);
  if (!v438 || (v439 = v437, v440 = v438, sub_1DD559054(v421), v442 = v441, v444 = v443, , !v442))
  {

    v445 = sub_1DD63F9D8();
    v446 = sub_1DD640368();
    if (!os_log_type_enabled(v445, v446))
    {
      goto LABEL_243;
    }

    v447 = swift_slowAlloc();
    *v447 = 0;
    v448 = "No max scored QId returned from either SiriRemembers or Portrait.\nsortedByScoreDict.first?.key is nil. sortedByScoreDict.first?.value is nil.\nReturning .none #6.";
    goto LABEL_242;
  }

  if (COERCE_DOUBLE(v444 & 0x7FFFFFFFFFFFFFFFLL) >= 2.22044605e-16)
  {
    v450 = v488;
    v451 = v502;
    if (v488)
    {
      while (1)
      {
        memcpy(v515, v451, sizeof(v515));
        memcpy(v511, v451, 0x80uLL);
        if (v515[13])
        {
          v452 = v515[12] == v439 && v515[13] == v440;
          if (v452 || (sub_1DD640CD8() & 1) != 0)
          {
            break;
          }
        }

        v451 += 128;
        v450 = (v450 - 1);
        if (!v450)
        {
          goto LABEL_255;
        }
      }

      sub_1DD400BFC(v515, v512);

      v453 = swift_allocObject();
      memcpy((v453 + 16), v515, 0x80uLL);
      sub_1DD400BFC(v515, v512);
      v454 = sub_1DD63F9D8();
      v455 = sub_1DD640368();
      v456 = swift_allocObject();
      *(v456 + 16) = 32;
      v457 = swift_allocObject();
      *(v457 + 16) = 8;
      v458 = swift_allocObject();
      *(v458 + 16) = sub_1DD5CDD40;
      *(v458 + 24) = v453;
      v459 = swift_allocObject();
      *(v459 + 16) = sub_1DD3FAEA4;
      *(v459 + 24) = v458;
      v460 = swift_allocObject();
      *(v460 + 16) = v498;
      *(v460 + 32) = sub_1DD3FAEC8;
      *(v460 + 40) = v456;
      *(v460 + 48) = sub_1DD3FAEC8;
      *(v460 + 56) = v457;
      *(v460 + 64) = sub_1DD3FAE9C;
      *(v460 + 72) = v459;
      swift_setDeallocating();
      sub_1DD46CBF0();
      if (os_log_type_enabled(v454, v455))
      {
        v461 = swift_slowAlloc();
        v462 = swift_slowAlloc();
        v510[0] = v462;
        *v461 = v499;
        memcpy(v512, v515, 0x80uLL);
        sub_1DD400BFC(v515, v513);
        v463 = sub_1DD63FE38();
        v465 = sub_1DD39565C(v463, v464, v510);

        *(v461 + 4) = v465;
        _os_log_impl(&dword_1DD38D000, v454, v455, "makeRecommendationInternal(). Recommended SportsItem = %s", v461, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v462);
        MEMORY[0x1E12B3DA0](v462, -1, -1);
        MEMORY[0x1E12B3DA0](v461, -1, -1);
      }

      memcpy(v512, v511, 0x80uLL);
      sub_1DD472DA8(v512);
      goto LABEL_244;
    }

LABEL_255:

    v445 = sub_1DD63F9D8();
    v446 = sub_1DD640368();
    if (!os_log_type_enabled(v445, v446))
    {
      goto LABEL_243;
    }

    v447 = swift_slowAlloc();
    *v447 = 0;
    v448 = "makeRecommendationInternal(). Rcommended SportsItem is nil. Returning .none #8.";
LABEL_242:
    _os_log_impl(&dword_1DD38D000, v445, v446, v448, v447, 2u);
    MEMORY[0x1E12B3DA0](v447, -1, -1);
    goto LABEL_243;
  }

  v445 = sub_1DD63F9D8();
  v446 = sub_1DD640368();
  if (os_log_type_enabled(v445, v446))
  {
    v447 = swift_slowAlloc();
    *v447 = 0;
    v448 = "maxScoredQId is 0.0. Returning .none #7.";
    goto LABEL_242;
  }

LABEL_243:

  sub_1DD472D70(v512);
LABEL_244:
  v50 = v512;
  v51 = v436;
  return memcpy(v51, v50, 0x81uLL);
}

uint64_t sub_1DD5CC110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __dst[0] = a1;
  __dst[1] = a2;
  __src[0] = 45;
  __src[1] = 0xE100000000000000;
  sub_1DD3B7F10();
  v3 = sub_1DD640638();
  if (qword_1ECCDB140 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    swift_beginAccess();
    memcpy(__dst, &xmmword_1ECCDF598, 0x80uLL);
    memcpy(__src, &xmmword_1ECCDF598, sizeof(__src));
    v4 = v3[2];
    if (!v4)
    {
      break;
    }

    sub_1DD400BFC(__dst, v35);
    v5 = v3 + 5;
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D74726F7073;
      v34[1] = 0xE600000000000000;

      if ((sub_1DD6406D8() & 1) == 0)
      {
        goto LABEL_7;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 61;
      v34[1] = 0xE100000000000000;
      v3 = v35;
      v8 = sub_1DD640638();
      if (v8[2] < 2uLL)
      {
        break;
      }

      v10 = v8[6];
      v9 = v8[7];

      __src[0] = v10;
      __src[1] = v9;
LABEL_7:
      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D65756761656CLL;
      v34[1] = 0xE700000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = v35;
        v11 = sub_1DD640638();
        if (v11[2] < 2uLL)
        {
          goto LABEL_29;
        }

        v13 = v11[6];
        v12 = v11[7];

        __src[2] = v13;
        __src[3] = v12;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D6D616574;
      v34[1] = 0xE500000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = v35;
        v14 = sub_1DD640638();
        if (v14[2] < 2uLL)
        {
          goto LABEL_30;
        }

        v16 = v14[6];
        v15 = v14[7];

        __src[4] = v16;
        __src[5] = v15;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D6574656C687461;
      v34[1] = 0xE800000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = v35;
        v17 = sub_1DD640638();
        if (v17[2] < 2uLL)
        {
          goto LABEL_31;
        }

        v19 = v17[6];
        v18 = v17[7];

        __src[6] = v19;
        __src[7] = v18;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D6469716D616574;
      v34[1] = 0xE800000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = sub_1DD640638();

        if (v3[2] < 2uLL)
        {
          goto LABEL_32;
        }

        v21 = v3[6];
        v20 = v3[7];

        __src[12] = v21;
        __src[13] = v20;
      }

      else
      {
      }

      v5 += 2;
      if (!--v4)
      {
        goto LABEL_23;
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
    __break(1u);
LABEL_33:
    swift_once();
  }

  sub_1DD400BFC(__dst, v35);
LABEL_23:

  if (qword_1ECCDB0D0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1ECD0DDD8);
  memcpy(v35, __src, sizeof(v35));
  sub_1DD400BFC(v35, v34);
  v23 = sub_1DD63F9D8();
  v24 = sub_1DD640368();
  sub_1DD400C58(v35);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v25 = 136315138;
    memcpy(v34, v35, sizeof(v34));
    sub_1DD400BFC(v35, v33);
    v27 = sub_1DD63FE38();
    v29 = sub_1DD39565C(v27, v28, v32);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DD38D000, v23, v24, "convertUUIDToSportsItem(). Converted UUID to SportsItem=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E12B3DA0](v26, -1, -1);
    MEMORY[0x1E12B3DA0](v25, -1, -1);
  }

  swift_beginAccess();
  memcpy(v33, __src, sizeof(v33));
  memcpy(a3, __src, 0x80uLL);
  memcpy(v34, __src, sizeof(v34));
  sub_1DD400BFC(v33, v32);
  return sub_1DD400C58(v34);
}

uint64_t sub_1DD5CC768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD51D290();

  return sub_1DD63FC68();
}

void sub_1DD5CC7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA60, &qword_1DD649F18);

  JUMPOUT(0x1E12B2430);
}

uint64_t sub_1DD5CC814(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD400BFC(__src, &v3);
  return sub_1DD63FE38();
}

uint64_t sub_1DD5CC868(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1DD640158();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_1DD5CC984(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = v9[2];
      v13 = v8;
      v14 = v7;
      do
      {
        v15 = *(v14 + 16);
        if (v12 == v15)
        {
          result = *v14;
          if (*v14 == *&v10 && *(v14 + 8) == v11)
          {
            break;
          }

          result = sub_1DD640CD8();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        else if (v15 >= v12)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v14 + 24);
        v11 = *(v14 + 32);
        v12 = *(v14 + 40);
        v17 = *(v14 + 16);
        *(v14 + 24) = *v14;
        *(v14 + 40) = v17;
        *v14 = v10;
        *(v14 + 8) = v11;
        *(v14 + 16) = v12;
        v14 -= 24;
      }

      while (!__CFADD__(v13++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD5CCA7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 136 * a3 - 136;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 17);
        v11 = *(v10 + 33);
        v12 = *(v10 + 16);
        if (v11 == v12)
        {
          v13 = *(v10 + 18);
          if (!v13)
          {
            break;
          }

          v14 = *(v10 + 1);
          if (!v14)
          {
            break;
          }

          if (result == *v10 && v13 == v14)
          {
            break;
          }

          result = sub_1DD640CD8();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        else if (v12 >= v11)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10 + 136, sizeof(__dst));
        memcpy(v10 + 136, v10, 0x88uLL);
        result = memcpy(v10, __dst, 0x88uLL);
        v10 -= 136;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 136;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD5CCBA0(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v99 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v90 = (v6 + 16);
      v91 = *(v6 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v92 = v6;
        v93 = (v6 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v6 = v95[1];
        sub_1DD5CD8DC((*a3 + 24 * *v93), (*a3 + 24 * *v95), *a3 + 24 * v6, v99);
        if (v101)
        {
          break;
        }

        if (v6 < v94)
        {
          goto LABEL_135;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_136;
        }

        *v93 = v94;
        v93[1] = v6;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_137;
        }

        v101 = 0;
        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v96);
        *v90 = v91;
        v6 = v92;
      }

LABEL_119:

      return;
    }

LABEL_144:
    v6 = sub_1DD4EC2B8(v6);
    goto LABEL_111;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_33;
    }

    v8 = *a3;
    v9 = *a3 + 24 * v5;
    v10 = *(v9 + 16);
    v11 = *a3 + 24 * v7;
    v12 = *(v11 + 16);
    if (v10 == v12)
    {
      if (*v11 == *v9 && *(v11 + 8) == *(v9 + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_1DD640CD8();
      }
    }

    else
    {
      v14 = v12 < v10;
    }

    v5 = v7 + 2;
    v15 = v8 + 24 * v7;
    v16 = 24 * v7;
    v17 = (v15 + 64);
    while (v5 < v4)
    {
      v18 = *(v17 - 3);
      if (*v17 == v18)
      {
        if (*(v17 - 5) == *(v17 - 2) && *(v17 - 4) == *(v17 - 1))
        {
          if (v14)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v20 = sub_1DD640CD8();
      }

      else
      {
        v20 = v18 < *v17;
      }

      if ((v14 ^ v20))
      {
        break;
      }

LABEL_24:
      ++v5;
      v17 += 3;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v5 < v7)
    {
      goto LABEL_141;
    }

    if (v7 < v5)
    {
      v21 = 24 * v5 - 8;
      v22 = v5;
      v23 = v7;
      do
      {
        if (v23 != --v22)
        {
          v24 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v25 = (v24 + v16);
          v26 = (v24 + v21);
          v27 = *v25;
          v28 = v25[1];
          v29 = v25[2];
          v30 = *v26;
          *v25 = *(v26 - 1);
          v25[2] = v30;
          *(v26 - 2) = v27;
          *(v26 - 1) = v28;
          *v26 = v29;
        }

        ++v23;
        v21 -= 24;
        v16 += 24;
      }

      while (v23 < v22);
    }

LABEL_33:
    v31 = a3[1];
    if (v5 >= v31)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v5, v7))
    {
      goto LABEL_140;
    }

    if (v5 - v7 >= a4)
    {
LABEL_57:
      if (v5 < v7)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = *(v6 + 16);
        sub_1DD3BEB7C();
        v6 = v88;
      }

      v46 = *(v6 + 16);
      v47 = v46 + 1;
      if (v46 >= *(v6 + 24) >> 1)
      {
        sub_1DD3BEB7C();
        v6 = v89;
      }

      *(v6 + 16) = v47;
      v48 = v6 + 32;
      v49 = (v6 + 32 + 16 * v46);
      *v49 = v7;
      v49[1] = v5;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_149;
      }

      if (!v46)
      {
LABEL_106:
        v4 = a3[1];
        if (v5 >= v4)
        {
          goto LABEL_109;
        }

        continue;
      }

      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v6 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v6 + 32);
          v54 = *(v6 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_77:
          if (v56)
          {
            goto LABEL_126;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_129;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_134;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v47 < 2)
        {
          goto LABEL_128;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_92:
        if (v71)
        {
          goto LABEL_131;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v78 < v70)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v50 - 1 >= v47)
        {
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
LABEL_134:
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v82 = v6;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v48 + 16 * v50;
        v6 = *(v85 + 8);
        sub_1DD5CD8DC((*a3 + 24 * *v83), (*a3 + 24 * *v85), *a3 + 24 * v6, v99);
        if (v101)
        {
          goto LABEL_119;
        }

        if (v6 < v84)
        {
          goto LABEL_121;
        }

        v86 = *(v82 + 16);
        if (v50 > v86)
        {
          goto LABEL_122;
        }

        *v83 = v84;
        v83[1] = v6;
        if (v50 >= v86)
        {
          goto LABEL_123;
        }

        v101 = 0;
        v47 = v86 - 1;
        sub_1DD4EC4E4((v85 + 16), v86 - 1 - v50, (v48 + 16 * v50));
        v6 = v82;
        *(v82 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_106;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_124;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_125;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_127;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_130;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_142;
  }

  if (v7 + a4 >= v31)
  {
    v32 = a3[1];
  }

  else
  {
    v32 = v7 + a4;
  }

  if (v32 < v7)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v5 == v32)
  {
    goto LABEL_57;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v5 - 24;
  v35 = v7 - v5;
LABEL_43:
  v36 = (v33 + 24 * v5);
  v37 = *v36;
  v38 = *(v36 + 1);
  v39 = v36[2];
  v40 = v35;
  v41 = v34;
  while (1)
  {
    v42 = *(v41 + 16);
    if (v39 == v42)
    {
      v43 = *v41 == *&v37 && *(v41 + 8) == v38;
      if (v43 || (sub_1DD640CD8() & 1) == 0)
      {
LABEL_55:
        ++v5;
        v34 += 24;
        --v35;
        if (v5 == v32)
        {
          v5 = v32;
          goto LABEL_57;
        }

        goto LABEL_43;
      }
    }

    else if (v42 >= v39)
    {
      goto LABEL_55;
    }

    if (!v33)
    {
      break;
    }

    v37 = *(v41 + 24);
    v38 = *(v41 + 32);
    v39 = *(v41 + 40);
    v44 = *(v41 + 16);
    *(v41 + 24) = *v41;
    *(v41 + 40) = v44;
    *v41 = v37;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    v41 -= 24;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_1DD5CD1CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 < 1)
  {
    goto LABEL_115;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_37;
    }

    v9 = *a3;
    v10 = *a3 + 136 * v6;
    v11 = *(v10 + 128);
    v12 = *a3 + 136 * v8;
    v13 = *(v12 + 128);
    if (v11 == v13)
    {
      v14 = *(v10 + 8);
      if (v14 && (v15 = *(v12 + 8)) != 0 && (*v10 == *v12 ? (v16 = v14 == v15) : (v16 = 0), !v16))
      {
        v17 = sub_1DD640CD8();
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v13 < v11;
    }

    v6 = v8 + 2;
    v18 = 136 * v8;
    v19 = v9 + 136 * v8;
    while (v6 < v5)
    {
      v20 = *(v19 + 400);
      v21 = *(v19 + 264);
      if (v20 == v21)
      {
        v22 = *(v19 + 280);
        if (!v22 || (v23 = *(v19 + 144)) == 0 || (*(v19 + 272) == *(v19 + 136) ? (v24 = v22 == v23) : (v24 = 0), v24))
        {
          if (v17)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }

        v25 = sub_1DD640CD8();
      }

      else
      {
        v25 = v21 < v20;
      }

      if ((v17 ^ v25))
      {
        break;
      }

LABEL_28:
      ++v6;
      v19 += 136;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (v6 < v8)
    {
      goto LABEL_136;
    }

    if (v8 < v6)
    {
      v26 = 136 * v6 - 136;
      v27 = v6;
      v28 = v8;
      do
      {
        if (v28 != --v27)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_141;
          }

          memcpy(__dst, (v29 + v18), sizeof(__dst));
          memmove((v29 + v18), (v29 + v26), 0x88uLL);
          memcpy((v29 + v26), __dst, 0x88uLL);
        }

        ++v28;
        v26 -= 136;
        v18 += 136;
      }

      while (v28 < v27);
    }

LABEL_37:
    v30 = a3[1];
    if (v6 < v30)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_135;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_137;
        }

        if (v8 + a4 >= v30)
        {
          v31 = a3[1];
        }

        else
        {
          v31 = v8 + a4;
        }

        if (v31 >= v8)
        {
          if (v6 != v31)
          {
            v92 = v7;
            v32 = v8;
            v33 = *a3;
            v34 = *a3 + 136 * v6 - 136;
            v89 = v32;
            v35 = v32 - v6;
            do
            {
              v36 = v35;
              v37 = v34;
              do
              {
                v38 = *(v37 + 264);
                v39 = *(v37 + 128);
                if (v38 == v39)
                {
                  v40 = *(v37 + 144);
                  if (!v40)
                  {
                    break;
                  }

                  v41 = *(v37 + 8);
                  if (!v41)
                  {
                    break;
                  }

                  v42 = *(v37 + 136) == *v37 && v40 == v41;
                  if (v42 || (sub_1DD640CD8() & 1) == 0)
                  {
                    break;
                  }
                }

                else if (v39 >= v38)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_139;
                }

                memcpy(__dst, (v37 + 136), sizeof(__dst));
                memcpy((v37 + 136), v37, 0x88uLL);
                memcpy(v37, __dst, 0x88uLL);
                v37 -= 136;
              }

              while (!__CFADD__(v36++, 1));
              ++v6;
              v34 += 136;
              --v35;
            }

            while (v6 != v31);
            v6 = v31;
            v7 = v92;
            v8 = v89;
          }

          goto LABEL_63;
        }

LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        return;
      }
    }

LABEL_63:
    if (v6 < v8)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = v7[2];
      sub_1DD3BEB7C();
      v7 = v87;
    }

    v44 = v7[2];
    v45 = v44 + 1;
    if (v44 >= v7[3] >> 1)
    {
      sub_1DD3BEB7C();
      v7 = v88;
    }

    v7[2] = v45;
    v46 = v7 + 4;
    v47 = &v7[2 * v44 + 4];
    *v47 = v8;
    v47[1] = v6;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (2)
      {
        v48 = v45 - 1;
        v49 = &v46[2 * v45 - 2];
        v50 = &v7[2 * v45];
        if (v45 >= 4)
        {
          v55 = &v46[2 * v45];
          v56 = *(v55 - 8);
          v57 = *(v55 - 7);
          v61 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          if (v61)
          {
            goto LABEL_122;
          }

          v60 = *(v55 - 6);
          v59 = *(v55 - 5);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          v54 = v61;
          if (v61)
          {
            goto LABEL_123;
          }

          v62 = v50[1];
          v63 = v62 - *v50;
          if (__OFSUB__(v62, *v50))
          {
            goto LABEL_125;
          }

          v61 = __OFADD__(v53, v63);
          v64 = v53 + v63;
          if (v61)
          {
            goto LABEL_128;
          }

          if (v64 >= v58)
          {
            v78 = *v49;
            v77 = v49[1];
            v61 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v61)
            {
              goto LABEL_133;
            }

            if (v53 < v79)
            {
              v48 = v45 - 2;
            }
          }

          else
          {
LABEL_83:
            if (v54)
            {
              goto LABEL_124;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_127;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_130;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_132;
            }

            if (v68 + v71 < v53)
            {
              goto LABEL_98;
            }

            if (v53 < v71)
            {
              v48 = v45 - 2;
            }
          }
        }

        else
        {
          if (v45 == 3)
          {
            v51 = v7[4];
            v52 = v7[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
            goto LABEL_83;
          }

          if (v45 < 2)
          {
            goto LABEL_126;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_98:
          if (v69)
          {
            goto LABEL_129;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_131;
          }

          if (v76 < v68)
          {
            break;
          }
        }

        if (v48 - 1 >= v45)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v80 = v7;
        v81 = &v46[2 * v48 - 2];
        v82 = *v81;
        v83 = &v46[2 * v48];
        v84 = v83[1];
        sub_1DD5CDAF8((*a3 + 136 * *v81), (*a3 + 136 * *v83), (*a3 + 136 * v84), v93);
        if (v4)
        {
          goto LABEL_117;
        }

        if (v84 < v82)
        {
          goto LABEL_119;
        }

        v85 = v80[2];
        if (v48 > v85)
        {
          goto LABEL_120;
        }

        *v81 = v82;
        v81[1] = v84;
        if (v48 >= v85)
        {
          goto LABEL_121;
        }

        v45 = v85 - 1;
        memmove(&v46[2 * v48], v83 + 2, 16 * (v85 - 1 - v48));
        v7 = v80;
        v80[2] = v85 - 1;
        if (v85 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v5 = a3[1];
  }

  while (v6 < v5);
  v96 = v7;
LABEL_115:
  if (!*a1)
  {
    goto LABEL_143;
  }

  sub_1DD5CD7A4(&v96, *a1, a3);
LABEL_117:
}

uint64_t sub_1DD5CD7A4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DD5CDAF8((*a3 + 136 * *v4), (*a3 + 136 * *v9), (*a3 + 136 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DD5CD8DC(double *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1DD3C2534(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_41;
      }

      v12 = v6[2];
      v13 = v4[2];
      if (v12 == v13)
      {
        v14 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
        if (v14 || (sub_1DD640CD8() & 1) == 0)
        {
LABEL_13:
          v15 = v4;
          v14 = v7 == v4;
          v4 += 3;
          if (v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          v16 = *v15;
          v7[2] = v15[2];
          *v7 = v16;
          goto LABEL_15;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_13;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 3;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 3;
    }
  }

  sub_1DD3C2534(a2, (a3 - a2) / 24, a4);
  v17 = &v4[3 * v9];
LABEL_21:
  v18 = 0;
  v19 = v6;
  v6 -= 3;
  while (1)
  {
    v10 = &v17[v18 / 8];
    if (&v17[v18 / 8] <= v4 || v19 <= v7)
    {
      break;
    }

    v21 = *(v10 - 1);
    v22 = *(v19 - 1);
    if (v21 == v22)
    {
      v23 = *(v19 - 3) == *(v10 - 3) && *(v19 - 2) == *(v10 - 2);
      if (!v23 && (sub_1DD640CD8() & 1) != 0)
      {
LABEL_38:
        v26 = (v5 + v18);
        v5 = v5 + v18 - 24;
        v17 = (v17 + v18);
        if (v26 != v19)
        {
          v27 = *v6;
          *(v5 + 16) = v6[2];
          *v5 = v27;
        }

        goto LABEL_21;
      }
    }

    else if (v22 < v21)
    {
      goto LABEL_38;
    }

    if (v10 != (v5 + v18))
    {
      v24 = v5 + v18 - 24;
      v25 = *(v10 - 3);
      *(v24 + 16) = *(v10 - 1);
      *v24 = v25;
    }

    v18 -= 24;
  }

LABEL_41:
  v28 = (v10 - v4) / 24;
  if (v19 != v4 || v19 >= &v4[3 * v28])
  {
    memmove(v19, v4, 24 * v28);
  }

  return 1;
}

uint64_t sub_1DD5CDAF8(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 136;
  v9 = (a3 - a2) / 136;
  if (v8 < v9)
  {
    sub_1DD3C207C(a1, (a2 - a1) / 136, a4);
    v10 = &v4[17 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v20 = v7;
        goto LABEL_45;
      }

      v12 = v6[16];
      v13 = v4[16];
      if (v12 == v13)
      {
        v14 = *(v6 + 1);
        if (!v14 || (v15 = *(v4 + 1)) == 0 || (*v6 == *v4 ? (v16 = v14 == v15) : (v16 = 0), v16 || (sub_1DD640CD8() & 1) == 0))
        {
LABEL_15:
          v17 = v4;
          v16 = v7 == v4;
          v4 += 17;
          if (v16)
          {
            goto LABEL_17;
          }

LABEL_16:
          memmove(v7, v17, 0x88uLL);
          goto LABEL_17;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_15;
      }

      v17 = v6;
      v16 = v7 == v6;
      v6 += 17;
      if (!v16)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 17;
    }
  }

  sub_1DD3C207C(a2, (a3 - a2) / 136, a4);
  v18 = &v4[17 * v9];
LABEL_23:
  v19 = 0;
  v20 = v6;
  v6 -= 17;
  while (1)
  {
    v10 = &v18[v19];
    if (&v18[v19] <= v4 || v20 <= v7)
    {
      break;
    }

    v22 = *(v10 - 1);
    v23 = *(v20 - 1);
    if (v22 == v23)
    {
      v24 = *(v10 - 16);
      if (v24)
      {
        v25 = *(v20 - 16);
        if (v25)
        {
          v26 = *(v10 - 17) == *(v20 - 17) && v24 == v25;
          if (!v26 && (sub_1DD640CD8() & 1) != 0)
          {
LABEL_42:
            v27 = &v5[v19];
            v5 = &v5[v19 - 17];
            v18 = (v18 + v19 * 8);
            if (v27 != v20)
            {
              memmove(v5, v6, 0x88uLL);
            }

            goto LABEL_23;
          }
        }
      }
    }

    else if (v23 < v22)
    {
      goto LABEL_42;
    }

    if (v10 != &v5[v19])
    {
      memmove(&v5[v19 - 17], v10 - 17, 0x88uLL);
    }

    v19 -= 17;
  }

LABEL_45:
  v28 = (v10 - v4) / 136;
  if (v20 != v4 || v20 >= &v4[17 * v28])
  {
    memmove(v20, v4, 136 * v28);
  }

  return 1;
}

uint64_t objectdestroy_73Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

unint64_t sub_1DD5CDDCC()
{
  result = qword_1ECCDF770;
  if (!qword_1ECCDF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF770);
  }

  return result;
}

SiriInference::SportsResolverConfig __swiftcall SportsResolverConfig.init(intentTypeName:bundleId:)(Swift::String intentTypeName, Swift::String bundleId)
{
  *v2 = intentTypeName;
  v2[1] = bundleId;
  result.bundleId = bundleId;
  result.intentTypeName = intentTypeName;
  return result;
}

void sub_1DD5CDE44()
{
  sub_1DD5EAA80();
  if (!v0)
  {
    v1 = sub_1DD63FDA8();
    sub_1DD395950();
    v2 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD5CDEE0(int a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1DD5EA5F0(a1 & 0x10101, a2, a3, a4 & 0x10101);
  if (!v4)
  {
    v5 = sub_1DD63FDA8();
    sub_1DD395950();
    v6 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD5CDF8C()
{
  sub_1DD5EA774();
  if (!v0)
  {
    v1 = sub_1DD63FDA8();
    sub_1DD395950();
    v2 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void __swiftcall SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)(SiriInference::SportsResolverMetrics *__return_ptr retstr, SiriInference::SportsResolverConfig config, Swift::Bool isSiriInstructionExecuted, Swift::Bool isDisambiguation, Swift::Bool isRecommendationFound, Swift::Bool isTaskSuccess)
{
  v6 = *(config.intentTypeName._countAndFlagsBits + 16);
  v7 = *(config.intentTypeName._countAndFlagsBits + 24);
  retstr->intentTypeName = *config.intentTypeName._countAndFlagsBits;
  retstr->bundleId._countAndFlagsBits = v6;
  retstr->bundleId._object = v7;
  retstr->isSiriInstructionExecuted = config.intentTypeName._object;
  retstr->isDisambiguation = config.bundleId._countAndFlagsBits;
  retstr->isRecommendationFound = config.bundleId._object;
  retstr->isTaskSuccess = isSiriInstructionExecuted;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SportsResolverMetrics.logSportsMetric()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_1DD5CDF8C();
}

uint64_t sub_1DD5CE088(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1DD5CE0C8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1DD5CE17C(uint64_t a1)
{
  v2 = sub_1DD5CE35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5CE1B8(uint64_t a1)
{
  v2 = sub_1DD5CE35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsSignalSet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF778, &qword_1DD6609E8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = *(v1 + 1);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5CE35C();
  sub_1DD640EF8();
  v17 = 0;
  sub_1DD640C28();
  if (!v2)
  {
    v16 = 1;
    sub_1DD640C58();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1DD5CE35C()
{
  result = qword_1ECCDF780;
  if (!qword_1ECCDF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF780);
  }

  return result;
}

uint64_t SportsSignalSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF788, qword_1DD6609F0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5CE35C();
  sub_1DD640ED8();
  if (!v2)
  {
    v19 = 0;
    v14 = sub_1DD640B38();
    v18 = 1;
    v16 = sub_1DD640B68();
    (*(v8 + 8))(v12, v5);
    *a2 = v14 & 1;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5CE55C()
{
  result = qword_1ECCDF790;
  if (!qword_1ECCDF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF790);
  }

  return result;
}

unint64_t sub_1DD5CE5B4()
{
  result = qword_1ECCDF798;
  if (!qword_1ECCDF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF798);
  }

  return result;
}

unint64_t sub_1DD5CE60C()
{
  result = qword_1ECCDF7A0;
  if (!qword_1ECCDF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7A0);
  }

  return result;
}

unint64_t sub_1DD5CE660(void *a1)
{
  a1[2] = sub_1DD5CE55C();
  a1[3] = sub_1DD5CE5B4();
  result = sub_1DD5CE60C();
  a1[4] = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsSignalSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5CE7BC()
{
  result = qword_1ECCDF7A8;
  if (!qword_1ECCDF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7A8);
  }

  return result;
}

unint64_t sub_1DD5CE814()
{
  result = qword_1ECCDF7B0;
  if (!qword_1ECCDF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7B0);
  }

  return result;
}

unint64_t sub_1DD5CE86C()
{
  result = qword_1ECCDF7B8;
  if (!qword_1ECCDF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7B8);
  }

  return result;
}

void *SportsSlotResolutionTask.run(withAlreadyResolvedSlots:)@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = *(v1 + 48);
  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v23 = v4;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DD42BECC(0, v8, 0);
      v9 = v32;
      sub_1DD5C5498(__src);
      v10 = (v7 + 32);
      do
      {
        memcpy(__dst, v10, sizeof(__dst));
        memmove(v28, v10, 0x80uLL);
        nullsub_1(v28);
        memcpy(v29, __src, sizeof(v29));
        sub_1DD400BFC(__dst, v30);
        sub_1DD3ADFD0(v29, &qword_1ECCDF690, &qword_1DD660BF0);
        memcpy(v30, v28, sizeof(v30));
        v32 = v9;
        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1DD42BECC(v11 > 1, v12 + 1, 1);
          v9 = v32;
        }

        *(v9 + 16) = v12 + 1;
        v13 = v9 + 136 * v12;
        memcpy((v13 + 32), v30, 0x80uLL);
        *(v13 + 160) = v6;
        v10 += 128;
        --v8;
      }

      while (v8);
      v3 = v2;
      v5 = a1;
      v4 = v23;
    }
  }

  else
  {
    sub_1DD5C5498(v30);
    memcpy(__src, v30, 0x80uLL);
    sub_1DD3ADFD0(__src, &qword_1ECCDF690, &qword_1DD660BF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAA8, &qword_1DD649FA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DD643F90;
    memcpy((v9 + 32), v30, 0x80uLL);
    *(v9 + 160) = v6;
  }

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  *&v30[0] = v9;
  SportsResolver.makeRecommendation(query:)(v30);

  if (!v3)
  {
    memcpy(v31, __src, 0x81uLL);
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1ECD0DDD8);
    sub_1DD5CED70(v31, __src);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    sub_1DD3ADFD0(v31, &qword_1ECCDF758, &qword_1DD660918);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      __src[0] = v19;
      *v18 = 136315138;
      v20 = sub_1DD4A8508();
      v22 = sub_1DD39565C(v20, v21, __src);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DD38D000, v16, v17, "Sports recommendations: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    sub_1DD4729B0(v25);
    sub_1DD3ADFD0(v31, &qword_1ECCDF758, &qword_1DD660918);
    return memcpy(v5, v25, 0x81uLL);
  }

  return result;
}

uint64_t Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t SportsSlotResolutionTask.init(entity:category:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a3 + 40) = *a1;
  *(a3 + 48) = v4;
  *(a3 + 24) = type metadata accessor for SportsResolver();
  *(a3 + 32) = &off_1F58C0FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return SportsResolver.init()(boxed_opaque_existential_1);
}

uint64_t sub_1DD5CED70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF758, &qword_1DD660918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD5CEDE4()
{
  result = qword_1ECCDF7C0;
  if (!qword_1ECCDF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Category(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD5CEF10(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DD5CEF60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1DD5CEFB4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DD5CEFCC(void *result, int a2)
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

uint64_t sub_1DD5CF004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 9);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(30, 11);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  type metadata accessor for DateTime.Date.Holiday();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_5_2(v6, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v7, v8, v9, v10, v28, *v30, *&v30[4], v30[6], 2);
  OUTLINED_FUNCTION_2_10();
  v11 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v11);
  OUTLINED_FUNCTION_1_11();
  v12 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v12);
  v13 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v13, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v14, v15, v16, v17, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v18 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v18);
  OUTLINED_FUNCTION_1_11();
  v19 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v19);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v20 = OUTLINED_FUNCTION_34();
  v21 = DateTime.init(occurringIn:)(v20);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v21;
  *(inited + 112) = 1;
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v22 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v22);
  OUTLINED_FUNCTION_1_11();
  v23 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v23);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void sub_1DD5CF324(uint64_t a1)
{
  sub_1DD54C2A0();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = sub_1DD6405F8();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1DD5CF3F4(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DD63CE68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD628448();
  if (!v3)
  {
    v41 = a2;
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v38 = sub_1DD63F9F8();
    v13 = __swift_project_value_buffer(v38, qword_1EE16F0C8);
    (*(v9 + 16))(v12, a1, v8);
    v40 = v13;
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();
    v16 = os_log_type_enabled(v14, v15);
    v39 = a3;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v36[1] = a1;
      v18 = v17;
      v19 = swift_slowAlloc();
      v37 = 0;
      v20 = v19;
      v42 = v19;
      *v18 = 136315394;
      v21 = sub_1DD63CE58();
      v23 = v22;
      (*(v9 + 8))(v12, v8);
      v24 = sub_1DD39565C(v21, v23, &v42);

      *(v18 + 4) = v24;
      *(v18 + 12) = 1024;
      v25 = v41;
      *(v18 + 14) = v41 & 1;
      _os_log_impl(&dword_1DD38D000, v14, v15, "opening db connection at %s. readOnly=%{BOOL}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v4 = v37;
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      (*(v9 + 8))(v12, v8);
      v25 = v41;
    }

    v26 = sub_1DD63CE58();
    v28 = v27;
    type metadata accessor for Connection();
    swift_allocObject();
    v29 = sub_1DD4055EC(v26, v28, v25 & 1);
    if (!v4)
    {
      v8 = v29;
      v30 = sub_1DD63F9D8();
      v31 = sub_1DD640368();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DD38D000, v30, v31, "opened db connection", v32, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      *(v8 + 24) = 0x3FE0000000000000;
      sub_1DD406CD0();

      sub_1DD405F44(v33);
      if ((v25 & 1) == 0)
      {

        v35 = v39;

        sub_1DD520148(v8, v35);
      }
    }
  }

  return v8;
}

uint64_t *sub_1DD5CF924()
{
  v1 = *v0;
  sub_1DD5CFA30(v0 + qword_1EE165D80);
  v2 = *(*v0 + 104);
  v3 = *(v1 + 80);
  v4 = sub_1DD6405F8();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_1DD5CF9C0()
{
  sub_1DD5CF924();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5CFA30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD5CFA98(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1DD63FA78();
  v6 = OUTLINED_FUNCTION_0(v5);
  v204 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_3();
  v209 = v13;
  v14 = sub_1DD63FA38();
  v15 = OUTLINED_FUNCTION_0(v14);
  v206 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v203 = v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_3();
  v202 = v21;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF7C8, &qword_1DD660DD8);
  v22 = OUTLINED_FUNCTION_7(v207);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v208 = v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v193 - v27;
  v29 = sub_1DD63FA48();
  v30 = OUTLINED_FUNCTION_0(v29);
  v210 = v31;
  v211 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  v216 = v34;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_16_3();
  v214 = v36;
  v223 = sub_1DD63DEA8();
  v37 = OUTLINED_FUNCTION_0(v223);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v43 = v42;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_16_3();
  v222 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v215 = v193 - v49;
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v50 = a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v51 = v215;
  sub_1DD3DD9B4(v50, v215, &qword_1ECCDBC18, &unk_1DD6459A0);
  v52 = *(v51 + 256);
  v53 = MEMORY[0x1E69E7CC0];
  if (!v52)
  {
LABEL_54:
    sub_1DD390754(v215, &qword_1ECCDBC18, &unk_1DD6459A0);
    return v53;
  }

  v194 = v5;
  v195 = v14;
  v200 = v1;
  v197 = v28;

  v54 = sub_1DD63270C();
  v196 = v12;
  if (v2)
  {
    v56 = v39;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v57 = sub_1DD63F9F8();
    __swift_project_value_buffer(v57, qword_1EE16F068);
    v58 = sub_1DD63F9D8();
    v59 = sub_1DD640368();
    v60 = v43;
    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_28();
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1DD38D000, v58, v59, "Querying SRR with unknown USO node", v61, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v3 = 0;
  }

  else
  {
    v62 = v54;
    v63 = v55;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v64 = sub_1DD63F9F8();
    __swift_project_value_buffer(v64, qword_1EE16F068);

    v65 = sub_1DD63F9D8();
    v66 = sub_1DD640368();

    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_18_1();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v227 = swift_slowAlloc();
      *v67 = 136315138;
      v68 = sub_1DD39565C(v62, v63, &v227);

      *(v67 + 4) = v68;
      _os_log_impl(&dword_1DD38D000, v65, v66, "Querying SRR with %s", v67, 0xCu);
      OUTLINED_FUNCTION_9_56();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    v56 = v39;
    v60 = v43;
  }

  v69 = sub_1DD63E9E8();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_1DD63E9D8();
  sub_1DD63E6A8();
  sub_1DD63E9C8();

  v73 = sub_1DD63ECA8();
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  v198 = sub_1DD63EC98();
  sub_1DD63E9A8();
  v76 = sub_1DD63E318();
  v201 = v72;
  if (v76)
  {
    v77 = v76;
    v221 = sub_1DD63E9B8();
    if (v221)
    {
      v199 = 0;
      v79 = *(v77 + 16);
      v80 = v216;
      v193[1] = v77;
      if (v79)
      {
        v83 = *(v56 + 16);
        v81 = v56 + 16;
        v82 = v83;
        v84 = v77 + ((*(v81 + 64) + 32) & ~*(v81 + 64));
        v219 = *(v81 + 56);
        *&v78 = 136315138;
        v212 = v78;
        v218 = (v81 - 8);
        v217 = (v81 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v86 = v222;
        v85 = v223;
        v213 = v81;
        v220 = v83;
        do
        {
          v224 = v79;
          v82(v86, v84, v85);
          if (qword_1EE165FB0 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v87 = sub_1DD63F9F8();
          __swift_project_value_buffer(v87, qword_1EE16F068);
          v82(v60, v86, v85);
          v88 = sub_1DD63F9D8();
          v89 = v60;
          v90 = sub_1DD640368();
          if (os_log_type_enabled(v88, v90))
          {
            OUTLINED_FUNCTION_18_1();
            v91 = swift_slowAlloc();
            OUTLINED_FUNCTION_17_0();
            v227 = swift_slowAlloc();
            *v91 = v212;
            v92 = sub_1DD63DE88();
            v94 = v93;
            v95 = *v218;
            (*v218)(v89, v223);
            v96 = sub_1DD39565C(v92, v94, &v227);

            *(v91 + 4) = v96;
            _os_log_impl(&dword_1DD38D000, v88, v90, "Adding identifier: %s", v91, 0xCu);
            OUTLINED_FUNCTION_9_56();
            v80 = v216;
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            v85 = v223;
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          else
          {

            v95 = *v218;
            (*v218)(v89, v85);
          }

          v60 = v89;
          v86 = v222;
          sub_1DD63DD38();
          v95(v86, v85);
          v82 = v220;
          v84 += v219;
          v79 = v224 - 1;
        }

        while (v224 != 1);
      }

      v3 = v199;
    }

    else
    {
      v80 = v216;
    }

    v97 = OUTLINED_FUNCTION_11_48();
  }

  else
  {
    v97 = v72;
    v80 = v216;
  }

  v98 = MEMORY[0x1E12B09F0](v97);
  if (!v98)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v112 = sub_1DD63F9F8();
    __swift_project_value_buffer(v112, qword_1EE16F068);
    v113 = sub_1DD63F9D8();
    v114 = sub_1DD640378();
    if (os_log_type_enabled(v113, v114))
    {
      OUTLINED_FUNCTION_28();
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_1DD38D000, v113, v114, "failed to convert entity during SRRSearchProvider", v115, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_11_48();

    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v99 = v98;
  v199 = v3;
  v100 = v214;
  *v214 = v98;
  v101 = v210;
  v102 = v211;
  (*(v210 + 104))(v100, *MEMORY[0x1E69D2930], v211);
  v103 = qword_1EE165FB0;
  v224 = v99;

  if (v103 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v104 = sub_1DD63F9F8();
  v105 = __swift_project_value_buffer(v104, qword_1EE16F068);
  (*(v101 + 16))(v80, v100, v102);
  v222 = v105;
  v106 = sub_1DD63F9D8();
  v107 = sub_1DD640368();
  if (os_log_type_enabled(v106, v107))
  {
    OUTLINED_FUNCTION_18_1();
    v108 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v227 = swift_slowAlloc();
    *v108 = 136315138;
    sub_1DD5D1C70(&qword_1ECCDF7D8, MEMORY[0x1E69D2938]);
    v109 = sub_1DD640CB8();
    v60 = v110;
    v223 = *(v101 + 8);
    v223(v80, v102);
    v111 = sub_1DD39565C(v109, v60, &v227);

    *(v108 + 4) = v111;
    _os_log_impl(&dword_1DD38D000, v106, v107, "Querying SRR with %s", v108, 0xCu);
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    v223 = *(v101 + 8);
    v223(v80, v102);
  }

  OUTLINED_FUNCTION_8_68();
  v116 = v209;
  v117 = v200[3];
  v118 = v200[4];
  __swift_project_boxed_opaque_existential_1(v200, v117);
  (*(v118 + 8))(v214, v117, v118);
  v227 = MEMORY[0x1E69E7CC0];
  v119 = v208;
  sub_1DD3DD9B4(v60, v208, &qword_1ECCDF7C8, &qword_1DD660DD8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v121 = v196;
  if (EnumCaseMultiPayload == 1)
  {
    v122 = *v119;
    v123 = *v119;
    v124 = sub_1DD63F9D8();
    v125 = sub_1DD640378();

    if (os_log_type_enabled(v124, v125))
    {
      OUTLINED_FUNCTION_18_1();
      v126 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v127 = swift_slowAlloc();
      v225 = v122;
      v226 = v127;
      *v126 = 136315138;
      v128 = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v129 = sub_1DD63FE38();
      v60 = v130;
      v131 = sub_1DD39565C(v129, v130, &v226);
      OUTLINED_FUNCTION_8_68();

      *(v126 + 4) = v131;
      OUTLINED_FUNCTION_16_49(&dword_1DD38D000, v132, v133, "SRR lookup failed: %s");
      OUTLINED_FUNCTION_9_56();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

LABEL_48:
    v149 = v199;
LABEL_49:
    v53 = v193;
    v150 = v227;
    MEMORY[0x1EEE9AC00](v134);
    v151 = v215;
    v193[-2] = v200;
    v193[-1] = v151;
    sub_1DD583174(sub_1DD5D1C54, &v193[-4], v150);
    if (v149)
    {

      OUTLINED_FUNCTION_11_48();

      sub_1DD390754(v60, &qword_1ECCDF7C8, &qword_1DD660DD8);
      v153 = OUTLINED_FUNCTION_10_54();
      v154(v153);
      sub_1DD390754(v215, &qword_1ECCDBC18, &unk_1DD6459A0);
      return v53;
    }

    v155 = v152;

    v156 = sub_1DD63F9D8();
    v157 = sub_1DD640368();

    if (os_log_type_enabled(v156, v157))
    {
      OUTLINED_FUNCTION_18_1();
      v158 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v226 = swift_slowAlloc();
      *v158 = 136315138;
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      v160 = MEMORY[0x1E12B2430](v155, v159);
      v60 = v161;
      v162 = sub_1DD39565C(v160, v161, &v226);
      OUTLINED_FUNCTION_8_68();

      *(v158 + 4) = v162;
      OUTLINED_FUNCTION_16_49(&dword_1DD38D000, v163, v164, "SRR raw contacts: %s");
      OUTLINED_FUNCTION_9_56();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v53 = sub_1DD3C6AF8(v155);

    OUTLINED_FUNCTION_11_48();

    sub_1DD390754(v60, &qword_1ECCDF7C8, &qword_1DD660DD8);
    v165 = OUTLINED_FUNCTION_10_54();
    v166(v165);
    goto LABEL_54;
  }

  v135 = v204;
  v136 = v194;
  v134 = (*(v204 + 88))(v119, v194);
  if (v134 == *MEMORY[0x1E69D2968])
  {
    (*(v135 + 96))(v119, v136);
    v137 = v119;
    v138 = v206;
    v139 = *(v206 + 32);
    v140 = v202;
    v141 = v195;
    (v139)(v202, v137, v195);
    (*(v138 + 16))(v203, v140, v141);
    sub_1DD3BF868();
    v143 = v142;
    v144 = *(v142 + 16);
    v145 = v144 + 1;
    if (v144 >= *(v142 + 24) >> 1)
    {
LABEL_82:
      sub_1DD3BF868();
      v143 = v192;
    }

    v146 = v206 + 8;
    v147 = v140;
    v148 = v195;
    (*(v206 + 8))(v147, v195);
    *(v143 + 16) = v145;
    v134 = (v139)(v143 + ((*(v146 + 72) + 32) & ~*(v146 + 72)) + *(v146 + 64) * v144, v203, v148);
    v227 = v143;
    goto LABEL_48;
  }

  v149 = v199;
  if (v134 == *MEMORY[0x1E69D2978] || v134 == *MEMORY[0x1E69D2970])
  {
    v168 = OUTLINED_FUNCTION_15_48();
    v169(v168);
    v134 = sub_1DD607A34(*v119);
    goto LABEL_49;
  }

  if (v134 != *MEMORY[0x1E69D2980])
  {
    if (v134 == *MEMORY[0x1E69D2988])
    {
      goto LABEL_49;
    }

    v181 = v194;
    (*(v135 + 32))(v116, v119, v194);
    (*(v135 + 16))(v121, v116, v181);
    v182 = sub_1DD63F9D8();
    v183 = sub_1DD640378();
    if (os_log_type_enabled(v182, v183))
    {
      OUTLINED_FUNCTION_18_1();
      v184 = v135;
      v185 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v221 = swift_slowAlloc();
      v226 = v221;
      *v185 = 136315138;
      sub_1DD5D1C70(&qword_1ECCDF7D0, MEMORY[0x1E69D2990]);
      v186 = sub_1DD640CB8();
      v60 = v187;
      v188 = *(v184 + 8);
      v188(v121, v181);
      v189 = sub_1DD39565C(v186, v60, &v226);
      OUTLINED_FUNCTION_8_68();

      *(v185 + 4) = v189;
      _os_log_impl(&dword_1DD38D000, v182, v183, "unhandled variant: %s", v185, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v221);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v134 = (v188)(v209, v181);
    }

    else
    {

      v191 = *(v135 + 8);
      v191(v121, v181);
      v134 = (v191)(v116, v181);
    }

    goto LABEL_48;
  }

  v170 = OUTLINED_FUNCTION_15_48();
  v171(v170);
  v172 = *v119;
  v144 = *(*v119 + 2);
  if (!v144)
  {
    v190 = *v119;

    goto LABEL_49;
  }

  v145 = MEMORY[0x1E69E7CC0];
  v60 = 32;
  while (1)
  {
    v139 = *&v172[v60];
    v173 = *(v139 + 16);
    v140 = *(v145 + 16);
    if (__OFADD__(v140, v173))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v174 = *&v172[v60];

    if (!swift_isUniquelyReferenced_nonNull_native() || v140 + v173 > *(v145 + 24) >> 1)
    {
      sub_1DD3BF868();
      v145 = v175;
    }

    if (*(v139 + 16))
    {
      break;
    }

    if (v173)
    {
      goto LABEL_80;
    }

LABEL_72:
    v60 += 8;
    if (!--v144)
    {

      v227 = v145;
      OUTLINED_FUNCTION_8_68();
      goto LABEL_49;
    }
  }

  if ((*(v145 + 24) >> 1) - *(v145 + 16) < v173)
  {
    goto LABEL_81;
  }

  v176 = (*(v206 + 80) + 32) & ~*(v206 + 80);
  v177 = *(v206 + 72);
  swift_arrayInitWithCopy();

  if (!v173)
  {
    goto LABEL_72;
  }

  v178 = *(v145 + 16);
  v179 = __OFADD__(v178, v173);
  v180 = v178 + v173;
  if (!v179)
  {
    *(v145 + 16) = v180;
    goto LABEL_72;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5D0E78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for ContactResolver.SignalSet(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Contact();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD5D1610(v75);
  memcpy(v76, v75, 0x108uLL);
  result = sub_1DD3C94D4(v76);
  if (result == 1)
  {
    goto LABEL_14;
  }

  v67 = a2;
  v61 = v14;
  v62 = v17;
  v63 = v13;
  memcpy(v74, v76, sizeof(v74));
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD63F9F8();
  __swift_project_value_buffer(v19, qword_1EE16F068);
  memcpy(v73, v75, sizeof(v73));
  sub_1DD3C9478(v73, v72);
  v20 = sub_1DD63F9D8();
  v21 = sub_1DD640368();
  sub_1DD390754(v75, &qword_1ECCDCCB0, &unk_1DD64AEE0);
  v22 = os_log_type_enabled(v20, v21);
  v65 = a3;
  v66 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v69 = a4;
    v25 = v24;
    v77 = v24;
    *v23 = 136315138;
    memcpy(v70, v74, sizeof(v70));
    memcpy(v71, v75, sizeof(v71));
    sub_1DD3C9478(v71, v72);
    v26 = ContactQuery.description.getter();
    v28 = v27;
    memcpy(v72, v70, sizeof(v72));
    sub_1DD3C9580(v72);
    v29 = sub_1DD39565C(v26, v28, &v77);
    v5 = v4;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1DD38D000, v20, v21, "SRR output query: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v30 = v25;
    a4 = v69;
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    MEMORY[0x1E12B3DA0](v23, -1, -1);
  }

  v31 = v76[26];
  if (!v76[26])
  {
    goto LABEL_13;
  }

  v32 = v76[29];
  v33 = HIBYTE(v76[29]) & 0xFLL;
  v68 = v76[28];
  if ((v76[29] & 0x2000000000000000) == 0)
  {
    v33 = v76[28] & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_13:
    result = sub_1DD390754(v75, &qword_1ECCDCCB0, &unk_1DD64AEE0);
LABEL_14:
    *a4 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v59 = v76[24];
  v60 = v76[25];
  v64 = v76[27];
  if (LOBYTE(v76[24]))
  {
    *&v69 = a4;
    v34 = v67[8];
    v35 = v67[9];
    if (LOBYTE(v76[24]) == 1)
    {
      __swift_project_boxed_opaque_existential_1(v67 + 5, v67[8]);
      v36 = *(v35 + 48);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v67 + 5, v67[8]);
      v36 = *(v35 + 40);
    }

    v37 = v36(v68, v32, v34, v35);
    if (v5)
    {
      sub_1DD390754(v75, &qword_1ECCDCCB0, &unk_1DD64AEE0);
      return sub_1DD3FAA54(v59, v60, v31);
    }

    v41 = v37;

    a4 = v69;
  }

  else
  {

    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640368();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DD38D000, v38, v39, "cannot look up an unknown handle type in CNContactStore", v40, 2u);
      MEMORY[0x1E12B3DA0](v40, -1, -1);
    }

    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = v65;
  v43 = sub_1DD3CC020(v41);

  if (v43)
  {
    v44 = sub_1DD3FAA54(v59, v60, v31);
    MEMORY[0x1EEE9AC00](v44);
    *(&v59 - 4) = v74;
    *(&v59 - 3) = v42;
    *(&v59 - 2) = v66;
    sub_1DD6054D0();
    v46 = v45;
    sub_1DD390754(v75, &qword_1ECCDCCB0, &unk_1DD64AEE0);

    *a4 = v46;
  }

  else
  {

    memcpy(v72, v42, sizeof(v72));
    memcpy(v71, v42, sizeof(v71));
    sub_1DD3C9478(v72, v70);
    v47 = v62;
    sub_1DD40ED6C(v71, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
    v48 = swift_allocObject();
    v69 = xmmword_1DD643F90;
    *(v48 + 16) = xmmword_1DD643F90;
    LOBYTE(v71[0]) = v59;
    v71[1] = v60;
    v71[2] = v31;
    v71[3] = v64;
    v71[4] = v68;
    v71[5] = v32;
    sub_1DD40F034();
    v49 = *(v61 + 80);
    v50 = *(v47 + v49);

    *(v47 + v49) = v48;
    v51 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
    v52 = v63;
    sub_1DD5D1CDC(v51, v63, type metadata accessor for ContactResolver.SignalSet);
    *(v52 + 340) = 1;
    sub_1DD63FA18();
    *(v52 + 352) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
    v54 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
    v55 = *(*v54 + 72);
    v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v69;
    v58 = v57 + v56;
    sub_1DD5D1CDC(v47, v58, type metadata accessor for Contact);
    sub_1DD5D1D3C(v52, v58 + v54[11]);
    sub_1DD390754(v75, &qword_1ECCDCCB0, &unk_1DD64AEE0);
    *a4 = v57;
    return sub_1DD415B40(v47);
  }

  return result;
}

void *sub_1DD5D1610@<X0>(void *a1@<X8>)
{
  v2 = sub_1DD63FA68();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD63FA28();
  sub_1DD63FA58();
  v6 = sub_1DD63EED8();
  v8 = v7;

  v9 = v6 == 0x415F6E6F6D6D6F63 && v8 == 0xEC000000746E6567;
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    v21 = v6 == 0x505F6E6F6D6D6F63 && v8 == 0xED00006E6F737265;
    if (!v21 && (sub_1DD640CD8() & 1) == 0)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v25 = sub_1DD63F9F8();
      __swift_project_value_buffer(v25, qword_1EE16F068);

      v26 = sub_1DD63F9D8();
      v27 = sub_1DD640368();

      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_18_1();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v31 = v26;
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136446210;
        v30 = sub_1DD39565C(v6, v8, v35);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_1DD38D000, v31, v27, "CRR does not support SRR for %{public}s, only common_Agent and common_Person", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      goto LABEL_15;
    }

    sub_1DD63FA58();
    sub_1DD63E6B8();
    OUTLINED_FUNCTION_17_38();

    if (v34)
    {
      UsoEntity_common_Person.toContactQuery()(v33);

      v22 = OUTLINED_FUNCTION_7_63();
      v23(v22);
      v12 = v33;
      goto LABEL_8;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1EE16F068);
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_14:

LABEL_15:
      v18 = OUTLINED_FUNCTION_7_63();
      v19(v18);
      sub_1DD447694(v35);
      return memcpy(a1, v35, 0x108uLL);
    }

    OUTLINED_FUNCTION_28();
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "could not convert SRR result to common_Person";
LABEL_13:
    _os_log_impl(&dword_1DD38D000, v14, v15, v17, v16, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    goto LABEL_14;
  }

  sub_1DD63FA58();
  sub_1DD63E5C8();
  OUTLINED_FUNCTION_17_38();

  if (!v34)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16F068);
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_28();
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "could not convert SRR result to common_Agent";
    goto LABEL_13;
  }

  UsoEntity_common_Agent.toContactQuery()(v32);

  v10 = OUTLINED_FUNCTION_7_63();
  v11(v10);
  v12 = v32;
LABEL_8:
  memcpy(v35, v12, 0x108uLL);
  nullsub_1(v35);
  return memcpy(a1, v35, 0x108uLL);
}

uint64_t sub_1DD5D1AA0@<X0>(void **a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v8 = v7;
  sub_1DD3C9478(a2, &v13);
  sub_1DD40F314();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  v10 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
  sub_1DD5D1CDC(a3 + v9, v10, type metadata accessor for ContactResolver.SignalSet);
  *(v10 + 340) = 1;
  result = sub_1DD63FA18();
  *(v10 + 352) = v12;
  return result;
}

uint64_t sub_1DD5D1BB0(uint64_t a1, int a2)
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

uint64_t sub_1DD5D1BF0(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD5D1C70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD5D1CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5D1D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_54()
{
  v1 = *(v0 - 232);
  v2 = *(v0 - 240) + 8;
  result = *(v0 - 192);
  v4 = *(v0 - 120);
  return result;
}

SiriInference::State::Prefix_optional __swiftcall State.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t State.Prefix.rawValue.getter()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28265;
  }
}

SiriInference::State::Suffix_optional __swiftcall State.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t State.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D8C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D8C(v3, v5);
  }

  return result;
}

uint64_t sub_1DD5D2190(uint64_t a1)
{
  v2 = sub_1DD5D25EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5D21CC(uint64_t a1)
{
  v2 = sub_1DD5D25EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF7E0, &qword_1DD660DE0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v17 = v1[1];
  v13 = *(v1 + 1);
  v16[1] = *(v1 + 2);
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5D25EC();
  sub_1DD640EF8();
  v22 = v12;
  v21 = 0;
  sub_1DD5D2640();
  sub_1DD640C08();
  if (!v2)
  {
    v20 = v17;
    v19 = 1;
    sub_1DD5D2694();
    sub_1DD640C08();
    v18 = 2;
    sub_1DD640C18();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF800, &qword_1DD660DE8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5D25EC();
  sub_1DD640ED8();
  if (!v2)
  {
    v24 = 0;
    sub_1DD5D26E8();
    OUTLINED_FUNCTION_2_15();
    v14 = v25;
    v22 = 1;
    sub_1DD5D273C();
    OUTLINED_FUNCTION_2_15();
    v20 = v23;
    v21 = 2;
    v16 = sub_1DD640B28();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 1) = v20;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5D25EC()
{
  result = qword_1ECCDF7E8;
  if (!qword_1ECCDF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7E8);
  }

  return result;
}

unint64_t sub_1DD5D2640()
{
  result = qword_1ECCDF7F0;
  if (!qword_1ECCDF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7F0);
  }

  return result;
}

unint64_t sub_1DD5D2694()
{
  result = qword_1ECCDF7F8;
  if (!qword_1ECCDF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7F8);
  }

  return result;
}

unint64_t sub_1DD5D26E8()
{
  result = qword_1ECCDF808;
  if (!qword_1ECCDF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF808);
  }

  return result;
}

unint64_t sub_1DD5D273C()
{
  result = qword_1ECCDF810;
  if (!qword_1ECCDF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF810);
  }

  return result;
}

unint64_t sub_1DD5D2794()
{
  result = qword_1ECCDF818;
  if (!qword_1ECCDF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF818);
  }

  return result;
}

unint64_t sub_1DD5D27EC()
{
  result = qword_1ECCDF820;
  if (!qword_1ECCDF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF820);
  }

  return result;
}

_BYTE *sub_1DD5D2864(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5D2944()
{
  result = qword_1ECCDF828;
  if (!qword_1ECCDF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF828);
  }

  return result;
}

unint64_t sub_1DD5D299C()
{
  result = qword_1ECCDF830;
  if (!qword_1ECCDF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF830);
  }

  return result;
}

unint64_t sub_1DD5D29F4()
{
  result = qword_1ECCDF838;
  if (!qword_1ECCDF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF838);
  }

  return result;
}

unint64_t sub_1DD5D2A48()
{
  result = qword_1ECCDF840;
  if (!qword_1ECCDF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF840);
  }

  return result;
}

unint64_t sub_1DD5D2A9C()
{
  result = qword_1ECCDF848;
  if (!qword_1ECCDF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF848);
  }

  return result;
}

uint64_t sub_1DD5D2AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
  }

  sub_1DD5D3268(1);
  swift_beginAccess();
  if (v2 == sqlite3_bind_parameter_count(*(v1 + 16)))
  {
    v4 = a1 + 32;
    v5 = -v2;
    v6 = 1;
    do
    {
      sub_1DD5D32B0(v4, v6++);
      v4 += 40;
    }

    while (v5 + v6 != 1);
  }

  sub_1DD6408D8();
  sqlite3_bind_parameter_count(*(v1 + 16));
  sub_1DD640CB8();

  MEMORY[0x1E12B2260](0xD000000000000012, 0x80000001DD674730);
  v8 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v8);

  MEMORY[0x1E12B2260](0x64657373617020, 0xE700000000000000);
  result = OUTLINED_FUNCTION_24_23();
  __break(1u);
  return result;
}

const char *sub_1DD5D2C8C()
{
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = sqlite3_sql(*(v0 + 16));
  if (result)
  {
    return sub_1DD63FF68();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5D2CC8()
{
  sub_1DD5D3268(0);
}

void sub_1DD5D2CF8()
{
  v1 = v0;
  if (*(v0 + 48))
  {

    return;
  }

  v2 = sub_1DD5D31BC();
  if (v2 < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  if (v2 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_13:
    v11 = *(v1 + 48);
    *(v1 + 48) = v4;

    return;
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4();
  v4 = v12;
  swift_beginAccess();
  v5 = 0;
  while (sqlite3_column_name(*(v1 + 16), v5))
  {
    v6 = sub_1DD63FF68();
    v8 = v7;
    v9 = *(v12 + 16);
    if (v9 >= *(v12 + 24) >> 1)
    {
      sub_1DD42A2D4();
    }

    *(v12 + 16) = v9 + 1;
    v10 = v12 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v8;
    if (v3 == v5)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  __break(1u);
}

void sub_1DD5D2E58()
{
  v2 = *(v0 + 24);

  v3 = sub_1DD405E00(v2, v0);
  if (!v1 && v3)
  {
    v4 = sub_1DD5D320C();
    sub_1DD5D4290(v4, v5);
  }
}

uint64_t sub_1DD5D2EAC()
{
  v0 = sub_1DD5D4114();

  return v0;
}

uint64_t sub_1DD5D2F2C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  v3 = sub_1DD4055B0();
  v4 = sub_1DD63FE68();

  swift_beginAccess();
  v5 = sqlite3_prepare_v2(v3, (v4 + 32), -1, (v1 + 16), 0);
  swift_endAccess();

  sub_1DD40597C(v5, 0);

  if (v2)
  {
  }

  return v1;
}

uint64_t sub_1DD5D3030()
{
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_1DD5D3074()
{
  sub_1DD5D3030();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1DD5D3158()
{
  result = qword_1ECCDF850;
  if (!qword_1ECCDF850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF858, qword_1DD661238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF850);
  }

  return result;
}

uint64_t sub_1DD5D31BC()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_1DD5D320C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[8];
    return v1;
  }

  OUTLINED_FUNCTION_6_72();
  result = swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v4 = sub_1DD5D31BC();
    v0[7] = v1;
    v0[8] = v4;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5D3268(char a1)
{
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = sqlite3_reset(*(v1 + 16));
  if (a1)
  {
    return sqlite3_clear_bindings(*(v1 + 16));
  }

  return result;
}

uint64_t sub_1DD5D32B0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      v3 = v13;
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v13 + 16);
          if (!(v4 >> 31))
          {
            v2 = v2[2];
            if (qword_1EE165568 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v2, a2, (v3 + 32), v4, qword_1EE16F030);
            }

LABEL_49:
            swift_once();
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v13);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v13);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_1EE165568 == -1)
          {
LABEL_30:
            v8 = qword_1EE16F030;
            v9 = sub_1DD63FE68();

            sqlite3_bind_text(v2, a2, (v9 + 32), -1, v8);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  v10 = MEMORY[0x1E69E7360];
  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      v11 = v13;
LABEL_39:
      v16 = v10;
      v17 = &off_1F58C4E70;
      v15[0] = v11;
      sub_1DD5D32B0(v15, a2);
      v12 = v15;
      return sub_1DD3ADFD0(v12, &qword_1ECCDCF98, &qword_1DD6547F0);
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      v11 = v13;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, &v13);
  if (!v14)
  {
    v12 = &v13;
    return sub_1DD3ADFD0(v12, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD3AA4A8(&v13, v15);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001FLL, 0x80000001DD674750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
  sub_1DD6409F8();
  result = sub_1DD640A38();
  __break(1u);
  return result;
}

uint64_t sub_1DD5D3890(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (*(a1 + 16))
  {
    sub_1DD5D2AFC(a1);
    v5 = sub_1DD5D3890(MEMORY[0x1E69E7CC0]);

    if (!v2)
    {
      return v5;
    }
  }

  else
  {
    sub_1DD5D3268(0);
    sub_1DD406E2C();
    v6 = *(v1 + 24);
    swift_beginAccess();
    do
    {
      while (1)
      {
        v7 = qword_1EE165C08;

        if (v7 != -1)
        {
          swift_once();
        }

        sub_1DD640458();
        v8 = sub_1DD405A20();
        if ((v14 & 1) != 0 || v13 != v8)
        {
          break;
        }

        v9 = sqlite3_step(*(v4 + 16));
        v10 = sub_1DD40597C(v9, 0);

        if (v3)
        {
          return v4;
        }

        if (v10 != 100)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v6 + 88);
      sub_1DD640488();

      if (v3)
      {
        return v4;
      }
    }

    while ((v15 & 1) != 0);
LABEL_16:
  }

  return v4;
}

void sub_1DD5D3A54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    sub_1DD5D2AFC(a1);
    sub_1DD5D3A54(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DD5D3268(0);
    v6 = *(v2 + 24);

    sub_1DD405E00(v6, v2);
    if (!v4)
    {
      v7 = sub_1DD5D320C();
      sub_1DD5D3AF8(0, v7, a2);
    }
  }
}

void sub_1DD5D3AF8(uint64_t iCol@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1DD6408D8();

    v12 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v12);

    OUTLINED_FUNCTION_24_23();
    __break(1u);
    return;
  }

  if (iCol > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  switch(sqlite3_column_type(a2, iCol))
  {
    case 1:
      v6 = sqlite3_column_int64(a2, iCol);
      v7 = MEMORY[0x1E69E7360];
      v8 = &off_1F58C4E70;
      goto LABEL_9;
    case 2:
      v11 = sqlite3_column_double(a2, iCol);
      *(a3 + 24) = MEMORY[0x1E69E63B0];
      *(a3 + 32) = &off_1F58C4E58;
      *a3 = v11;
      return;
    case 3:
      if (!sqlite3_column_text(a2, iCol))
      {
        goto LABEL_14;
      }

      v9 = sub_1DD63FF78();
      *(a3 + 24) = MEMORY[0x1E69E6158];
      *(a3 + 32) = &off_1F58C4E78;
      *a3 = v9;
      *(a3 + 8) = v10;
      return;
    case 4:
      v6 = sub_1DD5D3E4C(iCol, a2);
      v7 = &type metadata for Blob;
      v8 = &off_1F58C4EA0;
LABEL_9:
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      *a3 = v6;
      break;
    case 5:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      break;
    default:
      goto LABEL_15;
  }
}

uint64_t sub_1DD5D3CCC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  v6 = sqlite3_step(*(a1 + 16));
  result = sub_1DD40597C(v6, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t sub_1DD5D3D38@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1DD5D2CC8();

  *a1 = v3;
  return result;
}

void sub_1DD5D3DFC(void *a1@<X8>)
{
  v3 = *v1;
  sub_1DD5D2EEC();
  *a1 = v4;
}

uint64_t sub_1DD5D3E4C(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  v4 = sqlite3_column_blob(a2, iCol);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a2, v2);

  return sub_1DD3D4184(v5, v6);
}

uint64_t sub_1DD5D3EE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF868, &qword_1DD661390);
  result = swift_allocObject();
  *(result + 16) = sub_1DD5D4970;
  *(result + 24) = v5;
  return result;
}

double sub_1DD5D3F84@<D0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8 >= a3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_1DD644510;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v8 + 1;
    sub_1DD5D3AF8(v8, a2, a4);
  }

  return result;
}

uint64_t sub_1DD5D4030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5D3EE8(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_1DD5D405C()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_14_23();
}

uint64_t sub_1DD5D4074(uint64_t a1, uint64_t a2)
{
  result = sub_1DD5D5388(&qword_1ECCDF860, a2, type metadata accessor for Statement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DD5D4114()
{
  sub_1DD5D3268(0);
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    sub_1DD5D2E58();
    v4 = v3;
    if (!v3)
    {
      v15 = v1[3];
      if (v15 >= 2)
      {
        v16 = v15 >> 1;
        v14 = __OFSUB__(v16, v0);
        v17 = v16 - v0;
        if (v14)
        {
          goto LABEL_25;
        }

        v1[2] = v17;
      }

      return v1;
    }

    if (!v0)
    {
      v5 = v1[3];
      if (((v5 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF870, &qword_1DD661398);
      v8 = swift_allocObject();
      v9 = (_swift_stdlib_malloc_size(v8) - 32) / 8;
      v8[2] = v7;
      v8[3] = 2 * v9;
      v10 = (v8 + 4);
      v11 = v1[3];
      v12 = v11 >> 1;
      if (v1[2])
      {
        if (v8 != v1 || v10 >= &v1[v12 + 4])
        {
          memmove(v8 + 4, v1 + 4, 8 * v12);
        }

        v1[2] = 0;
      }

      i = (v10 + 8 * v12);
      v0 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - (v11 >> 1);

      v1 = v8;
    }

    v14 = __OFSUB__(v0--, 1);
    if (v14)
    {
      break;
    }

    *i = v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1DD5D4290(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);

  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      sub_1DD5D3AF8(v7, a1, v29);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = v18 + 40 * v20;
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      *(v9 + 32) = v30;
      *v9 = v23;
      *(v9 + 16) = v24;
      v9 += 40;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

void sub_1DD5D4474()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = 0;
  v12 = 0;
  v45 = v13;
  v43 = *(v13 + 80);
  v14 = MEMORY[0x1E69E7CC0];
  v44 = (v43 + 32) & ~v43;
  v15 = MEMORY[0x1E69E7CC0] + v44;
  v16 = *(v1 + 16);
  v41 = v16;
  v42 = &v40 - v9;
  while (1)
  {
    if (v16 == v12)
    {
      v37 = v14[3];
      if (v37 >= 2)
      {
        v38 = v37 >> 1;
        v36 = __OFSUB__(v38, v11);
        v39 = v38 - v11;
        if (v36)
        {
          goto LABEL_35;
        }

        v14[2] = v39;
      }

      OUTLINED_FUNCTION_17();
      return;
    }

    v17 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
    v18 = v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v12;
    v19 = *(v2 + 48);
    *v7 = v12;
    sub_1DD3CD140(v18, v7 + v19);
    sub_1DD5D5A38(v7, v10);
    if (v11)
    {
      v20 = v14;
    }

    else
    {
      v21 = v14[3];
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v22 = v2;
      v23 = v1;
      v24 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAC0, &unk_1DD649FC0);
      v26 = v44;
      v27 = *(v45 + 72);
      v20 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v20);
      if (!v27)
      {
        goto LABEL_33;
      }

      v29 = v28 - v26;
      if (v28 - v26 == 0x8000000000000000 && v27 == -1)
      {
        goto LABEL_34;
      }

      v31 = v29 / v27;
      v20[2] = v25;
      v20[3] = 2 * (v29 / v27);
      v32 = v20 + v26;
      v33 = v14[3];
      v34 = (v33 >> 1) * v27;
      if (v14[2])
      {
        if (v20 < v14 || v32 >= v14 + v44 + v34)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      v15 = &v32[v34];
      v11 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - (v33 >> 1);

      v1 = v23;
      v2 = v22;
      v16 = v41;
      v10 = v42;
    }

    v36 = __OFSUB__(v11--, 1);
    if (v36)
    {
      break;
    }

    sub_1DD5D5A38(v10, v15);
    v15 += *(v45 + 72);
    ++v12;
    v14 = v20;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_1DD5D4754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF868, &qword_1DD661390);
  result = swift_allocObject();
  v13 = result;
  result[2] = sub_1DD5D5AAC;
  result[3] = v11;
  if (!a2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_8:
    v14 = a3;
LABEL_11:
    *a1 = v13;
    return v14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v16 = v13[3];
      result = (v13[2])(&v19);
      if (*(&v20 + 1) == 1)
      {
        sub_1DD3ADFD0(&v19, &qword_1ECCDF878, &unk_1DD6613A0);
        goto LABEL_11;
      }

      v17 = v20;
      v22 = v19;
      v23 = v20;
      v18 = v21;
      v24 = v21;
      *a2 = v19;
      *(a2 + 16) = v17;
      *(a2 + 32) = v18;
      a2 += 40;
      ++v14;
      if (v15 == a3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5D48B0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1DD5D3268(0);
  v7 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_1DD5D2E58();
        if (!v9)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v7++) = v9;
        if (v8 == a3)
        {
          v7 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_9:
    *a1 = v3;
    return v7;
  }

  return result;
}

void sub_1DD5D497C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 64;
  v6 = *(a4 + 64);
  v8 = -1 << *(a4 + 32);
  OUTLINED_FUNCTION_5_84();
  v14 = v13 & v12;
  if (!v9)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_18:
    *a1 = a4;
    a1[1] = v7;
    a1[2] = ~v11;
    a1[3] = v17;
    a1[4] = v14;
    return;
  }

  v15 = v10;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_18;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v16 = v9;
    OUTLINED_FUNCTION_4_89();
    v31 = v19;
    v21 = (v20 - v19) >> 6;
    while (1)
    {
      if (v18 >= v15)
      {
        goto LABEL_21;
      }

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

      if (!v14)
      {
        while (1)
        {
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v14 = 0;
            goto LABEL_16;
          }

          v14 = *(v7 + 8 * v23);
          ++v17;
          if (v14)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v23 = v17;
LABEL_12:
      OUTLINED_FUNCTION_20_34();
      v25 = *(a4 + 56) + 40 * (v24 | (v23 << 6));
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v30 = *(v25 + 32);
      *v16 = v26;
      *(v16 + 8) = v27;
      *(v16 + 16) = v28;
      *(v16 + 24) = v29;
      *(v16 + 32) = v30;
      if (v22 == v15)
      {
        break;
      }

      v16 += 40;

      v18 = v22;
      v17 = v23;
    }

    v17 = v23;
LABEL_16:
    v11 = v31;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1DD5D4AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 56);
  v5 = *(a4 + 32);
  OUTLINED_FUNCTION_11_49();
  if (!v10)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if (!v7)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v6, v7, v8, v9);
    return;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (!__OFADD__(v15, 1))
    {
      if (!v12)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v7 = v15;
            goto LABEL_15;
          }

          ++v13;
          if (*(v9 + 8 * v16))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_18_37(v6, v11, v7, v8);
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4BBC()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138(v3, v4, v5, v6);
  if (!v8)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v14);
    OUTLINED_FUNCTION_17();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v11 < v9)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v12 = v10;
      OUTLINED_FUNCTION_8_69();
      if (v13)
      {

        v14 = v12;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4C98()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v46 = OUTLINED_FUNCTION_0(v9);
  v47 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v37 - v15;
  v16 = *(v1 + 56);
  v43 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_5_84();
  v20 = v19 & v18;
  if (!v5)
  {
    v22 = 0;
LABEL_19:
    v36 = ~v43;
    *v7 = v1;
    v7[1] = v17;
    v7[2] = v36;
    v7[3] = v22;
    v7[4] = v20;
    OUTLINED_FUNCTION_17();
    return;
  }

  if (!v3)
  {
    v22 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v38 = v7;
    v39 = v17;
    OUTLINED_FUNCTION_4_89();
    v25 = (v24 - v43) >> 6;
    v40 = v47 + 32;
    v41 = v47 + 16;
    v42 = v21;
    while (v23 < v21)
    {
      if (__OFADD__(v23, 1))
      {
        goto LABEL_23;
      }

      if (!v20)
      {
        v17 = v39;
        while (1)
        {
          v26 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v26 >= v25)
          {
            v20 = 0;
            v7 = v38;
            goto LABEL_19;
          }

          v20 = *(v39 + 8 * v26);
          ++v22;
          if (v20)
          {
            v48 = v23 + 1;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v48 = v23 + 1;
      v26 = v22;
LABEL_14:
      OUTLINED_FUNCTION_19_36();
      v28 = v1;
      v29 = *(v1 + 48);
      v31 = v46;
      v30 = v47;
      v32 = *(v47 + 72);
      v33 = v45;
      (*(v47 + 16))(v45, v29 + v32 * (v27 | (v26 << 6)), v46);
      v34 = *(v30 + 32);
      v35 = v44;
      v34(v44, v33, v31);
      v34(v5, v35, v31);
      v21 = v42;
      v23 = v48;
      if (v48 == v42)
      {
        v22 = v26;
        v7 = v38;
        v17 = v39;
        v1 = v28;
        goto LABEL_19;
      }

      v5 += v32;
      v22 = v26;
      v1 = v28;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4EFC()
{
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + 56);
  v4 = -1 << *(v2 + 32);
  OUTLINED_FUNCTION_5_84();
  v8 = v7 & v6;
  if (!v9)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v15);
    OUTLINED_FUNCTION_17();
    return;
  }

  v10 = v5;
  if (!v5)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v1)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v13 = v11;
      OUTLINED_FUNCTION_8_69();
      if (v14)
      {

        v15 = v13;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 56);
  v5 = *(a4 + 32);
  OUTLINED_FUNCTION_11_49();
  if (!v10)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if (!v7)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v6, v7, v8, v9);
    return;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (!v12)
      {
        while (1)
        {
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            v7 = v15;
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v17);
          ++v13;
          if (v12)
          {
            v13 = v17;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      *v11++ = *(*(v8 + 48) + (v18 | (v13 << 6)));
      v15 = v16;
      if (v16 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}