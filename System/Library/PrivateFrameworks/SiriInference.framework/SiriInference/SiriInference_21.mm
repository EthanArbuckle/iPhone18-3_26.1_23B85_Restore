uint64_t sub_1DD50209C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 696) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 712) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 712) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t _s9QualifierOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Location.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD502320()
{
  result = qword_1ECCDE1F8;
  if (!qword_1ECCDE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE1F8);
  }

  return result;
}

unint64_t sub_1DD502378()
{
  result = qword_1ECCDE200;
  if (!qword_1ECCDE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE200);
  }

  return result;
}

unint64_t sub_1DD5023D0()
{
  result = qword_1ECCDE208;
  if (!qword_1ECCDE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE208);
  }

  return result;
}

void OUTLINED_FUNCTION_3_55()
{
  *(v0 + 180) = 5;
  *(v0 + 116) = 1024;
  *(v0 + 88) = 3;
  *(v0 + 92) = 2;
  *(v0 + 104) = 1;
  *(v0 + 96) = 1;
  *(v0 + 84) = 2;
}

uint64_t OUTLINED_FUNCTION_11_37@<X0>(unint64_t a1@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>)
{
  *a2 = a3;
  a2[1].n128_u64[0] = a1;
}

void OUTLINED_FUNCTION_13_32(_DWORD *a1@<X8>)
{
  *a1 = *(v2 + 3152);
  *(v2 + 2924) = *(v1 + 17);
  *(v2 + 2928) = *(v2 + 272);
  *(v2 + 2936) = *(v2 + 96);
  v3 = *(v2 + 256);
  *(v2 + 2944) = *(v2 + 264);
  *(v2 + 2952) = v3;
  v4 = *(v2 + 240);
  *(v2 + 2960) = *(v2 + 248);
  *(v2 + 2968) = v4;
  v5 = *(v2 + 224);
  *(v2 + 2976) = *(v2 + 232);
  *(v2 + 2984) = v5;
  *(v2 + 2992) = *(v2 + 208);
  v6 = *(v2 + 184);
  *(v2 + 3000) = *(v2 + 192);
  *(v2 + 3008) = v6;
  *(v2 + 3016) = *(v2 + 116);
  *(v2 + 3018) = *(v2 + 84);
  *(v2 + 3024) = *(v2 + 120);
  *(v2 + 3032) = *(v2 + 136);
  *(v2 + 3040) = *(v2 + 152);
}

void OUTLINED_FUNCTION_19_25()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 68);
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t a1)
{

  return sub_1DD4FDD00(a1, &STACK[0x2A0], v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_20(uint64_t a1, uint64_t a2)
{

  return sub_1DD4FDD00(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_28_10(uint64_t a1@<X8>)
{
  *(v1 + 3056) = a1;
  *(v1 + 3064) = *(v1 + 128);
  *(v1 + 3072) = *(v1 + 144);
  *(v1 + 3080) = *(v1 + 156);
}

double OUTLINED_FUNCTION_30_13()
{
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  *(v0 + 504) = 0;
  return result;
}

void *OUTLINED_FUNCTION_37_15(void *a1)
{

  return memcpy(a1, &STACK[0x8D0], 0x106uLL);
}

void OUTLINED_FUNCTION_39_12(__n128 a1, __n128 a2)
{
  v2[32] = a2;
  v2[33] = a1;
  v2[34] = a1;
  v2[35] = a1;
  v2[36] = a1;
  v2[37].n128_u64[0] = 0;
}

void OUTLINED_FUNCTION_40_8()
{
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 156) = 0;
  *(v0 + 144) = 0;
  *(v0 + 128) = 0;
}

void OUTLINED_FUNCTION_42_10(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 3136);
  *a1 = *(v1 + 3132);
  *(v1 + 3110) = v2;
}

uint64_t OUTLINED_FUNCTION_43_13()
{

  return sub_1DD3AD738(0, 0);
}

uint64_t OUTLINED_FUNCTION_44_13()
{
  v2 = v0[117];
  v3 = v0[118];
  v4 = v0[119];
  v5 = v0[120];

  return sub_1DD3AD738(v2, v3);
}

SiriInference::LocationName::Prefix_optional __swiftcall LocationName.Prefix.init(rawValue:)(Swift::String rawValue)
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

uint64_t LocationName.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 28271;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7369206572656877;
  }
}

uint64_t sub_1DD5027C4@<X0>(uint64_t *a1@<X8>)
{
  result = LocationName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LocationName.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static LocationName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 3 && (v2 == 3);
    if (v2 != 3 && v3 != 3)
    {

      return sub_1DD3B13E8(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD502974(uint64_t a1)
{
  v2 = sub_1DD502D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5029B0(uint64_t a1)
{
  v2 = sub_1DD502D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE210, &qword_1DD656628);
  v5 = OUTLINED_FUNCTION_0(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD502D78();
  sub_1DD640EF8();
  v20 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_1DD502DCC();
    sub_1DD640C08();
  }

  return (*(v16 + 8))(v10, v4);
}

uint64_t LocationName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE228, &qword_1DD656630);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD502D78();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD502E20();
  sub_1DD640B18();
  v13 = OUTLINED_FUNCTION_41();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD502D78()
{
  result = qword_1ECCDE218;
  if (!qword_1ECCDE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE218);
  }

  return result;
}

unint64_t sub_1DD502DCC()
{
  result = qword_1ECCDE220;
  if (!qword_1ECCDE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE220);
  }

  return result;
}

unint64_t sub_1DD502E20()
{
  result = qword_1ECCDE230;
  if (!qword_1ECCDE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE230);
  }

  return result;
}

unint64_t sub_1DD502E78()
{
  result = qword_1ECCDE238;
  if (!qword_1ECCDE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE238);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationName.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LocationName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD503098()
{
  result = qword_1ECCDE240;
  if (!qword_1ECCDE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE240);
  }

  return result;
}

unint64_t sub_1DD5030F0()
{
  result = qword_1ECCDE248;
  if (!qword_1ECCDE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE248);
  }

  return result;
}

unint64_t sub_1DD503148()
{
  result = qword_1ECCDE250;
  if (!qword_1ECCDE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE250);
  }

  return result;
}

unint64_t sub_1DD50319C()
{
  result = qword_1ECCDE258;
  if (!qword_1ECCDE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE258);
  }

  return result;
}

uint64_t LocationResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:latitude:longitude:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v16 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v16);
  v18 = *(v17 + 32);
  v18(a9, a1, v16);
  v19 = type metadata accessor for LocationResolutionContext();
  v18(a9 + v19[5], a2, v16);
  v18(a9 + v19[6], a3, v16);
  v20 = v19[7];
  v21 = sub_1DD63D328();
  OUTLINED_FUNCTION_7(v21);
  result = (*(v22 + 32))(a9 + v20, a4);
  v24 = a9 + v19[8];
  *v24 = a5;
  *(v24 + 8) = a6 & 1;
  v25 = a9 + v19[9];
  *v25 = a7;
  *(v25 + 8) = a8 & 1;
  return result;
}

