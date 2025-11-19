_BYTE *sub_2704F000C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704F00D4);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704F010C()
{
  result = qword_2807D53F8;
  if (!qword_2807D53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D53F8);
  }

  return result;
}

unint64_t sub_2704F0164()
{
  result = qword_2807D5400;
  if (!qword_2807D5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5400);
  }

  return result;
}

unint64_t sub_2704F01BC()
{
  result = qword_2807D5408;
  if (!qword_2807D5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5408);
  }

  return result;
}

unint64_t sub_2704F0214()
{
  result = qword_2807D5410;
  if (!qword_2807D5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5410);
  }

  return result;
}

unint64_t sub_2704F0268()
{
  result = qword_2807D5418;
  if (!qword_2807D5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5418);
  }

  return result;
}

uint64_t sub_2704F02C8()
{
  OUTLINED_FUNCTION_22_8();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0);
  return v0;
}

BOOL sub_2704F0328()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  return v0 != 0;
}

BOOL sub_2704F0384@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704F0328();
  *a1 = result;
  return result;
}

uint64_t sub_2704F03B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704F0364();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2704F03E4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704F0328();
  *a1 = result;
  return result;
}

uint64_t sub_2704F0410(uint64_t a1)
{
  v2 = sub_2704F0488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F044C(uint64_t a1)
{
  v2 = sub_2704F0488();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2704F0488()
{
  result = qword_2807D5428;
  if (!qword_2807D5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PayloadFactory.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704F0584);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704F05C0()
{
  result = qword_2807D5440;
  if (!qword_2807D5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5440);
  }

  return result;
}

unint64_t sub_2704F0618()
{
  result = qword_2807D5448;
  if (!qword_2807D5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5448);
  }

  return result;
}

unint64_t sub_2704F0670()
{
  result = qword_2807D5450;
  if (!qword_2807D5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5450);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return sub_2705D8484();
}

uint64_t OUTLINED_FUNCTION_15_28()
{

  return sub_2704F02C8();
}

__n128 PlatterModel.init(additionalActionElements:asset:branding:details:sections:subtitle:title:)@<Q0>(uint64_t a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 784) = a5;
  *a8 = a1;
  memcpy((a8 + 8), a2, 0x160uLL);
  memcpy((a8 + 360), a3, 0x160uLL);
  v13 = a7[1];
  *(a8 + 752) = *a7;
  *(a8 + 768) = v13;
  result = *a6;
  v15 = *(a6 + 16);
  *(a8 + 720) = *a6;
  *(a8 + 736) = v15;
  *(a8 + 712) = a4;
  return result;
}

uint64_t sub_2704F07D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000270613D50 == a2;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646E617262 && a2 == 0xE800000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_2705D8134();

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

unint64_t sub_2704F0A00(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x676E69646E617262;
      break;
    case 3:
      result = 0x736C6961746564;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x736E6F6974636573;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_2704F0AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704F07D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704F0B10(uint64_t a1)
{
  v2 = sub_2704F0FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F0B4C(uint64_t a1)
{
  v2 = sub_2704F0FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlatterModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5458);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *v1;
  memcpy(v38, v1 + 1, sizeof(v38));
  memcpy(v39, v1 + 45, 0x160uLL);
  v10 = v1[89];
  v11 = v1[90];
  v27 = v1[91];
  v28 = v10;
  v26 = v1[92];
  v12 = v1[93];
  v24 = v11;
  v25 = v12;
  v13 = v1[94];
  v14 = v1[95];
  v22 = v1[96];
  v23 = v14;
  v15 = v1[97];
  v20 = v13;
  v21 = v15;
  v19 = v1[98];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704F0FDC();

  sub_2705D84C4();
  v37[0] = v9;
  v36[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2468);
  sub_2704F1030();
  v16 = v29;
  sub_2705D8024();
  if (v16)
  {
  }

  else
  {
    v17 = v28;

    memcpy(v37, v38, sizeof(v37));
    v42 = 1;
    sub_2703CAAEC(v38, v36, &qword_2807D2478);
    sub_2703BAED8();
    OUTLINED_FUNCTION_6_47();
    memcpy(v36, v37, sizeof(v36));
    sub_2703B2934(v36, &qword_2807D2478);
    memcpy(v35, v39, sizeof(v35));
    v41 = 2;
    sub_2703CAAEC(v39, v34, &qword_2807D2480);
    sub_2703BE9D4();
    OUTLINED_FUNCTION_6_47();
    memcpy(v34, v35, sizeof(v34));
    sub_2703B2934(v34, &qword_2807D2480);
    v30 = v17;
    v40 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5468);
    sub_2704F10B4();
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_6_47();
    v30 = v24;
    v31 = v27;
    v32 = v26;
    v33 = v25;
    v40 = 4;
    sub_2703C3A18(v24, v27);
    sub_2703C3970();
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_6_47();
    sub_2703C3A5C(v30, v31);
    v30 = v20;
    v31 = v23;
    v32 = v22;
    v33 = v21;
    v40 = 5;
    sub_2703C3A18(v20, v23);
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_6_47();
    sub_2703C3A5C(v30, v31);
    v30 = v19;
    v40 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5478);
    sub_2704F1138();
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_6_47();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_2704F0FDC()
{
  result = qword_2807D5460;
  if (!qword_2807D5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5460);
  }

  return result;
}

unint64_t sub_2704F1030()
{
  result = qword_2807D2470;
  if (!qword_2807D2470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2468);
    sub_2703B15B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2470);
  }

  return result;
}

unint64_t sub_2704F10B4()
{
  result = qword_2807D5470;
  if (!qword_2807D5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5468);
    sub_2703C3970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5470);
  }

  return result;
}

unint64_t sub_2704F1138()
{
  result = qword_2807D5480;
  if (!qword_2807D5480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5478);
    sub_2704F11BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5480);
  }

  return result;
}

unint64_t sub_2704F11BC()
{
  result = qword_2807D5488;
  if (!qword_2807D5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5488);
  }

  return result;
}

uint64_t PlatterModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5490);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704F0FDC();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2468);
  sub_2704F17F4();
  OUTLINED_FUNCTION_8_40();
  OUTLINED_FUNCTION_5_51();
  v20 = v24;
  v41[375] = 1;
  sub_2703BAE84();
  OUTLINED_FUNCTION_5_51();
  memcpy(v41, v39, 0x160uLL);
  v41[374] = 2;
  sub_2703BE980();
  OUTLINED_FUNCTION_5_51();
  memcpy(v40, v38, sizeof(v40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5468);
  sub_2704F1878();
  OUTLINED_FUNCTION_8_40();
  OUTLINED_FUNCTION_5_51();
  v19 = v24;
  sub_2703C3F58();
  OUTLINED_FUNCTION_3_52();
  v16 = v24;
  v17 = v25[0];
  v18 = v25[1];
  v15 = v25[2];
  LOBYTE(v23[0]) = 5;
  OUTLINED_FUNCTION_3_52();
  v7 = v24;
  v8 = v25[0];
  v9 = v25[1];
  v14 = v25[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5478);
  v41[373] = 6;
  sub_2704F18FC();
  OUTLINED_FUNCTION_5_51();
  v21 = v24;
  v10 = OUTLINED_FUNCTION_1_59();
  v11(v10);
  v12 = v37;
  v23[0] = v20;
  memcpy(&v23[1], v41, 0x160uLL);
  memcpy(&v23[45], v40, 0x160uLL);
  v23[89] = v19;
  v23[90] = v16;
  v23[91] = v17;
  v23[92] = v18;
  v23[93] = v15;
  v23[94] = v7;
  v23[95] = v8;
  v23[96] = v9;
  v23[97] = v14;
  v23[98] = v37;
  memcpy(v6, v23, 0x318uLL);
  sub_270436178(v23, &v24);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = v20;
  memcpy(v25, v41, sizeof(v25));
  memcpy(v26, v40, sizeof(v26));
  v27 = v19;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v15;
  v32 = v21;
  v33 = v8;
  v34 = v9;
  v35 = v14;
  v36 = v12;
  return sub_2704360B8(&v24);
}

unint64_t sub_2704F17F4()
{
  result = qword_2807D2490;
  if (!qword_2807D2490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2468);
    sub_2703B1564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2490);
  }

  return result;
}

unint64_t sub_2704F1878()
{
  result = qword_2807D5498;
  if (!qword_2807D5498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5468);
    sub_2703C3F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5498);
  }

  return result;
}

unint64_t sub_2704F18FC()
{
  result = qword_2807D54A0;
  if (!qword_2807D54A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5478);
    sub_2704F1980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D54A0);
  }

  return result;
}

unint64_t sub_2704F1980()
{
  result = qword_2807D54A8;
  if (!qword_2807D54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D54A8);
  }

  return result;
}

uint64_t sub_2704F1A0C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 792))
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

uint64_t sub_2704F1A60(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
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
      *(result + 792) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 792) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatterModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x2704F1C60);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704F1C9C()
{
  result = qword_2807D54B0;
  if (!qword_2807D54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D54B0);
  }

  return result;
}

unint64_t sub_2704F1CF4()
{
  result = qword_2807D54B8;
  if (!qword_2807D54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D54B8);
  }

  return result;
}