uint64_t type metadata accessor for LocationResolutionContext()
{
  result = qword_1EE161450;
  if (!qword_1EE161450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD503388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F466E6F69676572 && a2 == 0xEC00000074616D72;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001DD66D670 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD640CD8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD50358C(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
      result = 0x6F466E6F69676572;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    case 4:
      result = 0x656475746974616CLL;
      break;
    case 5:
      result = 0x64757469676E6F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD503650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD503388(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD503678(uint64_t a1)
{
  v2 = sub_1DD503964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5036B4(uint64_t a1)
{
  v2 = sub_1DD503964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationResolutionContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE260, &qword_1DD656910);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD503964();
  sub_1DD640EF8();
  v35 = 0;
  sub_1DD63D168();
  OUTLINED_FUNCTION_1_76();
  sub_1DD503FEC(v14, v15);
  OUTLINED_FUNCTION_4_52();
  if (!v2)
  {
    v16 = type metadata accessor for LocationResolutionContext();
    v17 = v16[5];
    v34 = 1;
    OUTLINED_FUNCTION_4_52();
    v18 = v16[6];
    v33 = 2;
    OUTLINED_FUNCTION_4_52();
    v19 = v16[7];
    v32 = 3;
    sub_1DD63D328();
    OUTLINED_FUNCTION_2_66();
    sub_1DD503FEC(v20, v21);
    sub_1DD640C68();
    v22 = (v3 + v16[8]);
    v23 = *v22;
    v24 = *(v22 + 8);
    v31 = 4;
    sub_1DD640BE8();
    v25 = (v3 + v16[9]);
    v26 = *v25;
    v27 = *(v25 + 8);
    v30 = 5;
    sub_1DD640BE8();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1DD503964()
{
  result = qword_1ECCDE268;
  if (!qword_1ECCDE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE268);
  }

  return result;
}

uint64_t LocationResolutionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1DD63D328();
  v4 = OUTLINED_FUNCTION_0(v3);
  v58 = v5;
  v59 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD63D168();
  v11 = OUTLINED_FUNCTION_0(v10);
  v66 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE270, &qword_1DD656918);
  v24 = OUTLINED_FUNCTION_0(v23);
  v60 = v25;
  v61 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v56 - v28;
  v62 = type metadata accessor for LocationResolutionContext();
  v30 = OUTLINED_FUNCTION_7(v62);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v67 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v34 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1DD503964();
  v63 = v29;
  v36 = v64;
  sub_1DD640ED8();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v64 = v9;
  v73 = 0;
  OUTLINED_FUNCTION_1_76();
  sub_1DD503FEC(v37, v38);
  OUTLINED_FUNCTION_3_56();
  v39 = v67;
  v56 = *(v66 + 32);
  v56(v67, v22, v10);
  v72 = 1;
  v40 = v19;
  OUTLINED_FUNCTION_3_56();
  v41 = v62;
  v56(&v39[v62[5]], v40, v10);
  v71 = 2;
  OUTLINED_FUNCTION_3_56();
  v56(&v67[v41[6]], v16, v10);
  v70 = 3;
  OUTLINED_FUNCTION_2_66();
  sub_1DD503FEC(v42, v43);
  v44 = v64;
  v45 = v59;
  sub_1DD640B78();
  v46 = v67;
  (*(v58 + 32))(&v67[v41[7]], v44, v45);
  v69 = 4;
  v47 = sub_1DD640AF8();
  v48 = v60;
  v49 = v46 + v41[8];
  *v49 = v47;
  *(v49 + 8) = v50 & 1;
  v68 = 5;
  v51 = sub_1DD640AF8();
  v53 = v52;
  (*(v48 + 8))(v63, v61);
  v54 = v46 + v41[9];
  *v54 = v51;
  *(v54 + 8) = v53 & 1;
  sub_1DD504034(v46, v57);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return sub_1DD504098(v46);
}

uint64_t sub_1DD503FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD504034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationResolutionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD504098(uint64_t a1)
{
  v2 = type metadata accessor for LocationResolutionContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DD50414C()
{
  sub_1DD63D168();
  if (v0 <= 0x3F)
  {
    sub_1DD63D328();
    if (v1 <= 0x3F)
    {
      sub_1DD5041F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD5041F0()
{
  if (!qword_1EE160260)
  {
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160260);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LocationResolutionContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD504320()
{
  result = qword_1ECCDE278;
  if (!qword_1ECCDE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE278);
  }

  return result;
}

unint64_t sub_1DD504378()
{
  result = qword_1ECCDE280;
  if (!qword_1ECCDE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE280);
  }

  return result;
}

unint64_t sub_1DD5043D0()
{
  result = qword_1ECCDE288;
  if (!qword_1ECCDE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE288);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_56()
{
  v2 = *(v0 - 120);

  return sub_1DD640B78();
}

_BYTE *storeEnumTagSinglePayload for LocationResolutionInfo(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD5044F8(uint64_t a1)
{
  v2 = sub_1DD504684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD504534(uint64_t a1)
{
  v2 = sub_1DD504684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationResolutionSpec.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE290, &qword_1DD656AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD504684();
  sub_1DD640EF8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DD504684()
{
  result = qword_1ECCDE298;
  if (!qword_1ECCDE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationResolutionSpec(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5047F0()
{
  result = qword_1ECCDE2A0;
  if (!qword_1ECCDE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE2A0);
  }

  return result;
}

unint64_t sub_1DD504848()
{
  result = qword_1ECCDE2A8;
  if (!qword_1ECCDE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE2A8);
  }

  return result;
}

void sub_1DD50489C()
{
  OUTLINED_FUNCTION_93();
  v51 = v1;
  v52 = v0;
  v49 = v4;
  v50 = v3;
  v43 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCB8, &unk_1DD64AEF0);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v44 = sub_1DD63F728();
  v17 = OUTLINED_FUNCTION_0(v44);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v42 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880);
  OUTLINED_FUNCTION_3(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17_30();
  v28 = sub_1DD63D0F8();
  v29 = OUTLINED_FUNCTION_0(v28);
  v47 = v30;
  v48 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v35 = v34 - v33;
  sub_1DD63D0E8();
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    v45 = sub_1DD63F738();
  }

  else
  {
    v45 = 0;
  }

  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    sub_1DD63F758();

    v36 = v44;
    if (__swift_getEnumTagSinglePayload(v2, 1, v44))
    {
      sub_1DD390754(v2, &qword_1ECCDCD68, &qword_1DD64B880);
    }

    else
    {
      v37 = v42;
      (*(v19 + 16))(v42, v2, v36);
      sub_1DD390754(v2, &qword_1ECCDCD68, &qword_1DD64B880);
      sub_1DD63F718();
      (*(v19 + 8))(v37, v36);
    }
  }

  sub_1DD5AC168();

  v38 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v39 = v46;
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v38);
  sub_1DD5ACB80();
  v40 = sub_1DD390754(v39, &qword_1ECCDCCB8, &unk_1DD64AEF0);
  v41 = v51;
  v50(v53, v40);
  if (v41)
  {
    sub_1DD5AD0AC();
    OUTLINED_FUNCTION_24_17();

    swift_willThrow();
    sub_1DD390754(v16, &qword_1ECCDBAC8, &qword_1DD643E60);
    (*(v47 + 8))(v35, v48);
  }

  else
  {
    sub_1DD5AD088();
    OUTLINED_FUNCTION_24_17();

    sub_1DD390754(v16, &qword_1ECCDBAC8, &qword_1DD643E60);
    (*(v47 + 8))(v35, v48);
    memcpy(v43, v53, 0x2C9uLL);
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD504CCC()
{
  OUTLINED_FUNCTION_93();
  v49 = v1;
  v50 = v0;
  v47 = v5;
  v48 = v4;
  v43 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCB8, &unk_1DD64AEF0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_25();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_30();
  v15 = sub_1DD63F728();
  v16 = OUTLINED_FUNCTION_0(v15);
  v42 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v41 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  v46 = sub_1DD63D0F8();
  v28 = OUTLINED_FUNCTION_0(v46);
  v45 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  sub_1DD63D0E8();
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    v44 = sub_1DD63F738();
  }

  else
  {
    v44 = 0;
  }

  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    sub_1DD63F758();

    if (__swift_getEnumTagSinglePayload(v27, 1, v15))
    {
      sub_1DD390754(v27, &qword_1ECCDCD68, &qword_1DD64B880);
    }

    else
    {
      v32 = v42;
      v33 = v41;
      (*(v42 + 16))(v41, v27, v15);
      sub_1DD390754(v27, &qword_1ECCDCD68, &qword_1DD64B880);
      sub_1DD63F718();
      (*(v32 + 8))(v33, v15);
    }
  }

  sub_1DD5AC168();

  v34 = type metadata accessor for PrivatizedContactResolverConfig(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v34);
  sub_1DD5ACB80();
  v35 = sub_1DD390754(v3, &qword_1ECCDCCB8, &unk_1DD64AEF0);
  v36 = v49;
  v48(v51, v35);
  if (v36)
  {
    sub_1DD5AD0AC();
    OUTLINED_FUNCTION_23_24();

    swift_willThrow();
    sub_1DD390754(v2, &qword_1ECCDBAC8, &qword_1DD643E60);
    v37 = OUTLINED_FUNCTION_14_32();
    v38(v37);
  }

  else
  {
    sub_1DD5AD088();
    OUTLINED_FUNCTION_23_24();

    sub_1DD390754(v2, &qword_1ECCDBAC8, &qword_1DD643E60);
    v39 = OUTLINED_FUNCTION_14_32();
    v40(v39);
    memcpy(v43, v51, 0x81uLL);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t static LocationResolver.name.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_1ECCDE2B0 = a1;
  *(&xmmword_1ECCDE2B0 + 1) = a2;
  byte_1ECCDE2C0 = a3;
  return result;
}

double sub_1DD505208@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1ECCDE2C0;
  result = *&xmmword_1ECCDE2B0;
  *a1 = xmmword_1ECCDE2B0;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1DD50525C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_1ECCDE2B0 = v1;
  *(&xmmword_1ECCDE2B0 + 1) = v2;
  byte_1ECCDE2C0 = v3;
  return result;
}

void LocationResolver.findMatches(value:context:spec:)()
{
  OUTLINED_FUNCTION_93();
  v79 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ContactResolverConfig(0);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20_25();
  v82 = type metadata accessor for ContactResolverCache();
  v10 = OUTLINED_FUNCTION_7(v82);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v89 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v76 - v15);
  v17 = type metadata accessor for LocationResolutionContext();
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v81 = v22 - v21;
  OUTLINED_FUNCTION_6_2();
  v23 = type metadata accessor for LocationSuggestionGenerator();
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  memcpy(v88, v5, 0x2C8uLL);
  v30 = sub_1DD50776C();
  if (qword_1ECCDB0B8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v31 = sub_1DD63F9F8();
  __swift_project_value_buffer(v31, qword_1ECD0DDA8);
  v32 = sub_1DD63F9D8();
  v33 = sub_1DD640368();
  v34 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_54();
    v80 = v29;
    v37 = v36;
    v38 = swift_slowAlloc();
    v78 = v1;
    v76 = v38;
    v86[0] = v38;
    *v37 = 136315138;
    v39 = v30;
    if (v30)
    {
      v40 = 0x73757361676570;
    }

    else
    {
      v40 = 0x74696B70616DLL;
    }

    v77 = v16;
    if (v30)
    {
      v41 = 0xE700000000000000;
    }

    else
    {
      v41 = 0xE600000000000000;
    }

    v42 = v23;
    v43 = v3;
    v44 = sub_1DD39565C(v40, v41, v86);
    v16 = v77;

    *(v37 + 4) = v44;
    v3 = v43;
    v23 = v42;
    v30 = v39;
    _os_log_impl(&dword_1DD38D000, v32, v33, "Using search strategy: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    v29 = v80;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  OUTLINED_FUNCTION_6_51();
  v45 = v81;
  sub_1DD5071C0(v3, v81, v46);
  if (v30)
  {
    v47 = type metadata accessor for PegasusKitLocationSearchProvider();
    v48 = swift_allocObject();
    v49 = &off_1F58BCB50;
  }

  else
  {
    v48 = swift_allocObject();
    *(v48 + 40) = &type metadata for MapKitLocationSearchProvider.Executor;
    *(v48 + 48) = &off_1F58BB068;
    v49 = &off_1F58BB078;
    v47 = &type metadata for MapKitLocationSearchProvider;
  }

  v86[4] = v49;
  v86[3] = v47;
  v86[0] = v48;
  v50 = [objc_allocWithZone(MEMORY[0x1E695FBC8]) init];
  v51 = sub_1DD39638C(0, &qword_1ECCDE2C8, 0x1E695FBC8);
  v84[4] = &off_1F58AFA48;
  v84[3] = v51;
  v84[0] = v50;
  v52 = sub_1DD39638C(0, &qword_1EE1638B8, 0x1E695CE18);
  v53 = sub_1DD40105C();
  v83[3] = v52;
  v83[4] = &off_1F58B1EB8;
  v83[0] = v53;
  OUTLINED_FUNCTION_6_51();
  sub_1DD5071C0(v45, v29, v54);
  sub_1DD3C2388(v86, v29 + v23[6]);
  sub_1DD3C2388(v84, v29 + v23[7]);
  sub_1DD3C2388(v83, v29 + v23[8]);
  sub_1DD447E80(v16);
  __swift_assign_boxed_opaque_existential_1((v16 + *(v82 + 32)), v83);
  sub_1DD5071C0(v16, v89, type metadata accessor for ContactResolverCache);
  sub_1DD4511A4();
  v55 = v29 + v23[9];
  sub_1DD3ED110();
  sub_1DD50723C(v45, type metadata accessor for LocationResolutionContext);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v86);
  sub_1DD50723C(v16, type metadata accessor for ContactResolverCache);
  v56 = dispatch_group_create();
  OUTLINED_FUNCTION_57();
  v57 = swift_allocObject();
  v58 = MEMORY[0x1E69E7CC0];
  *(v57 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_57();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  dispatch_group_enter(v56);

  v60 = v56;
  sub_1DD508CFC(v88);
  sub_1DD640418();
  swift_beginAccess();
  v61 = *(v59 + 16);
  if (v61)
  {
    swift_willThrow();
    v62 = v61;

    OUTLINED_FUNCTION_3_57();
    sub_1DD50723C(v29, v63);
  }

  else
  {
    v90 = v60;
    swift_beginAccess();
    v64 = *(v57 + 16);
    v65 = *(v64 + 16);
    if (v65)
    {
      v81 = v59;
      v82 = v57;
      v80 = v29;
      v87 = v58;

      sub_1DD42BDC0(0, v65, 0);
      v66 = v87;
      v67 = v65 - 1;
      for (i = 32; ; i += 712)
      {
        memcpy(v84, (v64 + i), sizeof(v84));
        memcpy(v86, (v64 + i), sizeof(v86));
        sub_1DD472DF8(v84, v83);
        v87 = v66;
        v70 = *(v66 + 16);
        v69 = *(v66 + 24);
        if (v70 >= v69 >> 1)
        {
          v73 = OUTLINED_FUNCTION_1_0(v69);
          sub_1DD42BDC0(v73, v70 + 1, 1);
          v66 = v87;
        }

        *(v66 + 16) = v70 + 1;
        v71 = v66 + 728 * v70;
        memcpy((v71 + 32), v86, 0x2C8uLL);
        *(v71 + 744) = 0;
        v72 = *&v85[3];
        *(v71 + 745) = *v85;
        *(v71 + 748) = v72;
        *(v71 + 752) = 1;
        if (!v67)
        {
          break;
        }

        --v67;
      }

      OUTLINED_FUNCTION_3_57();
      sub_1DD50723C(v80, v74);
    }

    else
    {

      OUTLINED_FUNCTION_3_57();
      sub_1DD50723C(v29, v75);
    }
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD505984(void *a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    swift_beginAccess();
    v8 = *(a4 + 16);
    *(a4 + 16) = a1;
    v9 = a1;
  }

  else
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(a5);
}

void LocationResolver.makeRecommendation(value:context:spec:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = sub_1DD640478();
  v4 = OUTLINED_FUNCTION_0(v3);
  v22 = v5;
  v23 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v21 = v9 - v8;
  OUTLINED_FUNCTION_6_2();
  v10 = sub_1DD640438();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = sub_1DD63FBD8();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_30();
  v18 = type metadata accessor for SELFLoggingService();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20_25();
  memcpy(v24, v2, sizeof(v24));
  sub_1DD63F178();
  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FB98();
  sub_1DD507448(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8090], v23);
  *(v0 + *(v19 + 28)) = sub_1DD6404A8();
  sub_1DD50489C();
  sub_1DD50723C(v0, type metadata accessor for SELFLoggingService);
  OUTLINED_FUNCTION_86();
}

void sub_1DD505D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  LocationResolver.findMatches(value:context:spec:)();
  if (!v20)
  {
    sub_1DD505EF0();

    memcpy(__dst, __src, 0x2C9uLL);
    if (qword_1ECCDB0B8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v25 = sub_1DD63F9F8();
    __swift_project_value_buffer(v25, qword_1ECD0DDA8);
    sub_1DD3DD9B4(__dst, __src, &qword_1ECCDE318, &unk_1DD656C60);
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640368();
    sub_1DD390754(__dst, &qword_1ECCDE318, &unk_1DD656C60);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_54();
      v29 = swift_slowAlloc();
      a10 = v29;
      *v28 = 136315138;
      sub_1DD3DD9B4(__dst, __src, &qword_1ECCDE318, &unk_1DD656C60);
      v30 = sub_1DD4A8310();
      v32 = v31;
      sub_1DD390754(__dst, &qword_1ECCDE318, &unk_1DD656C60);
      v33 = sub_1DD39565C(v30, v32, &a10);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1DD38D000, v26, v27, "Location recommendation: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    memcpy(v24, __dst, 0x2C9uLL);
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD505EF0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __dst[3] = &type metadata for LocationFeatures;
  __dst[4] = sub_1DD50769C();
  v6 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v7 = *(v3 + 16);
  if (v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      __src[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_22_22();
      v8 = __src[0];
      v9 = (v3 + 32);
      do
      {
        memcpy(__dst, v9, 0x2D8uLL);
        sub_1DD3DD9B4(__dst, v30, &qword_1ECCDCB08, &qword_1DD64A030);
        __src[0] = v8;
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          v12 = OUTLINED_FUNCTION_1_0(v10);
          sub_1DD42BDE0(v12, v11 + 1, 1);
          v8 = __src[0];
        }

        *(v8 + 16) = v11 + 1;
        memcpy((v8 + 712 * v11 + 32), __dst, 0x2C8uLL);
        v9 += 728;
        --v7;
      }

      while (v7);
      v1 = v0;
    }

    sub_1DD506260();
    if (!v1)
    {
      v17 = v16;
      if (qword_1ECCDB0B8 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v18 = sub_1DD63F9F8();
      __swift_project_value_buffer(v18, qword_1ECD0DDA8);

      v19 = sub_1DD63F9D8();
      v20 = sub_1DD640368();
      v21 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_54();
        *v23 = 134217984;
        *(v23 + 4) = *(v17 + 16);

        _os_log_impl(&dword_1DD38D000, v19, v20, "Location resolver found %ld matches", v23, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      sub_1DD506BE4(v8, v17, v5);
    }
  }

  else
  {
    v13 = v7 - 1;
    if (v7 == 1)
    {
      memcpy(__dst, (v3 + 32), 0x2D8uLL);
      memcpy(__src, (v3 + 32), 0x2C8uLL);
      sub_1DD472E6C(__src);
      memcpy(v5, __src, 0x2C9uLL);
      sub_1DD3DD9B4(__dst, v30, &qword_1ECCDCB08, &qword_1DD64A030);
    }

    else
    {
      if (v7)
      {
        v32 = v5;
        __src[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_22_22();
        v24 = __src[0];
        for (i = (v3 + 32); ; i += 728)
        {
          memcpy(__dst, i, 0x2D8uLL);
          sub_1DD3DD9B4(__dst, v30, &qword_1ECCDCB08, &qword_1DD64A030);
          __src[0] = v24;
          v27 = *(v24 + 16);
          v26 = *(v24 + 24);
          if (v27 >= v26 >> 1)
          {
            v28 = OUTLINED_FUNCTION_1_0(v26);
            sub_1DD42BDE0(v28, v27 + 1, 1);
            v24 = __src[0];
          }

          *(v24 + 16) = v27 + 1;
          memcpy((v24 + 712 * v27 + 32), __dst, 0x2C8uLL);
          if (!v13)
          {
            break;
          }

          --v13;
        }

        v30[0] = v24;
        sub_1DD472E54(v30);
        v14 = v30;
        v15 = v32;
      }

      else
      {
        sub_1DD472DC8(__dst);
        v14 = __dst;
        v15 = v5;
      }

      memcpy(v15, v14, 0x2C9uLL);
    }
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD506260()
{
  OUTLINED_FUNCTION_93();
  v131 = v2;
  v119 = sub_1DD63F2B8();
  v3 = OUTLINED_FUNCTION_0(v119);
  v130 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v129 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v108 - v9;
  OUTLINED_FUNCTION_6_2();
  v117 = sub_1DD63F148();
  v10 = OUTLINED_FUNCTION_0(v117);
  v126 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v116 = v15 - v14;
  OUTLINED_FUNCTION_6_2();
  v127 = sub_1DD63F028();
  v16 = OUTLINED_FUNCTION_0(v127);
  v125 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  v120 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v108 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v108 - v25;
  v27 = sub_1DD63F0C8();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20_25();
  v33 = sub_1DD63F308();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2();
  v41 = v40 - v39;
  (*(v30 + 104))(v1, *MEMORY[0x1E69D29C8], v27);
  sub_1DD63F2C8();
  v128 = v0;
  if (v0)
  {
    (*(v30 + 8))(v1, v27);
    goto LABEL_37;
  }

  v114 = v26;
  v115 = v41;
  v121 = v36;
  v122 = v33;
  v112 = v23;
  (*(v30 + 8))(v1, v27);
  v43 = v131[2];
  if (v43)
  {
    v44 = v131 + 4;
    ++v125;
    v45 = v129;
    v110 = (v126 + 8);
    v126 = MEMORY[0x1E69E7CC0];
    *&v42 = 136315138;
    v108 = v42;
    v46 = v116;
    v47 = v120;
    v48 = v121;
    v49 = v122;
    v111 = (v130 + 8);
    while (1)
    {
      v135 = v43;
      memcpy(v134, v44, 0x2C8uLL);
      v131 = v44;
      memcpy(v133, v44, sizeof(v133));
      sub_1DD472DF8(v134, &v132);
      v50 = Location.toCLPlacemark()();
      if (v50)
      {
        v130 = v50;
        v51 = sub_1DD640328();
        v53 = v52;
        v54 = HIBYTE(v52) & 0xF;
        if ((v52 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          v55 = v51;
          sub_1DD63F018();
          v56 = v112;
          v113 = v55;
          v123 = v53;
          sub_1DD63EFE8();
          v57 = *v125;
          v58 = v46;
          v59 = v127;
          (*v125)(v47, v127);
          sub_1DD63F008();
          v124 = v57;
          v57(v56, v59);
          v60 = v111;
          sub_1DD63F2A8();
          v61 = v118;
          sub_1DD63F238();
          v62 = v45;
          v63 = *v60;
          v64 = v61;
          v65 = v119;
          (*v60)(v62, v119);
          v66 = v115;
          v67 = v128;
          sub_1DD63F218();
          if (v67)
          {

            sub_1DD501A90(v134);

            v63(v64, v65);
            v124(v114, v127);
            (*(v121 + 8))(v66, v122);

            goto LABEL_37;
          }

          v128 = 0;
          v63(v64, v65);
          v68 = sub_1DD63F128();
          if (!v68)
          {
            v47 = v120;
            v92 = v123;
            if (qword_1ECCDB0B8 != -1)
            {
              OUTLINED_FUNCTION_0_8();
              swift_once();
            }

            v93 = sub_1DD63F9F8();
            __swift_project_value_buffer(v93, qword_1ECD0DDA8);

            v94 = sub_1DD63F9D8();
            v95 = sub_1DD640378();

            v96 = os_log_type_enabled(v94, v95);
            v97 = v114;
            if (v96)
            {
              v98 = OUTLINED_FUNCTION_54();
              v109 = v94;
              v99 = v98;
              v100 = swift_slowAlloc();
              v133[0] = v100;
              *v99 = v108;
              v101 = sub_1DD39565C(v113, v92, v133);

              *(v99 + 4) = v101;
              v102 = v95;
              v103 = v109;
              _os_log_impl(&dword_1DD38D000, v109, v102, "No stats found for location entity %s", v99, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v100);
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();

              sub_1DD501A90(v134);
            }

            else
            {

              sub_1DD501A90(v134);
            }

            v104 = v116;
            (*v110)(v116, v117);
            v124(v97, v127);
            v48 = v121;
            v49 = v122;
            v91 = v131;
            v46 = v104;
            goto LABEL_27;
          }

          v69 = v68;
          v46 = v58;

          v70 = v126;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v120;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v105 = *(v70 + 16);
            sub_1DD3C0420();
            v70 = v106;
          }

          v72 = v117;
          v73 = v114;
          v75 = *(v70 + 16);
          v74 = *(v70 + 24);
          v126 = v70;
          if (v75 >= v74 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v74);
            sub_1DD3C0420();
            v126 = v107;
          }

          memcpy(v133, v134, sizeof(v133));
          (*v110)(v46, v72);
          v124(v73, v127);
          v76 = v126;
          *(v126 + 16) = v75 + 1;
          v77 = v76 + 720 * v75;
          memcpy((v77 + 32), v133, 0x2C8uLL);
          *(v77 + 744) = v69;
          v48 = v121;
          v49 = v122;
        }

        else
        {

          if (qword_1ECCDB0B8 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v84 = sub_1DD63F9F8();
          __swift_project_value_buffer(v84, qword_1ECD0DDA8);
          v85 = sub_1DD63F9D8();
          v86 = sub_1DD640378();
          v87 = OUTLINED_FUNCTION_27_5();
          v89 = os_log_type_enabled(v87, v88);
          v48 = v121;
          if (v89)
          {
            OUTLINED_FUNCTION_28();
            v90 = swift_slowAlloc();
            *v90 = 0;
            _os_log_impl(&dword_1DD38D000, v85, v86, "Placemark has no memorable UUID", v90, 2u);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          sub_1DD501A90(v134);
          v49 = v122;
        }
      }

      else
      {
        if (qword_1ECCDB0B8 != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v78 = sub_1DD63F9F8();
        __swift_project_value_buffer(v78, qword_1ECD0DDA8);
        v79 = sub_1DD63F9D8();
        v80 = sub_1DD640378();
        v81 = OUTLINED_FUNCTION_27_5();
        if (os_log_type_enabled(v81, v82))
        {
          OUTLINED_FUNCTION_28();
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_1DD38D000, v79, v80, "Could not convert match to a placemark", v83, 2u);
          v46 = v116;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        sub_1DD501A90(v134);
      }

      v91 = v131;
LABEL_27:
      v44 = v91 + 89;
      v43 = v135 - 1;
      v45 = v129;
      if (v135 == 1)
      {
        goto LABEL_36;
      }
    }
  }

  v126 = MEMORY[0x1E69E7CC0];
  v48 = v121;
  v49 = v122;
LABEL_36:
  (*(v48 + 8))(v115, v49);
LABEL_37:
  OUTLINED_FUNCTION_86();
}

void *sub_1DD506BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    if (qword_1ECCDB0B8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1ECD0DDA8);
    v20 = sub_1DD63F9D8();
    sub_1DD640378();
    v21 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_28();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v23, v24, "No matches found for location recommendation");
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    sub_1DD472DC8(__dst);
    v25 = __dst;
    return memcpy(a3, v25, 0x2C9uLL);
  }

  if (*(a2 + 16) == 1)
  {
    memcpy(__dst, (a2 + 32), sizeof(__dst));
    v4 = OUTLINED_FUNCTION_8_44();
    if (v8 < 2)
    {
      sub_1DD3DD9B4(v4, v5, v6, v7);
      v34 = OUTLINED_FUNCTION_8_44();
      sub_1DD3DD9B4(v34, v35, v36, v37);
      if (qword_1ECCDB0B8 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v38 = sub_1DD63F9F8();
      __swift_project_value_buffer(v38, qword_1ECD0DDA8);
      v39 = sub_1DD63F9D8();
      sub_1DD640368();
      v40 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_28();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v42, v43, "Location recommendation needs confirmation with location");
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      sub_1DD390754(__dst, &qword_1ECCDBE98, &unk_1DD656C70);

      memcpy(v44, __dst, 0x2C8uLL);
      sub_1DD472E60(v44);
    }

    else
    {
      sub_1DD3DD9B4(v4, v5, v6, v7);
      v9 = OUTLINED_FUNCTION_8_44();
      sub_1DD3DD9B4(v9, v10, v11, v12);
      if (qword_1ECCDB0B8 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v13 = sub_1DD63F9F8();
      __swift_project_value_buffer(v13, qword_1ECD0DDA8);
      v14 = sub_1DD63F9D8();
      sub_1DD640368();
      v15 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v15, v16))
      {
        OUTLINED_FUNCTION_28();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v17, v18, "Location recommendation confident with location");
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      sub_1DD390754(__dst, &qword_1ECCDBE98, &unk_1DD656C70);

      memcpy(v44, __dst, 0x2C8uLL);
      sub_1DD472E6C(v44);
    }

    v25 = v44;
    return memcpy(a3, v25, 0x2C9uLL);
  }

  if (qword_1ECCDB0B8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v27 = sub_1DD63F9F8();
  __swift_project_value_buffer(v27, qword_1ECD0DDA8);
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640368();
  v30 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_28();
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DD38D000, v28, v29, "Location recommendation needs disambiguation with locations", v32, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  __dst[0] = a1;
  sub_1DD472E54(__dst);
  memcpy(a3, __dst, 0x2C9uLL);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1DD5071C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD50723C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD507294(uint64_t a1)
{
  result = sub_1DD5072BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD5072BC()
{
  result = qword_1ECCDE2D0;
  if (!qword_1ECCDE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE2D0);
  }

  return result;
}

unint64_t sub_1DD507310()
{
  result = qword_1ECCDE2D8;
  if (!qword_1ECCDE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE2D8);
  }

  return result;
}

unint64_t sub_1DD507364()
{
  result = qword_1ECCDE2E0;
  if (!qword_1ECCDE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE2E0);
  }

  return result;
}

uint64_t sub_1DD507448(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD507494()
{
  result = qword_1ECCDE2F8;
  if (!qword_1ECCDE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE2F8);
  }

  return result;
}

unint64_t sub_1DD5074EC()
{
  result = qword_1ECCDE300;
  if (!qword_1ECCDE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE300);
  }

  return result;
}

unint64_t sub_1DD507544()
{
  result = qword_1ECCDE308;
  if (!qword_1ECCDE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE308);
  }

  return result;
}

unint64_t sub_1DD50759C()
{
  result = qword_1ECCDE310;
  if (!qword_1ECCDE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE310);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationResolver(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD50769C()
{
  result = qword_1ECCDE320;
  if (!qword_1ECCDE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE320);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_32()
{
  v2 = *(*(v1 - 272) + 8);
  result = v0;
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_22()
{

  return sub_1DD42BDE0(0, v0, 0);
}

void OUTLINED_FUNCTION_24_17()
{
  v5 = *(v0 + 80);

  sub_1DD5A6BDC(v2, v3, v1);
}

uint64_t sub_1DD50776C()
{
  v0 = sub_1DD63FDA8();
  v1 = sub_1DD63FDA8();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2 || (v27[2] = v2, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ECCDB0B8 != -1)
    {
      OUTLINED_FUNCTION_0_101();
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1ECD0DDA8);
    v13 = sub_1DD63F9D8();
    v14 = sub_1DD640368();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = OUTLINED_FUNCTION_1_77(v16);
      _os_log_impl(&dword_1DD38D000, v13, v14, "no value found in CFPreferences, using default: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_13;
  }

  v4 = v27[0];
  v3 = v27[1];

  v5 = sub_1DD507BC8();
  if (v5 == 2)
  {
    if (qword_1ECCDB0B8 != -1)
    {
      OUTLINED_FUNCTION_0_101();
    }

    v6 = sub_1DD63F9F8();
    __swift_project_value_buffer(v6, qword_1ECD0DDA8);

    v7 = sub_1DD63F9D8();
    v8 = sub_1DD640368();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_1DD39565C(v4, v3, v27);

      *(v9 + 4) = v10;
      *(v9 + 12) = 2080;
      *(v9 + 14) = OUTLINED_FUNCTION_1_77(v11);
      _os_log_impl(&dword_1DD38D000, v7, v8, "invalid search strategy value %s, using default: %s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }

LABEL_13:
    v17 = 1;
    return v17 & 1;
  }

  v17 = v5;
  if (qword_1ECCDB0B8 != -1)
  {
    OUTLINED_FUNCTION_0_101();
  }

  v19 = sub_1DD63F9F8();
  __swift_project_value_buffer(v19, qword_1ECD0DDA8);

  v20 = sub_1DD63F9D8();
  v21 = sub_1DD640368();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = sub_1DD39565C(v4, v3, v27);

    *(v22 + 4) = v23;
    *(v22 + 12) = 2080;
    if (v17)
    {
      v24 = 0x73757361676570;
    }

    else
    {
      v24 = 0x74696B70616DLL;
    }

    if (v17)
    {
      v25 = 0xE700000000000000;
    }

    else
    {
      v25 = 0xE600000000000000;
    }

    v26 = sub_1DD39565C(v24, v25, v27);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_1DD38D000, v20, v21, "found value %s, using: %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  return v17 & 1;
}

uint64_t sub_1DD507BC8()
{
  v0 = sub_1DD640AA8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD507C78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD507D48(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x726F7272457369;
  }
}

uint64_t sub_1DD507D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD507C78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD507DA8(uint64_t a1)
{
  v2 = sub_1DD507F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD507DE4(uint64_t a1)
{
  v2 = sub_1DD507F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationSignalSet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE328, &qword_1DD656CC0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = *(v1 + 1);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD507F88();
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

unint64_t sub_1DD507F88()
{
  result = qword_1ECCDE330;
  if (!qword_1ECCDE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE330);
  }

  return result;
}

uint64_t LocationSignalSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE338, qword_1DD656CC8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD507F88();
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

unint64_t sub_1DD508188()
{
  result = qword_1ECCDE340;
  if (!qword_1ECCDE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE340);
  }

  return result;
}

unint64_t sub_1DD5081DC(void *a1)
{
  a1[2] = sub_1DD507494();
  a1[3] = sub_1DD5074EC();
  result = sub_1DD508188();
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MegadomeECRTrialFactors(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for MegadomeECRTrialFactors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationSignalSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5083C4()
{
  result = qword_1ECCDE348;
  if (!qword_1ECCDE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE348);
  }

  return result;
}

unint64_t sub_1DD50841C()
{
  result = qword_1ECCDE350;
  if (!qword_1ECCDE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE350);
  }

  return result;
}

unint64_t sub_1DD508474()
{
  result = qword_1ECCDE358;
  if (!qword_1ECCDE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE358);
  }

  return result;
}

uint64_t LocationSlotResolutionTask.init(query:context:spec:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(a3 + 5, __src, 0x2C8uLL);
  v5 = type metadata accessor for LocationSlotResolutionTask();
  result = sub_1DD508574(a2, a3 + *(v5 + 24));
  a3[3] = &type metadata for LocationResolver;
  a3[4] = &off_1F58BA960;
  return result;
}

uint64_t type metadata accessor for LocationSlotResolutionTask()
{
  result = qword_1ECCDE360;
  if (!qword_1ECCDE360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD508574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationResolutionContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *LocationSlotResolutionTask.run(withAlreadyResolvedSlots:)@<X0>(void *a1@<X8>)
{
  v2 = sub_1DD640478();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v27 = v5 - v4;
  v6 = sub_1DD640438();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v8 = sub_1DD63FBD8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2();
  v10 = type metadata accessor for SELFLoggingService();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  memcpy(v34, v1 + 5, sizeof(v34));
  v26 = v1 + *(type metadata accessor for LocationSlotResolutionTask() + 24);
  sub_1DD63F178();
  sub_1DD406E2C();
  sub_1DD63FB98();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DD3FAC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  *(v15 + *(v11 + 28)) = sub_1DD6404A8();
  sub_1DD50489C();
  result = sub_1DD4A562C(v15);
  if (!v30)
  {
    memcpy(v33, v32, 0x2C9uLL);
    if (qword_1ECCDB0B8 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1ECD0DDA8);
    sub_1DD508A24(v33, v32);
    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640368();
    sub_1DD508A94(v33);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136315138;
      v22 = sub_1DD4A8310();
      v24 = sub_1DD39565C(v22, v23, v32);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DD38D000, v18, v19, "Location recommendations: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
    }

    sub_1DD472784(v31);
    sub_1DD508A94(v33);
    return memcpy(a1, v31, 0x2C9uLL);
  }

  return result;
}

uint64_t sub_1DD508A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE318, &unk_1DD656C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD508A94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE318, &unk_1DD656C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD508B24()
{
  result = sub_1DD508BB8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationResolutionContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD508BB8()
{
  result = qword_1ECCDE370;
  if (!qword_1ECCDE370)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECCDE370);
  }

  return result;
}

uint64_t sub_1DD508C14()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE3C8, &qword_1DD6570D0);
  sub_1DD640488();
  return v3;
}

uint64_t sub_1DD508C88()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE3C0, &qword_1DD6570C8);
  sub_1DD640488();
  return v3;
}

void sub_1DD508CFC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v140 = v7;
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v4;
  v10[4] = v2;
  memcpy(__dst, v9, 0x2C8uLL);
  v11 = qword_1ECCDB0B8;
  v143 = v6;
  swift_retain_n();
  v142 = v4;
  swift_retain_n();
  v12 = v2;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1ECD0DDA8);
  OUTLINED_FUNCTION_16_33();
  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();
  sub_1DD501A90(__dst);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_54();
    v17 = OUTLINED_FUNCTION_62();
    *v147 = v17;
    *v16 = 136315138;
    OUTLINED_FUNCTION_2_67();
    v18 = sub_1DD4FCFD4();
    v20 = sub_1DD39565C(v18, v19, v147);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1DD38D000, v14, v15, "searching for location: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_16_33();
  v21 = sub_1DD63F9D8();
  v22 = sub_1DD640368();
  sub_1DD501A90(__dst);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_54();
    v24 = OUTLINED_FUNCTION_62();
    *v146 = v24;
    *v23 = 136315138;
    memcpy(__src, &__dst[120], 0x106uLL);
    OUTLINED_FUNCTION_9_40(__src);
    if (v25 || (memcpy(v147, &__src[7], 0xCEuLL), OUTLINED_FUNCTION_9_40(v147), v25) || !*&v147[8])
    {
      v26 = 9;
    }

    else
    {
      v26 = v147[16];
    }

    v147[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE3A0, &unk_1DD657090);
    v27 = sub_1DD63FE38();
    v29 = sub_1DD39565C(v27, v28, v146);

    *(v23 + 4) = v29;
    OUTLINED_FUNCTION_15_31(&dword_1DD38D000, v30, v31, "boundedValue: %s");
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_16_33();
  v32 = sub_1DD63F9D8();
  v33 = sub_1DD640368();
  sub_1DD501A90(__dst);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_54();
    v35 = OUTLINED_FUNCTION_62();
    __src[0] = v35;
    *v34 = 136315138;
    v147[0] = __dst[688];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE398, &qword_1DD657088);
    v36 = sub_1DD63FE38();
    v38 = sub_1DD39565C(v36, v37, __src);

    *(v34 + 4) = v38;
    OUTLINED_FUNCTION_15_31(&dword_1DD38D000, v39, v40, "event: %s");
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_0_1();
  }

  memcpy(v149, &__dst[120], 0x106uLL);
  OUTLINED_FUNCTION_9_40(v149);
  if (v25 || (memcpy(v148, &v149[56], 0xCEuLL), OUTLINED_FUNCTION_9_40(v148), v25) || !v148[1])
  {
LABEL_18:
    v41 = (v140 + *(type metadata accessor for LocationSuggestionGenerator() + 24));
    v42 = v41[3];
    v43 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v42);
    *&v147[24] = &type metadata for Location;
    *&v147[32] = &off_1F58BA420;
    *v147 = swift_allocObject();
    memcpy((*v147 + 16), __dst, 0x2C8uLL);
    v44 = *(v43 + 8);
    OUTLINED_FUNCTION_16_33();
    v44(v147, v140, sub_1DD50DA38, v10, v42, v43);
    __swift_destroy_boxed_opaque_existential_1(v147);
  }

  else
  {
    switch(LOBYTE(v148[2]))
    {
      case 1:
        v65 = sub_1DD63F9D8();
        v66 = sub_1DD640368();
        if (OUTLINED_FUNCTION_4_53(v66))
        {
          v67 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v67);
          OUTLINED_FUNCTION_1_78(&dword_1DD38D000, v68, v69, "searching for work address");
          OUTLINED_FUNCTION_23_0();
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_9_40(v147);
        v64 = v142;
        if (v25 || (OUTLINED_FUNCTION_6_52(), OUTLINED_FUNCTION_9_40(v146), v25) || !*&v146[8] && !*&v146[32] && !*&v146[56] && !*&v146[80] && !*&v146[104])
        {
          OUTLINED_FUNCTION_2_67();
          v70 = 1;
          goto LABEL_86;
        }

        v99 = OUTLINED_FUNCTION_2_67();
        OUTLINED_FUNCTION_5_57(v99, v100, v101, v102, v103, v104, v105, v106, v140);
        v107 = 1;
        goto LABEL_95;
      case 2:
        v45 = sub_1DD63F9D8();
        v46 = sub_1DD640368();
        if (OUTLINED_FUNCTION_4_53(v46))
        {
          v47 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v47);
          OUTLINED_FUNCTION_1_78(&dword_1DD38D000, v48, v49, "providing current location");
          OUTLINED_FUNCTION_23_0();
        }

        OUTLINED_FUNCTION_2_67();
        v147[0] = 2;

        sub_1DD509E5C(__src, v147, v140, v143, v142, v12);
        goto LABEL_88;
      case 3:
      case 9:
        goto LABEL_18;
      case 4:
        v76 = sub_1DD63F9D8();
        v77 = sub_1DD640368();
        if (OUTLINED_FUNCTION_4_53(v77))
        {
          v78 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v78);
          OUTLINED_FUNCTION_1_78(&dword_1DD38D000, v79, v80, "searching for school address");
          OUTLINED_FUNCTION_23_0();
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_9_40(v147);
        v64 = v142;
        if (v25 || (OUTLINED_FUNCTION_6_52(), OUTLINED_FUNCTION_9_40(v146), v25) || !*&v146[8] && !*&v146[32] && !*&v146[56] && !*&v146[80] && !*&v146[104])
        {
          OUTLINED_FUNCTION_2_67();
          v70 = 4;
          goto LABEL_86;
        }

        v116 = OUTLINED_FUNCTION_2_67();
        OUTLINED_FUNCTION_5_57(v116, v117, v118, v119, v120, v121, v122, v123, v140);
        v107 = 4;
        goto LABEL_95;
      case 5:
        v81 = sub_1DD63F9D8();
        v82 = sub_1DD640368();
        if (OUTLINED_FUNCTION_4_53(v82))
        {
          v83 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v83);
          OUTLINED_FUNCTION_1_78(&dword_1DD38D000, v84, v85, "searching for gym address");
          OUTLINED_FUNCTION_23_0();
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_9_40(v147);
        v64 = v142;
        if (v25 || (OUTLINED_FUNCTION_6_52(), OUTLINED_FUNCTION_9_40(v146), v25) || !*&v146[8] && !*&v146[32] && !*&v146[56] && !*&v146[80] && !*&v146[104])
        {
          OUTLINED_FUNCTION_2_67();
          v70 = 5;
          goto LABEL_86;
        }

        v124 = OUTLINED_FUNCTION_2_67();
        OUTLINED_FUNCTION_5_57(v124, v125, v126, v127, v128, v129, v130, v131, v140);
        v107 = 5;
        goto LABEL_95;
      case 6:
        v71 = sub_1DD63F9D8();
        v72 = sub_1DD640368();
        if (OUTLINED_FUNCTION_4_53(v72))
        {
          v73 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v73);
          OUTLINED_FUNCTION_1_78(&dword_1DD38D000, v74, v75, "searching for other address");
          OUTLINED_FUNCTION_23_0();
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_9_40(v147);
        v64 = v142;
        if (v25 || (OUTLINED_FUNCTION_6_52(), OUTLINED_FUNCTION_9_40(v146), v25) || !*&v146[8] && !*&v146[32] && !*&v146[56] && !*&v146[80] && !*&v146[104])
        {
          OUTLINED_FUNCTION_2_67();
          v70 = 6;
          goto LABEL_86;
        }

        v108 = OUTLINED_FUNCTION_2_67();
        OUTLINED_FUNCTION_5_57(v108, v109, v110, v111, v112, v113, v114, v115, v140);
        v107 = 6;
        goto LABEL_95;
      case 7:
        v86 = sub_1DD63F9D8();
        v87 = sub_1DD640368();
        if (OUTLINED_FUNCTION_4_53(v87))
        {
          v88 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v88);
          OUTLINED_FUNCTION_1_78(&dword_1DD38D000, v89, v90, "searching for any address");
          OUTLINED_FUNCTION_23_0();
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_9_40(v147);
        v64 = v142;
        if (v25 || (OUTLINED_FUNCTION_6_52(), OUTLINED_FUNCTION_9_40(v146), v25) || !*&v146[8] && !*&v146[32] && !*&v146[56] && !*&v146[80] && !*&v146[104])
        {
          OUTLINED_FUNCTION_2_67();
          v70 = 7;
LABEL_86:
          v146[0] = v70;
          goto LABEL_87;
        }

        v132 = OUTLINED_FUNCTION_2_67();
        OUTLINED_FUNCTION_5_57(v132, v133, v134, v135, v136, v137, v138, v139, v140);
        v107 = 7;
LABEL_95:
        LOBYTE(v144[0]) = v107;
        goto LABEL_96;
      case 8:
        memcpy(v147, __dst, sizeof(v147));
        v147[689] = 1;
        OUTLINED_FUNCTION_18_28(__src);
        sub_1DD472DF8(__dst, v146);
        sub_1DD472DF8(__src, v146);
        v50 = sub_1DD63F9D8();
        v51 = sub_1DD640368();
        sub_1DD501A90(__src);
        if (os_log_type_enabled(v50, v51))
        {
          v52 = OUTLINED_FUNCTION_54();
          v53 = OUTLINED_FUNCTION_62();
          v144[0] = v53;
          *v52 = 136315138;
          memcpy(v146, __src, sizeof(v146));
          sub_1DD472DF8(__src, v145);
          v54 = sub_1DD63FE38();
          v56 = sub_1DD39565C(v54, v55, v144);

          *(v52 + 4) = v56;
          _os_log_impl(&dword_1DD38D000, v50, v51, "resolving value to car: %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE0, &qword_1DD657080);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1DD643F90;
        swift_beginAccess();
        OUTLINED_FUNCTION_18_28(v145);
        OUTLINED_FUNCTION_18_28((v57 + 32));
        swift_beginAccess();
        v58 = *(v143 + 16);
        *(v143 + 16) = v57;
        sub_1DD472DF8(v145, v146);

        dispatch_group_leave(v12);

        OUTLINED_FUNCTION_18_28(v146);
        sub_1DD501A90(v146);
        goto LABEL_88;
      default:
        v59 = sub_1DD63F9D8();
        v60 = sub_1DD640368();
        if (OUTLINED_FUNCTION_4_53(v60))
        {
          v61 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v61);
          OUTLINED_FUNCTION_1_78(&dword_1DD38D000, v62, v63, "searching for home address");
          OUTLINED_FUNCTION_23_0();
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_9_40(v147);
        v64 = v142;
        if (!v25 && (OUTLINED_FUNCTION_6_52(), OUTLINED_FUNCTION_9_40(v146), !v25) && (*&v146[8] || *&v146[32] || *&v146[56] || *&v146[80] || *&v146[104]))
        {
          v91 = OUTLINED_FUNCTION_2_67();
          OUTLINED_FUNCTION_5_57(v91, v92, v93, v94, v95, v96, v97, v98, v140);
          LOBYTE(v144[0]) = 0;
LABEL_96:

          sub_1DD50AA3C(__src, v145, v144, v141, v143, v64, v12);
        }

        else
        {
          OUTLINED_FUNCTION_2_67();
          v146[0] = 0;
LABEL_87:

          sub_1DD50C328(__src, v146, v140, v143, v64, v12);
        }

LABEL_88:

        break;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13SiriInference08LocationB5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DD5098D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
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

uint64_t sub_1DD509910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD509958(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t type metadata accessor for LocationSuggestionGenerator()
{
  result = qword_1ECCDE378;
  if (!qword_1ECCDE378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5099F8()
{
  result = type metadata accessor for LocationResolutionContext();
  if (v1 <= 0x3F)
  {
    result = sub_1DD3E7F48(319, &qword_1ECCDE388);
    if (v2 <= 0x3F)
    {
      result = sub_1DD3E7F48(319, &qword_1ECCDE390);
      if (v3 <= 0x3F)
      {
        result = sub_1DD3E7F48(319, &qword_1EE163290);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CandidateContactGenerator(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DD509AFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD656F00;
  v1 = *MEMORY[0x1E695C258];
  v2 = *MEMORY[0x1E695C300];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C240];
  v4 = *MEMORY[0x1E695C2F0];
  *(v0 + 48) = *MEMORY[0x1E695C240];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C230];
  v6 = *MEMORY[0x1E695C308];
  *(v0 + 64) = *MEMORY[0x1E695C230];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C310];
  v53 = *MEMORY[0x1E695C348];
  v8 = *MEMORY[0x1E695C348];
  *(v0 + 80) = *MEMORY[0x1E695C310];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C350];
  v10 = *MEMORY[0x1E695C340];
  *(v0 + 96) = *MEMORY[0x1E695C350];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E695C358];
  v56 = *MEMORY[0x1E695C338];
  v12 = *MEMORY[0x1E695C338];
  *(v0 + 112) = *MEMORY[0x1E695C358];
  *(v0 + 120) = v12;
  v52 = *MEMORY[0x1E695C400];
  v59 = *MEMORY[0x1E695C360];
  v13 = *MEMORY[0x1E695C360];
  *(v0 + 128) = *MEMORY[0x1E695C400];
  *(v0 + 136) = v13;
  v14 = *MEMORY[0x1E695C3A8];
  v58 = *MEMORY[0x1E695C278];
  v15 = *MEMORY[0x1E695C278];
  *(v0 + 144) = *MEMORY[0x1E695C3A8];
  *(v0 + 152) = v15;
  v54 = *MEMORY[0x1E695C270];
  v61 = *MEMORY[0x1E695C390];
  v16 = *MEMORY[0x1E695C390];
  *(v0 + 160) = *MEMORY[0x1E695C270];
  *(v0 + 168) = v16;
  v57 = *MEMORY[0x1E695C208];
  v64 = *MEMORY[0x1E695C330];
  v17 = *MEMORY[0x1E695C330];
  *(v0 + 176) = *MEMORY[0x1E695C208];
  *(v0 + 184) = v17;
  v55 = *MEMORY[0x1E695C328];
  v63 = *MEMORY[0x1E695C1F8];
  v18 = *MEMORY[0x1E695C1F8];
  *(v0 + 192) = *MEMORY[0x1E695C328];
  *(v0 + 200) = v18;
  v60 = *MEMORY[0x1E695C2C8];
  v65 = *MEMORY[0x1E695C1D0];
  v19 = *MEMORY[0x1E695C1D0];
  *(v0 + 208) = *MEMORY[0x1E695C2C8];
  *(v0 + 216) = v19;
  v62 = *MEMORY[0x1E695C318];
  v20 = *MEMORY[0x1E695C410];
  v66 = *MEMORY[0x1E695C410];
  *(v0 + 224) = *MEMORY[0x1E695C318];
  *(v0 + 232) = v20;
  v68 = v0;
  v67 = *MEMORY[0x1E695C3A0];
  v21 = v1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v53;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v56;
  v33 = v52;
  v34 = v59;
  v35 = v14;
  v36 = v58;
  v37 = v54;
  v38 = v61;
  v39 = v57;
  v40 = v64;
  v41 = v55;
  v42 = v63;
  v43 = v60;
  v44 = v65;
  v45 = v62;
  v46 = v66;
  v47 = v67;
  MEMORY[0x1E12B23F0]();
  OUTLINED_FUNCTION_7_42();
  if (v48)
  {
    OUTLINED_FUNCTION_11_38();
  }

  OUTLINED_FUNCTION_14_9();
  sub_1DD640168();
  v49 = *MEMORY[0x1E695C398];
  MEMORY[0x1E12B23F0]();
  OUTLINED_FUNCTION_7_42();
  if (v48)
  {
    OUTLINED_FUNCTION_11_38();
  }

  OUTLINED_FUNCTION_14_9();
  sub_1DD640168();
  v50 = *MEMORY[0x1E695C210];
  MEMORY[0x1E12B23F0]();
  OUTLINED_FUNCTION_7_42();
  if (v48)
  {
    OUTLINED_FUNCTION_11_38();
  }

  OUTLINED_FUNCTION_14_9();
  sub_1DD640168();
  return v68;
}

uint64_t sub_1DD509E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v11 = type metadata accessor for LocationResolutionContext();
  v12 = a3 + *(v11 + 32);
  if (*(v12 + 8) & 1) != 0 || (v13 = a3 + *(v11 + 36), (*(v13 + 8)))
  {
    v14 = qword_1ECCDB0B8;

    v15 = a6;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1ECD0DDA8);
    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640378();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DD38D000, v17, v18, "Unable to identify current longitude and latitude from context object", v19, 2u);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }

    sub_1DD50DA48();
    v20 = swift_allocError();
    *v21 = 2;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 5;
    swift_beginAccess();
    v22 = *(a5 + 16);
    *(a5 + 16) = v20;
    v23 = v20;

    dispatch_group_leave(v15);
  }

  else
  {
    v24 = *v12;
    v25 = *v13;
    v26 = qword_1ECCDB0B8;

    v27 = a6;
    if (v26 != -1)
    {
      swift_once();
    }

    v42 = a6;
    v28 = sub_1DD63F9F8();
    __swift_project_value_buffer(v28, qword_1ECD0DDA8);
    v29 = sub_1DD63F9D8();
    v30 = sub_1DD640368();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DD38D000, v29, v30, "Successfully extracted latitude and longitude values", v31, 2u);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
    }

    v32 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v24 longitude:v25];
    v33 = (a3 + *(type metadata accessor for LocationSuggestionGenerator() + 28));
    v34 = v33[3];
    v35 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1DD50DEFC;
    *(v36 + 24) = v10;
    v37 = *(v35 + 16);

    v37(v32, sub_1DD50DED8, v36, v34, v35);

    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640368();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DD38D000, v38, v39, "Completed reverse geocoding.", v40, 2u);
      MEMORY[0x1E12B3DA0](v40, -1, -1);
    }

    a6 = v42;
  }
}

void sub_1DD50A27C(uint64_t a1, id a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    if (qword_1ECCDB0B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD63F9F8();
    __swift_project_value_buffer(v7, qword_1ECD0DDA8);
    v8 = a2;
    v9 = sub_1DD63F9D8();
    v10 = sub_1DD640378();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      __src[0] = v12;
      *v11 = 136315138;
      __dst[0] = a2;
      v13 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v14 = sub_1DD63FE38();
      v16 = sub_1DD39565C(v14, v15, __src);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1DD38D000, v9, v10, "Unable to reverse geocode current user location. error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12B3DA0](v12, -1, -1);
      MEMORY[0x1E12B3DA0](v11, -1, -1);
    }

    sub_1DD50DA48();
    v17 = swift_allocError();
    *v18 = 3;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 5;
    a3(v17, 1);

    return;
  }

  if (a1)
  {
    v50 = a4;
    if (qword_1ECCDB0B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1ECD0DDA8);

    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();

    v51 = a3;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      __src[0] = v23;
      *v22 = 136315138;
      v24 = sub_1DD3AB354();
      v25 = MEMORY[0x1E12B2430](a1, v24);
      v27 = sub_1DD39565C(v25, v26, __src);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1DD38D000, v20, v21, "got placemarks: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    v28 = sub_1DD3CC020(a1);
    if (!v28)
    {
      v32 = MEMORY[0x1E69E7CC0];
LABEL_35:

      v47 = sub_1DD63F9D8();
      v48 = sub_1DD640368();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = v32[2];

        _os_log_impl(&dword_1DD38D000, v47, v48, "Reverse geocoded %ld placemarks.", v49, 0xCu);
        MEMORY[0x1E12B3DA0](v49, -1, -1);
      }

      else
      {
      }

      v51(v32, 0);

      return;
    }

    v29 = v28;
    if (v28 >= 1)
    {
      v30 = 0;
      v31 = a1 & 0xC000000000000001;
      v32 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v31)
        {
          v33 = MEMORY[0x1E12B2C10](v30, a1);
        }

        else
        {
          v33 = *(a1 + 8 * v30 + 32);
        }

        v34 = v33;
        if ([v33 _geoMapItem])
        {
          v35 = swift_unknownObjectRetain();
          sub_1DD4FDE9C(v35, __src);
          memcpy(__dst, __src, sizeof(__dst));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v32[2];
            sub_1DD3C0504();
            v32 = v39;
          }

          v37 = v32[2];
          if (v37 >= v32[3] >> 1)
          {
            sub_1DD3C0504();
            v32 = v40;
          }

          swift_unknownObjectRelease();

          v32[2] = v37 + 1;
          memcpy(&v32[89 * v37 + 4], __dst, 0x2C8uLL);
          v31 = a1 & 0xC000000000000001;
        }

        else
        {
        }

        ++v30;
      }

      while (v29 != v30);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (qword_1ECCDB0B8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v41 = sub_1DD63F9F8();
  __swift_project_value_buffer(v41, qword_1ECD0DDA8);
  v42 = sub_1DD63F9D8();
  v43 = sub_1DD640378();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1DD38D000, v42, v43, "Unable to extract placemarks from location object.", v44, 2u);
    MEMORY[0x1E12B3DA0](v44, -1, -1);
  }

  sub_1DD50DA48();
  v45 = swift_allocError();
  *v46 = 3;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = 5;
  a3(v45, 1);
}