unint64_t sub_2704F1D4C()
{
  result = qword_2807D54C0;
  if (!qword_2807D54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D54C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_5_51()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_6_47()
{

  return sub_2705D8024();
}

uint64_t sub_2704F1E94()
{
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_23_17();
  return sub_2705D8414();
}

uint64_t sub_2704F1F98()
{
  v0 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_13_30(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704F1FE0()
{
  v0 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_13_30(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704F20BC(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_31_13();
  a2(v5, a1);
  return sub_2705D8414();
}

uint64_t sub_2704F225C(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_31_13();
  a2(a1);
  OUTLINED_FUNCTION_32_10();

  return sub_2705D8414();
}

uint64_t sub_2704F22EC(uint64_t a1, unsigned __int8 a2)
{
  sub_2705D83B4();
  MEMORY[0x2743A47E0](a2);
  return sub_2705D8414();
}

uint64_t sub_2704F233C()
{
  sub_2705D83B4();
  OUTLINED_FUNCTION_23_17();
  return sub_2705D8414();
}

uint64_t sub_2704F2398()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2458()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F24BC()
{
  sub_2705D83B4();
  sub_2705D7634();

  return sub_2705D8414();
}

uint64_t sub_2704F2588()
{
  OUTLINED_FUNCTION_19_17();
  sub_2705D7634();

  return sub_2705D8414();
}

uint64_t sub_2704F2620()
{
  OUTLINED_FUNCTION_19_17();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_3();
  }

  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2690()
{
  sub_2705D83B4();
  sub_2705D7634();

  return sub_2705D8414();
}

uint64_t sub_2704F272C()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F27F8()
{
  v0 = sub_2705D83B4();
  OUTLINED_FUNCTION_13_30(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704F2844()
{
  v0 = sub_2705D83B4();
  OUTLINED_FUNCTION_13_30(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704F2890()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2960()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F29F0()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2AC4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_2705D83B4();
  a3(v6, a2);
  return sub_2705D8414();
}

uint64_t sub_2704F2B58()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2BC4()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2C7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2705D83B4();
  a3(a2);
  OUTLINED_FUNCTION_32_10();

  return sub_2705D8414();
}

uint64_t sub_2704F2CD0()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2D50()
{
  OUTLINED_FUNCTION_19_17();
  sub_2705D7634();

  return sub_2705D8414();
}

uint64_t sub_2704F2DBC()
{
  OUTLINED_FUNCTION_19_17();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_3();
  }

  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2E30()
{
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_24_20();

  return sub_2705D8414();
}

uint64_t sub_2704F2EA0()
{
  v0 = sub_2705D7EB4();

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

uint64_t sub_2704F2EF4(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_2704F2F54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704F2EA0();
  *a1 = result;
  return result;
}

uint64_t sub_2704F2F84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704F2EF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 PlatterCellModel.InteractionMetrics.init(additionalImpressionMetrics:additionalClickMetrics:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u8[0];
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = v4;
  return result;
}

uint64_t sub_2704F30CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001BLL && 0x8000000270615210 == a2;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002706133F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

unint64_t sub_2704F31A0(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_2704F31E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704F30CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704F3208(uint64_t a1)
{
  v2 = sub_2704F3428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F3244(uint64_t a1)
{
  v2 = sub_2704F3428();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlatterCellModel.InteractionMetrics.encode(to:)()
{
  OUTLINED_FUNCTION_10_1();
  v17 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D54C8);
  OUTLINED_FUNCTION_0();
  v18 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v10 = *v0;
  v9 = *(v0 + 8);
  v11 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = v11;
  v22 = *(v0 + 40);
  v12 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2703AE9E8(v10, v9, v12);
  sub_2704F3428();
  sub_2705D84C4();
  v19 = v10;
  v20 = v9;
  v21 = v12;
  sub_2703C39C4();
  OUTLINED_FUNCTION_30_14();
  v13 = v17;
  sub_2705D8024();
  sub_2703AE980(v19, v20, v21);
  if (!v13)
  {
    v19 = v16;
    v20 = v15;
    v21 = v22;
    sub_2703AE9E8(v16, v15, v22);
    OUTLINED_FUNCTION_30_14();
    sub_2705D8024();
    sub_2703AE980(v19, v20, v21);
  }

  (*(v18 + 8))(v8, v4);
  OUTLINED_FUNCTION_11_3();
}

unint64_t sub_2704F3428()
{
  result = qword_2807D54D0;
  if (!qword_2807D54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D54D0);
  }

  return result;
}

void PlatterCellModel.InteractionMetrics.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D54D8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704F3428();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2703C3FAC();
    OUTLINED_FUNCTION_20_16();
    v11 = v17;
    v16 = v18;
    v20 = v19;
    OUTLINED_FUNCTION_20_16();
    (*(v7 + 8))(v10, v5);
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v16;
    *v4 = v11;
    *(v4 + 8) = v15;
    *(v4 + 16) = v20;
    *(v4 + 24) = v12;
    *(v4 + 32) = v13;
    *(v4 + 40) = v14;
    sub_2703AE9E8(v11, v15, v20);
    sub_2703AE9E8(v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2703AE980(v11, v15, v20);
    sub_2703AE980(v12, v13, v14);
  }

  OUTLINED_FUNCTION_11_3();
}

__n128 PlatterCellModel.SubElement.init(asset:subtitle:title:)@<Q0>(void *__src@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  memcpy(a4, __src, 0x160uLL);
  v7 = a2[1];
  a4[22] = *a2;
  a4[23] = v7;
  result = *a3;
  v9 = *(a3 + 16);
  a4[24] = *a3;
  a4[25] = v9;
  return result;
}

uint64_t sub_2704F36FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2704F3804(char a1)
{
  if (!a1)
  {
    return 0x7465737361;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 0x656C746974;
}

uint64_t sub_2704F385C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704F36FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704F3884(uint64_t a1)
{
  v2 = sub_2704F3B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F38C0(uint64_t a1)
{
  v2 = sub_2704F3B38();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlatterCellModel.SubElement.encode(to:)()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D54E0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  memcpy(v31, v0, 0x160uLL);
  v10 = v0[44];
  v23 = v0[45];
  v24 = v10;
  v11 = v0[46];
  v21 = v0[47];
  v22 = v11;
  v12 = v0[48];
  v19 = v0[49];
  v20 = v12;
  v13 = v0[50];
  v17 = v0[51];
  v18 = v13;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704DC0D0(v31, v30);
  sub_2704F3B38();
  sub_2705D84C4();
  memcpy(v30, v31, sizeof(v30));
  sub_2703BAED8();
  sub_2705D8024();
  if (v1)
  {
    memcpy(v29, v30, sizeof(v29));
    sub_2704F3B8C(v29);
  }

  else
  {
    v15 = v19;
    v14 = v20;
    memcpy(v29, v30, sizeof(v29));
    sub_2704F3B8C(v29);
    v25 = v24;
    v26 = v23;
    v27 = v22;
    v28 = v21;
    sub_2703C3A18(v24, v23);
    sub_2703C3970();
    OUTLINED_FUNCTION_26_17();
    sub_2703C3A5C(v25, v26);
    v25 = v14;
    v26 = v15;
    v27 = v18;
    v28 = v17;
    sub_2703C3A18(v14, v15);
    OUTLINED_FUNCTION_26_17();
    sub_2703C3A5C(v25, v26);
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_11_3();
}

unint64_t sub_2704F3B38()
{
  result = qword_2807D54E8;
  if (!qword_2807D54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D54E8);
  }

  return result;
}

uint64_t sub_2704F3B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PlatterCellModel.SubElement.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D54F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704F3B38();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v16 = v4;
    sub_2703BAE84();
    sub_2705D7F44();
    memcpy(v24, v23, sizeof(v24));
    LOBYTE(v17[0]) = 1;
    sub_2703C3F58();
    OUTLINED_FUNCTION_33_13();
    sub_2705D7F44();
    v12 = v18[1];
    v13 = v18[0];
    v14 = v18[3];
    v15 = v18[2];
    OUTLINED_FUNCTION_33_13();
    sub_2705D7F44();
    v6 = OUTLINED_FUNCTION_11_34();
    v7(v6);
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
    memcpy(v17, v24, 0x160uLL);
    v17[44] = v13;
    v17[45] = v12;
    v17[46] = v15;
    v17[47] = v14;
    v17[48] = v19;
    v17[49] = v20;
    v17[50] = v21;
    v17[51] = v22;
    memcpy(v16, v17, 0x1A0uLL);
    sub_2704F3EE4(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v18, v24, 0x160uLL);
    v18[44] = v13;
    v18[45] = v12;
    v18[46] = v15;
    v18[47] = v14;
    v18[48] = v8;
    v18[49] = v9;
    v18[50] = v10;
    v18[51] = v11;
    sub_2704F3F1C(v18);
  }

  OUTLINED_FUNCTION_11_3();
}

__n128 PlatterCellModel.init(style:action:asset:badge:ctaSubtitle:ctaTitle:details:footnote:interactionMetrics:isSelected:subElements:subtitle:title:)@<Q0>(void *__src@<X2>, char *a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, _OWORD *a13, uint64_t a14)
{
  v19 = (a9 + 488);
  v20 = *(a3 + 16);
  v21 = *(a3 + 24);
  v22 = *(a10 + 32);
  v31 = *(a10 + 40);
  v32 = *a2;
  *a9 = *a3;
  *(a9 + 16) = v20;
  *(a9 + 24) = v21;
  memcpy((a9 + 32), __src, 0x160uLL);
  v23 = a4[1];
  *(a9 + 384) = *a4;
  *(a9 + 400) = v23;
  v24 = a5[1];
  *(a9 + 416) = *a5;
  *(a9 + 432) = v24;
  v25 = a6[1];
  *(a9 + 448) = *a6;
  *(a9 + 464) = v25;
  *(a9 + 480) = a7;
  v26 = a8[1];
  *v19 = *a8;
  v19[1] = v26;
  v27 = *(a10 + 16);
  v19[2] = *a10;
  v19[3] = v27;
  *(a9 + 552) = v22;
  *(a9 + 560) = v31;
  *(a9 + 561) = a11;
  *(a9 + 562) = v32;
  *(a9 + 568) = a12;
  v28 = a13[1];
  *(a9 + 576) = *a13;
  *(a9 + 592) = v28;
  result = *a14;
  v30 = *(a14 + 16);
  *(a9 + 608) = *a14;
  *(a9 + 624) = v30;
  return result;
}

uint64_t sub_2704F4090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567646162 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974627553617463 && a2 == 0xEB00000000656C74;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746954617463 && a2 == 0xE800000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000270615230 == a2;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
                    if (v14 || (sub_2705D8134() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656D656C45627573 && a2 == 0xEB0000000073746ELL;
                      if (v15 || (sub_2705D8134() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
                        if (v16 || (sub_2705D8134() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_2705D8134();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
  }
}

uint64_t sub_2704F4484(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_31_13();
  MEMORY[0x2743A47E0](a1);
  return sub_2705D8414();
}

uint64_t sub_2704F44C4(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x7465737361;
    case 2:
      v4 = 1734631778;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 3:
      return 0x6974627553617463;
    case 4:
      v3 = 1415672931;
      goto LABEL_5;
    case 5:
      return 0x736C6961746564;
    case 6:
      return 0x65746F6E746F6F66;
    case 7:
      return 0xD000000000000012;
    case 8:
      return 0x7463656C65537369;
    case 9:
      v4 = 1819898995;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 10:
      return 0x656D656C45627573;
    case 11:
      v3 = 1952609651;
LABEL_5:
      result = v3 | 0x656C746900000000;
      break;
    case 12:
      result = 0x656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704F4670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704F4090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704F4698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704F447C();
  *a1 = result;
  return result;
}

uint64_t sub_2704F46C0(uint64_t a1)
{
  v2 = sub_2704F4DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F46FC(uint64_t a1)
{
  v2 = sub_2704F4DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlatterCellModel.encode(to:)()
{
  OUTLINED_FUNCTION_10_1();
  v93 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D54F8);
  OUTLINED_FUNCTION_0();
  v94 = v5;
  v95 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v9 = *(v0 + 8);
  v92 = *v0;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  memcpy(v104, (v0 + 32), 0x160uLL);
  v12 = *(v0 + 384);
  v90 = *(v0 + 392);
  v91 = v12;
  v13 = *(v0 + 400);
  v88 = *(v0 + 408);
  v89 = v13;
  v14 = *(v0 + 416);
  v16 = *(v0 + 432);
  v15 = *(v0 + 440);
  v84 = *(v0 + 424);
  v85 = v16;
  v86 = v15;
  v87 = v14;
  v17 = *(v0 + 456);
  v80 = *(v0 + 448);
  v81 = v17;
  v18 = *(v0 + 472);
  v82 = *(v0 + 464);
  v83 = v18;
  v19 = *(v0 + 480);
  v21 = *(v0 + 496);
  v20 = *(v0 + 504);
  v75 = *(v0 + 488);
  v76 = v21;
  v77 = v20;
  v78 = *(v0 + 512);
  v79 = v19;
  v22 = *(v0 + 528);
  v70 = *(v0 + 520);
  v71 = v22;
  v23 = *(v0 + 536);
  v73 = *(v0 + 544);
  v74 = v23;
  v72 = *(v0 + 552);
  v105[0] = *(v0 + 560);
  LODWORD(v23) = *(v0 + 561);
  v68 = *(v0 + 562);
  v69 = v23;
  v24 = *(v0 + 568);
  v25 = *(v0 + 584);
  v63 = *(v0 + 576);
  v64 = v25;
  v65 = *(v0 + 592);
  v66 = *(v0 + 600);
  v67 = v24;
  v26 = *(v0 + 616);
  v59 = *(v0 + 608);
  v60 = v26;
  v27 = *(v0 + 632);
  v61 = *(v0 + 624);
  v62 = v27;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v28 = v92;
  sub_2703B4AA0(v92, v9, v10, v11);
  sub_2704F4DEC();
  sub_2705D84C4();
  v103[0] = v28;
  v29 = v95;
  v103[1] = v9;
  v30 = v8;
  v103[2] = v10;
  LOBYTE(v103[3]) = v11;
  v102[0] = 0;
  sub_2703C38C8();
  v31 = v93;
  sub_2705D8024();
  if (v31)
  {
    OUTLINED_FUNCTION_34_14();
    (*(v94 + 8))(v8, v29);
  }

  else
  {
    v32 = v88;
    v33 = v89;
    v35 = v90;
    v34 = v91;
    v36 = v87;
    OUTLINED_FUNCTION_34_14();
    memcpy(v103, v104, sizeof(v103));
    sub_2704DC0D0(v104, v102);
    sub_2703BAED8();
    sub_2705D8024();
    memcpy(v102, v103, sizeof(v102));
    sub_2704F3B8C(v102);
    v96 = v34;
    v97 = v35;
    v98 = v33;
    v99 = v32;
    sub_2703C3A18(v34, v35);
    v37 = sub_2703C3970();
    OUTLINED_FUNCTION_6_48();
    sub_2705D8024();
    v38 = OUTLINED_FUNCTION_12_32();
    sub_2703C3A5C(v38, v39);
    v96 = v36;
    v97 = v84;
    v98 = v85;
    v99 = v86;
    sub_2703C3A18(v36, v84);
    OUTLINED_FUNCTION_6_48();
    sub_2705D8024();
    v40 = OUTLINED_FUNCTION_12_32();
    sub_2703C3A5C(v40, v41);
    v96 = v80;
    v97 = v81;
    v98 = v82;
    v99 = v83;
    sub_2703C3A18(v80, v81);
    OUTLINED_FUNCTION_6_48();
    sub_2705D8024();
    v93 = v37;
    v42 = OUTLINED_FUNCTION_12_32();
    sub_2703C3A5C(v42, v43);
    v96 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5468);
    sub_2704F5A1C(&qword_2807D5470, sub_2703C3970);
    OUTLINED_FUNCTION_6_48();
    sub_2705D8024();
    v96 = v75;
    v97 = v76;
    v98 = v77;
    v99 = v78;
    sub_2703C3A18(v75, v76);
    OUTLINED_FUNCTION_6_48();
    sub_2705D8024();
    v44 = OUTLINED_FUNCTION_12_32();
    sub_2703C3A5C(v44, v45);
    v96 = v70;
    v97 = v71;
    v98 = v74;
    v99 = v73;
    v100 = v72;
    v101 = v105[0];
    sub_2704F4E94(v70, v71, v74, v73, v72, v105[0], sub_2703AE9E8);
    sub_2704F4E40();
    OUTLINED_FUNCTION_6_48();
    sub_2705D8024();
    OUTLINED_FUNCTION_12_32();
    OUTLINED_FUNCTION_3_53();
    sub_2704F4E94(v46, v47, v48, v49, v50, v51, v52);
    LOBYTE(v96) = 8;
    sub_2705D8004();
    LOBYTE(v96) = v68;
    sub_2704F4F10();
    OUTLINED_FUNCTION_6_48();
    sub_2705D8084();
    v96 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5518);
    sub_2704F4F64(&qword_2807D5520, sub_2704F4FCC);
    OUTLINED_FUNCTION_6_48();
    sub_2705D8024();
    v96 = v63;
    v97 = v64;
    v98 = v65;
    v99 = v66;
    sub_2703C3A18(v63, v64);
    sub_2705D8024();
    v53 = OUTLINED_FUNCTION_12_32();
    sub_2703C3A5C(v53, v54);
    v96 = v59;
    v97 = v60;
    v98 = v61;
    v99 = v62;
    sub_2703C3A18(v59, v60);
    v55 = v95;
    sub_2705D8024();
    v56 = OUTLINED_FUNCTION_12_32();
    sub_2703C3A5C(v56, v57);
    (*(v94 + 8))(v30, v55);
  }

  OUTLINED_FUNCTION_11_3();
}

unint64_t sub_2704F4DEC()
{
  result = qword_2807D5500;
  if (!qword_2807D5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5500);
  }

  return result;
}

unint64_t sub_2704F4E40()
{
  result = qword_2807D5508;
  if (!qword_2807D5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5508);
  }

  return result;
}

void sub_2704F4E94(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (a3 != 254)
  {
    a7();

    (a7)(a4, a5, a6);
  }
}

unint64_t sub_2704F4F10()
{
  result = qword_2807D5510;
  if (!qword_2807D5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5510);
  }

  return result;
}

uint64_t sub_2704F4F64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5518);
    a2();
    result = OUTLINED_FUNCTION_35_12();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704F4FCC()
{
  result = qword_2807D5528;
  if (!qword_2807D5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5528);
  }

  return result;
}

void PlatterCellModel.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5530);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704F4DEC();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2703C3EB0();
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    OUTLINED_FUNCTION_21_19();
    v61 = v7;
    v62 = v6;
    v63 = v70;
    v64 = v71[0];
    v91 = 1;
    sub_2703BAE84();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    memcpy(&v95[7], v92, 0x160uLL);
    sub_2703C3F58();
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    OUTLINED_FUNCTION_21_19();
    v57 = v9;
    v58 = v8;
    OUTLINED_FUNCTION_28_13();
    v59 = v11;
    v60 = v10;
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    OUTLINED_FUNCTION_21_19();
    v53 = v13;
    v54 = v12;
    OUTLINED_FUNCTION_28_13();
    v55 = v15;
    v56 = v14;
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    OUTLINED_FUNCTION_21_19();
    v49 = v17;
    v50 = v16;
    OUTLINED_FUNCTION_28_13();
    v51 = v19;
    v52 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5468);
    sub_2704F5A1C(&qword_2807D5498, sub_2703C3F58);
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    v48 = v68;
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    OUTLINED_FUNCTION_21_19();
    v44 = v21;
    v45 = v20;
    OUTLINED_FUNCTION_28_13();
    v46 = v23;
    v47 = v22;
    sub_2704F5A84();
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    v38 = v69;
    v39 = v70;
    v42 = v68;
    v43 = v71[0];
    v40 = v71[1];
    v41 = v71[2];
    LOBYTE(v68) = 8;
    OUTLINED_FUNCTION_10_37();
    v66 = sub_2705D7F14();
    sub_2704F5AD8();
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7FA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5518);
    sub_2704F4F64(&qword_2807D5548, sub_2704F5B2C);
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    v37 = v68;
    LOBYTE(v67[0]) = 11;
    OUTLINED_FUNCTION_1_60();
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    OUTLINED_FUNCTION_21_19();
    v35 = v25;
    v36 = v24;
    OUTLINED_FUNCTION_28_13();
    v33 = v26;
    v34 = v27;
    v86 = 12;
    OUTLINED_FUNCTION_10_37();
    sub_2705D7F44();
    v28 = OUTLINED_FUNCTION_9_39();
    v29(v28);
    v65 = v87;
    v31 = v89;
    v32 = v88;
    v30 = v90;
    v67[0] = v61;
    v67[1] = v62;
    v67[2] = v63;
    LOBYTE(v67[3]) = v64;
    memcpy(&v67[3] + 1, v95, 0x167uLL);
    *(&v67[70] + 3) = v93;
    HIBYTE(v67[70]) = v94;
    v67[48] = v57;
    v67[49] = v58;
    v67[50] = v59;
    v67[51] = v60;
    v67[52] = v53;
    v67[53] = v54;
    v67[54] = v55;
    v67[55] = v56;
    v67[56] = v49;
    v67[57] = v50;
    v67[58] = v51;
    v67[59] = v52;
    v67[60] = v48;
    v67[61] = v44;
    v67[62] = v45;
    v67[63] = v46;
    v67[64] = v47;
    v67[65] = v42;
    v67[66] = v38;
    v67[67] = v39;
    v67[68] = v43;
    v67[69] = v40;
    LOBYTE(v67[70]) = v41;
    BYTE1(v67[70]) = v66;
    BYTE2(v67[70]) = 8;
    v67[71] = v37;
    v67[72] = v35;
    v67[73] = v36;
    v67[74] = v34;
    v67[75] = v33;
    v67[76] = v87;
    v67[77] = v88;
    v67[78] = v89;
    v67[79] = v90;
    memcpy(v4, v67, 0x280uLL);
    sub_2704F5B80(v67, &v68);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v68 = v61;
    v69 = v62;
    v70 = v63;
    LOBYTE(v71[0]) = v64;
    memcpy(v71 + 1, v95, 0x167uLL);
    v71[45] = v57;
    v71[46] = v58;
    v71[47] = v59;
    v71[48] = v60;
    v71[49] = v53;
    v71[50] = v54;
    v71[51] = v55;
    v71[52] = v56;
    v71[53] = v49;
    v71[54] = v50;
    v71[55] = v51;
    v71[56] = v52;
    v71[57] = v48;
    v71[58] = v44;
    v71[59] = v45;
    v71[60] = v46;
    v71[61] = v47;
    v71[62] = v42;
    v71[63] = v38;
    v71[64] = v39;
    v71[65] = v43;
    v71[66] = v40;
    v72 = v41;
    v73 = v66;
    v74 = 8;
    v75 = v93;
    v76 = v94;
    v77 = v37;
    v78 = v35;
    v79 = v36;
    v80 = v34;
    v81 = v33;
    v82 = v65;
    v83 = v32;
    v84 = v31;
    v85 = v30;
    sub_2703D03B4(&v68);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704F5A1C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5468);
    a2();
    result = OUTLINED_FUNCTION_35_12();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704F5A84()
{
  result = qword_2807D5538;
  if (!qword_2807D5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5538);
  }

  return result;
}

unint64_t sub_2704F5AD8()
{
  result = qword_2807D5540;
  if (!qword_2807D5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5540);
  }

  return result;
}

unint64_t sub_2704F5B2C()
{
  result = qword_2807D5550;
  if (!qword_2807D5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5550);
  }

  return result;
}

unint64_t sub_2704F5BF0(uint64_t a1)
{
  *(a1 + 8) = sub_2704F5AD8();
  result = sub_2704F4F10();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2704F5C38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEE && *(a1 + 41))
    {
      v2 = *a1 + 237;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0x11)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704F5C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_2704F5CE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 416))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 49);
      v4 = -2 - v3;
      if ((-2 - v3) < 0)
      {
        v4 = -1;
      }

      if (v3 <= 0x80000000)
      {
        v2 = -1;
      }

      else
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_2704F5D38(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 408) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 416) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 416) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = ~a2 << 8;
      bzero((a1 + 56), 0x128uLL);
    }
  }
}

uint64_t getEnumTagSinglePayload for PlatterCellModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlatterCellModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x2704F5F80);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatterCellModel.SubElement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704F6084);
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

_BYTE *sub_2704F60BC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704F6188);
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

unint64_t sub_2704F61C4()
{
  result = qword_2807D5558;
  if (!qword_2807D5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5558);
  }

  return result;
}

unint64_t sub_2704F621C()
{
  result = qword_2807D5560;
  if (!qword_2807D5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5560);
  }

  return result;
}

unint64_t sub_2704F6274()
{
  result = qword_2807D5568;
  if (!qword_2807D5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5568);
  }

  return result;
}

unint64_t sub_2704F62CC()
{
  result = qword_2807D5570;
  if (!qword_2807D5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5570);
  }

  return result;
}

unint64_t sub_2704F6324()
{
  result = qword_2807D5578;
  if (!qword_2807D5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5578);
  }

  return result;
}

unint64_t sub_2704F637C()
{
  result = qword_2807D5580;
  if (!qword_2807D5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5580);
  }

  return result;
}