uint64_t sub_1DD50AA3C(uint64_t a1, const void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v216 = a7;
  v217 = a6;
  v215 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (&v205 - v14);
  v16 = type metadata accessor for Signpost();
  v235 = *(v16 - 8);
  v236 = v16;
  v17 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v233 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v232 = &v205 - v20;
  v21 = sub_1DD63FB58();
  v213 = *(v21 - 8);
  v214 = v21;
  v22 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v210 = (&v205 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1DD63FC18();
  v211 = *(v24 - 8);
  v212 = v24;
  v25 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v208 = &v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v209 = &v205 - v28;
  v29 = type metadata accessor for ContactResolverConfig(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v205 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = *(a1 + 688);
  v230 = *(a1 + 689);
  memcpy(v247, a2, 0xA6uLL);
  v244 = *a3;
  sub_1DD53EEB8(v248);
  v237 = type metadata accessor for LocationSuggestionGenerator();
  v33 = v237[9];
  sub_1DD4511A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
  v34 = swift_allocObject();
  v229 = xmmword_1DD643F90;
  *(v34 + 16) = xmmword_1DD643F90;
  memcpy((v34 + 32), v248, 0x108uLL);
  sub_1DD3C9478(v248, v247);
  v238 = a4;
  v35 = 0;
  sub_1DD3EE620();
  v37 = v36;
  sub_1DD50DBE0(v32, type metadata accessor for ContactResolverConfig);
  swift_setDeallocating();
  sub_1DD46CBB4();
  if (*(v37 + 16) != 1)
  {
    goto LABEL_39;
  }

  v38 = *(v37 + 32);

  v39 = *(v38 + 16);
  if (v39)
  {
    v245 = 0;
    v247[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4();
    v40 = v247[0];
    v41 = *(v12 + 80);
    v243 = v38;
    v42 = v38 + ((v41 + 32) & ~v41);
    v43 = *(v12 + 72);
    do
    {
      sub_1DD3C68F8(v42, v15);
      v45 = *v15;
      v44 = v15[1];

      sub_1DD3D40D8(v15, &qword_1ECCDBBE8, &qword_1DD644470);
      v247[0] = v40;
      v46 = *(v40 + 16);
      if (v46 >= *(v40 + 24) >> 1)
      {
        sub_1DD42A2D4();
        v40 = v247[0];
      }

      *(v40 + 16) = v46 + 1;
      v47 = v40 + 16 * v46;
      *(v47 + 32) = v45;
      *(v47 + 40) = v44;
      v42 += v43;
      --v39;
    }

    while (v39);

    v35 = v245;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  v48 = (v238 + v237[8]);
  v49 = v48[3];
  v50 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v51 = sub_1DD509AFC();
  v52 = (*(v50 + 32))(v40, v51, v49, v50);
  if (v35)
  {

    v53 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v53 = v52;
  }

  v54 = sub_1DD3CC020(v53);
  if (v54 > 0)
  {
    v206 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE3B0, &unk_1DD6570A0);
    swift_allocObject();
    v226 = sub_1DD54EB20(MEMORY[0x1E69E7CC0]);
    v228 = dispatch_group_create();
    v227 = sub_1DD3CC020(v53);
    if (v227)
    {
      v205 = 0;
      v55 = 0;
      v225 = v53 & 0xC000000000000001;
      v218 = v53 & 0xFFFFFFFFFFFFFF8;
      v56 = 1;
      v57 = MEMORY[0x1E69E7CC0];
      *(&v58 + 1) = 12;
      v223 = xmmword_1DD644F40;
      *&v58 = 136315394;
      v220 = v58;
      *(&v58 + 1) = 6;
      v222 = xmmword_1DD6444F0;
      *&v58 = 136315138;
      v219 = v58;
      v224 = v53;
      while (2)
      {
        v207 = v56;
        v59 = v55;
        while (1)
        {
          if (v225)
          {
            v60 = MEMORY[0x1E12B2C10](v59, v53);
            v61 = v244;
          }

          else
          {
            v61 = v244;
            if (v59 >= *(v218 + 16))
            {
              __break(1u);
              goto LABEL_99;
            }

            v60 = *(v53 + 8 * v59 + 32);
          }

          v55 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            __break(1u);
LABEL_88:
            v194 = 0x61206C6F6F686373;
            v193 = 0xEE00737365726464;
            goto LABEL_97;
          }

          v62 = v57;
          if (v61 <= 6)
          {
            v62 = *(&off_1E8655790 + v61);
          }

          v63 = *(v62 + 16);

          if (!v63)
          {
            break;
          }

          v64 = [v60 postalAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
          v65 = sub_1DD640118();

          v66 = v57;
          if (v61 <= 6)
          {
            v66 = *(&off_1E86557C8 + v61);
          }

          sub_1DD401F20(v66, v65);
          v68 = v67;

          if (!v68)
          {
            break;
          }

          v242 = v59;
          v243 = v59 + 1;
          if (qword_1ECCDB0B8 != -1)
          {
            swift_once();
          }

          v69 = sub_1DD63F9F8();
          v70 = __swift_project_value_buffer(v69, qword_1ECD0DDA8);
          v71 = swift_allocObject();
          *(v71 + 16) = v60;
          v72 = swift_allocObject();
          *(v72 + 16) = v60;
          v245 = v60;
          v240 = v70;
          v239 = sub_1DD63F9D8();
          LODWORD(v241) = sub_1DD640368();
          v73 = swift_allocObject();
          *(v73 + 16) = 32;
          v74 = swift_allocObject();
          *(v74 + 16) = 8;
          v75 = swift_allocObject();
          *(v75 + 16) = sub_1DD50DA9C;
          *(v75 + 24) = v71;
          v76 = swift_allocObject();
          *(v76 + 16) = sub_1DD3FA514;
          *(v76 + 24) = v75;
          v77 = swift_allocObject();
          *(v77 + 16) = 32;
          v78 = swift_allocObject();
          *(v78 + 16) = 8;
          v79 = swift_allocObject();
          *(v79 + 16) = sub_1DD50DAC0;
          *(v79 + 24) = v72;
          v80 = swift_allocObject();
          *(v80 + 16) = sub_1DD3FAEA4;
          *(v80 + 24) = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
          v81 = swift_allocObject();
          *(v81 + 16) = v223;
          *(v81 + 32) = sub_1DD3FA50C;
          *(v81 + 40) = v73;
          *(v81 + 48) = sub_1DD3FAEC8;
          *(v81 + 56) = v74;
          *(v81 + 64) = sub_1DD3FA51C;
          *(v81 + 72) = v76;
          v82 = v239;
          *(v81 + 80) = sub_1DD3FAEC8;
          *(v81 + 88) = v77;
          *(v81 + 96) = sub_1DD3FAEC8;
          *(v81 + 104) = v78;
          v83 = v241;
          *(v81 + 112) = sub_1DD3FAE9C;
          *(v81 + 120) = v80;
          swift_setDeallocating();
          sub_1DD46CBF0();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v247[0] = v85;
            *v84 = v220;
            v221 = v68;
            v86 = v245;
            v87 = [v245 givenName];
            v88 = sub_1DD63FDD8();
            v90 = v89;

            v91 = sub_1DD39565C(v88, v90, v247);

            *(v84 + 4) = v91;
            *(v84 + 12) = 2080;
            v68 = v221;
            v92 = [v86 familyName];
            v93 = sub_1DD63FDD8();
            v95 = v94;

            v96 = sub_1DD39565C(v93, v95, v247);

            *(v84 + 14) = v96;
            _os_log_impl(&dword_1DD38D000, v82, v83, "going to search for addresses for contact: %s %s", v84, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v85, -1, -1);
            MEMORY[0x1E12B3DA0](v84, -1, -1);
          }

          v97 = v226;
          v98 = v228;
          dispatch_group_enter(v228);
          v99 = swift_allocObject();
          *(v99 + 16) = v97;
          *(v99 + 24) = v98;
          v241 = v99;
          v100 = swift_allocObject();
          *(v100 + 16) = v68;

          v101 = v98;
          v102 = v68;
          v103 = sub_1DD63F9D8();
          v104 = sub_1DD640368();
          v105 = swift_allocObject();
          *(v105 + 16) = 32;
          v106 = swift_allocObject();
          *(v106 + 16) = 8;
          v107 = swift_allocObject();
          *(v107 + 16) = sub_1DD50DAF0;
          *(v107 + 24) = v100;
          v108 = swift_allocObject();
          *(v108 + 16) = sub_1DD3FAEA4;
          *(v108 + 24) = v107;
          v109 = swift_allocObject();
          *(v109 + 16) = v222;
          *(v109 + 32) = sub_1DD3FAEC8;
          *(v109 + 40) = v105;
          *(v109 + 48) = sub_1DD3FAEC8;
          *(v109 + 56) = v106;
          *(v109 + 64) = sub_1DD3FAE9C;
          *(v109 + 72) = v108;
          swift_setDeallocating();
          sub_1DD46CBF0();
          if (os_log_type_enabled(v103, v104))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v247[0] = v111;
            *v110 = v219;
            v112 = sub_1DD4020D4();
            v114 = sub_1DD39565C(v112, v113, v247);

            *(v110 + 4) = v114;
            _os_log_impl(&dword_1DD38D000, v103, v104, "going to search for %s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v111);
            MEMORY[0x1E12B3DA0](v111, -1, -1);
            MEMORY[0x1E12B3DA0](v110, -1, -1);
          }

          v240 = v102;
          if (qword_1EE166460 != -1)
          {
            swift_once();
          }

          v115 = qword_1EE16F0C0;
          v116 = v236;
          v117 = v232;
          v118 = &v232[*(v236 + 20)];
          *v118 = "Geocoding Personal Location with CLGeocoder";
          *(v118 + 1) = 43;
          v118[16] = 2;
          v119 = v115;
          sub_1DD63F9B8();
          *(v117 + *(v116 + 24)) = v119;
          v120 = v119;
          sub_1DD6404D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
          v121 = swift_allocObject();
          *(v121 + 16) = v229;
          v122 = sub_1DD6408F8();
          v124 = v123;
          *(v121 + 56) = MEMORY[0x1E69E6158];
          *(v121 + 64) = sub_1DD392BD8();
          *(v121 + 32) = v122;
          *(v121 + 40) = v124;
          sub_1DD63F998();

          v125 = (v238 + v237[7]);
          v126 = v125[4];
          v239 = v125[3];
          __swift_project_boxed_opaque_existential_1(v125, v239);
          v127 = v233;
          sub_1DD50DB14(v117, v233);
          v128 = (*(v235 + 80) + 16) & ~*(v235 + 80);
          v129 = (v128 + v234 + 7) & 0xFFFFFFFFFFFFFFF8;
          v130 = (v128 + v234 + 31) & 0xFFFFFFFFFFFFFFF8;
          v131 = swift_allocObject();
          sub_1DD50DB78(v127, v131 + v128);
          v132 = v131 + v129;
          v133 = v241;
          *v132 = sub_1DD50DAE4;
          *(v132 + 8) = v133;
          v134 = v245;
          *(v132 + 16) = v244;
          v135 = v131 + v130;
          *v135 = v134;
          *(v135 + 8) = v231;
          *(v135 + 9) = v230;
          v136 = *(v126 + 8);
          v137 = v134;

          v138 = v240;
          v136(v240, sub_1DD50DBDC, v131, v239, v126);

          sub_1DD50DBE0(v117, type metadata accessor for Signpost);
          v59 = v242 + 1;
          v53 = v224;
          v57 = MEMORY[0x1E69E7CC0];
          if (v243 == v227)
          {
            v149 = v207;
            goto LABEL_41;
          }
        }

        v149 = 0;
        v56 = 0;
        if (v55 != v227)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v149 = 1;
    }

LABEL_41:
    v150 = v208;
    sub_1DD63FBE8();
    v151 = v210;
    *v210 = 2;
    v153 = v213;
    v152 = v214;
    (*(v213 + 104))(v151, *MEMORY[0x1E69E7F48], v214);
    v154 = v209;
    sub_1DD63FBF8();
    (*(v153 + 8))(v151, v152);
    v155 = v212;
    v156 = *(v211 + 8);
    v156(v150, v212);
    LOBYTE(v150) = sub_1DD640408();
    v156(v154, v155);
    if (v150)
    {
      if (qword_1ECCDB0B8 != -1)
      {
LABEL_99:
        swift_once();
      }

      v157 = sub_1DD63F9F8();
      __swift_project_value_buffer(v157, qword_1ECD0DDA8);
      v158 = sub_1DD63F9D8();
      v159 = sub_1DD640368();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_1DD38D000, v158, v159, "returning early because of a GeoCoder timeout", v160, 2u);
        MEMORY[0x1E12B3DA0](v160, -1, -1);
      }

      if (v206 == 1 && v227)
      {
        sub_1DD408BFC(0);
        if ((v53 & 0xC000000000000001) != 0)
        {
          v161 = MEMORY[0x1E12B2C10](0, v53);
        }

        else
        {
          v161 = *(v53 + 32);
        }

        v60 = v161;
        v162 = 0xEC00000073736572;

        v163 = 0x64646120656D6F68;
        switch(v244)
        {
          case 1:
            goto LABEL_50;
          case 2:
            goto LABEL_70;
          case 3:
            goto LABEL_76;
          case 4:
            goto LABEL_75;
          case 5:
            goto LABEL_78;
          case 6:
            goto LABEL_80;
          case 7:
            goto LABEL_77;
          case 8:
            goto LABEL_81;
          default:
            break;
        }

LABEL_83:
        sub_1DD50DA48();
        v173 = swift_allocError();
        *v196 = v60;
        *(v196 + 8) = 0;
        *(v196 + 16) = v163;
        *(v196 + 24) = v162;
        *(v196 + 32) = 3;
LABEL_84:
        v197 = v217;
        swift_beginAccess();
        v198 = *(v197 + 16);
        *(v197 + 16) = v173;
        v199 = v60;
        v200 = v173;

        v148 = v216;
        dispatch_group_leave(v216);
        sub_1DD3C9580(v248);

        goto LABEL_85;
      }

      memcpy(v247, v248, sizeof(v247));
      sub_1DD41E024();
      v246 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
      sub_1DD4477A4();
      v170 = sub_1DD63FD58();
      v172 = v171;

      sub_1DD50DA48();
      v173 = swift_allocError();
      *v174 = v170;
      *(v174 + 8) = v172;
      *(v174 + 16) = 0;
      *(v174 + 24) = 0;
      *(v174 + 32) = 4;
      v175 = v217;
      goto LABEL_66;
    }

    v164 = *(sub_1DD508C88() + 16);

    if (!v164)
    {
      v177 = v206 != 1 || v227 == 0;
      if (v149)
      {
        if (!v177)
        {
          sub_1DD408BFC(0);
          if ((v53 & 0xC000000000000001) != 0)
          {
            v190 = MEMORY[0x1E12B2C10](0, v53);
          }

          else
          {
            v190 = *(v53 + 32);
          }

          v60 = v190;
          v162 = 0xEC00000073736572;

          v163 = 0x64646120656D6F68;
          switch(v244)
          {
            case 1:
LABEL_50:
              v163 = 0x646461206B726F77;
              goto LABEL_83;
            case 2:
LABEL_70:
              v191 = "current location";
              goto LABEL_82;
            case 3:
LABEL_76:
              v162 = 0xE600000000000000;
              v163 = 0x79627261656ELL;
              goto LABEL_83;
            case 4:
LABEL_75:
              v163 = 0x61206C6F6F686373;
              v162 = 0xEE00737365726464;
              goto LABEL_83;
            case 5:
LABEL_78:
              v195 = 544045415;
              goto LABEL_79;
            case 6:
LABEL_80:
              v163 = 0x646120726568746FLL;
              v162 = 0xED00007373657264;
              goto LABEL_83;
            case 7:
LABEL_77:
              v195 = 544829025;
LABEL_79:
              v163 = v195 | 0x7264646100000000;
              v162 = 0xEB00000000737365;
              break;
            case 8:
LABEL_81:
              v191 = "parking location";
LABEL_82:
              v162 = (v191 - 32) | 0x8000000000000000;
              v163 = 0xD000000000000010;
              break;
            default:
              goto LABEL_83;
          }

          goto LABEL_83;
        }

        memcpy(v247, v248, sizeof(v247));
        sub_1DD41E024();
        v246 = v178;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        sub_1DD4477A4();
        v179 = sub_1DD63FD58();
        v181 = v180;

        sub_1DD50DA48();
        v173 = swift_allocError();
        *v182 = v179;
        *(v182 + 8) = v181;
        v175 = v217;
        *(v182 + 16) = 0;
        *(v182 + 24) = 0;
        v183 = 4;
      }

      else
      {
        if (!v177)
        {
          sub_1DD408BFC(0);
          if ((v53 & 0xC000000000000001) != 0)
          {
            v192 = MEMORY[0x1E12B2C10](0, v53);
          }

          else
          {
            v192 = *(v53 + 32);
          }

          v60 = v192;
          v193 = 0xEC00000073736572;

          v194 = 0x64646120656D6F68;
          switch(v244)
          {
            case 1:
              v194 = 0x646461206B726F77;
              break;
            case 2:
              v202 = "current location";
              goto LABEL_96;
            case 3:
              v193 = 0xE600000000000000;
              v194 = 0x79627261656ELL;
              break;
            case 4:
              goto LABEL_88;
            case 5:
              v203 = 544045415;
              goto LABEL_93;
            case 6:
              v194 = 0x646120726568746FLL;
              v193 = 0xED00007373657264;
              break;
            case 7:
              v203 = 544829025;
LABEL_93:
              v194 = v203 | 0x7264646100000000;
              v193 = 0xEB00000000737365;
              break;
            case 8:
              v202 = "parking location";
LABEL_96:
              v193 = (v202 - 32) | 0x8000000000000000;
              v194 = 0xD000000000000010;
              break;
            default:
              break;
          }

LABEL_97:
          sub_1DD50DA48();
          v173 = swift_allocError();
          *v204 = v60;
          *(v204 + 8) = 0;
          *(v204 + 16) = v194;
          *(v204 + 24) = v193;
          *(v204 + 32) = 1;
          goto LABEL_84;
        }

        memcpy(v247, v248, sizeof(v247));
        sub_1DD41E024();
        v246 = v184;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        sub_1DD4477A4();
        v185 = sub_1DD63FD58();
        v187 = v186;

        sub_1DD50DA48();
        v173 = swift_allocError();
        *v182 = v185;
        *(v182 + 8) = v187;
        v175 = v217;
        *(v182 + 16) = 0;
        *(v182 + 24) = 0;
        v183 = 2;
      }

      *(v182 + 32) = v183;
LABEL_66:
      swift_beginAccess();
      v188 = *(v175 + 16);
      *(v175 + 16) = v173;
      v189 = v173;

      v148 = v216;
      dispatch_group_leave(v216);
      sub_1DD3C9580(v248);
LABEL_85:

      goto LABEL_86;
    }

    v165 = sub_1DD508C88();
    v166 = v215;
    swift_beginAccess();
    v167 = *(v166 + 16);
    *(v166 + 16) = v165;

    v168 = v216;
    dispatch_group_leave(v216);
    sub_1DD3C9580(v248);

    v148 = v168;
  }

  else
  {
LABEL_39:

    memcpy(v247, v248, sizeof(v247));
    sub_1DD41E024();
    v246 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v140 = sub_1DD63FD58();
    v142 = v141;

    sub_1DD50DA48();
    v143 = swift_allocError();
    *v144 = v140;
    *(v144 + 8) = v142;
    *(v144 + 16) = 0;
    *(v144 + 24) = 0;
    *(v144 + 32) = 0;
    v145 = v217;
    swift_beginAccess();
    v146 = *(v145 + 16);
    *(v145 + 16) = v143;
    v147 = v143;

    v148 = v216;
    dispatch_group_leave(v216);

    sub_1DD3C9580(v248);
  }

LABEL_86:
}

uint64_t sub_1DD50C328(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v109 = type metadata accessor for Signpost();
  v112 = *(v109 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - v14;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v17 = *(a1 + 688);
  v113 = *(a1 + 689);
  v114 = v17;
  v115 = *a2;
  v116 = v16;
  v18 = type metadata accessor for LocationSuggestionGenerator();
  v19 = *(v18 + 32);
  v110 = a3;
  v20 = *(a3 + v19 + 32);
  __swift_project_boxed_opaque_existential_1((a3 + v19), *(a3 + v19 + 24));
  v119 = a4;

  v117 = a5;

  v118 = a6;
  sub_1DD509AFC();
  v32 = (*(v20 + 16))();
  v106 = v18;
  v107 = v12;
  v108 = v15;

  if (v32)
  {
    if (qword_1ECCDB0B8 != -1)
    {
      swift_once();
    }

    v33 = sub_1DD63F9F8();
    v34 = __swift_project_value_buffer(v33, qword_1ECD0DDA8);
    v35 = v32;
    v36 = v32;
    v105 = v34;
    v37 = sub_1DD63F9D8();
    v38 = sub_1DD640368();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      v40 = [v36 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
      v41 = sub_1DD640118();

      v42 = sub_1DD3CC020(v41);

      *(v39 + 4) = v42;

      _os_log_impl(&dword_1DD38D000, v37, v38, "number of addresses in meCard: %ld", v39, 0xCu);
      MEMORY[0x1E12B3DA0](v39, -1, -1);
    }

    else
    {

      v37 = v36;
    }

    v44 = v115;
    v43 = v116;

    v45 = v36;
    v46 = [v36 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
    v47 = sub_1DD640118();

    v48 = sub_1DD3CC020(v47);

    v49 = v117;
    if (v48)
    {
      if (v44 > 6)
      {
        v50 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v50 = *(&off_1E86557C8 + v44);
      }

      v53 = *(v50 + 16);

      if (v53)
      {
        v54 = [v45 postalAddresses];
        v55 = sub_1DD640118();

        v56 = v44 > 6 ? MEMORY[0x1E69E7CC0] : *(&off_1E86557C8 + v44);
        sub_1DD401F20(v56, v55);
        v58 = v57;

        if (v58)
        {
          v59 = swift_allocObject();
          *(v59 + 16) = sub_1DD50DEFC;
          *(v59 + 24) = v43;
          *(v59 + 32) = v45;
          v116 = v59;
          *(v59 + 40) = v44;
          v103 = v45;

          v60 = v58;
          v61 = sub_1DD63F9D8();
          v62 = sub_1DD640368();

          v63 = os_log_type_enabled(v61, v62);
          v104 = v60;
          if (v63)
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v120 = v65;
            *v64 = 136315138;
            v66 = sub_1DD4020D4();
            v68 = sub_1DD39565C(v66, v67, &v120);

            *(v64 + 4) = v68;
            _os_log_impl(&dword_1DD38D000, v61, v62, "going to search for %s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v65);
            MEMORY[0x1E12B3DA0](v65, -1, -1);
            MEMORY[0x1E12B3DA0](v64, -1, -1);
          }

          v69 = v108;
          v70 = v109;
          if (qword_1EE166460 != -1)
          {
            swift_once();
          }

          v71 = qword_1EE16F0C0;
          v72 = v69 + *(v70 + 20);
          *v72 = "Geocoding Personal Location with CLGeocoder";
          *(v72 + 8) = 43;
          *(v72 + 16) = 2;
          v73 = v71;
          sub_1DD63F9B8();
          *(v69 + *(v70 + 24)) = v73;
          v74 = v73;
          sub_1DD6404D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_1DD643F90;
          v76 = sub_1DD6408F8();
          v78 = v77;
          *(v75 + 56) = MEMORY[0x1E69E6158];
          *(v75 + 64) = sub_1DD392BD8();
          *(v75 + 32) = v76;
          *(v75 + 40) = v78;
          sub_1DD63F998();

          v79 = (v110 + *(v106 + 28));
          v80 = v79[4];
          v110 = v79[3];
          __swift_project_boxed_opaque_existential_1(v79, v110);
          v81 = v111;
          sub_1DD50DB14(v69, v111);
          v82 = (*(v112 + 80) + 16) & ~*(v112 + 80);
          v83 = (v82 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
          v84 = (v82 + v107 + 31) & 0xFFFFFFFFFFFFFFF8;
          v85 = swift_allocObject();
          sub_1DD50DB78(v81, v85 + v82);
          v86 = v85 + v83;
          v87 = v115;
          v88 = v116;
          *v86 = sub_1DD50DCB0;
          *(v86 + 8) = v88;
          *(v86 + 16) = v87;
          v89 = v85 + v84;
          v90 = v103;
          *v89 = v103;
          v91 = v113;
          *(v89 + 8) = v114;
          *(v89 + 9) = v91;
          v92 = *(v80 + 8);
          v93 = v90;

          v94 = v104;
          v92(v104, sub_1DD50DF00, v85, v110, v80);

          sub_1DD50DBE0(v108, type metadata accessor for Signpost);
          v30 = v118;
          goto LABEL_7;
        }
      }

      v51 = 0x64646120656D6F68;
      v52 = 0xEC00000073736572;
      switch(v44)
      {
        case 1:
          goto LABEL_30;
        case 2:
          goto LABEL_32;
        case 3:
          goto LABEL_33;
        case 4:
          goto LABEL_31;
        case 5:
          goto LABEL_35;
        case 6:
          goto LABEL_37;
        case 7:
          goto LABEL_34;
        case 8:
          goto LABEL_38;
        default:
          break;
      }
    }

    else
    {
      v51 = 0x64646120656D6F68;
      v52 = 0xEC00000073736572;
      switch(v44)
      {
        case 1:
LABEL_30:
          v51 = 0x646461206B726F77;
          break;
        case 2:
LABEL_32:
          v95 = "current location";
          goto LABEL_39;
        case 3:
LABEL_33:
          v52 = 0xE600000000000000;
          v51 = 0x79627261656ELL;
          break;
        case 4:
LABEL_31:
          v51 = 0x61206C6F6F686373;
          v52 = 0xEE00737365726464;
          break;
        case 5:
LABEL_35:
          v96 = 544045415;
          goto LABEL_36;
        case 6:
LABEL_37:
          v51 = 0x646120726568746FLL;
          v52 = 0xED00007373657264;
          break;
        case 7:
LABEL_34:
          v96 = 544829025;
LABEL_36:
          v51 = v96 | 0x7264646100000000;
          v52 = 0xEB00000000737365;
          break;
        case 8:
LABEL_38:
          v95 = "parking location";
LABEL_39:
          v52 = (v95 - 32) | 0x8000000000000000;
          v51 = 0xD000000000000010;
          break;
        default:
          break;
      }
    }

    sub_1DD50DA48();
    v97 = swift_allocError();
    *v98 = v35;
    *(v98 + 8) = 1;
    *(v98 + 16) = v51;
    *(v98 + 24) = v52;
    *(v98 + 32) = 1;
    swift_beginAccess();
    v99 = *(v49 + 16);
    *(v49 + 16) = v97;
    v100 = v45;
    v101 = v97;

    v30 = v118;
    dispatch_group_leave(v118);

    goto LABEL_7;
  }

  if (qword_1ECCDB0B8 != -1)
  {
    swift_once();
  }

  v21 = sub_1DD63F9F8();
  __swift_project_value_buffer(v21, qword_1ECD0DDA8);
  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DD38D000, v22, v23, "could not find meCard, throwing meCardNotPresent error", v24, 2u);
    MEMORY[0x1E12B3DA0](v24, -1, -1);
  }

  sub_1DD50DA48();
  v25 = swift_allocError();
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 5;
  v27 = v117;
  swift_beginAccess();
  v28 = *(v27 + 16);
  *(v27 + 16) = v25;
  v29 = v25;

  v30 = v118;
  dispatch_group_leave(v118);

LABEL_7:
}

uint64_t sub_1DD50CDC4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  v3 = sub_1DD63FDD8();

  return v3;
}

void sub_1DD50CE14(uint64_t a1, char a2, int a3, dispatch_group_t group)
{
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DD5FFA18();
  }

  dispatch_group_leave(group);
}

void sub_1DD50CEC8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, void *a5, char a6)
{
  if (a2)
  {
    v8 = 0xEC00000073736572;
    v9 = 0x64646120656D6F68;
    switch(a6)
    {
      case 1:
        goto LABEL_6;
      case 2:
        goto LABEL_8;
      case 3:
        goto LABEL_9;
      case 4:
        goto LABEL_7;
      case 5:
        goto LABEL_11;
      case 6:
        goto LABEL_13;
      case 7:
        goto LABEL_10;
      case 8:
        goto LABEL_14;
      default:
        break;
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      a3();
      return;
    }

    v8 = 0xEC00000073736572;
    v9 = 0x64646120656D6F68;
    switch(a6)
    {
      case 1:
LABEL_6:
        v9 = 0x646461206B726F77;
        break;
      case 2:
LABEL_8:
        v10 = "current location";
        goto LABEL_15;
      case 3:
LABEL_9:
        v8 = 0xE600000000000000;
        v9 = 0x79627261656ELL;
        break;
      case 4:
LABEL_7:
        v9 = 0x61206C6F6F686373;
        v8 = 0xEE00737365726464;
        break;
      case 5:
LABEL_11:
        v11 = 544045415;
        goto LABEL_12;
      case 6:
LABEL_13:
        v9 = 0x646120726568746FLL;
        v8 = 0xED00007373657264;
        break;
      case 7:
LABEL_10:
        v11 = 544829025;
LABEL_12:
        v9 = v11 | 0x7264646100000000;
        v8 = 0xEB00000000737365;
        break;
      case 8:
LABEL_14:
        v10 = "parking location";
LABEL_15:
        v8 = (v10 - 32) | 0x8000000000000000;
        v9 = 0xD000000000000010;
        break;
      default:
        break;
    }
  }

  sub_1DD50DA48();
  v12 = swift_allocError();
  *v13 = a5;
  *(v13 + 8) = 1;
  *(v13 + 16) = v9;
  *(v13 + 24) = v8;
  *(v13 + 32) = 3;
  v14 = a5;
  (a3)(v12, 1);
}