unint64_t sub_2704F63D4()
{
  result = qword_2807D5588;
  if (!qword_2807D5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5588);
  }

  return result;
}

unint64_t sub_2704F642C()
{
  result = qword_2807D5590;
  if (!qword_2807D5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5590);
  }

  return result;
}

unint64_t sub_2704F6484()
{
  result = qword_2807D5598;
  if (!qword_2807D5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5598);
  }

  return result;
}

unint64_t sub_2704F64DC()
{
  result = qword_2807D55A0;
  if (!qword_2807D55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D55A0);
  }

  return result;
}

unint64_t sub_2704F6530()
{
  result = qword_2807D55A8;
  if (!qword_2807D55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D55A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return sub_2705D83B4();
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_23_17()
{

  return sub_2705D7634();
}

uint64_t OUTLINED_FUNCTION_24_20()
{

  return sub_2705D7634();
}

uint64_t OUTLINED_FUNCTION_26_17()
{

  return sub_2705D8024();
}

uint64_t OUTLINED_FUNCTION_31_13()
{

  return sub_2705D83B4();
}

uint64_t OUTLINED_FUNCTION_32_10()
{

  return sub_2705D7634();
}

void OUTLINED_FUNCTION_34_14()
{
  v2 = *(v0 + 696);
  v3 = *(v0 + 704);
  v4 = *(v0 + 712);
  v5 = *(v0 + 720);

  sub_2703AFC10(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_35_12()
{

  return swift_getWitnessTable();
}

uint64_t sub_2704F680C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F546F69646172 && a2 == 0xEB00000000656C67;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000270615250 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_2704F68E0(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x676F546F69646172;
  }
}

uint64_t sub_2704F6924(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7463656C65736564 && a2 == 0xEB0000000078614DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2704F69C0()
{
  OUTLINED_FUNCTION_10_1();
  v25 = v0;
  v26 = v2;
  v23 = v3;
  v5 = v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5678);
  OUTLINED_FUNCTION_0();
  v22 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5680);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5688);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v20 - v17;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2704F9214();
  sub_2705D84C4();
  if (v26)
  {
    sub_2704FA394();
    sub_2705D7FE4();
    (*(v11 + 8))(v1, v21);
  }

  else
  {
    sub_2704FA340();
    sub_2705D7FE4();
    v19 = v24;
    sub_2705D8064();
    (*(v22 + 8))(v9, v19);
  }

  (*(v15 + 8))(v18, v13);
  OUTLINED_FUNCTION_11_3();
}

void sub_2704F6C70()
{
  OUTLINED_FUNCTION_10_1();
  v44 = v0;
  v2 = v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5648);
  OUTLINED_FUNCTION_0();
  v41 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5650);
  OUTLINED_FUNCTION_0();
  v40 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5658);
  OUTLINED_FUNCTION_0();
  v42 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_2();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704F9214();
  v14 = v44;
  sub_2705D8484();
  if (v14)
  {
    goto LABEL_8;
  }

  v37 = v7;
  v38 = v11;
  v44 = v6;
  v15 = v43;
  v16 = sub_2705D7FB4();
  sub_27042C9F0(v16, 0);
  v39 = v2;
  if (v18 == v19 >> 1)
  {
LABEL_7:
    v28 = sub_2705D7D84();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v30 = &type metadata for PlatterComponentModel.Behavior;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = OUTLINED_FUNCTION_12_13();
    v32(v31);
    v2 = v39;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_9:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  if (v18 < (v19 >> 1))
  {
    v20 = *(v17 + v18);
    v21 = sub_27042C9E4(v18 + 1);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    v26 = v41;
    if (v23 == v25 >> 1)
    {
      v36[1] = v21;
      if (v20)
      {
        sub_2704FA340();
        v27 = v44;
        OUTLINED_FUNCTION_24_21();
        OUTLINED_FUNCTION_6_1();
        sub_2705D7F84();
        swift_unknownObjectRelease();
        (*(v26 + 8))(v27, v15);
      }

      else
      {
        sub_2704FA394();
        v33 = v38;
        OUTLINED_FUNCTION_24_21();
        swift_unknownObjectRelease();
        (*(v40 + 8))(v33, v37);
      }

      v34 = OUTLINED_FUNCTION_12_13();
      v35(v34);
      __swift_destroy_boxed_opaque_existential_1(v39);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2704F7164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704F680C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704F718C(uint64_t a1)
{
  v2 = sub_2704F9214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F71C8(uint64_t a1)
{
  v2 = sub_2704F9214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704F7208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704F6924(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2704F7234(uint64_t a1)
{
  v2 = sub_2704FA340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F7270(uint64_t a1)
{
  v2 = sub_2704FA340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704F72AC(uint64_t a1)
{
  v2 = sub_2704FA394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F72E8(uint64_t a1)
{
  v2 = sub_2704FA394();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2704F7324(uint64_t a1@<X8>)
{
  sub_2704F6C70();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

uint64_t sub_2704F7378@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_2();
  v5 = type metadata accessor for PlatterComponentModel(0);
  sub_2703FC5C0(v1 + *(v5 + 20), v2, &qword_2807CF130);
  return sub_2703FC3D4(v2, a1, &qword_2807CF190);
}

double sub_2704F7430()
{
  v1 = type metadata accessor for PlatterComponentModel(0);
  v2 = sub_2703FC5C0(v0 + *(v1 + 24), &v13, &qword_2807CF2D8);
  *&result = OUTLINED_FUNCTION_11_9(v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_2704F7484()
{
  v1 = *(v0 + *(type metadata accessor for PlatterComponentModel(0) + 52));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_2704F74C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F6976616865625FLL && a2 == 0xEA00000000007372;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x63656C655373695FLL && a2 == 0xEB00000000646574;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6176726573626F5FLL && a2 == 0xED0000736E6F6974)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2705D8134();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_2704F77E0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      v3 = 1969710451;
      goto LABEL_10;
    case 3:
      result = 0x676E6964646170;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0x656C746974627573;
      break;
    case 6:
      v3 = 1819568500;
LABEL_10:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 7:
      result = 0x6F6976616865625FLL;
      break;
    case 8:
      result = 0x63656C655373695FLL;
      break;
    case 9:
      result = 0x6176726573626F5FLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2704F7928()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5620);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2704F8E60();
  sub_2705D84C4();
  LOBYTE(v20[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
  sub_2703E2A50(&qword_2807CFE90);
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  if (!v1)
  {
    v11 = type metadata accessor for PlatterComponentModel(0);
    LOBYTE(v20[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    sub_2703E1004();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703E0F80(&qword_2807CFE98);
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();
    v12 = (v2 + v11[7]);
    v13 = v12[1];
    v20[0] = *v12;
    v20[1] = v13;
    *v21 = v12[2];
    *&v21[9] = *(v12 + 41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8);
    sub_2703F96EC();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8084();
    v14 = OUTLINED_FUNCTION_2_56(v11[8]);
    sub_2703F9848(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8);
    sub_2703F9898();
    OUTLINED_FUNCTION_6_49();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    OUTLINED_FUNCTION_10_38();
    v16 = OUTLINED_FUNCTION_2_56(v11[9]);
    sub_2703F9848(v16, v17);
    OUTLINED_FUNCTION_6_49();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    OUTLINED_FUNCTION_10_38();
    v18 = OUTLINED_FUNCTION_2_56(v11[10]);
    sub_2703F9848(v18, v19);
    OUTLINED_FUNCTION_6_49();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    OUTLINED_FUNCTION_10_38();
    *&v20[0] = *(v2 + v11[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55D0);
    sub_2704F9064();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8024();
    LOBYTE(v20[0]) = 8;
    OUTLINED_FUNCTION_6_1();
    sub_2705D8004();
    *&v20[0] = *(v2 + v11[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55E0);
    sub_2704F913C();
    OUTLINED_FUNCTION_6_18();
    sub_2705D8024();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_11_3();
}

void sub_2704F7D48()
{
  OUTLINED_FUNCTION_10_1();
  v46 = v1;
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  v44 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v6 = sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for PlatterComponentModel(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v17 = (v16 - v15);
  sub_2705D45B4();
  v18 = sub_2705D45A4();
  v20 = v19;
  (*(v8 + 8))(v12, v6);
  *&v51 = v18;
  *(&v51 + 1) = v20;
  sub_2705D7CF4();
  v21 = v14[7];
  v22 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(v17 + v21, 1, 1, v22);
  v23 = v17 + v14[8];
  *v53 = 0;
  v51 = 0u;
  v52 = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  sub_2703F92B0(&v51, v23, &unk_2807CF480);
  v24 = (v17 + v14[9]);
  *v24 = xmmword_2705EB940;
  v24[1] = 0u;
  v24[2] = 0u;
  *(v24 + 41) = 0u;
  v25 = v17 + v14[10];
  v25[48] = 0;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *v25 = 0u;
  v26 = v17 + v14[11];
  v26[48] = 0;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *v26 = 0u;
  v27 = v17 + v14[12];
  v27[48] = 0;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *v27 = 0u;
  v43 = v14[13];
  *(v17 + v43) = 0;
  v42 = v14[14];
  *(v17 + v42) = 2;
  *(v17 + v14[15]) = 0;
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_2704F8E60();
  sub_2705D8484();
  if (!v0)
  {
    v28 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28);
    sub_2703E2A50(&qword_2807CFE40);
    sub_2705D7FA4();
    sub_2703F92B0(&v51, v17, &qword_2807CF140);
    LOBYTE(v51) = 1;
    sub_2703E0C88();
    sub_2705D7FA4();
    sub_2703F92B0(v44, v17 + v21, &qword_2807CF130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    LOBYTE(v47) = 2;
    sub_2703E0F80(&qword_2807CFE48);
    sub_2705D7FA4();
    sub_2703F92B0(&v51, v23, &qword_2807CF2D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08B8);
    sub_2703F9114();
    sub_2705D7FA4();
    v29 = v52;
    *v24 = v51;
    v24[1] = v29;
    v24[2] = *v53;
    *(v24 + 41) = *&v53[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D08D8);
    sub_2703F9350();
    OUTLINED_FUNCTION_5_53();
    sub_2705D7FA4();
    OUTLINED_FUNCTION_7_39();
    sub_2703F8F8C(v30, v31);
    *v25 = OUTLINED_FUNCTION_15_30();
    *(v25 + 1) = v32;
    *(v25 + 4) = v48;
    *(v25 + 5) = v49;
    v25[48] = v50;
    OUTLINED_FUNCTION_5_53();
    sub_2705D7FA4();
    OUTLINED_FUNCTION_7_39();
    sub_2703F8F8C(v33, v34);
    *v26 = OUTLINED_FUNCTION_15_30();
    *(v26 + 1) = v35;
    *(v26 + 4) = v48;
    *(v26 + 5) = v49;
    v26[48] = v50;
    OUTLINED_FUNCTION_5_53();
    sub_2705D7FA4();
    OUTLINED_FUNCTION_7_39();
    sub_2703F8F8C(v36, v37);
    *v27 = OUTLINED_FUNCTION_15_30();
    *(v27 + 1) = v38;
    *(v27 + 4) = v48;
    *(v27 + 5) = v49;
    v27[48] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55D0);
    sub_2704F8EB4();
    OUTLINED_FUNCTION_19_18();
    sub_2705D7F44();
    OUTLINED_FUNCTION_22_16();
    *(v17 + v43) = v47;
    LOBYTE(v47) = 8;
    *(v17 + v42) = sub_2705D7F14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D55E0);
    sub_2704F8F8C();
    OUTLINED_FUNCTION_19_18();
    sub_2705D7F44();
    v39 = OUTLINED_FUNCTION_21_20();
    v40(v39, v45);
    *v17 = v47;
    sub_2704FADAC(v17, v41, type metadata accessor for PlatterComponentModel);
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  sub_2704FAE08(v17, type metadata accessor for PlatterComponentModel);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704F85AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704F74C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704F85D4(uint64_t a1)
{
  v2 = sub_2704F8E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704F8610(uint64_t a1)
{
  v2 = sub_2704F8E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704F8684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_4_0();
  v16 = v15 - v14;
  v23 = type metadata accessor for PlatterComponentModel(0);
  if (*(v6 + *(v23 + 52)))
  {
    v17 = *(v6 + *(v23 + 52));
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v18 = sub_2704ECF98(a1, a2, a3, v17, a4, a5);

  if (v18)
  {
    (*(v13 + 16))(v16, a1, a4);
    if (swift_dynamicCast())
    {
      v28[0] = v25;
      v28[1] = v26;
      v29 = v27;
      OUTLINED_FUNCTION_1_61();
      sub_2704FADAC(v6, a6, v19);
      sub_2703FC5C0(v6, &v25, &qword_2807CF140);
      sub_2703FC5C0(v28, v24, &qword_2807CF140);
      v20 = MEMORY[0x2743A4100](&v25, v24);
      sub_2703D7E30(v24);
      sub_2703D7E30(&v25);
      result = sub_2704F88C4(v28);
      *(a6 + *(v23 + 48)) = v20 & 1;
      return result;
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_2703C2EFC(&v25, &qword_2807D55B0);
  }

  OUTLINED_FUNCTION_1_61();
  return sub_2704FADAC(v6, a6, v22);
}

uint64_t sub_2704F892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2704F89D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2704F8A60()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_2704F8D18(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_2704F8D18(319, &qword_2807CF320, &qword_2807CF328, &unk_2705DF710, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_2704F8D18(319, &qword_2807D0850, &qword_2807D0858, &unk_2705E56B0, MEMORY[0x277D21D28]);
        if (v3 <= 0x3F)
        {
          sub_2704F8D18(319, &qword_2807D0860, &qword_2807D0868, &unk_2705E56C0, MEMORY[0x277D21D28]);
          if (v4 <= 0x3F)
          {
            sub_2704F8D18(319, &qword_2807D55C8, &qword_2807D55D0, &unk_270601F38, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2704F8CC8();
              if (v6 <= 0x3F)
              {
                sub_2704F8D18(319, &qword_2807D55D8, &qword_2807D55E0, &unk_270601F40, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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
}

unint64_t sub_2704F8C84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_2704F8CC8()
{
  if (!qword_2807D4868)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D4868);
    }
  }
}

void sub_2704F8D18(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PlatterComponentModel.Behavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatterComponentModel.Behavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2704F8DCC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2704F8DE8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_2704F8E60()
{
  result = qword_2807D55F8;
  if (!qword_2807D55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D55F8);
  }

  return result;
}

unint64_t sub_2704F8EB4()
{
  result = qword_2807D5600;
  if (!qword_2807D5600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D55D0);
    sub_2704F8F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5600);
  }

  return result;
}

unint64_t sub_2704F8F38()
{
  result = qword_2807D5608;
  if (!qword_2807D5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5608);
  }

  return result;
}

unint64_t sub_2704F8F8C()
{
  result = qword_2807D5610;
  if (!qword_2807D5610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D55E0);
    sub_2704F9010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5610);
  }

  return result;
}

unint64_t sub_2704F9010()
{
  result = qword_2807D5618;
  if (!qword_2807D5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5618);
  }

  return result;
}

unint64_t sub_2704F9064()
{
  result = qword_2807D5628;
  if (!qword_2807D5628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D55D0);
    sub_2704F90E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5628);
  }

  return result;
}

unint64_t sub_2704F90E8()
{
  result = qword_2807D5630;
  if (!qword_2807D5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5630);
  }

  return result;
}

unint64_t sub_2704F913C()
{
  result = qword_2807D5638;
  if (!qword_2807D5638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D55E0);
    sub_2704F91C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5638);
  }

  return result;
}

unint64_t sub_2704F91C0()
{
  result = qword_2807D5640;
  if (!qword_2807D5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5640);
  }

  return result;
}

unint64_t sub_2704F9214()
{
  result = qword_2807D5660;
  if (!qword_2807D5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5660);
  }

  return result;
}

BOOL sub_2704F9290()
{
  v1 = *(v0 + *(type metadata accessor for PlatterComponentModel(0) + 44));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &unk_28804C850;
  }

  v3 = v2[2] + 1;
  v4 = 5;
  do
  {
    if (!--v3)
    {
      break;
    }

    v5 = LOBYTE(v2[v4]);
    v4 += 2;
  }

  while (v5 != 1);
  v6 = v3 != 0;

  return v6;
}

uint64_t sub_2704F9308()
{
  v1 = type metadata accessor for PlatterComponentModel(0);
  v2 = *(v0 + *(v1 + 48));
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  v4 = *(v0 + *(v1 + 44));
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_28804C880;
  }

  v6 = *(v5 + 2);
  if (v6)
  {
    v3 = 0;
    v7 = v5 + 40;
    v8 = 1;
    do
    {
      if (!*v7)
      {
        v3 = *(v7 - 1);
      }

      v8 &= *v7;
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2704F93C0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v80 = v1;
  v85 = v2;
  v3 = sub_2705D5064();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v81 = (v6 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5B8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v83 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3958) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3900);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_0();
  v84 = v14;
  v79 = sub_2705D53D4();
  LOBYTE(v105) = 0;
  sub_2704F9ADC(v1, v102);
  memcpy(v108, v102, 0x2F9uLL);
  memcpy(v109, v102, 0x2F9uLL);
  sub_2703FC5C0(v108, &v89, &qword_2807D5708);
  sub_2703C2EFC(v109, &qword_2807D5708);
  memcpy(&v103[7], v108, 0x2F9uLL);
  LODWORD(v78) = v105;
  HIDWORD(v78) = sub_2705D56C4();
  sub_2705D4D34();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v103[768] = 0;
  sub_2705D60A4();
  sub_2705D5094();
  memcpy(&v104[7], v102, 0x70uLL);
  v23 = [objc_opt_self() quaternarySystemFillColor];
  v77 = sub_2705D5C14();
  v24 = sub_2705D56C4();
  v25 = &v12[*(v9 + 44)];
  v26 = *(v4 + 28);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_2705D5344();
  OUTLINED_FUNCTION_14();
  v30 = *(v29 + 104);
  v30(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #26.0 }

  v75 = _Q0;
  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620) + 36)] = 256;
  *v12 = v79;
  *(v12 + 1) = 0;
  v12[16] = v78;
  memcpy(v12 + 17, v103, 0x300uLL);
  *(v12 + 785) = *(&v88 + 9);
  *(v12 + 197) = HIDWORD(v88);
  v12[792] = BYTE4(v78);
  *(v12 + 793) = *(&v88 + 2);
  *(v12 + 199) = *(&v88 + 5);
  *(v12 + 100) = v16;
  *(v12 + 101) = v18;
  *(v12 + 102) = v20;
  *(v12 + 103) = v22;
  v12[832] = 0;
  memcpy(v12 + 833, v104, 0x77uLL);
  *(v12 + 119) = v77;
  v12[960] = v24;
  v36 = v27;
  v37 = v81;
  v30(v81 + *(v4 + 28), v36, v28);
  v38 = v80;
  *v37 = v75;
  v39 = type metadata accessor for PlatterComponentModel(0);
  v40 = *(v38 + *(v39 + 48));
  if (v40 == 2 || (v40 & 1) == 0)
  {
    if (qword_2807CE7A8 != -1)
    {
      swift_once();
    }

    v41 = qword_2807CFC88;
    v42 = v84;
  }

  else
  {
    if (qword_2807CE790 != -1)
    {
      swift_once();
    }

    v41 = qword_2807CFC70;

    v42 = v84;
  }

  sub_2705D4DC4();
  v43 = MEMORY[0x277CDFC08];
  v44 = v83;
  sub_2704FADAC(v37, v83, MEMORY[0x277CDFC08]);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C0) + 36);
  v46 = v106;
  *v45 = v105;
  *(v45 + 16) = v46;
  *(v45 + 32) = v107;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C8);
  *(v44 + *(v47 + 52)) = v41;
  *(v44 + *(v47 + 56)) = 256;
  v48 = sub_2705D60A4();
  v50 = v49;
  sub_2704FAE08(v37, v43);
  v51 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5D0) + 36));
  *v51 = v48;
  v51[1] = v50;
  v52 = sub_2705D60A4();
  v54 = v53;
  v55 = v42 + *(v82 + 36);
  sub_2703FC3D4(v44, v55, &qword_2807CF5B8);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0A38) + 36));
  *v56 = v52;
  v56[1] = v54;
  sub_2703FC3D4(v12, v42, &qword_2807D3958);
  v64 = v38 + *(v39 + 28);
  v65 = *(v64 + 8);
  v66 = *(v64 + 9) | ((*(v64 + 13) | (*(v64 + 15) << 16)) << 32);
  if (v65 == 254)
  {
    v67 = 0;
    v68 = 0;
    v69 = 1;
    LOBYTE(v65) = -1;
    v70 = 3;
    v71 = -1;
    v72 = 3;
    v73 = 1;
  }

  else
  {
    v69 = *(v64 + 40);
    v70 = *(v64 + 32);
    v71 = *(v64 + 24);
    v68 = *(v64 + 16);
    v67 = *v64;
    v73 = *(v64 + 56);
    v72 = *(v64 + 48);
    LODWORD(v87) = *(v64 + 25);
    *(&v87 + 3) = *(v64 + 28);
    LODWORD(v86) = *(v64 + 41);
    *(&v86 + 3) = *(v64 + 44);
  }

  v89 = v67;
  v90 = v65;
  v91 = v66;
  v93 = BYTE6(v66);
  v92 = WORD2(v66);
  v94 = v68;
  v95 = v71;
  *v96 = v87;
  *&v96[3] = *(&v87 + 3);
  v97 = v70;
  v98 = v69;
  *v99 = v86;
  *&v99[3] = *(&v86 + 3);
  v100 = v72;
  v101 = v73;
  sub_270476D40(&v89, v57, v58, v59, v60, v61, v62, v63, v75, *(&v75 + 1), v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, *(&v88 + 1));
  return sub_2703C2EFC(v42, &qword_2807D3900);
}

uint64_t sub_2704F9ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = sub_2705D52B4();
  v60[0] = 0;
  sub_2704F9FF4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v64, __src, 0xF0uLL);
  sub_2703FC5C0(__dst, v54, &qword_2807D5710);
  sub_2703C2EFC(v64, &qword_2807D5710);
  memcpy(&v61[7], __dst, 0xF0uLL);
  v50 = v60[0];
  v3 = type metadata accessor for PlatterComponentModel(0);
  v4 = a1 + *(v3 + 36);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = *(v4 + 32);
    v47 = *(v4 + 40);
    v8 = *(v4 + 16);
    v7 = *(v4 + 24);
    v46 = *(v4 + 48);
    v54[0] = *v4;
    v9 = v54[0];
    v54[1] = v5;
    LOBYTE(v54[2]) = v8;
    v54[3] = v7;
    v54[4] = v6;
    v54[5] = v47;
    LOBYTE(v54[6]) = v46 & 1;

    sub_2705D58B4();
    v10 = a1;
    v11 = sub_2705D5D54();
    sub_2705D5824();
    sub_27053A9B8(0, v11, __src);

    a1 = v10;

    memcpy(v54, __src, 0xB9uLL);
    v12 = sub_2705D56D4();
    sub_2705D4D34();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_2703F8F8C(v9, v5);
    memcpy(__src, v54, 0xC0uLL);
    __src[192] = v12;
    *&__src[200] = v14;
    *&__src[208] = v16;
    *&__src[216] = v18;
    *&__src[224] = v20;
    __src[232] = 0;
    CGSizeMake(__src, v21);
    memcpy(v62, __src, 0xE9uLL);
  }

  else
  {
    sub_2703FC584(v62);
  }

  v22 = a1 + *(v3 + 32);
  v23 = *(v22 + 8);
  if (v23)
  {
    v24 = *(v22 + 32);
    v48 = *(v22 + 40);
    v26 = *(v22 + 16);
    v25 = *(v22 + 24);
    v28 = *(v22 + 48);
    v54[0] = *v22;
    v27 = v54[0];
    v54[1] = v23;
    LOBYTE(v54[2]) = v26;
    v54[3] = v25;
    v54[4] = v24;
    v54[5] = v48;
    LOBYTE(v54[6]) = v28 & 1;

    sub_2705D5894();
    v29 = sub_2705D5D84();
    sub_2705D5824();
    sub_27053A9B8(0, v29, __src);

    memcpy(v54, __src, 0xB9uLL);
    v30 = sub_2704F9308();
    v32 = v31;
    KeyPath = swift_getKeyPath();
    v34 = v32 & 1;
    v60[0] = v32 & 1;
    v35 = sub_2705D56D4();
    sub_2705D4D34();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_2703F8F8C(v27, v23);
    memcpy(__src, v54, 0xC0uLL);
    *&__src[192] = KeyPath;
    *&__src[200] = v30;
    __src[208] = v34;
    __src[216] = v35;
    *&__src[224] = v37;
    *&__src[232] = v39;
    *&__src[240] = v41;
    *&__src[248] = v43;
    __src[256] = 0;
    CGSizeMake(__src, v44);
    memcpy(v60, __src, 0x101uLL);
  }

  else
  {
    sub_2704D8550(v60);
  }

  memcpy(v53, v62, sizeof(v53));
  memcpy(v57, v60, 0x101uLL);
  v54[0] = v51;
  v54[1] = 0;
  LOBYTE(v54[2]) = v50;
  memcpy(&v54[2] + 1, v61, 0xF7uLL);
  memcpy(v52, v54, 0x108uLL);
  memcpy(v55, v62, 0xE9uLL);
  memcpy(&v52[264], v62, 0xE9uLL);
  memcpy(v56, v60, 0x101uLL);
  memcpy(&v52[504], v60, 0x101uLL);
  memcpy(a2, v52, 0x2F9uLL);
  sub_2703FC5C0(v54, __src, &qword_2807D5718);
  sub_2703FC5C0(v55, __src, &qword_2807D0AD0);
  sub_2703FC5C0(v56, __src, &qword_2807D5720);
  sub_2703C2EFC(v57, &qword_2807D5720);
  memcpy(v58, v53, 0xE9uLL);
  sub_2703C2EFC(v58, &qword_2807D0AD0);
  *__src = v51;
  *&__src[8] = 0;
  __src[16] = v50;
  memcpy(&__src[17], v61, 0xF7uLL);
  return sub_2703C2EFC(__src, &qword_2807D5718);
}

uint64_t sub_2704F9FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlatterComponentModel(0);
  v5 = v4;
  v6 = (a1 + *(v4 + 40));
  v7 = v6[1];
  if (v7)
  {
    v19 = v4;
    v8 = *v6;

    sub_2705D5874();
    v9 = sub_2705D5D54();
    sub_2705D5834();
    sub_27053A9B8(0, v9, __src);

    v10 = v8;
    v5 = v19;
    sub_2703F8F8C(v10, v7);
    memcpy(__dst, __src, 0xB9uLL);
    CGSizeMake(__dst, v11);
    memcpy(__src, __dst, 0xB9uLL);
  }

  else
  {
    sub_2703FCB64(__src);
  }

  if (sub_2704F9290())
  {
    v12 = *(a1 + *(v5 + 48));
    v15 = sub_2705D5DF4();
    v16 = sub_2705D5874();
    KeyPath = swift_getKeyPath();
    if (v12 == 2 || (v12 & 1) == 0)
    {
      if (qword_2807CE7A8 != -1)
      {
        swift_once();
      }

      v17 = &qword_2807CFC88;
    }

    else
    {
      if (qword_2807CE790 != -1)
      {
        swift_once();
      }

      v17 = &qword_2807CFC70;
    }

    v14 = *v17;
    swift_retain_n();
  }

  else
  {
    v15 = 0;
    KeyPath = 0;
    v16 = 0;
    v14 = 0;
  }

  memcpy(v20, __src, sizeof(v20));
  memcpy(v21, __src, 0xB9uLL);
  memcpy(__dst, __src, 0xB9uLL);
  sub_2703FC5C0(v21, v23, &qword_2807D0B20);
  sub_2704FAE68(v15);
  sub_2704FAECC(v15);
  memcpy(a2, __dst, 0xC0uLL);
  *(a2 + 192) = 0;
  *(a2 + 200) = 1;
  *(a2 + 208) = v15;
  *(a2 + 216) = KeyPath;
  *(a2 + 224) = v16;
  *(a2 + 232) = v14;
  sub_2704FAECC(v15);
  memcpy(v23, v20, 0xB9uLL);
  return sub_2703C2EFC(v23, &qword_2807D0B20);
}

unint64_t sub_2704FA340()
{
  result = qword_2807D5668;
  if (!qword_2807D5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5668);
  }

  return result;
}

unint64_t sub_2704FA394()
{
  result = qword_2807D5670;
  if (!qword_2807D5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5670);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatterComponentModel.Behavior.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704FA4B4);
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

_BYTE *storeEnumTagSinglePayload for PlatterComponentModel.Behavior.CollapseDescriptionCodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704FA598);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatterComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x2704FA69CLL);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704FA6D8()
{
  result = qword_2807D5690;
  if (!qword_2807D5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5690);
  }

  return result;
}

unint64_t sub_2704FA730()
{
  result = qword_2807D5698;
  if (!qword_2807D5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5698);
  }

  return result;
}

unint64_t sub_2704FA788()
{
  result = qword_2807D56A0;
  if (!qword_2807D56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56A0);
  }

  return result;
}

unint64_t sub_2704FA7E0()
{
  result = qword_2807D56A8;
  if (!qword_2807D56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56A8);
  }

  return result;
}

unint64_t sub_2704FA838()
{
  result = qword_2807D56B0;
  if (!qword_2807D56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56B0);
  }

  return result;
}

unint64_t sub_2704FA890()
{
  result = qword_2807D56B8;
  if (!qword_2807D56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56B8);
  }

  return result;
}

unint64_t sub_2704FA8E8()
{
  result = qword_2807D56C0;
  if (!qword_2807D56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56C0);
  }

  return result;
}

unint64_t sub_2704FA940()
{
  result = qword_2807D56C8;
  if (!qword_2807D56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56C8);
  }

  return result;
}

unint64_t sub_2704FA998()
{
  result = qword_2807D56D0;
  if (!qword_2807D56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56D0);
  }

  return result;
}

unint64_t sub_2704FA9F0()
{
  result = qword_2807D56D8;
  if (!qword_2807D56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56D8);
  }

  return result;
}

unint64_t sub_2704FAA48()
{
  result = qword_2807D56E0;
  if (!qword_2807D56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56E0);
  }

  return result;
}

unint64_t sub_2704FAB00()
{
  result = qword_2807D56E8;
  if (!qword_2807D56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D56E8);
  }

  return result;
}