void sub_1DD50D0C8(unint64_t *a1, id a2, unint64_t a3, void (*a4)(id, uint64_t), int a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  if (a2)
  {
    v11 = a2;
    sub_1DD6404C8();
    v12 = type metadata accessor for Signpost();
    v13 = *(v12 + 20);
    v14 = *(a3 + *(v12 + 24));
    v15 = *(a3 + v13);
    v16 = *(a3 + v13 + 8);
    v17 = *(a3 + v13 + 16);
    sub_1DD63F9A8();
    v18 = a2;
    a4(a2, 1);
  }

  else
  {
    if (qword_1ECCDB0B8 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v23 = sub_1DD63F9F8();
      __swift_project_value_buffer(v23, qword_1ECD0DDA8);

      v24 = sub_1DD63F9D8();
      v25 = sub_1DD640368();

      v49 = a3;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        __src[0] = v27;
        *v26 = 136315138;
        v57 = a1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE3B8, &unk_1DD6570B0);
        v28 = sub_1DD63FE38();
        v30 = a6;
        v31 = sub_1DD39565C(v28, v29, __src);

        *(v26 + 4) = v31;
        a6 = v30;
        _os_log_impl(&dword_1DD38D000, v24, v25, "got placemarks: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1E12B3DA0](v27, -1, -1);
        MEMORY[0x1E12B3DA0](v26, -1, -1);
      }

      v32 = MEMORY[0x1E69E7CC0];
      v33 = a1 ? a1 : MEMORY[0x1E69E7CC0];
      v34 = sub_1DD3CC020(v33);
      if (!v34)
      {
        break;
      }

      v35 = v34;
      v57 = v32;
      v36 = v34 & ~(v34 >> 63);

      sub_1DD42BDE0(0, v36, 0);
      if ((v35 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      a3 = 0;
      a1 = 0;
      v32 = v57;
      v53 = v33;
      v54 = v33 & 0xC000000000000001;
      v51 = v33 & 0xFFFFFFFFFFFFFF8;
      v52 = a6;
      while (a3 < v35)
      {
        if (__OFADD__(a3, 1))
        {
          goto LABEL_28;
        }

        if (v54)
        {
          v37 = MEMORY[0x1E12B2C10](a3, v33);
        }

        else
        {
          if (a3 >= *(v51 + 16))
          {
            goto LABEL_29;
          }

          v37 = *(v33 + 8 * a3 + 32);
        }

        v38 = v37;
        v55 = v37;
        v39 = a6;
        v40 = a8;
        sub_1DD50D4F4(&v55, v39, a7, a8, a9, __src);

        v57 = v32;
        v42 = v32[2];
        v41 = v32[3];
        if (v42 >= v41 >> 1)
        {
          sub_1DD42BDE0(v41 > 1, v42 + 1, 1);
          v32 = v57;
        }

        v32[2] = v42 + 1;
        memcpy(&v32[89 * v42 + 4], __src, 0x2C8uLL);
        if (a3 + 1 == v35)
        {
          goto LABEL_26;
        }

        ++a3;
        a8 = v40;
        a6 = v52;
        v33 = v53;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
    }

LABEL_26:

    sub_1DD6404C8();
    v43 = type metadata accessor for Signpost();
    v44 = *(v43 + 20);
    v45 = *(v49 + *(v43 + 24));
    v46 = *(v49 + v44);
    v47 = *(v49 + v44 + 8);
    v48 = *(v49 + v44 + 16);
    sub_1DD63F9A8();
    a4(v32, 0);
  }
}

uint64_t sub_1DD50D4F4@<X0>(id *a1@<X0>, char a2@<W1>, void *a3@<X2>, char a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v47 = a3;
  v7 = *a1;
  v8 = [*a1 location];
  if (v8)
  {
    v9 = v8;
    [v8 coordinate];

    v10 = [v7 location];
    if (v10)
    {
      v11 = v10;
      [v10 coordinate];

      sub_1DD640228();
      v54[0] = 0;
      v54[1] = 0xE000000000000000;
      sub_1DD640228();
      sub_1DD3AD738(*(&v59[5] + 1), *&v59[6]);
      *(&v59[5] + 1) = 0;
      v59[6] = 0xE000000000000000;
      *&v59[7] = 0xE000000000000000;
    }
  }

  v12 = sub_1DD3CA460(v7, &selRef_postalCode);
  v14 = v13;
  if (v13)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  *&v59[1] = v15;
  *(&v59[1] + 1) = v16;
  *&v59[2] = v14;
  v17 = sub_1DD3CA460(v7, &selRef_administrativeArea);
  v19 = v18;
  v20 = 771;
  if (v18)
  {
    v21 = 771;
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0;
  }

  *(&v59[2] + 1) = v21;
  *&v59[3] = v22;
  *(&v59[3] + 1) = v19;
  v23 = sub_1DD3CA460(v7, &selRef_locality);
  v25 = v24;
  if (v24)
  {
    v26 = v23;
  }

  else
  {
    v20 = 0;
    v26 = 0;
  }

  *&v59[4] = v20;
  *(&v59[4] + 1) = v26;
  *&v59[5] = v25;
  v27 = sub_1DD3CA460(v7, &selRef_fullThoroughfare);
  v29 = v28;
  memcpy(__dst, &v59[32], sizeof(__dst));
  sub_1DD3D40D8(__dst, &qword_1ECCDB848, &qword_1DD642FD0);
  memset(&v59[32], 0, 18);
  *(&v59[33] + 8) = 0u;
  BYTE8(v59[34]) = 0;
  *(&v59[34] + 9) = 2304;
  memset(&v59[35], 0, 17);
  *(&v59[36] + 1) = 2304;
  BYTE3(v59[36]) = 1;
  *(&v59[36] + 1) = v27;
  *&v59[37] = v29;
  LOBYTE(v54[0]) = a2;
  v30 = v47;
  sub_1DD551DC4();
  nullsub_1(__src);
  memcpy(v57, &v59[7] + 8, 0x106uLL);
  sub_1DD3D40D8(v57, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy(&v59[7] + 8, __src, 0x106uLL);
  LOBYTE(v59[43]) = a4;
  BYTE1(v59[43]) = a5;
  memcpy(v58, __src, 0x106uLL);
  if (OUTLINED_FUNCTION_0_99(v58) != 1)
  {
    memcpy(v54, &v59[7] + 8, 0x106uLL);
    sub_1DD5520DC();
    if (v32)
    {
      v33 = v31;
      v34 = v32;

      *&v59[38] = v33;
      *(&v59[38] + 1) = v34;
      LOBYTE(v59[39]) = 3;
    }
  }

  if (qword_1ECCDB0B8 != -1)
  {
    swift_once();
  }

  v35 = sub_1DD63F9F8();
  __swift_project_value_buffer(v35, qword_1ECD0DDA8);
  v36 = sub_1DD63F9D8();
  v37 = sub_1DD640368();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52[0] = v39;
    *v38 = 136315394;
    LOBYTE(v54[0]) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE398, &qword_1DD657088);
    v40 = sub_1DD63FE38();
    v42 = sub_1DD39565C(v40, v41, v52);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    swift_beginAccess();
    memcpy(v54, v59, sizeof(v54));
    memcpy(v53, v59, sizeof(v53));
    sub_1DD472DF8(v54, v51);
    v43 = sub_1DD63FE38();
    v45 = sub_1DD39565C(v43, v44, v52);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_1DD38D000, v36, v37, "setting %s on %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v39, -1, -1);
    MEMORY[0x1E12B3DA0](v38, -1, -1);
  }

  swift_beginAccess();
  memcpy(v53, v59, sizeof(v53));
  memcpy(a6, v59, 0x2C8uLL);
  memcpy(v54, v59, sizeof(v54));
  sub_1DD472DF8(v53, v51);
  return sub_1DD501A90(v54);
}

unint64_t sub_1DD50DA48()
{
  result = qword_1ECCDE3A8;
  if (!qword_1ECCDE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE3A8);
  }

  return result;
}