uint64_t sub_2704FAC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterComponentModel(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2704FAC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterComponentModel(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2704FACDC()
{
  result = type metadata accessor for PlatterComponentModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2704FADAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

uint64_t sub_2704FAE08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2704FAE68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2704FAECC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2704FAF38()
{
  result = qword_2807D5728;
  if (!qword_2807D5728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5730);
    sub_27047A628();
    sub_27047AA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5728);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_56@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = *(v3 + 48);
  *(v2 - 144) = *v3;
  *(v2 - 136) = v5;
  *(v2 - 128) = v6;
  *(v2 - 120) = v7;
  *(v2 - 112) = v8;
  *(v2 - 104) = v9;
  *(v2 - 96) = v10;
  return result;
}

__n128 OUTLINED_FUNCTION_7_39()
{
  *(v0 - 256) = *(v0 - 216);
  result = *(v0 - 200);
  *(v0 - 288) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_38()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);

  return sub_2703F8F8C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return sub_2705D7ED4();
}

void sub_2704FB0CC()
{
  sub_270500144(319, &qword_2807D57C8, MEMORY[0x277D7EBC0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2705D4634();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_2704FB204(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_2705D5F04();
}

void sub_2704FB2CC()
{
  OUTLINED_FUNCTION_26_1();
  v70 = v0;
  v74 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_1_14();
  v72 = v4;
  v73 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  v71 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OUTLINED_FUNCTION_64();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8);
  v75 = *(v3 + 16);
  v64 = v9;
  sub_2705D5044();
  v69 = *(v3 + 40);
  v10 = v69;
  v11 = v3;
  OUTLINED_FUNCTION_6_50();
  v13 = sub_2703AFBC8(v12, &qword_2807D1558);
  v106 = v10;
  v107 = v13;
  v14 = v13;
  v68 = v13;
  v15 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v16 = sub_2705D4914();
  v17 = sub_2705D4F94();
  v62 = v16;
  v63 = v17;
  OUTLINED_FUNCTION_2_57();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_39();
  v20 = sub_270501C38(v18, v19);
  v102 = v16;
  v103 = v17;
  v21 = OUTLINED_FUNCTION_9_40(v20);
  v59 = v22;
  v60 = v21;
  v58[1] = swift_getOpaqueTypeMetadata2();
  v66 = *(v11 + 32);
  v67 = v11;
  sub_2705D5044();
  OUTLINED_FUNCTION_7_40();
  sub_2705D5044();
  v65 = *(v11 + 48);
  v100 = v65;
  v101 = MEMORY[0x277CDFC60];
  v98 = swift_getWitnessTable();
  v99 = v14;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5ED4();
  OUTLINED_FUNCTION_7_40();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5910);
  OUTLINED_FUNCTION_8_42();
  sub_2705D5044();
  sub_2705D5444();
  sub_2705D5044();
  sub_2705D5044();
  sub_2705D5444();
  OUTLINED_FUNCTION_4_52();
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x277CDFC60];
  v23 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_54();
  v25 = sub_2703AFBC8(v24, &qword_2807D5910);
  v94 = v23;
  v95 = v25;
  v92 = swift_getWitnessTable();
  v93 = v23;
  OUTLINED_FUNCTION_12_33();
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x277CE0880];
  v26 = swift_getWitnessTable();
  v27 = sub_270501B00();
  v88 = v26;
  v89 = v27;
  v58[0] = v15;
  v86 = swift_getWitnessTable();
  v87 = v26;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5354();
  OUTLINED_FUNCTION_24_22();
  sub_2705D5044();
  OUTLINED_FUNCTION_7_40();
  sub_2705D5444();
  v102 = v62;
  v103 = v63;
  v104 = WitnessTable;
  v105 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_62();
  v29 = swift_getWitnessTable();
  v84 = OpaqueTypeConformance2;
  v85 = v29;
  v82 = swift_getWitnessTable();
  v83 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  WitnessTable = sub_2705D5EF4();
  OUTLINED_FUNCTION_1_14();
  v63 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v59 = v58 - v32;
  v33 = sub_2705D5044();
  OUTLINED_FUNCTION_1_14();
  v64 = v34;
  v36 = MEMORY[0x28223BE20](v35);
  v60 = v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v62 = v58 - v38;
  sub_2705D6094();
  v39 = v65;
  v40 = v66;
  *&v41 = v66;
  v42 = v69;
  v43 = v70;
  *(&v41 + 1) = v69;
  v77 = v41;
  v76 = v75;
  v78 = v65;
  v79 = v70;
  sub_2705D5EE4();
  v45 = v71;
  v44 = v72;
  v46 = v67;
  (*(v72 + 16))(v71, v43, v67);
  v47 = v44;
  v48 = (*(v44 + 80) + 56) & ~*(v44 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v75;
  *(v49 + 32) = v40;
  *(v49 + 40) = v42;
  *(v49 + 48) = v39;
  (*(v47 + 32))(v49 + v48, v45, v46);
  OUTLINED_FUNCTION_0_58();
  v50 = WitnessTable;
  v51 = swift_getWitnessTable();
  v52 = v59;
  v53 = v60;
  sub_2705418F4(sub_270501B70, v49, v51, v60);

  (*(v63 + 8))(v52, v50);
  v80 = v51;
  v81 = v68;
  swift_getWitnessTable();
  v54 = v64;
  v55 = *(v64 + 16);
  v56 = v62;
  v55(v62, v53, v33);
  v57 = *(v54 + 8);
  v57(v53, v33);
  v55(v74, v56, v33);
  v57(v56, v33);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2704FB9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v83 = a1;
  v76 = a7;
  v85 = a2;
  v86 = a3;
  v69 = a2;
  v73 = a3;
  v87 = a4;
  v88 = a5;
  v63 = a6;
  v64 = a4;
  v81 = a5;
  v89 = a6;
  v82 = type metadata accessor for PocketShelfView();
  v74 = *(v82 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v82);
  v71 = &v54 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  sub_2705D5044();
  v10 = sub_2703AFBC8(&qword_2807D1550, &qword_2807D1558);
  v84[28] = a5;
  v84[29] = v10;
  v11 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v12 = sub_2705D4914();
  v67 = v12;
  v70 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = &v54 - v13;
  v14 = sub_2705D4F94();
  v77 = v14;
  WitnessTable = swift_getWitnessTable();
  v66 = WitnessTable;
  v65 = sub_270501C38(&qword_2807D5908, MEMORY[0x277CDF898]);
  v85 = v12;
  v86 = v14;
  v87 = WitnessTable;
  v88 = v65;
  v68 = MEMORY[0x277CDEBF0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v79 = &v54 - v16;
  sub_2705D5044();
  sub_2705D5044();
  v17 = MEMORY[0x277CDFC60];
  v84[26] = a6;
  v84[27] = MEMORY[0x277CDFC60];
  v84[24] = swift_getWitnessTable();
  v84[25] = v10;
  swift_getWitnessTable();
  sub_2705D5ED4();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5910);
  sub_2705D5044();
  sub_2705D5444();
  sub_2705D5044();
  sub_2705D5044();
  sub_2705D5444();
  v84[22] = swift_getWitnessTable();
  v84[23] = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_2703AFBC8(&qword_2807D5918, &qword_2807D5910);
  v84[20] = v18;
  v84[21] = v19;
  v84[18] = swift_getWitnessTable();
  v84[19] = v18;
  v62 = MEMORY[0x277CE0340];
  v84[16] = swift_getWitnessTable();
  v84[17] = MEMORY[0x277CE0880];
  v60 = v11;
  v20 = swift_getWitnessTable();
  v21 = sub_270501B00();
  v84[14] = v20;
  v84[15] = v21;
  v84[12] = swift_getWitnessTable();
  v84[13] = v20;
  swift_getWitnessTable();
  v56 = sub_2705D5354();
  v57 = sub_2705D5044();
  v61 = sub_2705D5444();
  v59 = *(v61 - 8);
  v22 = MEMORY[0x28223BE20](v61);
  v55 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v58 = &v54 - v24;
  v25 = v82;
  v26 = v83;
  sub_2704FC218(v83 + *(v82 + 72), v82);
  v77 = swift_checkMetadataState();
  v27 = v74;
  v28 = v71;
  (*(v74 + 16))(v71, v26, v25);
  v29 = (*(v27 + 80) + 56) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v31 = v69;
  v32 = v73;
  *(v30 + 2) = v69;
  *(v30 + 3) = v32;
  v33 = v63;
  v34 = v64;
  v35 = v81;
  *(v30 + 4) = v64;
  *(v30 + 5) = v35;
  *(v30 + 6) = v33;
  (*(v27 + 32))(&v30[v29], v28, v25);
  v36 = v65;
  v37 = v80;
  v39 = v66;
  v38 = v67;
  sub_2705D5B64();

  (*(v70 + 8))(v37, v38);
  LOBYTE(v37) = *(v83 + *(v82 + 76));
  v84[2] = v31;
  v84[3] = v32;
  v84[4] = v34;
  v84[5] = v81;
  v84[6] = v33;
  v84[7] = v83;
  v85 = v38;
  v86 = v77;
  v87 = v39;
  v88 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = swift_getWitnessTable();
  v84[10] = OpaqueTypeConformance2;
  v84[11] = v41;
  v42 = v57;
  v43 = swift_getWitnessTable();
  v44 = (v37 & 1) == 0;
  v45 = v55;
  v47 = OpaqueTypeMetadata2;
  v46 = v79;
  sub_270541558(v44, sub_270501D3C, v84, OpaqueTypeMetadata2, v42, OpaqueTypeConformance2, v43, v55);
  (*(v72 + 8))(v46, v47);
  v84[8] = v43;
  v84[9] = OpaqueTypeConformance2;
  v48 = v61;
  swift_getWitnessTable();
  v50 = v58;
  v49 = v59;
  v51 = *(v59 + 16);
  v51(v58, v45, v48);
  v52 = *(v49 + 8);
  v52(v45, v48);
  v51(v76, v50, v48);
  return (v52)(v50, v48);
}

uint64_t sub_2704FC218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_1_14();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = *(a2 + 16);
  OUTLINED_FUNCTION_1_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  (*(v14 + 16))(v13 - v12);
  (*(v6 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v15 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v20 = *(a2 + 24);
  *(v16 + 24) = v20;
  v21 = *(a2 + 40);
  *(v16 + 40) = v21;
  (*(v6 + 32))(v16 + v15, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  sub_2705D5044();
  OUTLINED_FUNCTION_6_50();
  v18 = sub_2703AFBC8(v17, &qword_2807D1558);
  v22 = v21;
  v23 = v18;
  swift_getWitnessTable();
  sub_2705D4824();
  return sub_2705D4924();
}

uint64_t sub_2704FC47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D4F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_2704FC4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v21 - v18;
  v20 = sub_2705D4F94();
  (*(*(v20 - 8) + 16))(v19, a2, v20);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  type metadata accessor for PocketShelfView();
  sub_2703C2E9C(v19, v17, &qword_2807D21E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5928);
  sub_2705D5E64();
  sub_2703C2EFC(v19, &qword_2807D21E0);
  sub_2704FC690();
}

void sub_2704FC690()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v3 = sub_2705D6164();
  OUTLINED_FUNCTION_1_14();
  v26 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  sub_2705D6194();
  OUTLINED_FUNCTION_1_14();
  v24 = v10;
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_14();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  sub_2703B29A0();
  v19 = sub_2705D7B04();
  (*(v15 + 16))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v2);
  v20 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v21 = swift_allocObject();
  v22 = *(v2 + 32);
  *(v21 + 16) = *(v2 + 16);
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v2 + 48);
  (*(v15 + 32))(v21 + v20, &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v28[4] = sub_270501B88;
  v28[5] = v21;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_2703C9520;
  v28[3] = &block_descriptor_3;
  v23 = _Block_copy(v28);
  sub_2705D6184();
  v27 = MEMORY[0x277D84F90];
  sub_270501C38(&qword_2807CF4B8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4C0);
  sub_2703AFBC8(&qword_2807CF4C8, &qword_2807CF4C0);
  sub_2705D7C94();
  MEMORY[0x2743A3F40](0, v13, v8, v23);
  _Block_release(v23);

  (*(v26 + 8))(v8, v3);
  (*(v24 + 8))(v13, v25);

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2704FC9F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  sub_2705D5044();
  sub_2703AFBC8(&qword_2807D1550, &qword_2807D1558);
  swift_getWitnessTable();
  sub_2705D4914();
  sub_2705D4F94();
  swift_getWitnessTable();
  sub_270501C38(&qword_2807D5908, MEMORY[0x277CDF898]);
  swift_getOpaqueTypeMetadata2();
  sub_2705D5044();
  sub_2705D5044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2705D5ED4();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5910);
  sub_2705D5044();
  sub_2705D5444();
  sub_2705D5044();
  sub_2705D5044();
  sub_2705D5444();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2703AFBC8(&qword_2807D5918, &qword_2807D5910);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_270501B00();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2705D53C4();
  return sub_2705D5B04();
}

uint64_t sub_2704FCE08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v80 = a1;
  v81 = a5;
  v79 = a3;
  v77 = a7;
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  sub_2705D5044();
  v99 = a6;
  v100 = MEMORY[0x277CDFC60];
  v78 = a6;
  v67 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v98 = sub_2703AFBC8(&qword_2807D1550, &qword_2807D1558);
  v60 = swift_getWitnessTable();
  v10 = sub_2705D5ED4();
  v62 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v61 = sub_2705D5044();
  v70 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v82 = &v57 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5910);
  v64 = sub_2705D5044();
  v66 = sub_2705D5444();
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v57 - v14;
  v68 = sub_2705D5044();
  v76 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v57 - v15;
  v72 = sub_2705D5044();
  v16 = sub_2705D5444();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v71 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v57 - v19;
  v20 = v79;
  v21 = v80;
  v84[10] = a2;
  v84[11] = v79;
  v22 = a4;
  v84[12] = a4;
  v23 = v81;
  v84[13] = v81;
  v84[14] = a6;
  v84[15] = v80;
  sub_2705D53C4();
  sub_2705D5EC4();
  v56 = swift_getWitnessTable();
  sub_2705D60A4();
  sub_2705D5B94();
  (*(v62 + 8))(v12, v10);
  v58 = v22;
  v59 = a2;
  *&v93 = a2;
  *(&v93 + 1) = v20;
  v24 = v20;
  v25 = v22;
  v94 = v22;
  v95 = v23;
  v26 = v23;
  v27 = v78;
  v96 = v78;
  v28 = v21 + *(type metadata accessor for PocketShelfView() + 68);
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v93) = v29;
  *(&v93 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5938);
  sub_2705D5E54();
  LODWORD(v12) = LOBYTE(v85);
  v84[2] = a2;
  v84[3] = v24;
  v84[4] = v25;
  v84[5] = v26;
  v84[6] = v27;
  v91 = v56;
  v92 = MEMORY[0x277CDFC60];
  v31 = v61;
  v32 = swift_getWitnessTable();
  v33 = sub_2703AFBC8(&qword_2807D5918, &qword_2807D5910);
  v89 = v32;
  v90 = v33;
  v34 = v64;
  v35 = swift_getWitnessTable();
  v36 = v63;
  v37 = v12;
  v38 = v82;
  sub_270541558(v37, sub_270501D7C, v84, v31, v34, v32, v35, v63);
  (*(v70 + 8))(v38, v31);
  v87 = v35;
  v88 = v32;
  v39 = v66;
  v40 = swift_getWitnessTable();
  sub_2705D5054();
  sub_2705D56C4();
  v41 = v65;
  sub_2705D5B44();
  (*(v69 + 8))(v36, v39);
  v42 = *(v80 + 2);
  v93 = *v80;
  v94 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60);
  sub_2705D5E54();
  v43 = v86 == 0.0 && v85 == 0.0;
  v83[2] = v59;
  v83[3] = v79;
  v83[4] = v58;
  v83[5] = v81;
  v83[6] = v78;
  v84[20] = v40;
  v84[21] = MEMORY[0x277CE0880];
  v44 = v68;
  v45 = swift_getWitnessTable();
  v46 = sub_270501B00();
  v84[18] = v45;
  v84[19] = v46;
  v47 = v72;
  v48 = swift_getWitnessTable();
  v49 = v71;
  sub_270541558(v43, sub_270501D94, v83, v44, v47, v45, v48, v71);
  (*(v76 + 8))(v41, v44);
  v84[16] = v48;
  v84[17] = v45;
  v50 = v75;
  swift_getWitnessTable();
  v52 = v73;
  v51 = v74;
  v53 = *(v74 + 16);
  v53(v73, v49, v50);
  v54 = *(v51 + 8);
  v54(v49, v50);
  v53(v77, v52, v50);
  return (v54)(v52, v50);
}

uint64_t sub_2704FD644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v45 = a3;
  v46 = a5;
  v44 = a2;
  v47 = a7;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v10 = type metadata accessor for PocketShelfView();
  v11 = *(v10 - 8);
  v41 = *(v11 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v39 = &v36 - v13;
  v38 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2705D5044();
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v36 = &v36 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  v18 = sub_2705D5044();
  v42 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v37 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v40 = &v36 - v21;
  (*(a1 + *(v10 + 84)))(a1 + *(v10 + 72));
  sub_2705D60A4();
  sub_2705D5B94();
  (*(v38 + 8))(v15, a4);
  v22 = v39;
  (*(v11 + 16))(v39, a1, v10);
  v23 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v45;
  *(v24 + 2) = v44;
  *(v24 + 3) = v25;
  v26 = v46;
  *(v24 + 4) = a4;
  *(v24 + 5) = v26;
  *(v24 + 6) = a6;
  (*(v11 + 32))(&v24[v23], v22, v10);
  v50 = a6;
  v51 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v28 = v36;
  v29 = v37;
  sub_2705418F4(sub_270501DC4, v24, WitnessTable, v37);

  (*(v43 + 8))(v28, v16);
  v30 = sub_2703AFBC8(&qword_2807D1550, &qword_2807D1558);
  v48 = WitnessTable;
  v49 = v30;
  swift_getWitnessTable();
  v31 = v42;
  v32 = *(v42 + 16);
  v33 = v40;
  v32(v40, v29, v18);
  v34 = *(v31 + 8);
  v34(v29, v18);
  v32(v47, v33, v18);
  return (v34)(v33, v18);
}

void sub_2704FDB18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60);
  sub_2705D5E64();
  type metadata accessor for PocketShelfView();
  sub_2704FC690();
}

uint64_t sub_2704FDBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v12[0] = a3;
  v12[1] = a1;
  v4 = sub_2705D6024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D5FD4();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  sub_2705D5044();
  v8 = MEMORY[0x277CDFC60];
  v12[6] = a2;
  v12[7] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_2703AFBC8(&qword_2807D1550, &qword_2807D1558);
  v12[4] = WitnessTable;
  v12[5] = v10;
  swift_getWitnessTable();
  sub_2705D5ED4();
  sub_2705D5044();
  v12[2] = swift_getWitnessTable();
  v12[3] = v8;
  swift_getWitnessTable();
  sub_2705D56C4();
  sub_2705D5A64();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2704FDDEC()
{
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  sub_2705D5044();
  swift_getWitnessTable();
  sub_2703AFBC8(&qword_2807D1550, &qword_2807D1558);
  swift_getWitnessTable();
  sub_2705D5ED4();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5910);
  sub_2705D5044();
  sub_2705D5444();
  sub_2705D5044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2703AFBC8(&qword_2807D5918, &qword_2807D5910);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2705D5BC4();
}

void sub_2704FE040()
{
  type metadata accessor for PocketShelfView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5930);
  sub_2705D5E64();
  sub_2704FC690();
}

uint64_t sub_2704FE0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v28 = a7;
  v29 = a2;
  v30 = a1;
  v31 = a8;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  v15 = sub_2705D5044();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v28;
  v22 = type metadata accessor for PocketShelfView();
  (*(v29 + *(v22 + 80)))(v30);
  sub_2705418F4(sub_2704FE3A4, 0, a6, v19);
  (*(v12 + 8))(v14, a4);
  v23 = sub_2703AFBC8(&qword_2807D1550, &qword_2807D1558);
  v32 = a6;
  v33 = v23;
  swift_getWitnessTable();
  v24 = *(v16 + 16);
  v24(v21, v19, v15);
  v25 = *(v16 + 8);
  v25(v19, v15);
  v24(v31, v21, v15);
  return (v25)(v21, v15);
}