uint64_t sub_1DD50DB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD50DB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD50DBE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD50DC3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5FF5E8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DD50DC68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5FF78C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_2_0(v8);
  (*(v9 + 8))(v7);

  v10 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 10, v2 | 7);
}

void sub_1DD50DDC8()
{
  v1 = *(type metadata accessor for Signpost() - 8);
  v2 = ((*(v1 + 80) + 16) & ~*(v1 + 80)) + *(v1 + 64);
  v3 = (v0 + ((v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = (v0 + ((v2 + 31) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v3 + 16);
  v18 = *(v6 + 9);
  v10 = OUTLINED_FUNCTION_14_9();
  sub_1DD50D0C8(v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_11_38()
{

  return sub_1DD640138();
}

uint64_t sub_1DD50DFF8()
{
  OUTLINED_FUNCTION_22_23();
  v44 = v3;
  if (v4)
  {
    v5 = v2;
    v6 = v1;
    sub_1DD39638C(0, &qword_1EE160148, 0x1E696AEC0);

    sub_1DD6405D8();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_43();
    sub_1DD396778();
    OUTLINED_FUNCTION_18_29();
    v43[0] = v6;
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    sub_1DD63FE38();
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_3_58();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_1_79();
    OUTLINED_FUNCTION_7_43();
    sub_1DD396778();
    OUTLINED_FUNCTION_18_29();
    type metadata accessor for InferenceError();
    v8 = v6;
    OUTLINED_FUNCTION_5_58();
    v12 = OUTLINED_FUNCTION_14_33(v6, v5, v9, v10, v11, 0x80000001DD66EF30);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16F0C8);
    sub_1DD4DEB78();
    sub_1DD4DDD28(*(v12 + 16));
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_24_18();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_39();
    OUTLINED_FUNCTION_2_68();
    OUTLINED_FUNCTION_20_26();
    sub_1DD396778();
    v44 = v43[0];
    v14 = *(v12 + 40);
    v15 = *(v12 + 48);
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_24_18();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_39();
    OUTLINED_FUNCTION_20_26();
    OUTLINED_FUNCTION_16_34();
    v44 = v43[0];
    v16 = *(v12 + 56);
    v17 = *(v12 + 64);
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_24_18();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_39();
    OUTLINED_FUNCTION_4_54();
    OUTLINED_FUNCTION_20_26();
    sub_1DD396778();
    v44 = v43[0];
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    OUTLINED_FUNCTION_24_18();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_39();
    OUTLINED_FUNCTION_20_26();
    OUTLINED_FUNCTION_13_33();
    v44 = v43[0];
    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640378();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v20 = 136446466;
      OUTLINED_FUNCTION_26_0();
      v21 = sub_1DD6408F8();
      v23 = sub_1DD39565C(v21, v22, v43);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);

      v24 = sub_1DD63FC68();
      v26 = v25;

      v27 = sub_1DD39565C(v24, v26, v43);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1DD38D000, v18, v19, "%{public}s failed. payload=%s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_26_0();
    sub_1DD6408F8();

    sub_1DD399F2C();
  }

  else
  {

    v28 = [v0 isCancelled];
    if (v28)
    {
      v29 = 0x656C6C65636E6163;
    }

    else
    {
      v29 = 0x6574656C706D6F63;
    }

    if (v28)
    {
      v30 = 0xE900000000000064;
    }

    else
    {
      v30 = 0xE800000000000000;
    }

    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v31 = sub_1DD63F9F8();
    __swift_project_value_buffer(v31, qword_1EE16F0C8);

    v32 = sub_1DD63F9D8();
    v33 = sub_1DD640368();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v34 = 136446722;
      OUTLINED_FUNCTION_26_0();
      v35 = sub_1DD6408F8();
      v37 = sub_1DD39565C(v35, v36, v43);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1DD39565C(v29, v30, v43);
      *(v34 + 22) = 2080;
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);

      v38 = sub_1DD63FC68();
      v40 = v39;

      v41 = sub_1DD39565C(v38, v40, v43);

      *(v34 + 24) = v41;
      _os_log_impl(&dword_1DD38D000, v32, v33, "%{public}s finished. outcome=%s payload=%s", v34, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_22_23();
      OUTLINED_FUNCTION_0_1();
    }

    sub_1DD63FDA8();

    OUTLINED_FUNCTION_26_21();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DD396778();
    swift_endAccess();
    OUTLINED_FUNCTION_26_0();
    sub_1DD6408F8();

    sub_1DD399F2C();
  }
}

uint64_t sub_1DD50E6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_23_25();
  v57 = v11;
  if (v12)
  {
    v13 = v10;
    v14 = v9;
    v55 = a5;
    sub_1DD39638C(0, &qword_1EE160148, 0x1E696AEC0);

    sub_1DD6405D8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DD396778();
    OUTLINED_FUNCTION_18_29();
    v56[0] = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    sub_1DD63FE38();
    sub_1DD63FDA8();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_39();
    OUTLINED_FUNCTION_1_79();
    sub_1DD396778();
    OUTLINED_FUNCTION_18_29();
    type metadata accessor for InferenceError();
    v16 = v14;
    OUTLINED_FUNCTION_5_58();
    v20 = OUTLINED_FUNCTION_14_33(v14, v13, v17, v18, v19, 0x80000001DD66EF30);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1EE16F0C8);
    sub_1DD4DEB78();
    sub_1DD4DDD28(*(v20 + 16));
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_3_58();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_2_68();
    OUTLINED_FUNCTION_7_43();
    sub_1DD396778();
    v57 = v56[0];
    v22 = *(v20 + 40);
    v23 = *(v20 + 48);
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_3_58();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_16_34();
    v57 = v56[0];
    v24 = *(v20 + 56);
    v25 = *(v20 + 64);
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_3_58();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_4_54();
    OUTLINED_FUNCTION_7_43();
    sub_1DD396778();
    v57 = v56[0];
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    OUTLINED_FUNCTION_3_58();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_13_33();
    v57 = v56[0];
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640378();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v28 = 136446466;
      v29 = *(a6 + 8);
      v29(a5, a6);
      v30 = sub_1DD6408F8();
      v32 = sub_1DD39565C(v30, v31, v56);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      OUTLINED_FUNCTION_21_23();

      v33 = sub_1DD63FC68();
      v35 = v34;

      v36 = sub_1DD39565C(v33, v35, v56);

      *(v28 + 14) = v36;
      v37 = v55;
      _os_log_impl(&dword_1DD38D000, v26, v27, "%{public}s failed. payload=%s", v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v29 = *(a6 + 8);
      v37 = a5;
    }

    v29(v37, a6);
    sub_1DD6408F8();
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_9_41();
  }

  else
  {

    v38 = [v6 isCancelled];
    if (v38)
    {
      v39 = 0x656C6C65636E6163;
    }

    else
    {
      v39 = 0x6574656C706D6F63;
    }

    if (v38)
    {
      v40 = 0xE900000000000064;
    }

    else
    {
      v40 = 0xE800000000000000;
    }

    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v41 = sub_1DD63F9F8();
    __swift_project_value_buffer(v41, qword_1EE16F0C8);

    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640368();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = a6;
      v45 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v45 = 136446722;
      (*(v44 + 8))(a5, v44);
      v46 = sub_1DD6408F8();
      v48 = a5;
      v49 = sub_1DD39565C(v46, v47, v56);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_1DD39565C(v39, v40, v56);
      *(v45 + 22) = 2080;
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);

      v50 = sub_1DD63FC68();
      v52 = v51;

      v53 = sub_1DD39565C(v50, v52, v56);

      *(v45 + 24) = v53;
      _os_log_impl(&dword_1DD38D000, v42, v43, "%{public}s finished. outcome=%s payload=%s", v45, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      a6 = v44;
      OUTLINED_FUNCTION_23_25();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v48 = a5;
    }

    sub_1DD63FDA8();
    OUTLINED_FUNCTION_21_23();

    OUTLINED_FUNCTION_26_21();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DD396778();
    swift_endAccess();
    (*(a6 + 8))(v48, a6);
    sub_1DD6408F8();
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_9_41();
  }
}

void OUTLINED_FUNCTION_13_33()
{

  sub_1DD396778();
}

uint64_t OUTLINED_FUNCTION_14_33(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1DD4DE56C(a1, a2, a3, a4, 0xD000000000000025, a6, 43);
}

uint64_t OUTLINED_FUNCTION_26_21()
{

  return swift_beginAccess();
}

void *sub_1DD50EE6C()
{
  v0 = [objc_opt_self() sharedAnalytics];
  v1 = [v0 defaultMessageStream];

  v6 = sub_1DD39638C(0, &qword_1EE160180, 0x1E69CE1F8);
  v7 = &off_1F58BAF68;
  *&v5 = v1;
  v4[3] = &type metadata for RequestUUIDProvider;
  v4[4] = &off_1F58BEDA8;
  type metadata accessor for LoggingDataEmitter();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v4, &type metadata for RequestUUIDProvider);
  v2[12] = &type metadata for RequestUUIDProvider;
  v2[13] = &off_1F58BEDA8;
  sub_1DD3AA4A8(&v5, (v2 + 2));
  v2[7] = sub_1DD4802B8;
  v2[8] = 0;
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

void sub_1DD50EF64()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for LearnedDisambiguation();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v71 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x1E69CEC68]) init];
  if (v20)
  {
    v21 = v20;
    LODWORD(v72) = v2;
    v22 = *v8;
    v23 = v8[1];
    v24 = sub_1DD63FDA8();
    [v21 setUsecase_];

    v73 = *(v8 + v9[7]);
    if (*(v73 + 16) >= 0x7FFFFFFFuLL)
    {
      v25 = 0x7FFFFFFFLL;
    }

    else
    {
      v25 = *(v73 + 16);
    }

    [v21 setChoicesCount_];
    if (v6[2] >= 0x7FFFFFFFuLL)
    {
      v26 = 0x7FFFFFFFLL;
    }

    else
    {
      v26 = v6[2];
    }

    [v21 setHistoricalDataCount_];
    v74 = v4;
    sub_1DD3DD9B4(v4, v19, &qword_1ECCDD878, &unk_1DD652060);
    v27 = type metadata accessor for LearningResult();
    v28 = v0;
    if (__swift_getEnumTagSinglePayload(v19, 1, v27) == 1)
    {
      sub_1DD390754(v19, &qword_1ECCDD878, &unk_1DD652060);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v36 = &v19[*(v27 + 20)];
      v29 = *v36;
      v30 = v36[1];

      sub_1DD512660(v19, type metadata accessor for LearningResult);
    }

    sub_1DD39638C(0, &qword_1ECCDE3D8, 0x1E69CF650);
    sub_1DD50F51C(v29, v30);
    v38 = v37;
    [v21 setModelVersion_];

    if (v72)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    [v21 setDisambiguationReason_];
    sub_1DD63D718();
    sub_1DD63D708();
    sub_1DD63D6E8();

    __swift_project_boxed_opaque_existential_1(&v75, *(&v77 + 1));
    v40 = sub_1DD63D7A8();
    __swift_destroy_boxed_opaque_existential_1(&v75);
    v41 = swift_allocObject();
    *(v41 + 16) = v21;
    *(v41 + 24) = v28;
    v42 = v28;

    v43 = v21;
    v72 = v40;
    sub_1DD63D568();

    v45 = *(v42 + 7);
    v44 = *(v42 + 8);

    v47 = v45(v46);
    v48 = sub_1DD4C23E4(v6, v47);
    v50 = v49;
    v52 = v51;
    sub_1DD4BC018(v8, v15);
    v53 = v15 + v9[6];
    v54 = sub_1DD480258();
    v55 = *(v15 + v9[8]);
    v56 = v15 + v9[10];
    v71 = *v56;
    v57 = *(v56 + 16);
    OUTLINED_FUNCTION_5_59();
    sub_1DD512660(v15, v58);
    v75 = v54;
    v76 = v55;
    v77 = v71;
    v78 = v57;

    v59 = sub_1DD4C2A64(&v75, v48);
    MEMORY[0x1EEE9AC00](v59);
    v60 = v73;
    *(&v71 - 6) = v74;
    *(&v71 - 5) = v8;
    *(&v71 - 4) = v48;
    *(&v71 - 3) = v50;
    *(&v71 - 2) = v52;
    *(&v71 - 1) = v61;
    v62 = sub_1DD5E81F4(sub_1DD5125B8, (&v71 - 4), v60);

    v63 = [objc_allocWithZone(MEMORY[0x1E69CEC70]) init];
    if (v63)
    {
      v64 = v63;
      [v63 setCommonSignals_];
      sub_1DD5125DC(v62, v64);
      v65 = v64;
      sub_1DD510CE0();
    }

    else
    {

      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v66 = sub_1DD63F9F8();
      v67 = OUTLINED_FUNCTION_11(v66, qword_1ECD0DDF0);
      v68 = sub_1DD640378();
      if (OUTLINED_FUNCTION_5_6(v68))
      {
        *OUTLINED_FUNCTION_9() = 0;
        OUTLINED_FUNCTION_18(&dword_1DD38D000, v69, v70, "Cannot create INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated");
        OUTLINED_FUNCTION_0_1();
      }
    }

    OUTLINED_FUNCTION_17();
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v31 = sub_1DD63F9F8();
    v74 = OUTLINED_FUNCTION_11(v31, qword_1ECD0DDF0);
    sub_1DD640378();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(v74, v32))
    {
      v33 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v33);
      _os_log_impl(&dword_1DD38D000, v74, v19, "Cannot create INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals", v0, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD50F51C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v45 = a1;
  v46 = a2;
  sub_1DD3B7F10();
  v3 = sub_1DD640638();

  v4 = *(v3 + 16);
  if (v4)
  {
    v42 = v2;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1DD42BCF4();
    v5 = 0;
    v6 = v43;
    v7 = &v45 + 1;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        return;
      }

      v8 = (v3 + 32 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = HIBYTE(v9) & 0xF;
      v12 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v9) & 0xF;
      }

      else
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {
        goto LABEL_72;
      }

      if ((v9 & 0x1000000000000000) != 0)
      {
        v34 = v7;

        v16 = sub_1DD512038(v10, v9, 10);

        v7 = v34;
        if ((v16 & 0x100000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_72:
        LODWORD(v16) = 0;
        goto LABEL_73;
      }

      if ((v9 & 0x2000000000000000) != 0)
      {
        v45 = v10;
        v46 = v9 & 0xFFFFFFFFFFFFFFLL;
        if (v10 == 43)
        {
          if (!v11)
          {
            goto LABEL_97;
          }

          if (v11 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_55();
              if (!v18 & v17)
              {
                break;
              }

              OUTLINED_FUNCTION_21_24();
              if (!v18)
              {
                break;
              }

              LODWORD(v16) = v27 + v26;
              if (__CFADD__(v27, v26))
              {
                break;
              }

              OUTLINED_FUNCTION_20_27();
              if (v18)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v10 == 45)
        {
          if (!v11)
          {
            goto LABEL_99;
          }

          if (v11 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_55();
              if (!v18 & v17)
              {
                break;
              }

              OUTLINED_FUNCTION_21_24();
              if (!v18)
              {
                break;
              }

              LODWORD(v16) = v23 - v22;
              if (v23 < v22)
              {
                break;
              }

              OUTLINED_FUNCTION_20_27();
              if (v18)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v11)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_55();
            if (!v18 & v17)
            {
              break;
            }

            OUTLINED_FUNCTION_21_24();
            if (!v18)
            {
              break;
            }

            LODWORD(v16) = v31 + v30;
            if (__CFADD__(v31, v30))
            {
              break;
            }

            OUTLINED_FUNCTION_20_27();
            if (v18)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v14 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v35 = v7;
          v14 = sub_1DD640948();
          v7 = v35;
        }

        v15 = *v14;
        if (v15 == 43)
        {
          if (v12 < 1)
          {
            goto LABEL_100;
          }

          if (v12 != 1)
          {
            LODWORD(v16) = 0;
            if (!v14)
            {
              goto LABEL_61;
            }

            while (1)
            {
              OUTLINED_FUNCTION_4_55();
              if (!v18 & v17)
              {
                break;
              }

              OUTLINED_FUNCTION_21_24();
              if (!v18)
              {
                break;
              }

              LODWORD(v16) = v25 + v24;
              if (__CFADD__(v25, v24))
              {
                break;
              }

              OUTLINED_FUNCTION_20_27();
              if (v18)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (v12 < 1)
          {
            goto LABEL_98;
          }

          if (v12 != 1)
          {
            LODWORD(v16) = 0;
            if (!v14)
            {
              goto LABEL_61;
            }

            while (1)
            {
              OUTLINED_FUNCTION_4_55();
              if (!v18 & v17)
              {
                break;
              }

              OUTLINED_FUNCTION_21_24();
              if (!v18)
              {
                break;
              }

              LODWORD(v16) = v20 - v19;
              if (v20 < v19)
              {
                break;
              }

              OUTLINED_FUNCTION_20_27();
              if (v18)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v12)
        {
          LODWORD(v16) = 0;
          if (!v14)
          {
LABEL_61:
            v21 = 0;
            goto LABEL_71;
          }

          while (1)
          {
            v28 = *v14 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v16;
            if ((v29 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v16) = v29 + v28;
            if (__CFADD__(v29, v28))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_61;
            }
          }
        }
      }

      LODWORD(v16) = 0;
      v21 = 1;
LABEL_71:
      if (v21)
      {
        goto LABEL_72;
      }

LABEL_73:
      v44 = v6;
      v32 = *(v6 + 16);
      if (v32 >= *(v6 + 24) >> 1)
      {
        v33 = v7;
        sub_1DD42BCF4();
        v7 = v33;
        v6 = v44;
      }

      ++v5;
      *(v6 + 16) = v32 + 1;
      *(v6 + 4 * v32 + 32) = v16;
      if (v5 == v4)
      {

        goto LABEL_82;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_82:
  v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v36)
  {
    v37 = *(v6 + 16);
    if (v37)
    {
      v38 = *(v6 + 32);
    }

    else
    {
      v38 = 0;
    }

    v39 = v36;
    [v39 setMajor_];
    if (v37 < 2)
    {
      v40 = 0;
    }

    else
    {
      if (*(v6 + 16) < 2uLL)
      {
        goto LABEL_101;
      }

      v40 = *(v6 + 36);
    }

    [v39 setMinor_];
    if (v37 < 3)
    {
      v41 = 0;
    }

    else
    {
      if (*(v6 + 16) < 3uLL)
      {
        goto LABEL_102;
      }

      v41 = *(v6 + 40);
    }

    [v39 setPatch_];
  }

  else
  {
  }
}

uint64_t sub_1DD50F98C(uint64_t a1, char *a2, uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v4 = sub_1DD63D7B8();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = sub_1DD63D558();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  sub_1DD3DD9B4(a1, &v37 - v17, &qword_1ECCDDF28, &qword_1DD655820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v37;
    (*(v37 + 32))(v9, v18, v4);
    v20 = v19;
    v21 = v9;
    v22 = v4;
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    __swift_project_value_buffer(v23, qword_1ECD0DDF0);
    v24 = *(v19 + 16);
    v25 = v40;
    v24(v40, v21, v4);
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640378();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = v21;
      v29 = v28;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_1DD5126B8();
      swift_allocError();
      v24(v31, v25, v22);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v20 + 8);
      v33(v25, v22);
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1DD38D000, v26, v27, "Could not gather signal values: %@", v29, 0xCu);
      sub_1DD390754(v30, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v30, -1, -1);
      MEMORY[0x1E12B3DA0](v29, -1, -1);

      return (v33)(v39, v22);
    }

    else
    {

      v36 = *(v20 + 8);
      v36(v25, v22);
      return (v36)(v21, v22);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1DD63D548();
    v35 = *(v38 + 64);
    (*(v38 + 56))();
    sub_1DD50FDD4();

    return (*(v11 + 8))(v14, v10);
  }
}

void sub_1DD50FDD4()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = sub_1DD63D518();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  [v0 setTimestampSec_];
  v12 = sub_1DD63D7C8();
  v14 = OUTLINED_FUNCTION_24_19(v12, v13);

  if (v14 >= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0xFFFFFFFF80000000)
  {
    v16 = 0xFFFFFFFF80000000;
  }

  else
  {
    v16 = v15;
  }

  [v0 setRawLanguage_];
  v17 = sub_1DD63D728();
  v19 = OUTLINED_FUNCTION_24_19(v17, v18);

  if (v19 >= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFFLL;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= 0xFFFFFFFF80000000)
  {
    v21 = 0xFFFFFFFF80000000;
  }

  else
  {
    v21 = v20;
  }

  [v0 setRawLocale_];
  [v0 setRawStateOrProvince_];
  [v0 setRawCountry_];
  v22 = sub_1DD63D6B8();
  v24 = OUTLINED_FUNCTION_24_19(v22, v23);

  if (v24 >= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFFLL;
  }

  else
  {
    v25 = v24;
  }

  if (v25 <= 0xFFFFFFFF80000000)
  {
    v26 = 0xFFFFFFFF80000000;
  }

  else
  {
    v26 = v25;
  }

  [v0 setRawRequestDeviceCategory_];
  v27 = *MEMORY[0x1E69D2B88];
  v28 = *(v6 + 104);
  v29 = OUTLINED_FUNCTION_29_17();
  v28(v29);
  sub_1DD63D508();
  v30 = *(v6 + 8);
  v30(v11, v3);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_1_80();
  [v0 setCalendarHourOfDay_];
  v31 = *MEMORY[0x1E69D2B80];
  v32 = OUTLINED_FUNCTION_29_17();
  v28(v32);
  sub_1DD63D508();
  v33 = OUTLINED_FUNCTION_8_46();
  (v30)(v33);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_1_80();
  [v0 setCalendarDayOfWeek_];
  v34 = *MEMORY[0x1E69D2B78];
  v35 = OUTLINED_FUNCTION_29_17();
  v28(v35);
  sub_1DD63D508();
  v36 = OUTLINED_FUNCTION_8_46();
  (v30)(v36);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_1_80();
  [v0 setCalendarWeekOfMonth_];
  v37 = *MEMORY[0x1E69D2B70];
  v38 = OUTLINED_FUNCTION_29_17();
  v28(v38);
  sub_1DD63D508();
  v39 = OUTLINED_FUNCTION_8_46();
  (v30)(v39);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_1_80();
  [v0 setCalendarMonthOfYear_];
  v40 = sub_1DD63D928();
  OUTLINED_FUNCTION_15_33(v40, v41);

  OUTLINED_FUNCTION_1_80();
  [v0 setIsClientDaylight_];
  v42 = sub_1DD63D848();
  v44 = OUTLINED_FUNCTION_15_33(v42, v43);

  if (v44 >= 0x7FFFFFFF)
  {
    v45 = 0x7FFFFFFFLL;
  }

  else
  {
    v45 = v44;
  }

  if (v45 <= 0xFFFFFFFF80000000)
  {
    v46 = 0xFFFFFFFF80000000;
  }

  else
  {
    v46 = v45;
  }

  [v0 setIsDeviceLockStatus_];
  v47 = sub_1DD63D8B8();
  OUTLINED_FUNCTION_15_33(v47, v48);

  OUTLINED_FUNCTION_1_80();
  [v0 setDeviceMotionState_];
  [v0 setIsClientNavigating_];
  v49 = sub_1DD63D8C8();
  v51 = OUTLINED_FUNCTION_15_33(v49, v50);

  if (v51 >= 0x7FFFFFFF)
  {
    v52 = 0x7FFFFFFFLL;
  }

  else
  {
    v52 = v51;
  }

  if (v52 <= 0xFFFFFFFF80000000)
  {
    v53 = 0xFFFFFFFF80000000;
  }

  else
  {
    v53 = v52;
  }

  [v0 setIsCarPlay_];
  OUTLINED_FUNCTION_17();
}

void sub_1DD5101EC(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v34 = a7;
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - v17;
  v19 = *a1;
  v20 = [objc_allocWithZone(MEMORY[0x1E69CEC60]) init];
  sub_1DD3DD9B4(a2, v14, &qword_1ECCDD878, &unk_1DD652060);
  v21 = type metadata accessor for LearningResult();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    v22 = &qword_1ECCDD878;
    v23 = &unk_1DD652060;
    v24 = v14;
  }

  else
  {
    sub_1DD3DD9B4(v14, v18, &qword_1ECCDD880, &qword_1DD652070);
    sub_1DD512660(v14, type metadata accessor for LearningResult);
    v25 = type metadata accessor for LearnedDisambiguation();
    if (__swift_getEnumTagSinglePayload(v18, 1, v25) != 1)
    {
      v29 = *&v18[*(v25 + 32)];
      sub_1DD512660(v18, type metadata accessor for LearnedDisambiguation);
      v26 = v19 == v29;
      if (!v20)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v22 = &qword_1ECCDD880;
    v23 = &qword_1DD652070;
    v24 = v18;
  }

  sub_1DD390754(v24, v22, v23);
  v26 = 0;
  if (v20)
  {
LABEL_6:
    v27 = *(v30 + *(type metadata accessor for LearnedDisambiguation() + 32));
    v28 = v20;
    sub_1DD510450(v27, v19, v26, v31, v32, v33, v34);
  }

LABEL_7:
  *a8 = v20;
}

id sub_1DD510450(int a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a7;
  v11 = sub_1DD63D818();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v85 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_22_24(v20, v21, v22, v23, v24, v25, v26, v27, v79);
  MEMORY[0x1EEE9AC00](v28);
  v83 = &v79 - v29;
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v33 = &v79 - v32;
  [v7 setChoice_];
  [v7 setIsUserSelectedChoice_];
  [v7 setIsModelPredictedChoice_];
  v34 = OUTLINED_FUNCTION_2_69();
  [v7 setFrequencyPercentage_];
  v36 = OUTLINED_FUNCTION_2_69();
  v40 = sub_1DD4C2940(v36, v37, v38, v39);
  if (v40 >= 0x7FFFFFFF)
  {
    v41 = 0x7FFFFFFFLL;
  }

  else
  {
    v41 = v40;
  }

  if (v41 <= 0xFFFFFFFF80000000)
  {
    v42 = 0xFFFFFFFF80000000;
  }

  else
  {
    v42 = v41;
  }

  [v7 setRecencySeconds_];
  v43 = OUTLINED_FUNCTION_2_69();
  v47 = sub_1DD4C2994(v43, v44, v45, v46);
  if (v47 >= 0x7FFFFFFF)
  {
    v48 = 0x7FFFFFFFLL;
  }

  else
  {
    v48 = v47;
  }

  if (v48 <= 0xFFFFFFFF80000000)
  {
    v49 = 0xFFFFFFFF80000000;
  }

  else
  {
    v49 = v48;
  }

  [v7 setRecencyRank_];
  v50 = OUTLINED_FUNCTION_2_69();
  v52 = sub_1DD4C29E8(v50, v51);
  if (v52 >= 0x7FFFFFFF)
  {
    v53 = 0x7FFFFFFFLL;
  }

  else
  {
    v53 = v52;
  }

  if (v53 <= 0xFFFFFFFF80000000)
  {
    v54 = 0xFFFFFFFF80000000;
  }

  else
  {
    v54 = v53;
  }

  [v7 setLastContiguousCount_];
  v55 = *MEMORY[0x1E69D2BD0];
  v56 = *(v14 + 104);
  v56(v33, v55, v11);
  v57 = v82;
  v58 = sub_1DD4C3A74(a2, v33, v82);
  v59 = *(v14 + 8);
  v60 = OUTLINED_FUNCTION_9_42();
  v59(v60);
  *&v61 = v58;
  [v7 setLocationAffinity300Meters_];
  v81 = *MEMORY[0x1E69D2BE0];
  (v56)(v33);
  v62 = OUTLINED_FUNCTION_13_34();
  v63 = OUTLINED_FUNCTION_9_42();
  v59(v63);
  *&v64 = v62;
  [v7 setLocationAffinity2500Meters_];
  v80 = *MEMORY[0x1E69D2BD8];
  (v56)(v33);
  v65 = OUTLINED_FUNCTION_13_34();
  v66 = OUTLINED_FUNCTION_9_42();
  v59(v66);
  *&v67 = v65;
  [v7 setLocationAffinity156Kilometers_];
  v56(v83, v55, v11);
  OUTLINED_FUNCTION_13_34();
  v69 = v68;
  v70 = OUTLINED_FUNCTION_9_42();
  v59(v70);
  [v7 setLocationFrequencyCount300Meters_];
  v56(v84, v81, v11);
  OUTLINED_FUNCTION_13_34();
  v72 = v71;
  v73 = OUTLINED_FUNCTION_9_42();
  v59(v73);
  [v7 setLocationFrequencyCount2500Meters_];
  v74 = v85;
  v56(v85, v80, v11);
  v75 = sub_1DD4C3A74(a2, v74, v57);
  v77 = v76;
  (v59)(v74, v11, v75);
  return [v7 setLocationFrequencyCount156Kilometers_];
}

void sub_1DD510844()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69CEBA0]) init];
  if (v12)
  {
    v13 = v12;
    v14 = type metadata accessor for LearnedDisambiguation();
    v15 = *(v1 + *(v14 + 32));
    sub_1DD3DD9B4(v7, v11, &qword_1ECCDD880, &qword_1DD652070);
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
    {
      sub_1DD390754(v11, &qword_1ECCDD880, &qword_1DD652070);
      v16 = 0;
    }

    else
    {
      v24 = *&v11[*(v14 + 32)];
      OUTLINED_FUNCTION_5_59();
      sub_1DD512660(v11, v25);
      v16 = v15 == v24;
    }

    [v13 setIsDecisionCorrect_];
    sub_1DD39638C(0, &qword_1ECCDE3D8, 0x1E69CF650);

    sub_1DD50F51C(v5, v3);
    if (v26)
    {
      v27 = v26;
      v28 = sub_1DD510AEC();
    }

    else
    {
      v28 = 0;
    }

    [v13 setModelVersion_];
    if (*(*(v1 + *(v14 + 28)) + 16) >= 0x7FFFFFFFuLL)
    {
      v29 = 0x7FFFFFFFLL;
    }

    else
    {
      v29 = *(*(v1 + *(v14 + 28)) + 16);
    }

    [v13 setNumCandidateApps_];
    [v13 setProjectIntent_];
    v30 = v13;
    sub_1DD510CE0();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v17 = sub_1DD63F9F8();
    v32 = OUTLINED_FUNCTION_11(v17, qword_1ECD0DDF0);
    sub_1DD640378();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(v32, v18))
    {
      v19 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v19);
      OUTLINED_FUNCTION_32_3(&dword_1DD38D000, v20, v21, "Cannot create INFERENCESchemaINFERENCEABModelResultTriggered");
      OUTLINED_FUNCTION_19_0();
    }

    OUTLINED_FUNCTION_17();
  }
}

id sub_1DD510AEC()
{
  result = [v0 major];
  v2 = 10000 * result;
  if ((v2 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [v0 minor];
  v3 = 100 * result;
  if ((v3 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = [v0 patch];
  v4 = __CFADD__(v5, v6);
  result = (v5 + v6);
  if (v4)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_1DD510B78(uint64_t a1, char a2)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69CEBA8]) init];
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      [v6 setTriggerReason_];
    }

    else
    {
      if (*(a1 + *(type metadata accessor for LearningResult() + 24)) == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      [v7 setTriggerReason_];
    }

    [v7 setProjectIntent_];
    oslog = v7;
    sub_1DD510CE0();
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v8 = sub_1DD63F9F8();
    oslog = OUTLINED_FUNCTION_11(v8, qword_1ECD0DDF0);
    sub_1DD640378();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v10);
      _os_log_impl(&dword_1DD38D000, oslog, v2, "Cannot create INFERENCESchemaINFERENCEABModelResultTriggered", v3, 2u);
      OUTLINED_FUNCTION_19_0();
    }
  }
}