uint64_t sub_2704FE3A4()
{
  if (qword_2807CE828 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2705DC030;
  v2[0] = 0;
  v2[1] = 0xE000000000000000;
  MEMORY[0x2743A3A90](0x7A69732079646F62, 0xEB00000000203A65);
  type metadata accessor for CGSize(0);
  sub_2705D7DF4();
  v2[3] = MEMORY[0x277D837D0];
  sub_2705D6544();
  sub_2703C2EFC(v2, &unk_2807D4890);
  sub_27047CF60(v0);
}

uint64_t sub_2704FE548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v66 - v13;
  v15 = sub_2705D4F94();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v74 = a2;
  *(&v74 + 1) = a3;
  v75 = a4;
  v76 = a5;
  v77 = a6;
  v19 = type metadata accessor for PocketShelfView();
  v20 = a1 + *(v19 + 64);
  v21 = v20[16];
  v22 = *(v20 + 3);
  v74 = *v20;
  LOBYTE(v75) = v21;
  v76 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5930);
  sub_2705D5E54();
  if ((v73 & 1) == 0)
  {
    v23 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5928);
    sub_2705D5E54();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_2703C2EFC(v14, &qword_2807D21E0);
      goto LABEL_4;
    }

    v69 = v16;
    (*(v16 + 32))(v18, v14, v15);
    v29 = *a1;
    v30 = a1[1];
    v31 = a1[2];
    *&v74 = *a1;
    *(&v74 + 1) = v30;
    v75 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60);
    sub_2705D5E54();
    v32 = *(&v23 + 1) - *(&v72 + 1);
    sub_2705D4F54();
    v70 = v15;
    if (v33 >= v32)
    {
      if (qword_2807CE828 != -1)
      {
        swift_once();
      }

      v67 = qword_28081C4E8;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v66[1] = *(*(sub_2705D6574() - 8) + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2705EB880;
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      MEMORY[0x2743A3A90](0x53746E65746E6F63, 0xED0000203A657A69);
      sub_2705D4F54();
      *&v72 = v38;
      *(&v72 + 1) = v39;
      type metadata accessor for CGSize(0);
      sub_2705D7DF4();
      v76 = MEMORY[0x277D837D0];
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_2705D7D04();
      MEMORY[0x2743A3A90](0xD000000000000019, 0x80000002706152B0);
      sub_2705D4F84();
      *&v72 = v40;
      *(&v72 + 1) = v41;
      type metadata accessor for CGPoint(0);
      sub_2705D7DF4();
      v76 = MEMORY[0x277D837D0];
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_2705D7D04();
      v72 = v74;
      MEMORY[0x2743A3A90](0xD000000000000017, 0x80000002706152D0);
      sub_2705D4F64();
      *&v74 = v42;
      *(&v74 + 1) = v43;
      v75 = v44;
      v76 = v45;
      type metadata accessor for CGRect(0);
      sub_2705D7DF4();
      v76 = MEMORY[0x277D837D0];
      v74 = v72;
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_2705D7D04();
      v72 = v74;
      MEMORY[0x2743A3A90](0xD000000000000019, 0x80000002706152F0);
      sub_2705D4F74();
      *&v74 = v46;
      *(&v74 + 1) = v47;
      v75 = v48;
      v76 = v49;
      sub_2705D7DF4();
      v76 = MEMORY[0x277D837D0];
      v74 = v72;
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      sub_27047CF60(v37);

      sub_2705D4F54();
      v51 = v50;
      sub_2705D4F84();
      v53 = v51 - v52;
      sub_2705D4F64();
      v54 = v53 - CGRectGetHeight(v78);
      sub_2705D4F74();
      v56 = floor(v54 + v55);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_2705DC030;
      if (v56 > 0.0)
      {
        *&v74 = 0;
        *(&v74 + 1) = 0xE000000000000000;
        sub_2705D7D04();

        strcpy(&v74, "overlapDiff: ");
        HIWORD(v74) = -4864;
        v58 = sub_2705D79C4();
        MEMORY[0x2743A3A90](v58);

        MEMORY[0x2743A3A90](0xD000000000000012, 0x8000000270615310);
        v76 = MEMORY[0x277D837D0];
        sub_2705D6544();
        sub_2703C2EFC(&v74, &unk_2807D4890);
        sub_27047CF60(v57);

        v59 = a1 + *(v19 + 68);
        v60 = *v59;
        v61 = *(v59 + 1);
        LOBYTE(v74) = v60;
        *(&v74 + 1) = v61;
        LOBYTE(v72) = 1;
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5938);
        sub_2705D5E64();
        return (*(v69 + 8))(v18, v70);
      }

      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_2705D7D04();

      strcpy(&v74, "overlapDiff: ");
      HIWORD(v74) = -4864;
      v62 = sub_2705D79C4();
      MEMORY[0x2743A3A90](v62);

      MEMORY[0x2743A3A90](0xD00000000000001BLL, 0x8000000270615330);
      v76 = MEMORY[0x277D837D0];
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      sub_27047CF60(v57);
    }

    else
    {
      v67 = v31;
      if (qword_2807CE828 != -1)
      {
        swift_once();
      }

      v68 = qword_28081C4E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_2705EB880;
      sub_2705D64C4();
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      MEMORY[0x2743A3A90](0x7A69536B63617473, 0xEB00000000203A65);
      v72 = v23;
      type metadata accessor for CGSize(0);
      sub_2705D7DF4();
      v76 = MEMORY[0x277D837D0];
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_2705D7D04();
      v72 = v74;
      MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270615380);
      *&v74 = v29;
      *(&v74 + 1) = v30;
      v75 = v67;
      sub_2705D5E54();
      v74 = v71;
      sub_2705D7DF4();
      v76 = MEMORY[0x277D837D0];
      v74 = v72;
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      MEMORY[0x2743A3A90](0x53746E65746E6F63, 0xED0000203A657A69);
      sub_2705D4F54();
      *&v72 = v35;
      *(&v72 + 1) = v36;
      sub_2705D7DF4();
      v76 = MEMORY[0x277D837D0];
      sub_2705D6544();
      sub_2703C2EFC(&v74, &unk_2807D4890);
      sub_27047CF60(v34);
    }

    v63 = a1 + *(v19 + 68);
    v64 = *v63;
    v65 = *(v63 + 1);
    LOBYTE(v74) = v64;
    *(&v74 + 1) = v65;
    LOBYTE(v72) = 0;
    goto LABEL_17;
  }

LABEL_4:
  if (qword_2807CE828 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2705DC030;
  sub_2705D64C4();
  sub_27047CF60(v24);

  v25 = a1 + *(v19 + 68);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v74) = v26;
  *(&v74 + 1) = v27;
  LOBYTE(v72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5938);
  return sub_2705D5E64();
}

uint64_t sub_2704FF1CC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2704FF5D0();

  v3 = qword_2807D5738;
  swift_beginAccess();
  return sub_2703C2E9C(v1 + v3, a1, &qword_2807D57D0);
}

uint64_t sub_2704FF29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D57D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2703C2E9C(a1, &v6 - v3, &qword_2807D57D0);
  return sub_2704FF348(v4);
}