void sub_1DD510CE0()
{
  OUTLINED_FUNCTION_18_4();
  v103 = v0;
  v106 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22_24(v12, v13, v14, v15, v16, v17, v18, v19, v100);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100 - v21;
  v23 = sub_1DD63D0F8();
  v24 = OUTLINED_FUNCTION_0(v23);
  v107 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1_4();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v100 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v100 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v105 = &v100 - v38;
  v39 = [objc_allocWithZone(MEMORY[0x1E69CEBD8]) init];
  if (v39)
  {
    v40 = v39;
    v41 = [objc_allocWithZone(MEMORY[0x1E69CEBE0]) init];
    if (v41)
    {
      v42 = v41;
      __swift_project_boxed_opaque_existential_1(v3 + 9, v3[12]);
      sub_1DD587288(v22);
      if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
      {
        sub_1DD390754(v22, &qword_1ECCDBAC8, &qword_1DD643E60);
        v43 = v106;
        if (qword_1ECCDB0E0 != -1)
        {
          OUTLINED_FUNCTION_0_7();
        }

        v44 = sub_1DD63F9F8();
        v45 = OUTLINED_FUNCTION_11(v44, qword_1ECD0DDF0);
        v46 = sub_1DD640378();
        if (OUTLINED_FUNCTION_5_6(v46))
        {
          *OUTLINED_FUNCTION_9() = 0;
          OUTLINED_FUNCTION_18(&dword_1DD38D000, v47, v48, "LoggingDataEmitter: No requestUUID, not emitting SELF.");
          OUTLINED_FUNCTION_0_1();
        }
      }

      else
      {
        v102 = v42;
        (v107[4].isa)(v105, v22, v23);
        v58 = v104;
        __swift_storeEnumTagSinglePayload(v104, 1, 1, v23);
        if (v5)
        {
          sub_1DD63D0E8();
          sub_1DD63D0E8();
          sub_1DD390754(v58, &qword_1ECCDBAC8, &qword_1DD643E60);
          __swift_storeEnumTagSinglePayload(v10, 0, 1, v23);
          sub_1DD4BA6E8(v10, v58);
          v42 = v106;
          v59 = v58;
        }

        else
        {
          v60 = objc_opt_self();
          v61 = sub_1DD63D0B8();
          v62 = [v60 derivedIdentifierForComponentName:27 fromSourceIdentifier:v61];

          if (!v62)
          {
            v42 = v106;
            if (qword_1ECCDB0E0 != -1)
            {
              OUTLINED_FUNCTION_0_7();
            }

            v75 = sub_1DD63F9F8();
            v76 = OUTLINED_FUNCTION_11(v75, qword_1ECD0DDF0);
            v77 = sub_1DD640378();
            v78 = OUTLINED_FUNCTION_5_6(v77);
            v79 = v104;
            if (v78)
            {
              *OUTLINED_FUNCTION_9() = 0;
              OUTLINED_FUNCTION_30_14(&dword_1DD38D000, v80, v81, "LoggingDataEmitter: No inferenceUUID, not emitting SELF.");
              OUTLINED_FUNCTION_0_1();
            }

            sub_1DD390754(v79, &qword_1ECCDBAC8, &qword_1DD643E60);
            (v107[1].isa)(v105, v23);
            goto LABEL_41;
          }

          sub_1DD63D0D8();

          (v107[2].isa)(v36, v33, v23);
          sub_1DD39638C(0, &qword_1ECCDE3D0, 0x1E69CF5E0);
          v63 = v105;
          sub_1DD5115E8();
          if (!v64)
          {
            if (qword_1ECCDB0E0 != -1)
            {
              OUTLINED_FUNCTION_0_7();
            }

            v82 = sub_1DD63F9F8();
            v83 = OUTLINED_FUNCTION_11(v82, qword_1ECD0DDF0);
            v84 = sub_1DD640378();
            if (os_log_type_enabled(v83, v84))
            {
              *OUTLINED_FUNCTION_9() = 0;
              OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v85, v86, "LoggingDataEmitter: No requestLink, not emitting SELF.");
              OUTLINED_FUNCTION_0_1();
            }

            v87 = OUTLINED_FUNCTION_27_19();
            (v83)(v87);
            sub_1DD390754(v104, &qword_1ECCDBAC8, &qword_1DD643E60);
            v88 = OUTLINED_FUNCTION_9_42();
            (v83)(v88);
            (v83)(v63, v23);

            goto LABEL_42;
          }

          v65 = v3[5];
          v66 = v3[6];
          v67 = v64;
          v100 = __swift_project_boxed_opaque_existential_1(v3 + 2, v65);
          __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
          v68 = *(v66 + 8);
          v101 = v67;
          v68(v67, v10, v65, v66);
          sub_1DD390754(v10, &qword_1ECCDBAC8, &qword_1DD643E60);
          if (qword_1ECCDB0E0 != -1)
          {
            OUTLINED_FUNCTION_0_7();
          }

          v69 = sub_1DD63F9F8();
          v70 = OUTLINED_FUNCTION_11(v69, qword_1ECD0DDF0);
          v71 = sub_1DD640368();
          v72 = os_log_type_enabled(v70, v71);
          v59 = v104;
          if (v72)
          {
            *OUTLINED_FUNCTION_9() = 0;
            OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v73, v74, "LoggingDataEmitter: Emitted requestLink.");
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
          }

          (v107[1].isa)(v33, v23);
          v42 = v106;
        }

        sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
        (v107[2].isa)(v30, v36, v23);
        v89 = sub_1DD5A5500(v30);
        v90 = v102;
        [v102 setInferenceId_];

        [v40 setEventMetadata_];
        [v40 *v103];
        v91 = v3[5];
        v92 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v91);
        (*(v92 + 8))(v40, v59, v91, v92);
        if (qword_1ECCDB0E0 != -1)
        {
          OUTLINED_FUNCTION_0_7();
        }

        v93 = sub_1DD63F9F8();
        v94 = OUTLINED_FUNCTION_11(v93, qword_1ECD0DDF0);
        v95 = sub_1DD640368();
        if (OUTLINED_FUNCTION_5_6(v95))
        {
          *OUTLINED_FUNCTION_9() = 0;
          OUTLINED_FUNCTION_30_14(&dword_1DD38D000, v96, v97, "LoggingDataEmitter: Emitted training data.");
          OUTLINED_FUNCTION_0_1();
        }

        sub_1DD390754(v59, &qword_1ECCDBAC8, &qword_1DD643E60);
        isa = v107[1].isa;
        v99 = OUTLINED_FUNCTION_9_42();
        (isa)(v99);
        (isa)(v105, v23);
      }

LABEL_41:

LABEL_42:
      OUTLINED_FUNCTION_17();
      return;
    }
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v49 = sub_1DD63F9F8();
  v107 = OUTLINED_FUNCTION_11(v49, qword_1ECD0DDF0);
  sub_1DD640378();
  OUTLINED_FUNCTION_21_18();
  v51 = os_log_type_enabled(v107, v50);
  v52 = v106;
  if (v51)
  {
    v53 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v53);
    OUTLINED_FUNCTION_32_3(&dword_1DD38D000, v54, v55, "LoggingDataEmitter: Cannot create INFERENCESchemaINFERENCEClientEvent/INFERENCESchemaINFERENCEClientEventMetadata");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD5115E8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD63D0F8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
      if (v17)
      {
        v18 = v17;
        [v17 setComponent_];
        sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
        v19 = *(v7 + 16);
        v19(v12, v3, v4);
        v20 = sub_1DD5A5500(v12);
        [v18 setUuid_];

        [v14 setSource_];
        [v16 setComponent_];
        v19(v12, v1, v4);
        v21 = sub_1DD5A5500(v12);
        [v16 setUuid_];

        [v14 setTarget_];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = v14;
    }
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v22 = sub_1DD63F9F8();
  v23 = OUTLINED_FUNCTION_11(v22, qword_1ECD0DDF0);
  v24 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v24))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v25, v26, "Failed to create RequestLink SELF message templates. Skipping Emission.");
    OUTLINED_FUNCTION_0_1();
  }

LABEL_13:
  OUTLINED_FUNCTION_17();
}

uint64_t *sub_1DD511850()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  return v0;
}

uint64_t sub_1DD511880()
{
  sub_1DD511850();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5118B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9D8, &qword_1DD6530B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  sub_1DD59BA04(a1, a2, a4);
  v12 = sub_1DD63D4F8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1DD390754(v11, &qword_1ECCDD9D8, &qword_1DD6530B0);
  }

  else
  {
    v13 = sub_1DD63D4E8();
    v15 = v14;
    (*(*(v12 - 8) + 8))(v11, v12);
    if ((v15 & 1) == 0)
    {
      return v13;
    }
  }

  if (qword_1ECCDB0E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD63F9F8();
  __swift_project_value_buffer(v16, qword_1ECD0DDF0);

  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640378();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DD39565C(a1, a2, &v23);
    _os_log_impl(&dword_1DD38D000, v17, v18, "Missing value for key [%s]", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12B3DA0](v20, -1, -1);
    MEMORY[0x1E12B3DA0](v19, -1, -1);
  }

  return a3;
}

void sub_1DD511B40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1DD3DD9B4(a2, &v12 - v8, &qword_1ECCDBAC8, &qword_1DD643E60);
  v10 = sub_1DD63D0F8();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = sub_1DD63D0B8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  [v3 emitMessage:a1 isolatedStreamUUID:v11];
}

uint64_t sub_1DD511C60()
{
  v0 = sub_1DD4F1D4C();
  v4 = sub_1DD511CC8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1DD511CC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DD63FED8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DD640618();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DD3958E0(v9, 0);
  v12 = sub_1DD511E28(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DD63FED8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DD640948();
LABEL_4:

  return sub_1DD63FED8();
}

unint64_t sub_1DD511E28(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1DD625824(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DD63FFD8();
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
          result = sub_1DD640948();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1DD625824(v12, a6, a7);
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

    result = sub_1DD63FFA8();
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

unsigned __int8 *sub_1DD512038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1DD640048();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DD511C60();
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
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
      result = sub_1DD640948();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_47:
            v16 = 0;
            v19 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 0;
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v22 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v21 = v17 + v18;
            v22 = v20 >= v21;
            v14 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v19 = 0;
        v16 = 0;
LABEL_129:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_129;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if ((v68 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v69 = v66 + v67;
          v22 = __CFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_128;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v22 = v51 >= v52;
          v44 = v51 - v52;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_129;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if ((v60 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v61 = v58 + v59;
        v22 = __CFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      v19 = v44;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void sub_1DD5125DC(uint64_t a1, void *a2)
{
  sub_1DD39638C(0, &qword_1ECCDE3E0, 0x1E69CEC60);
  v3 = sub_1DD6400F8();

  [a2 setChoiceDependentSignals_];
}

uint64_t sub_1DD512660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD5126B8()
{
  result = qword_1ECCDDF30;
  if (!qword_1ECCDDF30)
  {
    sub_1DD63D7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDF30);
  }

  return result;
}

float OUTLINED_FUNCTION_13_34()
{

  return sub_1DD4C3A74(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_19(uint64_t a1, unint64_t a2)
{

  return sub_1DD5118B4(a1, a2, 0, v2);
}

void OUTLINED_FUNCTION_30_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1DD5127A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v3 = 1;
  v2 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(12, 0, 0, &v3, 2, 0, 0, &v2);
  *(inited + 64) = xmmword_1DD643660;
  *(inited + 80) = 0;
  v3 = 1;
  v2 = 1;
  swift_allocObject();
  *(inited + 88) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(1, 0, 0, &v3, 3, 30, 0, &v2);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void sub_1DD5128E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = [objc_allocWithZone(MEMORY[0x1E696F260]) init];
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  sub_1DD5131D0(v12, v13, v21);
  v14 = type metadata accessor for LocationResolutionContext();
  v15 = a2 + *(v14 + 32);
  v16 = 0.0;
  if (*(v15 + 8))
  {
    v17 = 0.0;
  }

  else
  {
    v18 = a2 + *(v14 + 36);
    v17 = 0.0;
    if ((*(v18 + 8) & 1) == 0)
    {
      v16 = *v18;
      v17 = *v15;
    }
  }

  v19 = CLLocationCoordinate2DMake(v17, v16);
  MEMORY[0x1E12B32E0](v19.latitude, v19.longitude, 150.0, 150.0);
  [v21 setRegion_];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  sub_1DD513060(v21, sub_1DD513234, v20);
}

void sub_1DD512A58(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    __src[0] = a2;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    type metadata accessor for MKError(0);
    if (swift_dynamicCast())
    {
      __src[0] = __dst[0];
      sub_1DD5132EC();
      sub_1DD63CD68();
      if (__dst[0] == 4)
      {
        a3(MEMORY[0x1E69E7CC0], 0);

        return;
      }
    }

    v15 = a2;
    a3(a2, 1);
  }

  else
  {
    if (a1)
    {
      v6 = qword_1ECCDB0B8;
      v7 = a1;
      if (v6 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v8 = sub_1DD63F9F8();
        __swift_project_value_buffer(v8, qword_1ECD0DDA8);
        v28 = v7;
        v9 = sub_1DD63F9D8();
        v10 = sub_1DD640368();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 134217984;
          v12 = [v28 mapItems];
          sub_1DD5132A8();
          v13 = sub_1DD640118();

          v14 = sub_1DD3CC020(v13);

          *(v11 + 4) = v14;

          _os_log_impl(&dword_1DD38D000, v9, v10, "response object size: %ld", v11, 0xCu);
          MEMORY[0x1E12B3DA0](v11, -1, -1);
        }

        else
        {

          v9 = v28;
        }

        v18 = [v28 mapItems];
        sub_1DD5132A8();
        v19 = sub_1DD640118();

        v20 = sub_1DD3CC020(v19);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        v27 = a3;
        v31[0] = MEMORY[0x1E69E7CC0];
        v7 = v31;
        sub_1DD42BDE0(0, v20 & ~(v20 >> 63), 0);
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v22 = 0;
        v23 = v31[0];
        while (v22 < v21)
        {
          a3 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
            goto LABEL_33;
          }

          sub_1DD408BFC(v22);
          if ((v19 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1E12B2C10](v22, v19);
          }

          else
          {
            v24 = *(v19 + 8 * v22 + 32);
          }

          v7 = v24;
          MKMapItem.toLocation()(__src);

          memcpy(__dst, __src, sizeof(__dst));
          v31[0] = v23;
          v26 = v23[2];
          v25 = v23[3];
          if (v26 >= v25 >> 1)
          {
            v7 = v31;
            sub_1DD42BDE0(v25 > 1, v26 + 1, 1);
            v23 = v31[0];
          }

          v23[2] = v26 + 1;
          memcpy(&v23[89 * v26 + 4], __dst, 0x2C8uLL);
          if (a3 == v21)
          {

            a3 = v27;
            goto LABEL_29;
          }

          ++v22;
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        swift_once();
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_29:
      a3(v23, 0);

      v17 = v28;
    }

    else
    {
      sub_1DD513254();
      v16 = swift_allocError();
      a3(v16, 1);
      v17 = v16;
    }
  }
}

void sub_1DD513060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696F248]) initWithRequest_];
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1DD513140;
  v7[3] = &block_descriptor_9;
  v6 = _Block_copy(v7);

  [v5 startWithCompletionHandler_];
  _Block_release(v6);
}

void sub_1DD513140(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1DD5131D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();

  [a3 setNaturalLanguageQuery_];
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DD513254()
{
  result = qword_1ECCDE3E8;
  if (!qword_1ECCDE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE3E8);
  }

  return result;
}

unint64_t sub_1DD5132A8()
{
  result = qword_1ECCDE3F0;
  if (!qword_1ECCDE3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDE3F0);
  }

  return result;
}

unint64_t sub_1DD5132EC()
{
  result = qword_1ECCDB6A8;
  if (!qword_1ECCDB6A8)
  {
    type metadata accessor for MKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB6A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5133F4()
{
  result = qword_1ECCDE3F8;
  if (!qword_1ECCDE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE3F8);
  }

  return result;
}

uint64_t (*Match.signals.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t Match.description.getter(uint64_t a1)
{
  sub_1DD6408D8();

  v3 = sub_1DD636AD4(v1, *(a1 + 16));
  MEMORY[0x1E12B2260](v3);

  MEMORY[0x1E12B2260](0x736C616E6769730ALL, 0xEA0000000000203ALL);
  v4 = sub_1DD636AD4(v1 + *(a1 + 36), *(a1 + 24));
  MEMORY[0x1E12B2260](v4);

  return 0x203A65756C6176;
}

uint64_t sub_1DD51360C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C616E676973 && a2 == 0xE700000000000000)
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

uint64_t sub_1DD5136D0(char a1)
{
  if (a1)
  {
    return 0x736C616E676973;
  }

  else
  {
    return 0x65756C6176;
  }
}

BOOL sub_1DD513704(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1DD39AA08(*a1, *a2);
}

uint64_t sub_1DD513718(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DD3B20A8(*v1);
}

uint64_t sub_1DD513728(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1DD3AA564(a1, *v2);
}

uint64_t sub_1DD513738(uint64_t a1, uint64_t a2)
{
  sub_1DD640E28();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1DD3AA564(v7, *v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD513780(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DD5136D0(*v1);
}

uint64_t sub_1DD513790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1DD51360C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DD5137C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1DD3B20F0();
}

uint64_t sub_1DD5137E8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1DD3B20A0();
  *a2 = result;
  return result;
}

uint64_t sub_1DD513818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DD51386C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Match<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[4] = a4;
  v21[2] = a6;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v21[0] = a2;
  v21[1] = v7;
  type metadata accessor for Match.CodingKeys();
  OUTLINED_FUNCTION_1_81();
  swift_getWitnessTable();
  v9 = sub_1DD640C88();
  OUTLINED_FUNCTION_7_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD640EF8();
  v23 = 0;
  v18 = v21[5];
  sub_1DD640C68();
  if (!v18)
  {
    v19 = *(v21[0] + 36);
    v22 = 1;
    sub_1DD640C68();
  }

  return (*(v11 + 8))(v16, v9);
}

uint64_t Match<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v47 = a5;
  v51 = a4;
  v45 = a6;
  OUTLINED_FUNCTION_7_0();
  v44 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v46 = v13;
  OUTLINED_FUNCTION_7_0();
  v49 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v52 = v18;
  type metadata accessor for Match.CodingKeys();
  OUTLINED_FUNCTION_1_81();
  swift_getWitnessTable();
  v53 = sub_1DD640BA8();
  OUTLINED_FUNCTION_7_0();
  v48 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v50 = a2;
  v23 = type metadata accessor for Match();
  OUTLINED_FUNCTION_7_0();
  v43 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v43 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v54;
  sub_1DD640ED8();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v29;
  v54 = v23;
  v33 = v49;
  v56 = 0;
  v34 = v50;
  sub_1DD640B78();
  v35 = *(v33 + 32);
  v51 = v32;
  v35(v32, v52, v34);
  v55 = 1;
  v36 = v46;
  sub_1DD640B78();
  v37 = OUTLINED_FUNCTION_4_56();
  v38(v37);
  v39 = v54;
  v40 = v51;
  (*(v44 + 32))(&v51[*(v54 + 36)], v36, a3);
  v41 = v43;
  (*(v43 + 16))(v45, v40, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v41 + 8))(v40, v39);
}

uint64_t static Match<>.== infix(_:_:)()
{
  if ((sub_1DD63FD98() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for Match() + 36);
  return sub_1DD63FD98() & 1;
}

uint64_t sub_1DD513F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  return static Match<>.== infix(_:_:)();
}

uint64_t sub_1DD513F34(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD513FC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}