uint64_t sub_2704FF348(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D57D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-v5];
  v7 = qword_2807D5738;
  swift_beginAccess();
  sub_2703C2E9C(v1 + v7, v6, &qword_2807D57D0);
  sub_2704FF828();
  v8 = sub_2703EDF34();
  v9 = sub_2703C2EFC(v6, &qword_2807D57D0);
  if (v8)
  {
    MEMORY[0x28223BE20](v9);
    v10 = *(v3 + 96);
    *&v13[-48] = *(v3 + 80);
    *&v13[-32] = v10;
    *&v13[-16] = *(v3 + 112);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v13[-16] = v1;
    *&v13[-8] = a1;
    sub_2704FF66C();
  }

  else
  {
    sub_2703C2E9C(a1, v6, &qword_2807D57D0);
    swift_beginAccess();
    sub_2704FF8DC(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_2703C2EFC(a1, &qword_2807D57D0);
}

uint64_t sub_2704FF564(uint64_t a1, uint64_t a2)
{
  v4 = qword_2807D5738;
  swift_beginAccess();
  sub_2704FF9B0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2704FF740()
{
  sub_2703C2EFC(v0 + qword_2807D5738, &qword_2807D57D0);
  v1 = qword_2807D5740;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2704FF7B8()
{
  sub_2704FF740();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_2704FF828()
{
  result = qword_2807D57D8;
  if (!qword_2807D57D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D57D0);
    sub_270501C38(qword_2807D57E0, MEMORY[0x277D7EBC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D57D8);
  }

  return result;
}

uint64_t sub_2704FF8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D57D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_2704FF980(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2704FF9B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D57D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2704FFA28()
{
  sub_270500144(319, &qword_2807D2B38, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_270500694(319, &qword_2807D5868, &qword_2807D21E0);
    if (v1 <= 0x3F)
    {
      sub_270500694(319, &qword_2807D5870, &qword_2807D13D0);
      if (v2 <= 0x3F)
      {
        sub_2705001A8();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            sub_2703BD854();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2704FFB78(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_2705D4F94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v7 + 80);
  if (v8)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  v18 = v14 & 0xF8;
  v19 = v18 | 7;
  v20 = ((v15 + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 47;
  v21 = v16 + 16;
  if (v13 < a2)
  {
    v22 = ((((((v21 + ((v20 + ((v18 + 31) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + v17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v13 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    switch(v25)
    {
      case 1:
        v26 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          break;
        }

        goto LABEL_30;
      case 2:
        v26 = *(a1 + v22);
        if (*(a1 + v22))
        {
          goto LABEL_30;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2704FFDF4);
      case 4:
        v26 = *(a1 + v22);
        if (!v26)
        {
          break;
        }

LABEL_30:
        v28 = v26 - 1;
        if ((v22 & 0xFFFFFFF8) != 0)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        return v13 + (v29 | v28) + 1;
      default:
        break;
    }
  }

  v30 = (a1 + v19 + 24) & ~v19;
  if (v9 == v13)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v8, v6);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v32 = (v21 + ((v20 + v30) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    if (v12 == v13)
    {

      return __swift_getEnumTagSinglePayload(v32, v12, v10);
    }

    else
    {
      v33 = *(((v32 + v17) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }
  }
}

void sub_2704FFE08(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_2705D4F94();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v10 + 80) & 0xF8;
  v20 = v19 | 7;
  v21 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v21;
  }

  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 47;
  v23 = *(v15 + 80);
  v24 = v23 + 16;
  v25 = (v23 + 16 + ((v22 + ((v19 + 31) & ~(v19 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
  v26 = *(v15 + 64);
  v27 = ((((v25 + v26) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 < a3)
  {
    if (((((v25 + v26) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v28 = a3 - v18 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v9 = v29;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v18)
  {
    if (((((v25 + v26) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v30 = a2 - v18;
    }

    else
    {
      v30 = 1;
    }

    if (((((v25 + v26) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v31 = ~v18 + a2;
      bzero(a1, ((((v25 + v26) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v31;
    }

    switch(v9)
    {
      case 1:
        *(a1 + v27) = v30;
        return;
      case 2:
        *(a1 + v27) = v30;
        return;
      case 3:
        goto LABEL_59;
      case 4:
        *(a1 + v27) = v30;
        return;
      default:
        return;
    }
  }

  v32 = ~v23;
  switch(v9)
  {
    case 1:
      *(a1 + v27) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    case 2:
      *(a1 + v27) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    case 3:
LABEL_59:
      __break(1u);
      JUMPOUT(0x270500104);
    case 4:
      *(a1 + v27) = 0;
      goto LABEL_41;
    default:
LABEL_41:
      if (!a2)
      {
        return;
      }

LABEL_42:
      v33 = ((a1 + v20 + 24) & ~v20);
      if (v12 == v18)
      {
        if (v13 < a2)
        {
          v34 = (v21 + 7) & 0xFFFFFFF8;
          if (v34 != -8)
          {
            v35 = ~v13 + a2;
            bzero(v33, (v34 + 8));
            *v33 = v35;
          }

          return;
        }

        v37 = (a2 + 1);
        v36 = v33;
        v14 = v8;
      }

      else
      {
        v36 = (v24 + ((v33 + v22) & 0xFFFFFFFFFFFFFFF8)) & v32;
        if (v16 != v18)
        {
          v38 = (v36 + v26) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            v39 = a2 & 0x7FFFFFFF;
            *(v38 + 16) = 0;
          }

          else
          {
            v39 = (a2 - 1);
          }

          *(v38 + 8) = v39;
          return;
        }

        v37 = a2;
        v11 = v16;
      }

      __swift_storeEnumTagSinglePayload(v36, v37, v11, v14);
      return;
  }
}

void sub_270500144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2705001A8()
{
  if (!qword_2807D5878)
  {
    v0 = sub_2705D5E84();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D5878);
    }
  }
}

void sub_270500200()
{
  type metadata accessor for _PocketShelfView.Measurements();
  sub_2705D5E84();
  if (v0 <= 0x3F)
  {
    sub_270500694(319, &qword_2807D5900, &qword_2807D12E0);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_2703BD854();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_270500300(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((((v7 + 32) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x270500454);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_270500468(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((v10 + 32) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((v10 + 32) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v10 + 32) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v10 + 32) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x270500654);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

void sub_270500694(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2705D5E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_270500700(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for _PocketShelfView.Measurements();
  sub_2705D5E84();
  sub_2705D5E54();
  return v2;
}

void sub_270500764()
{
  OUTLINED_FUNCTION_26_1();
  v33 = v0;
  v2 = v1;
  v34 = v3;
  v32 = *(v1 + 16);
  *(&v31 + 1) = *(v1 + 40);
  sub_2705D4914();
  *&v31 = *(v2 + 32);
  sub_2705D5044();
  v30 = *(v2 + 48);
  v4 = MEMORY[0x277CDFC60];
  v55 = v30;
  v56 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5ED4();
  OUTLINED_FUNCTION_19_19();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5940);
  OUTLINED_FUNCTION_8_42();
  sub_2705D5044();
  sub_2705D5044();
  OUTLINED_FUNCTION_4_52();
  WitnessTable = swift_getWitnessTable();
  v54 = v4;
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_54();
  v51 = v5;
  v52 = sub_2703AFBC8(v6, &qword_2807D5940);
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5354();
  OUTLINED_FUNCTION_25_18();
  sub_2705D5044();
  sub_2705D5444();
  sub_2705D5444();
  OUTLINED_FUNCTION_2_57();
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_62();
  v47 = v7;
  v48 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v46 = v7;
  v8 = swift_getWitnessTable();
  v43 = MEMORY[0x277CE11C0];
  v44 = v8;
  swift_getWitnessTable();
  v9 = sub_2705D5EF4();
  OUTLINED_FUNCTION_1_14();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5950);
  v15 = sub_2705D5044();
  OUTLINED_FUNCTION_1_14();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - v22;
  sub_2705D6094();
  v36 = v31;
  v35 = v32;
  v37 = v30;
  v38 = v33;
  sub_2705D5EE4();
  v41 = 0xD000000000000011;
  v42 = 0x80000002706153A0;
  OUTLINED_FUNCTION_0_58();
  v24 = swift_getWitnessTable();
  sub_2705D5B24();
  (*(v11 + 8))(v14, v9);
  OUTLINED_FUNCTION_11_35();
  v26 = sub_2703AFBC8(v25, &qword_2807D5950);
  v39 = v24;
  v40 = v26;
  swift_getWitnessTable();
  v27 = *(v17 + 16);
  v27(v23, v21, v15);
  v28 = *(v17 + 8);
  v28(v21, v15);
  v27(v34, v23, v15);
  v28(v23, v15);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_270500C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a5;
  v49 = a3;
  v48 = a2;
  v52 = a1;
  v57 = a7;
  v9 = sub_2705D4914();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v39 - v10;
  WitnessTable = swift_getWitnessTable();
  v71 = v9;
  v72 = a4;
  v73 = WitnessTable;
  v74 = a6;
  v54 = MEMORY[0x277CDE708];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v39 - v13;
  sub_2705D5044();
  v82 = a6;
  v83 = MEMORY[0x277CDFC60];
  v14 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_2705D5ED4();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5940);
  sub_2705D5044();
  sub_2705D5044();
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x277CDFC60];
  v15 = swift_getWitnessTable();
  v16 = sub_2703AFBC8(&qword_2807D5948, &qword_2807D5940);
  v78 = v15;
  v79 = v16;
  v43 = v14;
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  v39 = sub_2705D5354();
  v41 = sub_2705D5044();
  v42 = sub_2705D5444();
  v45 = sub_2705D5444();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v40 = &v39 - v17;
  v18 = v48;
  v19 = v49;
  v71 = v48;
  v72 = v49;
  v20 = v51;
  v73 = a4;
  v74 = v51;
  v75 = a6;
  type metadata accessor for _PocketShelfView();
  v21 = v52;
  v22 = v47;
  sub_27050135C();
  sub_2705D53C4();
  v59 = v18;
  v60 = v19;
  v61 = a4;
  v62 = v20;
  v63 = a6;
  v64 = v21;
  v23 = a6;
  v24 = WitnessTable;
  v25 = v46;
  sub_2705D5AD4();
  (*(v56 + 8))(v22, v9);
  v71 = v9;
  v72 = a4;
  v73 = v24;
  v74 = v23;
  v26 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v53;
  v28 = *(v53 + 16);
  v29 = v58;
  v30 = OpaqueTypeMetadata2;
  v28(v58, v25, OpaqueTypeMetadata2);
  v31 = *(v27 + 8);
  v31(v25, v30);
  v28(v25, v29, v30);
  v71 = sub_2704FB204(v25);
  v32 = swift_getWitnessTable();
  v69 = v26;
  v70 = v32;
  v67 = swift_getWitnessTable();
  v68 = v26;
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x277CE11C0];
  v35 = v40;
  sub_2705413F8();

  v31(v25, v30);
  v31(v58, v30);
  v65 = v34;
  v66 = v33;
  v36 = v45;
  swift_getWitnessTable();
  v37 = v44;
  (*(v44 + 16))(v57, v35, v36);
  return (*(v37 + 8))(v35, v36);
}

void sub_27050135C()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v44 = v0;
  v3 = v2;
  v5 = v4;
  v50 = v6;
  OUTLINED_FUNCTION_1_14();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v39 = v10;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_1_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  v46 = *(v20 + 24);
  v21 = *(v20 + 40);
  v40 = v18 - v17;
  v41 = v21;
  sub_2705D4914();
  OUTLINED_FUNCTION_1_14();
  v48 = v22;
  v49 = v23;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  v47 = &v35 - v25;
  v45 = sub_2705D4824();
  v42 = sub_2705D4814();
  v26 = *(v15 + 16);
  v35 = v13;
  v26(v19, v5, v13);
  v43 = *(v8 + 16);
  v43(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v27 = swift_allocObject();
  *&v28 = *(v3 + 32);
  *(&v28 + 1) = v41;
  *&v29 = v13;
  *(&v29 + 1) = v46;
  v37 = v28;
  v38 = v29;
  *(v27 + 16) = v29;
  *(v27 + 32) = v28;
  v36 = *(v3 + 48);
  *(v27 + 48) = v36;
  v30 = *(v8 + 32);
  OUTLINED_FUNCTION_24_22();
  v30();
  v31 = v47;
  sub_2705D4924();
  v43(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v3);
  v32 = swift_allocObject();
  v33 = v37;
  *(v32 + 16) = v38;
  *(v32 + 32) = v33;
  *(v32 + 48) = v36;
  OUTLINED_FUNCTION_24_22();
  v30();
  v34 = v48;
  sub_2705D4904();

  (*(v49 + 8))(v31, v34);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27050169C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v16;
  v17 = type metadata accessor for _PocketShelfView();
  (*(a1 + *(v17 + 76)))(a1 + *(v17 + 64));
  v18 = *(v6 + 16);
  v18(v11, v9, a2);
  v19 = *(v6 + 8);
  v19(v9, a2);
  v18(a3, v11, a2);
  return (v19)(v11, a2);
}

uint64_t sub_27050180C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  v23[1] = v14;
  v23[2] = v15;
  v23[3] = v16;
  v23[4] = v17;
  v23[5] = v18;
  v19 = type metadata accessor for _PocketShelfView();
  (*(a2 + *(v19 + 72)))(a1);
  v20 = *(v8 + 16);
  v20(v13, v11, a3);
  v21 = *(v8 + 8);
  v21(v11, a3);
  v20(a4, v13, a3);
  return (v21)(v13, a3);
}

uint64_t sub_27050197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D57D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v19 - v14;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v16 = type metadata accessor for _PocketShelfView();
  sub_270500700(v16);
  v17 = sub_2705D4864();
  (*(*(v17 - 8) + 16))(v15, a1, v17);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_2704FF348(v15);
}

unint64_t sub_270501B00()
{
  result = qword_2807D5920;
  if (!qword_2807D5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5920);
  }

  return result;
}

uint64_t sub_270501B88()
{
  OUTLINED_FUNCTION_20_17();
  v0 = type metadata accessor for PocketShelfView();
  OUTLINED_FUNCTION_23_0(v0);
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_15_31();

  return sub_2704FE548(v1, v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270501C38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_270501C80(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  OUTLINED_FUNCTION_20_17();
  v10 = type metadata accessor for PocketShelfView();
  OUTLINED_FUNCTION_23_0(v10);
  OUTLINED_FUNCTION_21_21();

  sub_2704FC4E8(a1, a2, v2 + v11, v5, v6, v7, v8, v9);
}

uint64_t sub_270501DDC(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_20_17();
  v1 = type metadata accessor for PocketShelfView();
  OUTLINED_FUNCTION_23_0(v1);
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_15_31();

  return a1();
}

uint64_t objectdestroyTm_12()
{
  OUTLINED_FUNCTION_16_21();
  v1 = type metadata accessor for PocketShelfView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 60);
  v4 = sub_2705D4F94();
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5928);

  v13 = OUTLINED_FUNCTION_18_19(v5, v6, v7, v8, v9, v10, v11, v12, v17);
  (*(v14 + 8))(v2 + v15, v13);

  return swift_deallocObject();
}

uint64_t sub_2705020C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = OUTLINED_FUNCTION_20_17();
  v12 = v11(v10);
  OUTLINED_FUNCTION_23_0(v12);
  OUTLINED_FUNCTION_21_21();

  return a3(a1, &v3[v13], v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_21Tm()
{
  OUTLINED_FUNCTION_16_21();
  v1 = *(type metadata accessor for _PocketShelfView() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  v11 = OUTLINED_FUNCTION_18_19(v3, v4, v5, v6, v7, v8, v9, v10, v15);
  (*(v12 + 8))(v2 + v13, v11);

  return swift_deallocObject();
}

uint64_t sub_270502298()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_20_17();
  v2 = type metadata accessor for _PocketShelfView();
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_15_31();

  return sub_27050197C(v3, v4, v5, v6, v7, v8, v1);
}

uint64_t sub_270502340()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D1558);
  sub_2705D5044();
  OUTLINED_FUNCTION_6_50();
  sub_2703AFBC8(v0, &qword_2807D1558);
  swift_getWitnessTable();
  sub_2705D4914();
  OUTLINED_FUNCTION_25_18();
  sub_2705D4F94();
  OUTLINED_FUNCTION_2_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_39();
  v3 = sub_270501C38(v1, v2);
  OUTLINED_FUNCTION_9_40(v3);
  swift_getOpaqueTypeMetadata2();
  sub_2705D5044();
  OUTLINED_FUNCTION_7_40();
  sub_2705D5044();
  OUTLINED_FUNCTION_64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5ED4();
  OUTLINED_FUNCTION_19_19();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5910);
  OUTLINED_FUNCTION_8_42();
  sub_2705D5044();
  sub_2705D5444();
  sub_2705D5044();
  sub_2705D5044();
  OUTLINED_FUNCTION_7_40();
  sub_2705D5444();
  OUTLINED_FUNCTION_4_52();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_54();
  sub_2703AFBC8(v4, &qword_2807D5910);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_33();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_270501B00();
  OUTLINED_FUNCTION_64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5354();
  OUTLINED_FUNCTION_25_18();
  sub_2705D5044();
  OUTLINED_FUNCTION_7_40();
  sub_2705D5444();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_62();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5EF4();
  OUTLINED_FUNCTION_25_18();
  sub_2705D5044();
  OUTLINED_FUNCTION_0_58();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64();
  return swift_getWitnessTable();
}

uint64_t sub_2705026F8()
{
  sub_2705D4914();
  sub_2705D5044();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5ED4();
  OUTLINED_FUNCTION_19_19();
  sub_2705D5044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5940);
  OUTLINED_FUNCTION_8_42();
  sub_2705D5044();
  sub_2705D5044();
  OUTLINED_FUNCTION_4_52();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_54();
  sub_2703AFBC8(v0, &qword_2807D5940);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5354();
  sub_2705D5044();
  OUTLINED_FUNCTION_24_22();
  sub_2705D5444();
  sub_2705D5444();
  OUTLINED_FUNCTION_2_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_62();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_42();
  sub_2705D5EF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5950);
  OUTLINED_FUNCTION_8_42();
  sub_2705D5044();
  OUTLINED_FUNCTION_0_58();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_35();
  sub_2703AFBC8(v1, &qword_2807D5950);
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_40(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  return result;
}

uint64_t sub_270502B64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_270502BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270502C20()
{
  v1 = sub_2705D5254();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_2705D7A84();
    v6 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2704109D0(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

uint64_t sub_270502D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5960) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5968) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5970) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v51 = &v47 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5978);
  OUTLINED_FUNCTION_4();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = *(v2 + 56);
  v16 = (&v47 + *(v12 + 44) - v13);
  v48 = &v47 - v13;
  v47 = sub_2705D5064();
  v17 = *(v47 + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_2705D5344();
  OUTLINED_FUNCTION_14();
  v21 = *(v20 + 104);
  v21(v16 + v17, v18, v19);
  *v16 = v15;
  v16[1] = v15;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620);
  *(v16 + *(v22 + 36)) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5980);
  OUTLINED_FUNCTION_14();
  (*(v23 + 16))(v14, v52);
  v24 = v50;
  sub_2705D5FE4();
  *&v24[*(v3 + 64)] = 256;
  v25 = v24;
  if (!sub_270502C20())
  {
    v15 = 0.0;
  }

  v26 = v49;
  v27 = &v49[*(v6 + 44)];
  v21(v27 + *(v47 + 20), v18, v19);
  *v27 = v15;
  v27[1] = v15;
  *(v27 + *(v22 + 36)) = 256;
  sub_270503144(v25, v26, &qword_2807D5960);
  sub_270502C20();
  v28 = sub_2705D56C4();
  sub_2705D4D34();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v51;
  sub_270503144(v26, v51, &qword_2807D5968);
  v38 = v37 + *(v53 + 44);
  *v38 = v28;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  v39 = sub_2705D60A4();
  v41 = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5988);
  v43 = v54;
  v44 = v54 + *(v42 + 36);
  sub_270503144(v37, v44, &qword_2807D5970);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5990) + 36));
  *v45 = v39;
  v45[1] = v41;
  return sub_270503144(v48, v43, &qword_2807D5978);
}

uint64_t sub_270503144(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2705031A8()
{
  result = qword_2807D5998;
  if (!qword_2807D5998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5988);
    sub_270503260();
    sub_2703AFBC8(&qword_2807D59B0, &qword_2807D5990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5998);
  }

  return result;
}

unint64_t sub_270503260()
{
  result = qword_2807D59A0;
  if (!qword_2807D59A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5978);
    sub_2703AFBC8(&qword_2807D59A8, &qword_2807D5980);
    sub_2703AFBC8(&qword_2807D0080, &qword_2807CF620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D59A0);
  }

  return result;
}

uint64_t sub_270503368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3C28);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_2704BBD14(a1, &v7 - v4);
  return sub_2704BA290(v5);
}

uint64_t View.popoverPlacement(component:anchor:arrowEdge:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_4_41();
  v9 = sub_2705D5594();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for PopoverPlacement();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v20 = v19 - v18;
  v21 = *(v11 + 16);
  v21(v15, a3, v9);
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  KeyPath = swift_getKeyPath();
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = KeyPath;
  *(v20 + 40) = 0;
  v21(v20 + v16[6], v15, v9);
  *(v20 + v16[7]) = a4;
  v29 = v6;
  v30 = a2;
  v31 = 1;
  type metadata accessor for MessagePlacementViewModel();
  swift_allocObject();

  sub_2704BA488(&v29);
  v23 = (v20 + v16[8]);
  sub_2705D5E44();
  (*(v11 + 8))(v15, v9);
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  MEMORY[0x2743A2010](v20, a5, v16, a6);
  return sub_2705055A0();
}

uint64_t type metadata accessor for PopoverPlacement()
{
  result = qword_2807D59C0;
  if (!qword_2807D59C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27050365C@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D59D8);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v68 = &v58 - v6;
  sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v60 = v8;
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v59 = v10 - v9;
  v67 = type metadata accessor for PopoverPlacement();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE910);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D59E0);
  OUTLINED_FUNCTION_0();
  v65 = v22;
  v66 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v64 = &v58 - v24;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8F8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v73 = &v58 - v26;
  sub_2705053BC(v3, v16, type metadata accessor for PopoverPlacement);
  v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v71 = *(v12 + 80);
  v72 = v14;
  v28 = swift_allocObject();
  v29 = v27;
  sub_2705050B0(v16, v28 + v27);
  v63 = v17;
  v30 = &v20[*(v17 + 36)];
  sub_2705D4F04();
  sub_2705D78B4();
  *v30 = &unk_270602AC0;
  *(v30 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE928);
  OUTLINED_FUNCTION_14();
  (*(v31 + 16))(v20, v62);
  v33 = *(v3 + 16);
  v32 = *(v3 + 24);
  v34 = *(v3 + 32);
  v35 = v3;
  if (*(v3 + 40) == 1)
  {
    v77 = *(v3 + 16);
    v78 = v32;
    v79 = v34;
  }

  else
  {

    sub_2705D7A84();
    v36 = sub_2705D56A4();
    OUTLINED_FUNCTION_4_39();

    v37 = v59;
    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2704B9504(v33, v32, v34, 0);
    (*(v60 + 8))(v37, v61);
    v33 = v77;
    v32 = v78;
    v34 = v79;
  }

  v74 = v33;
  v75 = v32;
  v76 = v34;
  v62 = type metadata accessor for PopoverPlacement;
  sub_2705053BC(v35, v16, type metadata accessor for PopoverPlacement);
  v38 = swift_allocObject();
  sub_2705050B0(v16, v38 + v29);
  sub_2703AEC08();
  sub_2703AECF0();
  v39 = v64;
  sub_2705D5C04();

  sub_2703C2EFC(v20, &qword_2807CE910);
  sub_2705053BC(v35, v16, type metadata accessor for PopoverPlacement);
  v40 = swift_allocObject();
  sub_2705050B0(v16, v40 + v29);
  v41 = v73;
  (*(v65 + 32))(v73, v39, v66);
  v42 = &v41[*(v70 + 36)];
  *v42 = sub_270505258;
  v42[1] = v40;
  v42[2] = 0;
  v42[3] = 0;
  v43 = v16;
  v44 = v67;
  v45 = (v35 + *(v67 + 32));
  v47 = *v45;
  v46 = v45[1];
  v74 = v47;
  v75 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D59E8);
  sub_2705D5E74();
  v48 = v77;
  v49 = v78;
  v50 = v79;
  swift_getKeyPath();
  v77 = v48;
  v78 = v49;
  v79 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D59F0);
  v51 = v68;
  sub_2705D5F14();

  v52 = *(v35 + *(v44 + 28));
  sub_2705053BC(v35, v43, v62);
  v53 = swift_allocObject();
  sub_2705050B0(v43, v53 + v29);
  MEMORY[0x2743A1B50](v52);
  type metadata accessor for MessageViewStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE900);
  sub_2703AEADC();
  OUTLINED_FUNCTION_2_58();
  sub_270505314(v54, v55);
  sub_2703AED8C();
  v56 = v73;
  sub_2705D5AC4();

  sub_2703C2EFC(v51, &qword_2807D59D8);
  return sub_27050535C(v56);
}

uint64_t sub_270503D64(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_2705D5254();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_2705D78A4();
  v1[13] = sub_2705D7894();
  v4 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_270503E58, v4, v3);
}

uint64_t sub_270503E58()
{
  v22 = v0;
  v1 = v0[9];

  v2 = (v1 + *(type metadata accessor for PopoverPlacement() + 32));
  v4 = *v2;
  v3 = v2[1];
  v0[5] = v4;
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D59E8);
  sub_2705D5E54();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v0[2] = v5;
    v0[3] = v6;
    v0[4] = v7;
  }

  else
  {
    v8 = v0[11];
    v9 = v0[12];
    v20 = v0[10];

    sub_2705D7A84();
    v10 = sub_2705D56A4();
    OUTLINED_FUNCTION_4_39();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2704B9504(v5, v6, v7, 0);
    (*(v8 + 8))(v9, v20);
    v5 = v0[2];
    v6 = v0[3];
    v7 = v0[4];
  }

  v11 = v0[9];
  v21[0] = v5;
  v21[1] = v6;
  v21[2] = v7;
  v12 = *v11;
  v13 = *(v11 + 8);

  if ((v13 & 1) == 0)
  {
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[10];
    sub_2705D7A84();
    v17 = sub_2705D56A4();
    OUTLINED_FUNCTION_4_39();

    sub_2705D5244();
    swift_getAtKeyPath();

    (*(v14 + 8))(v15, v16);
    v12 = v0[8];
  }

  sub_2704BA514(v21, v12);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2705040C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2705D5254();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = v10 == v13 && v11 == v14;
  if (!v16 && (sub_2705D8134() & 1) == 0 || (result = sub_270463AD0(v12, v15), (result & 1) == 0))
  {
    v18 = (a3 + *(type metadata accessor for PopoverPlacement() + 32));
    v20 = *v18;
    v19 = v18[1];
    v30 = v20;
    v31 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D59E8);
    sub_2705D5E54();
    v21 = *(a3 + 16);
    v22 = *(a3 + 24);
    v23 = *(a3 + 32);
    if (*(a3 + 40) == 1)
    {
      v30 = *(a3 + 16);
      v31 = v22;
      v32 = v23;
    }

    else
    {

      sub_2705D7A84();
      v24 = sub_2705D56A4();
      sub_2705D4C04();

      sub_2705D5244();
      swift_getAtKeyPath();
      sub_2704B9504(v21, v22, v23, 0);
      (*(v7 + 8))(v9, v6);
      v21 = v30;
      v22 = v31;
      v23 = v32;
    }

    v29[0] = v21;
    v29[1] = v22;
    v29[2] = v23;
    v25 = *a3;
    v26 = *(a3 + 8);

    if ((v26 & 1) == 0)
    {
      sub_2705D7A84();
      v27 = sub_2705D56A4();
      sub_2705D4C04();

      sub_2705D5244();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      v25 = v28[1];
    }

    sub_2704BA514(v29, v25);
  }

  return result;
}

uint64_t sub_27050438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_2705D5574();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PopoverPlacement();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for MessageViewStyleBuilderView();
  MEMORY[0x28223BE20](v51);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE958);
  MEMORY[0x28223BE20](v58);
  v52 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3D78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_2705D5254();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2705D46F4();
  v45 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v47 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v46 = &v45 - v22;
  MEMORY[0x28223BE20](v21);
  v57 = &v45 - v23;
  v50 = a2;
  LOBYTE(a2) = *(a2 + 8);

  if ((a2 & 1) == 0)
  {
    sub_2705D7A84();
    v24 = a1;
    v25 = sub_2705D56A4();
    sub_2705D4C04();

    a1 = v24;
    sub_2705D5244();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v14);
  }

  sub_2704833FC(v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_2703C2EFC(v13, &qword_2807D3D78);
    v26 = 1;
    v28 = v58;
    v27 = v59;
  }

  else
  {
    v29 = v45;
    v30 = v57;
    (*(v45 + 32))(v57, v13, v18);
    v31 = v53;
    sub_2705053BC(a1, v53, type metadata accessor for MessageViewStyle);
    v32 = *(v29 + 16);
    v33 = v46;
    v32(v46, v30, v18);
    v34 = v48;
    sub_2705053BC(v50, v48, type metadata accessor for PopoverPlacement);
    v35 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v36 = swift_allocObject();
    sub_2705050B0(v34, v36 + v35);
    v37 = v51;
    v32(v47, v33, v18);
    sub_2705D5E44();
    v38 = *(v29 + 8);
    v38(v33, v18);
    v39 = (v31 + *(v37 + 24));
    *v39 = sub_27050552C;
    v39[1] = v36;
    *(v31 + *(v37 + 28)) = 0;
    v40 = v54;
    sub_2705D5564();
    sub_270505314(&qword_2807CE960, type metadata accessor for MessageViewStyleBuilderView);
    v41 = v52;
    sub_2705D5B74();
    (*(v55 + 8))(v40, v56);
    sub_2705055A0();
    v38(v57, v18);
    KeyPath = swift_getKeyPath();
    v28 = v58;
    v27 = v59;
    v43 = v41 + *(v58 + 36);
    *v43 = KeyPath;
    *(v43 + 8) = 0;
    sub_270505648(v41, v27);
    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v27, v26, 1, v28);
}

uint64_t sub_270504A04(uint64_t *a1, void (*a2)(void *, uint64_t))
{
  v4 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = (a1 + *(type metadata accessor for PopoverPlacement() + 32));
  v13 = *v11;
  v12 = v11[1];
  v24 = v13;
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D59E8);
  sub_2705D5E54();
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  if (*(a1 + 40) == 1)
  {
    v24 = a1[2];
    v25 = v15;
    v26 = v16;
  }

  else
  {

    sub_2705D7A84();
    v17 = sub_2705D56A4();
    OUTLINED_FUNCTION_4_39();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2704B9504(v14, v15, v16, 0);
    (*(v6 + 8))(v10, v4);
    v14 = v24;
    v15 = v25;
    v16 = v26;
  }

  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v18 = *a1;
  v19 = *(a1 + 8);

  if ((v19 & 1) == 0)
  {
    sub_2705D7A84();
    v20 = sub_2705D56A4();
    OUTLINED_FUNCTION_4_39();

    sub_2705D5244();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
    v18 = v22;
  }

  a2(v23, v18);
}

uint64_t sub_270504C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270506474();
  *a1 = result;
  return result;
}

uint64_t sub_270504CF4()
{
  type metadata accessor for PopoverPlacement();
  sub_2705D5044();
  sub_270505314(&qword_2807D59B8, type metadata accessor for PopoverPlacement);
  return swift_getWitnessTable();
}

uint64_t sub_270504DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_41();
  v6 = sub_2705D5594();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_270504E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2705D5594();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_270504F10()
{
  sub_27050502C(319, &qword_2807D0790, type metadata accessor for MessageCenter, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2704B6F40();
    if (v1 <= 0x3F)
    {
      sub_2705D5594();
      if (v2 <= 0x3F)
      {
        sub_27050502C(319, &qword_2807D59D0, type metadata accessor for MessagePlacementViewModel, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27050502C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2705050B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverPlacement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270505114()
{
  v2 = type metadata accessor for PopoverPlacement();
  OUTLINED_FUNCTION_23_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2703F6C98;

  return sub_270503D64(v0 + v4);
}

uint64_t sub_2705051DC(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for PopoverPlacement();
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2705040C4(a1, a2, v7);
}

uint64_t sub_270505298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PopoverPlacement();
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_27050438C(a1, v7, a2);
}

uint64_t sub_270505314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27050535C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8F8);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2705053BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for PopoverPlacement() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_2704B9504(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  v3 = v1[8];
  sub_2705D5594();
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_270505544()
{
  OUTLINED_FUNCTION_4_41();
  v2 = type metadata accessor for PopoverPlacement();
  OUTLINED_FUNCTION_23_0(v2);
  return sub_270504A04((v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80))), v0);
}

uint64_t sub_2705055A0()
{
  v1 = OUTLINED_FUNCTION_4_41();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2705055F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270506474();
  *a1 = result;
  return result;
}

uint64_t sub_270505648(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE958);
  OUTLINED_FUNCTION_14();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2705056B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CE8F8);
  type metadata accessor for MessageViewStyle(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CE900);
  sub_2703AEADC();
  OUTLINED_FUNCTION_2_58();
  sub_270505314(v0, v1);
  sub_2703AED8C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PresentationRequest.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresentationRequest.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PresentationRequest.style.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PresentationRequest();
  OUTLINED_FUNCTION_2_59();
  return sub_2705061D8(v1 + v3, a1, v4);
}

uint64_t type metadata accessor for PresentationRequest()
{
  result = qword_2807D59F8;
  if (!qword_2807D59F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PresentationRequest.style.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PresentationRequest() + 24);

  return sub_2704BD764(a1, v3);
}

uint64_t sub_27050597C@<X0>(uint64_t *a1@<X8>)
{
  result = PresentationRequest.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2705059B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MessageViewStyle(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_270505A54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MessageViewStyle(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_270505AD4()
{
  result = type metadata accessor for MessageViewStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_270505B58(uint64_t *a1)
{
  v60 = sub_2705D6784();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  type metadata accessor for ActionResultHandler.Result();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v59 = v10 - v9;
  type metadata accessor for PresentationRequest();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = v13 - v12;
  v58 = sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  v57 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  v56 = type metadata accessor for MessageViewStyle(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v23 = v22 - v21;
  v24 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_4_0();
  v27 = v26 - v25;
  v28 = type metadata accessor for MessageViewStyle.ViewStyle(0);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_4_0();
  v31 = v30 - v29;
  v32 = type metadata accessor for FlowAction(0);
  sub_2705061D8(a1 + *(v32 + 24), v27, type metadata accessor for FlowAction.Destination);
  v33 = v31;
  sub_270506174(v27, v31);
  type metadata accessor for ActionResultHandler();
  sub_2705D6894();
  if (v61)
  {
    v54 = v7;
    v34 = *a1;
    v35 = a1[1];
    v36 = v34 == 0x746E6573657270 && v35 == 0xE700000000000000;
    v55 = v3;
    if (v36 || (sub_2705D8134() & 1) != 0)
    {
      LOBYTE(v37) = 1;
    }

    else
    {
      if (v34 == 1752397168 && v35 == 0xE400000000000000)
      {
        v53 = 0;
        goto LABEL_9;
      }

      v37 = sub_2705D8134() ^ 1;
    }

    v53 = v37;
LABEL_9:
    sub_2705061D8(v31, v23, type metadata accessor for MessageViewStyle.ViewStyle);
    sub_2705D45B4();
    v38 = sub_2705D45A4();
    v40 = v39;
    v41 = *(v57 + 8);
    v41(v19, v58);
    v42 = v23 + *(v56 + 20);
    *v42 = 0;
    *(v42 + 8) = 0;
    *(v42 + 16) = -1;
    v43 = (v23 + *(v56 + 24));
    *v43 = v38;
    v43[1] = v40;
    sub_2703AE980(*v42, *(v42 + 8), *(v42 + 16));
    *v42 = 0;
    *(v42 + 8) = 0;
    *(v42 + 16) = -1;
    OUTLINED_FUNCTION_2_59();
    sub_2705061D8(v23, v14 + v44, v45);
    sub_2705D45B4();
    v46 = sub_2705D45A4();
    v48 = v47;
    v41(v19, v58);
    *v14 = v46;
    *(v14 + 8) = v48;
    *(v14 + 16) = v53 & 1;
    v49 = *(v61 + 16);
    sub_2705061D8(v14, v59, type metadata accessor for PresentationRequest);
    swift_storeEnumTagMultiPayload();
    v49(v59);
    v33 = v31;
    sub_270506238(v59, type metadata accessor for ActionResultHandler.Result);
    sub_270506238(v14, type metadata accessor for PresentationRequest);
    sub_270506238(v23, type metadata accessor for MessageViewStyle);

    v7 = v54;
    v3 = v55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
  (*(v3 + 104))(v7, *MEMORY[0x277D21CA8], v60);
  v50 = sub_2705D70C4();
  sub_270506238(v33, type metadata accessor for MessageViewStyle.ViewStyle);
  return v50;
}

id sub_270506080()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_270506104()
{
  result = qword_2807CECC0;
  if (!qword_2807CECC0)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CECC0);
  }

  return result;
}

uint64_t sub_270506174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageViewStyle.ViewStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2705061D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_270506238(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PresentationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270506374);
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

unint64_t sub_2705063B0()
{
  result = qword_2807D5A08;
  if (!qword_2807D5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A08);
  }

  return result;
}

uint64_t sub_270506410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2705063B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_270506474()
{
  sub_2705064EC();
  sub_2705D5264();
  return v1;
}

unint64_t sub_2705064EC()
{
  result = qword_2807D5A10;
  if (!qword_2807D5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A10);
  }

  return result;
}

uint64_t PresentationType.hashValue.getter()
{
  v1 = *v0;
  sub_2705D83B4();
  MEMORY[0x2743A47E0](v1);
  return sub_2705D8414();
}

unint64_t sub_2705065EC()
{
  result = qword_2807D5A18;
  if (!qword_2807D5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5A18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PresentationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27050670CLL);
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

uint64_t sub_270506744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2705D6774();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2705067B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v85 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2C8);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v81 - v5;
  v6 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v84 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v83 = &v81 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v81 - v14;
  v90 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v88 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PromptNotificationAction();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  v89 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1;
  sub_2705D6494();
  if (sub_2705D6444())
  {
    goto LABEL_4;
  }

  v86 = a1;
  v24 = v91;
  sub_27050701C(v15, v95, v91);
  v25 = v24;
  v26 = v90;
  if (__swift_getEnumTagSinglePayload(v25, 1, v90) == 1)
  {
    sub_2703C1634(v91, &qword_2807CF2C8);
    v23 = v86;
LABEL_4:
    sub_2705D7184();
    OUTLINED_FUNCTION_0_59();
    sub_270507580(v27, v28);
    v29 = swift_allocError();
    strcpy(v30, "actionMetrics");
    *(v30 + 7) = -4864;
    v31 = v29;
    *(v30 + 2) = v20;
    OUTLINED_FUNCTION_4_4();
    (*(v32 + 104))();
    v91 = v31;
    swift_willThrow();
    v33 = *(v8 + 8);
    v33(v23, v6);
    v33(v15, v6);
    v34 = 0;
    v35 = v89;
    v36 = v90;
    goto LABEL_5;
  }

  v82 = *(v8 + 8);
  v82(v15, v6);
  v40 = *(v88 + 32);
  v40(v19, v91, v26);
  v41 = v89;
  v42 = v19;
  v36 = v26;
  v40(v89 + *(v20 + 28), v42, v26);
  v43 = v87;
  v44 = sub_270469D8C();
  v91 = v43;
  if (v43)
  {
    v45 = OUTLINED_FUNCTION_3_55();
    v46(v45);
    v34 = 1;
    v35 = v41;
    goto LABEL_5;
  }

  *v41 = v44;
  v47 = v91;
  v48 = sub_2704698DC();
  v35 = v41;
  v91 = v47;
  if (v47)
  {
    v50 = OUTLINED_FUNCTION_3_55();
    v51(v50);
    v34 = 1;
LABEL_5:
    v37 = v20;
    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    result = (*(v38 + 8))(v95);
    if (!v34)
    {
      return result;
    }

    return (*(v88 + 8))(v35 + *(v37 + 28), v36);
  }

  v41[1] = v48;
  v41[2] = v49;
  v52 = v91;
  v53 = sub_270469A24();
  v37 = v20;
  v91 = v52;
  if (!v52)
  {
    v90 = v8 + 8;
    *(v35 + 24) = v53 & 1;
    v57 = v83;
    sub_2705D6494();
    v58 = sub_2705D6444();
    v59 = v82;
    if ((v58 & 1) == 0)
    {
      sub_2705D67A4();
      if (v93)
      {
        v59(v57, v6);
        sub_2703B291C(&v92, v94);
        goto LABEL_19;
      }

      sub_2703C1634(&v92, &unk_2807CF480);
    }

    sub_2705D7184();
    OUTLINED_FUNCTION_0_59();
    sub_270507580(v60, v61);
    v62 = OUTLINED_FUNCTION_9_4();
    strcpy(v63, "failureAction");
    *(v63 + 7) = -4864;
    *(v63 + 2) = v20;
    OUTLINED_FUNCTION_4_4();
    (*(v64 + 104))();
    swift_willThrow();
    v82(v57, v6);
    v65 = v62;
    v35 = v89;

    OUTLINED_FUNCTION_6_51();
LABEL_19:
    OUTLINED_FUNCTION_4_16(*(v20 + 32));
    v66 = v84;
    v67 = v86;
    sub_2705D6494();
    if ((sub_2705D6444() & 1) == 0)
    {
      sub_2705D67A4();
      if (v93)
      {
        v68 = v6;
        v69 = v6;
        v70 = v82;
        v82(v86, v69);
        v70(v66, v68);
        sub_2703B291C(&v92, v94);
LABEL_24:
        OUTLINED_FUNCTION_4_16(*(v37 + 36));
        sub_27050728C(v35, v85);
        sub_2705D6654();
        OUTLINED_FUNCTION_11_1();
        (*(v80 + 8))(v95);
        return sub_2705072F0(v35);
      }

      sub_2703C1634(&v92, &unk_2807CF480);
      v67 = v86;
    }

    sub_2705D7184();
    OUTLINED_FUNCTION_0_59();
    sub_270507580(v71, v72);
    v73 = OUTLINED_FUNCTION_9_4();
    strcpy(v74, "successAction");
    *(v74 + 7) = -4864;
    *(v74 + 2) = v37;
    OUTLINED_FUNCTION_4_4();
    (*(v75 + 104))();
    swift_willThrow();
    v76 = v6;
    v77 = v6;
    v78 = v82;
    v82(v67, v77);
    v78(v66, v76);
    v79 = v73;
    v35 = v89;

    OUTLINED_FUNCTION_6_51();
    goto LABEL_24;
  }

  v54 = OUTLINED_FUNCTION_3_55();
  v55(v54);
  sub_2705D6654();
  OUTLINED_FUNCTION_11_1();
  (*(v56 + 8))(v95);

  return (*(v88 + 8))(v35 + *(v37 + 28), v36);
}

uint64_t sub_27050701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2705D6654();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2705D6484();
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_2705D6754();
  v13 = sub_2705D6774();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
}

uint64_t sub_2705071E8(uint64_t a1)
{
  result = sub_270507580(&qword_2807D5A20, type metadata accessor for PromptNotificationAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PromptNotificationAction()
{
  result = qword_2807D5A28;
  if (!qword_2807D5A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27050728C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptNotificationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2705072F0(uint64_t a1)
{
  v2 = type metadata accessor for PromptNotificationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270507360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2705D6774();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2705073FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2705D6774();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_27050747C()
{
  sub_2705D6774();
  if (v0 <= 0x3F)
  {
    sub_2703F0078();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_270507528(uint64_t a1)
{
  result = sub_270507580(&qword_2807CECA8, type metadata accessor for PromptNotificationAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_270507580(unint64_t *a1, void (*a2)(uint64_t))
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

double OUTLINED_FUNCTION_6_51()
{
  *(v0 - 176) = 0;
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

__n128 PromptNotificationModel.init(authorizationOptions:bundleId:finishOnPrompt:failureAction:successAction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  v9 = a6[1].n128_u64[0];
  v10 = a6[1].n128_u8[8];
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 64) = *a5;
  *(a7 + 80) = v7;
  *(a7 + 88) = v8;
  result = *a6;
  *(a7 + 32) = *a6;
  *(a7 + 48) = v9;
  *(a7 + 56) = v10;
  return result;
}

uint64_t sub_270507644(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000270615400 == a2;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E4F6873696E6966 && a2 == 0xEE0074706D6F7250;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

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

unint64_t sub_270507804(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E4F6873696E6966;
      break;
    case 3:
      result = 0x4173736563637573;
      break;
    case 4:
      result = 0x416572756C696166;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}