unint64_t sub_1C9478080()
{
  result = qword_1EDB7EF40;
  if (!qword_1EDB7EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF40);
  }

  return result;
}

unint64_t sub_1C94780D8()
{
  result = qword_1EDB7EF50;
  if (!qword_1EDB7EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF50);
  }

  return result;
}

unint64_t sub_1C947812C()
{
  result = qword_1EDB7FBF0;
  if (!qword_1EDB7FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_1C96A7EE4();
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_21_10()
{

  return swift_once();
}

id OUTLINED_FUNCTION_21_11@<X0>(void *a1@<X8>)
{

  return a1;
}

id OUTLINED_FUNCTION_21_13()
{
  v2 = *(v0 + 2648);

  return v2;
}

uint64_t OUTLINED_FUNCTION_21_19()
{

  return type metadata accessor for UserIdentity();
}

uint64_t OUTLINED_FUNCTION_21_20()
{
}

uint64_t OUTLINED_FUNCTION_21_22()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_21_23(uint64_t a1)
{
  *(v1 + 152) = a1;

  return sub_1C96A5184();
}

uint64_t OUTLINED_FUNCTION_21_26()
{

  return swift_beginAccess();
}

unint64_t sub_1C94783F8(char a1)
{
  result = 0x656372756F73;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x646E694B656C6974;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C94784A8()
{
  result = qword_1EDB7EF28;
  if (!qword_1EDB7EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF28);
  }

  return result;
}

uint64_t MapsConfiguration.EndpointConfiguration.TileColorFormat.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C96A7BE4();

  *a1 = v2 != 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_1C96A53C4();
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  v3 = (v0 + v1[7]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + v1[8]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + v1[9]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + v1[10]);
  *v6 = 0;
  v6[1] = 0;
}

void OUTLINED_FUNCTION_17_11(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE90000000000006DLL, v4, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_17_16()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_34_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_17_21()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_17_23(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_26(unint64_t *a1)
{

  return sub_1C95F5C14(a1);
}

uint64_t OUTLINED_FUNCTION_17_34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_17_35(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 514;
  *(a1 + 10) = 2;
}

uint64_t OUTLINED_FUNCTION_17_39()
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_17_40()
{

  return sub_1C96A7DE4();
}

unint64_t sub_1C94788F4()
{
  result = qword_1EDB7EE38;
  if (!qword_1EDB7EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE38);
  }

  return result;
}

unint64_t sub_1C94789A8()
{
  result = qword_1EDB7EE40;
  if (!qword_1EDB7EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.OverlayKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9478AC8);
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

void MapsConfiguration.ZoomLevelsConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_27_11();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6508);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9478DBC();
  sub_1C96A7F44();
  if (!v0)
  {
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v12 = v11;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v14 = v13;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v16 = v15;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v18 = v17;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v20 = v19;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v22 = v21;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v24 = v23;
    v40 = 7;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v36 = v25;
    v39 = 8;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v27 = v26;
    v38 = 9;
    OUTLINED_FUNCTION_2_46();
    sub_1C96A7CA4();
    v35 = v28;
    v37 = 10;
    OUTLINED_FUNCTION_2_46();
    v29 = sub_1C96A7C64();
    v31 = v30;
    (*(v7 + 8))(v10, v5);
    *v4 = v12;
    *(v4 + 8) = v14;
    *(v4 + 16) = v16;
    *(v4 + 24) = v18;
    *(v4 + 32) = v20;
    *(v4 + 40) = v22;
    v32 = v35;
    v33 = v36;
    *(v4 + 48) = v24;
    *(v4 + 56) = v33;
    *(v4 + 64) = v27;
    *(v4 + 72) = v32;
    *(v4 + 80) = v29;
    *(v4 + 88) = v31 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_28_11();
}

unint64_t sub_1C9478DBC()
{
  result = qword_1EDB7EF78[0];
  if (!qword_1EDB7EF78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7EF78);
  }

  return result;
}

unint64_t sub_1C9478E10(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0x74617265706D6574;
      break;
    case 10:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9478FAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6A68);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C947904C()
{
  result = qword_1EDB7DB78;
  if (!qword_1EDB7DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB78);
  }

  return result;
}

uint64_t sub_1C94790AC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1C94790E0()
{
  result = qword_1EDB7E840;
  if (!qword_1EDB7E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E840);
  }

  return result;
}

unint64_t sub_1C9479168(char a1)
{
  result = 0x797274655278616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      OUTLINED_FUNCTION_26_4();
      result = v4 - 2;
      break;
    case 3:
      OUTLINED_FUNCTION_26_4();
      result = v5 + 27;
      break;
    case 4:
      OUTLINED_FUNCTION_26_4();
      result = v3 + 15;
      break;
    case 5:
      return result;
    case 6:
      OUTLINED_FUNCTION_26_4();
      result = v7 + 2;
      break;
    case 7:
      OUTLINED_FUNCTION_26_4();
      result = v6 + 5;
      break;
    case 8:
      OUTLINED_FUNCTION_26_4();
      result = v8 + 3;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C94793A8);
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

unint64_t sub_1C94793D0()
{
  result = qword_1EDB7EDD0;
  if (!qword_1EDB7EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDD0);
  }

  return result;
}

uint64_t NewsConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6308);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9480D44();
  sub_1C96A7F44();
  if (!v2)
  {
    v21 = 0;
    sub_1C96A7C24();
    v11 = v22;
    v19 = 1;
    sub_1C9480F04();
    sub_1C96A7C24();
    v12 = v20;
    v17 = 2;
    sub_1C947978C();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v13 = v18;
    if (v12 == 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    *a2 = (v11 == 2) | v11 & 1;
    a2[1] = v14;
    a2[2] = (v13 == 2) | v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9479620()
{
  result = qword_1EDB7EE10;
  if (!qword_1EDB7EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE10);
  }

  return result;
}

unint64_t sub_1C9479674()
{
  result = qword_1EDB7EE18;
  if (!qword_1EDB7EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE18);
  }

  return result;
}

unint64_t sub_1C94796DC()
{
  result = qword_1EDB7EDE8;
  if (!qword_1EDB7EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDE8);
  }

  return result;
}

WeatherCore::NewsConfiguration::TrendingPlacement_optional __swiftcall NewsConfiguration.TrendingPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C947978C()
{
  result = qword_1EDB7EDF8;
  if (!qword_1EDB7EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDF8);
  }

  return result;
}

unint64_t sub_1C94797E0()
{
  result = qword_1EDB7EE00;
  if (!qword_1EDB7EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NewsConfiguration.SeverePlacement(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947990CLL);
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

void NotificationsConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_7_8();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4FB8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C9481230();
  sub_1C96A7F44();
  if (!v0)
  {
    LOBYTE(v51) = 0;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v11 = v57;
    LODWORD(v37) = v58;
    LOBYTE(v51) = 1;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v12 = v55;
    v35 = v56;
    LOBYTE(v51) = 2;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v13 = v53;
    v34 = v54;
    LOBYTE(v49) = 3;
    v36 = v7;
    OUTLINED_FUNCTION_9_7();
    v33 = v51;
    v32 = v52;
    LOBYTE(v47) = 4;
    OUTLINED_FUNCTION_9_7();
    v30 = v49;
    v29 = v50;
    v45 = 5;
    sub_1C96A7C24();
    v31 = v47;
    v28[7] = v48;
    v43 = 6;
    sub_1C96A7C24();
    v28[6] = v46;
    v41 = 7;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v28[5] = v44;
    LOBYTE(v39) = 8;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v28[4] = v42;
    v38 = 9;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v14 = v39;
    v28[3] = v40;
    OUTLINED_FUNCTION_5_11();
    if (!v15)
    {
      v11 = 900.0;
    }

    OUTLINED_FUNCTION_5_11();
    if (!v15)
    {
      v12 = v16;
    }

    OUTLINED_FUNCTION_5_11();
    if (!v15)
    {
      v13 = 2700.0;
    }

    v17 = 0x80000001C96CC960;
    if (v32)
    {
      v18 = v33;
    }

    else
    {
      v18 = 0xD000000000000022;
    }

    if (v32)
    {
      v17 = v32;
    }

    v37 = v17;
    v19 = sub_1C9479EAC(v30, v29);
    v21 = v20;

    (*(v36 + 8))(v10, v5);
    OUTLINED_FUNCTION_5_11();
    OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_6_8();
    *v4 = v11;
    *(v4 + 8) = v12;
    OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_6_8();
    if (v15)
    {
      v25 = v14;
    }

    *(v4 + 16) = v13;
    v27 = v37;
    *(v4 + 24) = v18;
    *(v4 + 32) = v27;
    *(v4 + 40) = v19;
    *(v4 + 48) = v21;
    *(v4 + 56) = v22;
    *(v4 + 64) = v23;
    *(v4 + 72) = v26;
    *(v4 + 80) = v24;
    *(v4 + 88) = v25;
    *(v4 + 96) = xmmword_1C96AC0B0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_8_9();
}

_BYTE *storeEnumTagSinglePayload for NotificationsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9479E84);
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

unint64_t sub_1C9479EAC(unint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      swift_once();
    }

    sub_1C96A4EB4();

    if (v4)
    {
      a1 = 0xD000000000000068;
    }

    else
    {
      a1 = 0;
    }
  }

  sub_1C96A53C4();
  return a1;
}

uint64_t sub_1C9479F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1C9479FEC()
{
  result = qword_1EDB7D5C0;
  if (!qword_1EDB7D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5C0);
  }

  return result;
}

uint64_t PredictedLocationsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C30);
  OUTLINED_FUNCTION_1();
  v99 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9481524();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v95) = 0;
    OUTLINED_FUNCTION_0_46();
    v63 = 0;
    sub_1C96A7C24();
    v62 = v97;
    v61 = v98;
    LOBYTE(v93) = 1;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v60 = v95;
    v59 = v96;
    LOBYTE(v91) = 2;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v58 = v93;
    v57 = v94;
    LOBYTE(v89) = 3;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v56 = v91;
    v55 = v92;
    LOBYTE(v87) = 4;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v54 = v89;
    v53 = v90;
    LOBYTE(v85) = 5;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v52 = v87;
    v51 = v88;
    LOBYTE(v83) = 6;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v50 = v85;
    v49 = v86;
    LOBYTE(v81) = 7;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v48 = v83;
    v47 = v84;
    LOBYTE(v79) = 8;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v10 = v81;
    v46 = v82;
    LOBYTE(v77) = 9;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v11 = v79;
    v45 = v80;
    LOBYTE(v75) = 10;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v12 = v77;
    v44 = v78;
    LOBYTE(v73) = 11;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v13 = v75;
    v43 = v76;
    LOBYTE(v71) = 12;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v14 = v73;
    v42 = v74;
    LOBYTE(v69) = 13;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v15 = v71;
    v41 = v72;
    LOBYTE(v67) = 14;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v16 = v69;
    v40 = v70;
    LOBYTE(v65) = 15;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    v17 = v67;
    v18 = v68;
    v64 = 16;
    OUTLINED_FUNCTION_0_46();
    sub_1C96A7C24();
    (*(v99 + 8))(v9, v5);
    v19 = v65;
    v20 = v66;
    v21 = 0x408C200000000000;
    v22 = v62;
    if (v61)
    {
      v22 = 900.0;
    }

    if (!v59)
    {
      v21 = v60;
    }

    v23 = v58;
    if (v57)
    {
      v23 = 0.0;
    }

    v24 = 129600.0;
    v25 = v56;
    if (v55)
    {
      v25 = 129600.0;
    }

    v26 = v54;
    if (v53)
    {
      v26 = 21600.0;
    }

    v27 = v52;
    if (v51)
    {
      v27 = 8000.0;
    }

    v28 = v50;
    if (v49)
    {
      v28 = 0.0;
    }

    v29 = v48;
    if (v47)
    {
      v29 = 0.8;
    }

    v30 = 3600.0;
    if (!v46)
    {
      v30 = v10;
    }

    if (v45)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v11;
    }

    if (!v44)
    {
      v24 = v12;
    }

    v32 = v42;
    if (v43)
    {
      v33 = 21600.0;
    }

    else
    {
      v33 = v13;
    }

    *a2 = v22;
    *(a2 + 8) = v21;
    if (v32)
    {
      v34 = 8000.0;
    }

    else
    {
      v34 = v14;
    }

    *(a2 + 16) = v23;
    *(a2 + 24) = v25;
    v35 = v40;
    if (v41)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v15;
    }

    *(a2 + 32) = v26;
    *(a2 + 40) = v27;
    if (v35)
    {
      v37 = 21600.0;
    }

    else
    {
      v37 = v16;
    }

    *(a2 + 48) = v28;
    *(a2 + 56) = v29;
    if (v18)
    {
      v38 = 0.95;
    }

    else
    {
      v38 = v17;
    }

    *(a2 + 64) = v30;
    *(a2 + 72) = v31;
    *(a2 + 80) = v24;
    *(a2 + 88) = v33;
    if (v20)
    {
      v19 = 0.8;
    }

    *(a2 + 96) = v34;
    *(a2 + 104) = v36;
    *(a2 + 112) = v37;
    *(a2 + 120) = v38;
    *(a2 + 128) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947A564()
{
  result = qword_1EDB7D5D0;
  if (!qword_1EDB7D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5D0);
  }

  return result;
}

unint64_t sub_1C947A5BC(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000037;
      break;
    case 3:
    case 8:
      result = 0xD000000000000035;
      break;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
      result = 0xD00000000000004CLL;
      break;
    case 6:
      result = 0xD00000000000004BLL;
      break;
    case 7:
      result = 0xD00000000000003CLL;
      break;
    case 9:
      result = 0xD000000000000027;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000003BLL;
      break;
    case 13:
      result = 0xD00000000000003ALL;
      break;
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 15:
      result = 0xD00000000000003DLL;
      break;
    case 16:
      result = 0xD00000000000003FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedLocationsConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C947A808(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
  return result;
}

unint64_t sub_1C947A854()
{
  result = qword_1EDB7E818;
  if (!qword_1EDB7E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E818);
  }

  return result;
}

uint64_t PrivacyConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7978);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947ACA4();
  sub_1C96A7F44();
  if (!v2)
  {
    v35 = v7;
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v34 = v48;
    LOBYTE(v44) = 1;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v33 = v47;
    LOBYTE(v42) = 2;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v32 = v45;
    LOBYTE(v40) = 3;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v11 = v42;
    v49 = v43;
    LOBYTE(v38) = 4;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v12 = v40;
    v31 = v41;
    LOBYTE(v36) = 5;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v13 = v38;
    v30 = v39;
    v52 = 6;
    sub_1C96A7C24();
    v29 = v36;
    v28 = v37;
    v51 = 7;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v14 = v52;
    v50 = 8;
    OUTLINED_FUNCTION_0_11();
    sub_1C96A7C24();
    v15 = 0x3FC999999999999ALL;
    v16 = v51;
    v17 = 0x3FC999999999999ALL;
    if ((v34 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v17 = v18;
    }

    v19 = 0x3FC999999999999ALL;
    if ((v33 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v19 = v20;
    }

    if ((v32 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v15 = v21;
    }

    (*(v35 + 8))(v10, v5);
    v22 = 33696000.0;
    if (!v49)
    {
      v22 = v11;
    }

    v23 = 2592000.0;
    if (v31)
    {
      v24 = 2592000.0;
    }

    else
    {
      v24 = v12;
    }

    if (!v30)
    {
      v23 = v13;
    }

    v25 = 10;
    if (!v28)
    {
      v25 = v29;
    }

    *a2 = v17;
    *(a2 + 8) = v19;
    *(a2 + 16) = v15;
    *(a2 + 24) = v22;
    *(a2 + 32) = v24;
    *(a2 + 40) = v23;
    *(a2 + 48) = v25;
    *(a2 + 56) = (v14 == 2) | v14 & 1;
    *(a2 + 57) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947ACA4()
{
  result = qword_1EDB7E838;
  if (!qword_1EDB7E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E838);
  }

  return result;
}

unint64_t sub_1C947AD14(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000026;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    case 6:
      result = 0xD000000000000036;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrivacyConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947AEE4);
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

uint64_t sub_1C947AF0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C947AF60()
{
  result = qword_1EDB7D950;
  if (!qword_1EDB7D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D950);
  }

  return result;
}

uint64_t WidgetPrivacyConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C18);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948172C();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v32) = 0;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v25 = v34;
    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v35 = v33;
    LOBYTE(v28) = 2;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v24 = v31;
    LOBYTE(v26) = 3;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    HIDWORD(v23) = v29;
    v36 = 4;
    OUTLINED_FUNCTION_0_45();
    sub_1C96A7C24();
    v11 = v27;
    if (v25)
    {
      v12 = 0x3FC999999999999ALL;
    }

    else
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v12 = v13;
    }

    v14 = v12;
    if ((v35 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v14 = v15;
    }

    v16 = v12;
    if ((v24 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v16 = v17;
    }

    v18 = v12;
    if ((v23 & 0x100000000) == 0)
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v18 = v19;
    }

    v20 = v12;
    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_32();
      sub_1C96A7534();
      v20 = v21;
    }

    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v18;
    a2[4] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947B280()
{
  result = qword_1EDB7D960;
  if (!qword_1EDB7D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D960);
  }

  return result;
}

unint64_t sub_1C947B2D4()
{
  result = qword_1EDB7D968;
  if (!qword_1EDB7D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D968);
  }

  return result;
}

unint64_t sub_1C947B330(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetPrivacyConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947B4A0);
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

uint64_t sub_1C947B4C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1C947B518()
{
  result = qword_1EDB7D4B8;
  if (!qword_1EDB7D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4B8);
  }

  return result;
}

uint64_t sub_1C947B56C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void TemperatureScaleConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68C0);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_6_38(v13);
  sub_1C948B51C();
  OUTLINED_FUNCTION_69_0();
  sub_1C96A7F44();
  if (!v10)
  {
    sub_1C948B570();
    sub_1C96A7C24();
    v20 = a10;
    if (a10)
    {
      if (*(a10 + 16))
      {
LABEL_8:
        (*(v18 + 8))(v11, v16);
        *v15 = v20;
        goto LABEL_9;
      }
    }

    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_1_45();
      swift_once();
    }

    v20 = qword_1EDB7D640;
    sub_1C96A53C4();
    goto LABEL_8;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_118();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_unknownObjectRelease();
}

unint64_t sub_1C947B7B0()
{
  result = qword_1EDB7D660;
  if (!qword_1EDB7D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D660);
  }

  return result;
}

unint64_t sub_1C947B804()
{
  result = qword_1EDB7D668;
  if (!qword_1EDB7D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D668);
  }

  return result;
}

unint64_t sub_1C947B870()
{
  result = qword_1EDB7D5F8;
  if (!qword_1EDB7D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5F8);
  }

  return result;
}

unint64_t sub_1C947B8D8()
{
  result = qword_1EDB7D648;
  if (!qword_1EDB7D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D648);
  }

  return result;
}

unint64_t sub_1C947B92C()
{
  result = qword_1EDB7D650;
  if (!qword_1EDB7D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D650);
  }

  return result;
}

unint64_t sub_1C947B9BC()
{
  result = qword_1EDB7D608;
  if (!qword_1EDB7D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D608);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScaleConfiguration.ColorStop.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947BAE4);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1C947BB38()
{
  result = qword_1EDB7FF48;
  if (!qword_1EDB7FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF48);
  }

  return result;
}

unint64_t sub_1C947BB8C()
{
  result = qword_1EDB7FF50;
  if (!qword_1EDB7FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF50);
  }

  return result;
}

unint64_t sub_1C947BBF0()
{
  result = qword_1EDB7FF30;
  if (!qword_1EDB7FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF30);
  }

  return result;
}

unint64_t sub_1C947BC50()
{
  result = qword_1EDB7EBD0;
  if (!qword_1EDB7EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBD0);
  }

  return result;
}

WeatherCore::UnitConfiguration::WindSpeed_optional __swiftcall UnitConfiguration.WindSpeed.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_5_45();
  v2 = sub_1C96A7BE4();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C947BD1C()
{
  result = qword_1EDB7FC30;
  if (!qword_1EDB7FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC30);
  }

  return result;
}

unint64_t sub_1C947BD80()
{
  result = qword_1EDB7FC50;
  if (!qword_1EDB7FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC50);
  }

  return result;
}

uint64_t sub_1C947BDD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1C947BE04()
{
  result = qword_1EDB7FBD8;
  if (!qword_1EDB7FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBD8);
  }

  return result;
}

unint64_t sub_1C947BE58()
{
  result = qword_1EDB7FBE0;
  if (!qword_1EDB7FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBE0);
  }

  return result;
}

unint64_t sub_1C947BEAC()
{
  result = qword_1EDB7FBE8;
  if (!qword_1EDB7FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBE8);
  }

  return result;
}

uint64_t WeatherMenuConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A86D8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24.i8[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947C128();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v27) = 0;
    sub_1C9490164();
    sub_1C96A7C24();
    v24 = v29;
    v25 = v30;
    v11 = v31;
    v12 = v32;
    v26 = 1;
    sub_1C948BFF4();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v13 = v27;
    v14 = 60.0;
    if (v12)
    {
      v15 = -1;
    }

    else
    {
      v14 = v11;
      v15 = 0;
    }

    v16 = vdupq_n_s64(v15);
    v17.i64[1] = v25.i64[1];
    v18 = vbslq_s8(v16, xmmword_1C96B5080, v24);
    v19.i64[1] = 0x403E000000000000;
    v20 = vbslq_s8(v16, xmmword_1C96B5090, v25);
    v19.i64[0] = 2;
    v17.i64[0] = v27;
    v21 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v17, v19).i64[0], 0), xmmword_1C96B50A0, v28);
    *a2 = v18;
    *(a2 + 16) = v20;
    *(a2 + 32) = v14;
    *(a2 + 40) = (v13 != 2) & v13;
    if (v13 == 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = HIBYTE(v13) & 1;
    }

    *(a2 + 41) = v22;
    *(a2 + 48) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947C128()
{
  result = qword_1EDB7FC28;
  if (!qword_1EDB7FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMenuConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947C248);
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

uint64_t WeatherMenuRefreshConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5590);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948BDF8();
  sub_1C96A7F44();
  if (!v2)
  {
    v29 = 0;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v11 = v26;
    v28 = v27;
    v29 = 1;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v12 = v26;
    v25 = v27;
    v29 = 2;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v13 = v26;
    v24 = v27;
    v29 = 3;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    v14 = v26;
    v15 = v27;
    v29 = 4;
    OUTLINED_FUNCTION_0_25();
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v16 = v26;
    v17 = v27;
    v18 = 900.0;
    if (!v28)
    {
      v18 = v11;
    }

    v19 = 300.0;
    if (v25)
    {
      v20 = 300.0;
    }

    else
    {
      v20 = v12;
    }

    if (!v24)
    {
      v19 = v13;
    }

    v21 = 30.0;
    if (!v15)
    {
      v21 = v14;
    }

    *a2 = v18;
    a2[1] = v20;
    if (v17)
    {
      v16 = 60.0;
    }

    a2[2] = v19;
    a2[3] = v21;
    a2[4] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *sub_1C947C4C4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  sub_1C96A7F44();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A48);
    v16[0] = 31;
    OUTLINED_FUNCTION_19_21();
    sub_1C95DA0FC(v4);
    OUTLINED_FUNCTION_39_4();
    v5 = v18;
    if (!v18)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v6 = sub_1C96A7F34();
      if (qword_1EDB7CCF8 != -1)
      {
        swift_once();
      }

      v7 = sub_1C96A7B74();
      v8 = __swift_project_value_buffer(v7, qword_1EDB7CD00);
      sub_1C94FA860(v8, v6);

      if (v17)
      {
        if (OUTLINED_FUNCTION_47_2())
        {
          v5 = v19;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        sub_1C9470AFC(v16, &qword_1EC3A4A90);
        v5 = 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A50);
    v16[0] = 32;
    OUTLINED_FUNCTION_19_21();
    sub_1C95D9FF0(v9);
    OUTLINED_FUNCTION_39_4();
    if (v18)
    {
      if (v5)
      {
        a1 = v5;
      }

      else
      {
        a1 = MEMORY[0x1E69E7CC0];
      }

LABEL_27:
      v14 = OUTLINED_FUNCTION_43_9();
      v15(v14);
      return a1;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1C96A7F34();
    if (qword_1EDB7CCD0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C96A7B74();
    v13 = __swift_project_value_buffer(v12, qword_1EDB7CCD8);
    sub_1C94FA860(v13, v11);

    if (v17)
    {
      if (OUTLINED_FUNCTION_47_2())
      {
        if (v5)
        {
          a1 = v5;
        }

        else
        {
          a1 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1C9470AFC(v16, &qword_1EC3A4A90);
    }

    if (v5)
    {
      a1 = v5;
    }

    else
    {
      a1 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_27;
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return sub_1C9469B6C(va1, va);
}

uint64_t OUTLINED_FUNCTION_30_7@<X0>(char a1@<W8>)
{
  *v1 = a1;

  return type metadata accessor for MapsConfiguration.EndpointConfiguration();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_13()
{

  return sub_1C96A7544();
}

void OUTLINED_FUNCTION_30_15(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2].n128_u64[0] = 0x404E000000000000;
  a1[2].n128_u16[4] = 0;
}

unint64_t sub_1C947C9D4()
{
  result = qword_1EDB7D910;
  if (!qword_1EDB7D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppStoreReviewConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947CAF8);
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

uint64_t sub_1C947CB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C947CB78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C96A4764();
  OUTLINED_FUNCTION_16_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
    OUTLINED_FUNCTION_16_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[9]) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t EndpointConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - v5;
  v6 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v38 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_28();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7958);
  OUTLINED_FUNCTION_1();
  v39 = v16;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1C947D174();
  v21 = v42;
  sub_1C96A7F44();
  if (!v21)
  {
    v42 = v2;
    v36 = v11;
    v22 = v39;
    v23 = v40;
    v48 = 0;
    sub_1C946E750();
    sub_1C96A7CB4();
    v24 = v49;
    v47 = 1;
    v25 = v15;
    v26 = v6;
    sub_1C947D430(&qword_1EDB7FD78);
    sub_1C96A7CB4();
    v46 = 2;
    v28 = v23;
    sub_1C96A7C74();
    v29 = v22;
    v45 = 3;
    sub_1C96A7CB4();
    v30 = v38;
    v44 = 4;
    v31 = v36;
    sub_1C96A7CB4();
    (*(v29 + 8))(v19, v41);
    v32 = type metadata accessor for EndpointConfiguration();
    v33 = v32[5];
    LODWORD(v41) = v24;
    v34 = *(v30 + 32);
    v35 = v37;
    v34(&v37[v33], v25, v26);
    sub_1C947D474(v28, &v35[v32[6]]);
    v34(&v35[v32[7]], v42, v26);
    v34(&v35[v32[8]], v31, v26);
    *v35 = v41;
    v35[v32[9]] = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v43);
}

unint64_t sub_1C947D120()
{
  result = qword_1EDB7E408;
  if (!qword_1EDB7E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E408);
  }

  return result;
}

unint64_t sub_1C947D174()
{
  result = qword_1EDB7E410;
  if (!qword_1EDB7E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E410);
  }

  return result;
}

unint64_t sub_1C947D1C8(char a1)
{
  result = 0x6D6E6F7269766E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMenuRefreshConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C947D324()
{
  result = qword_1EDB7EAF8;
  if (!qword_1EDB7EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EAF8);
  }

  return result;
}

WeatherCore::ContentEnvironment_optional sub_1C947D378@<W0>(Swift::String *a1@<X0>, WeatherCore::ContentEnvironment_optional *a2@<X8>)
{
  result.value = ContentEnvironment.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentEnvironment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C947D430(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C96A4764();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C947D474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C947D4F8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C96A4764();
  OUTLINED_FUNCTION_16_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
    OUTLINED_FUNCTION_16_1();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + a3[9]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a3[6];
  }

  return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
}

uint64_t FeaturesConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5618);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947D86C();
  sub_1C96A7F44();
  if (!v2)
  {
    v18 = 0;
    sub_1C96A7C24();
    v11 = v19;
    v16 = 1;
    sub_1C96A7C24();
    (*(v7 + 8))(v10, v5);
    v12 = v17;
    v13 = v17 == 2;
    *a2 = (v11 == 2) | v11 & 1;
    a2[1] = (v13 | v12) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947D7C0()
{
  result = qword_1EDB7E338;
  if (!qword_1EDB7E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E338);
  }

  return result;
}

unint64_t sub_1C947D818()
{
  result = qword_1EDB7E340;
  if (!qword_1EDB7E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E340);
  }

  return result;
}

unint64_t sub_1C947D86C()
{
  result = qword_1EDB7E348[0];
  if (!qword_1EDB7E348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7E348);
  }

  return result;
}

unint64_t sub_1C947D8C8(char a1)
{
  if (a1)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

_BYTE *storeEnumTagSinglePayload for FeaturesConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947D9CCLL);
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

uint64_t storeEnumTagSinglePayload for FeaturesConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947DAC0);
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

unint64_t sub_1C947DAE8()
{
  result = qword_1EDB7E868;
  if (!qword_1EDB7E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E868);
  }

  return result;
}

uint64_t GeocodeConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5108);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947DE54();
  sub_1C96A7F44();
  if (!v2)
  {
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
    LOBYTE(v20) = 0;
    sub_1C946E8FC(&qword_1EDB7CE68);
    sub_1C96A7C24();
    v11 = v23;
    LOBYTE(v20) = 2;
    sub_1C96A7C24();
    v12 = v22;
    v19 = 1;
    sub_1C96A7C24();
    v13 = 1.0;
    v14 = v20;
    v15 = v21;
    if ((v12 & 1) == 0)
    {
      sub_1C96A7534();
      v13 = v16;
    }

    if (!v11)
    {
      v11 = &unk_1F48FACF0;
    }

    (*(v18 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v13;
    *(a2 + 2) = v14;
    *(a2 + 3) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947DDA8()
{
  result = qword_1EDB7E878;
  if (!qword_1EDB7E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E878);
  }

  return result;
}

unint64_t sub_1C947DE00()
{
  result = qword_1EDB7E880;
  if (!qword_1EDB7E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E880);
  }

  return result;
}

unint64_t sub_1C947DE54()
{
  result = qword_1EDB7E888[0];
  if (!qword_1EDB7E888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7E888);
  }

  return result;
}

unint64_t sub_1C947DEB0(char a1)
{
  result = 0xD000000000000017;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000026;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeocodeConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947DFD4);
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

uint64_t getEnumTagSinglePayload for GeocodedLocationEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C947E084(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1C947E0C4()
{
  result = qword_1EDB7D880;
  if (!qword_1EDB7D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D880);
  }

  return result;
}

uint64_t HistoricalFactsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6350);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947E3B4();
  sub_1C96A7F44();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6358);
    sub_1C947E408(&qword_1EDB7CDF0);
    sub_1C96A7C24();
    v11 = v14;
    if (!v14)
    {
      if (qword_1EDB7D890 != -1)
      {
        OUTLINED_FUNCTION_0_62();
        swift_once();
      }

      v11 = qword_1EDB7D898;
      sub_1C96A53C4();
    }

    (*(v7 + 8))(v10, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C947E308()
{
  result = qword_1EDB7D8A0;
  if (!qword_1EDB7D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D8A0);
  }

  return result;
}

unint64_t sub_1C947E360()
{
  result = qword_1EDB7D8A8;
  if (!qword_1EDB7D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D8A8);
  }

  return result;
}

unint64_t sub_1C947E3B4()
{
  result = qword_1EDB7D8B0;
  if (!qword_1EDB7D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D8B0);
  }

  return result;
}

uint64_t sub_1C947E408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalFactsConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C947E530);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_14()
{
}

uint64_t OUTLINED_FUNCTION_26_15()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 - 120);

  return sub_1C96A63C4();
}

uint64_t LocationsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v88 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v90 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  v85 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v75[-v7];
  v91 = type metadata accessor for LocationsConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_24();
  v83 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_1();
  v92 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_1();
  v84 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_1();
  v93 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_1();
  v96 = v19;
  OUTLINED_FUNCTION_12();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v75[-v22];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v75[-v25];
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  v94 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A70F8);
  OUTLINED_FUNCTION_1();
  v89 = v32;
  MEMORY[0x1EEE9AC00](v33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947EF84();
  v34 = v97;
  sub_1C96A7F44();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v97 = v23;
  v79 = 0;
  v78 = a1;
  v36 = v88;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v88);
  v37 = v94;
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v36);
  LOBYTE(v102) = 4;
  sub_1C96A7C24();
  v38 = v31;
  if (v105)
  {
    v39 = v26;
    sub_1C96A4754();

    sub_1C947F1BC(v30);
    sub_1C947D474(v26, v30);
    v40 = v97;
  }

  else
  {
    v40 = v97;
    v39 = v26;
  }

  LOBYTE(v102) = 5;
  sub_1C96A7C24();
  v82 = v30;
  v41 = v36;
  if (v105)
  {
    sub_1C96A4754();

    sub_1C947F1BC(v37);
    sub_1C947D474(v39, v37);
  }

  v42 = v37;
  LOBYTE(v102) = 0;
  OUTLINED_FUNCTION_5_41();
  v88 = v104;
  v106 = v105;
  LOBYTE(v100) = 1;
  OUTLINED_FUNCTION_5_41();
  v81 = v102;
  v80 = v103;
  LOBYTE(v98) = 2;
  OUTLINED_FUNCTION_5_41();
  v43 = v38;
  v44 = v100;
  v45 = v101;
  v108 = 3;
  sub_1C96A7C24();
  v46 = v98;
  v47 = v99;
  sub_1C947F224(v82, v40);
  sub_1C947F224(v42, v96);
  v107 = 6;
  v77 = v43;
  sub_1C96A7C24();
  v76 = v108;
  v48 = 5000;
  v49 = v88;
  if (v106)
  {
    v49 = 5000;
  }

  v50 = 1600;
  if (!v80)
  {
    v50 = v81;
  }

  v51 = v95;
  *v95 = v49;
  v51[1] = v50;
  v52 = 30000;
  if (!v45)
  {
    v52 = v44;
  }

  v53 = v47 == 0;
  v54 = v51;
  if (v53)
  {
    v48 = v46;
  }

  v51[2] = v52;
  v51[3] = v48;
  v55 = v93;
  sub_1C947F224(v40, v93);
  if (__swift_getEnumTagSinglePayload(v55, 1, v41) == 1)
  {
    v56 = v84;
    OUTLINED_FUNCTION_52();
    sub_1C96A4754();
    result = OUTLINED_FUNCTION_28(v56);
    v57 = v91;
    if (v53)
    {
      __break(1u);
      goto LABEL_30;
    }

    v58 = OUTLINED_FUNCTION_8_37();
    v41(v58, v56, v41);
    v59 = v93;
    OUTLINED_FUNCTION_28(v93);
    if (!v53)
    {
      sub_1C947F1BC(v59);
    }
  }

  else
  {
    v60 = OUTLINED_FUNCTION_8_37();
    v41(v60, v55, v41);
    v57 = v91;
  }

  v41(v54 + v57[8], v40, v41);
  v61 = v96;
  v62 = v92;
  sub_1C947F224(v96, v92);
  OUTLINED_FUNCTION_28(v62);
  if (!v53)
  {
    sub_1C947F1BC(v61);
    sub_1C947F1BC(v97);
    sub_1C947F1BC(v94);
    sub_1C947F1BC(v82);
    v68 = OUTLINED_FUNCTION_12_29();
    v69(v68);
    v70 = v85;
    v41(v85, v62, v41);
    v71 = v78;
    v72 = v86;
    v73 = v41;
LABEL_28:
    v74 = v95;
    v41(v95 + v57[9], v70, v73);
    *(v74 + v57[10]) = (v76 == 2) | v76 & 1;
    sub_1C947F294(v74, v72);
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v63 = v83;
  OUTLINED_FUNCTION_52();
  sub_1C96A4754();
  result = OUTLINED_FUNCTION_28(v63);
  v64 = v97;
  if (!v53)
  {
    sub_1C947F1BC(v96);
    sub_1C947F1BC(v64);
    sub_1C947F1BC(v94);
    sub_1C947F1BC(v82);
    v65 = OUTLINED_FUNCTION_12_29();
    v66(v65);
    v70 = v85;
    v41(v85, v63, v41);
    v67 = v92;
    OUTLINED_FUNCTION_28(v92);
    v71 = v78;
    v72 = v86;
    v73 = v41;
    if (!v53)
    {
      sub_1C947F1BC(v67);
    }

    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1C947EED8()
{
  result = qword_1EDB7E0B8;
  if (!qword_1EDB7E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0B8);
  }

  return result;
}

unint64_t sub_1C947EF30()
{
  result = qword_1EDB7E0C0;
  if (!qword_1EDB7E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0C0);
  }

  return result;
}

unint64_t sub_1C947EF84()
{
  result = qword_1EDB7E0C8;
  if (!qword_1EDB7E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E0C8);
  }

  return result;
}

unint64_t sub_1C947EFF4(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000034;
      break;
    case 3:
      result = 0xD000000000000035;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
    case 6:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947F194);
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

uint64_t sub_1C947F1BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C947F224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C947F294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationsConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C947F2F8()
{
  result = qword_1EDB7EE28;
  if (!qword_1EDB7EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE28);
  }

  return result;
}

uint64_t sub_1C947F368(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1C947F47CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapsConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C947F548()
{
  result = qword_1EDB7EF48;
  if (!qword_1EDB7EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.EndpointConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C947F684);
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

unint64_t sub_1C947F70C()
{
  result = qword_1EDB7FBF8;
  if (!qword_1EDB7FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBF8);
  }

  return result;
}

WeatherCore::WeatherMapOverlayServiceSource_optional __swiftcall WeatherMapOverlayServiceSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C947F7C8()
{
  result = qword_1EDB7EF30;
  if (!qword_1EDB7EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.EndpointConfiguration.TileColorFormat(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C947F8B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C947F8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsConfiguration.EndpointConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C947F944(uint64_t a1)
{
  v2 = type metadata accessor for MapsConfiguration.EndpointConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WeatherCore::MapsConfiguration::OverlayKind_optional __swiftcall MapsConfiguration.OverlayKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C947FA08()
{
  result = qword_1EDB7EF58;
  if (!qword_1EDB7EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF58);
  }

  return result;
}

unint64_t sub_1C947FA78()
{
  result = qword_1EDB7EF68;
  if (!qword_1EDB7EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF68);
  }

  return result;
}

unint64_t sub_1C947FAD0()
{
  result = qword_1EDB7EF70;
  if (!qword_1EDB7EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EF70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapsConfiguration.ZoomLevelsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x1C947FBF8);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_28_5()
{
  v3 = *(v1 + *(v0 + 44));
}

uint64_t OUTLINED_FUNCTION_28_8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_28_10()
{

  return sub_1C96A7D74();
}

BOOL OUTLINED_FUNCTION_28_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_28_16()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_28_17(uint64_t result)
{
  *(v1 + *(result + 44)) = 0;
  *v1 = v5;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v7;
  v1[5] = v6;
  return result;
}

uint64_t sub_1C947FDE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_1C947FE2C(uint64_t a1)
{
  v4 = type metadata accessor for MapsConfiguration.EndpointConfiguration();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_15_22();
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_14();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  if (!a1)
  {
    return 0;
  }

  v29 = v8;
  v30 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v13 = *(v32 + 72);
    v31 = 0x80000001C96CB820;
    sub_1C96A53C4();
    while (2)
    {
      sub_1C947F8E0(v12, v10);
      switch(*v10)
      {
        case 2:
          OUTLINED_FUNCTION_48_1();
          goto LABEL_6;
        case 5:

          sub_1C947F944(v10);
          return v30;
        default:
LABEL_6:
          v14 = OUTLINED_FUNCTION_18_21();

          sub_1C947F944(v10);
          if (v14)
          {
            return v30;
          }

          v12 += v13;
          if (!--v11)
          {
            goto LABEL_11;
          }

          continue;
      }
    }
  }

  sub_1C96A53C4();
LABEL_11:
  if (qword_1EDB7EF18 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_108();
    swift_beginAccess();
    v16 = off_1EDB7EF20;
    v17 = *(off_1EDB7EF20 + 2);
    if (!v17)
    {
      return v30;
    }

    v26 = *(v32 + 80);
    v27 = (v26 + 32) & ~v26;
    v28 = v2;
    v18 = off_1EDB7EF20 + v27;
    v31 = 0x80000001C96CB820;
    sub_1C96A53C4();
    v19 = 0;
LABEL_14:
    if (v19 < v16[2])
    {
      break;
    }

    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_0_64();
    swift_once();
  }

  v2 = v19 + 1;
  sub_1C947F8E0(&v18[*(v32 + 72) * v19], v1);
  switch(*v1)
  {
    case 2:
      OUTLINED_FUNCTION_48_1();
      goto LABEL_17;
    case 5:

      goto LABEL_23;
    default:
LABEL_17:
      v20 = OUTLINED_FUNCTION_18_21();

      if ((v20 & 1) == 0)
      {
        sub_1C947F944(v1);
        v19 = v2;
        if (v17 == v2)
        {

          return v30;
        }

        goto LABEL_14;
      }

LABEL_23:
      v21 = v29;

      sub_1C95B25DC(v1, v21);
      v22 = v28;
      sub_1C95B25DC(v21, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CD0);
      v23 = v27;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C96AA1C0;
      sub_1C947F8E0(v22, v24 + v23);
      v33 = v30;
      sub_1C9648EB0(v24);
      sub_1C947F944(v22);
      return v33;
  }
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return swift_slowAlloc();
}

uint64_t sub_1C9480308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C9480370()
{
  result = qword_1EDB7DB68;
  if (!qword_1EDB7DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB68);
  }

  return result;
}

uint64_t NamedNetworkConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A98);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948067C();
  sub_1C96A7F44();
  if (!v2)
  {
    v39 = v7;
    LOBYTE(v40) = 0;
    sub_1C96A7C24();
    v11 = v50;
    v12 = v51;
    v52 = 1;
    sub_1C94790E0();
    sub_1C96A7C24();
    v13 = v41;
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v38 = v14;
    v15 = 0xE000000000000000;
    if (v12)
    {
      v15 = v12;
    }

    v36 = v15;
    v16 = v5;
    if (v41)
    {
      v37 = v49;
      v34 = v48;
      v35 = v46;
      v32 = v41;
      v33 = v45;
      v17 = v40;
      v18 = v47;
      v19 = v44;
      v13 = v43;
      v20 = v42;
    }

    else
    {
      v17 = 0;
      v20 = 0;
      v35 = 0;
      v37 = &unk_1F48FA9C0;
      v32 = MEMORY[0x1E69E7CC0];
      v33 = 1;
      v18 = 1;
      v34 = MEMORY[0x1E69E7CC0];
      v19 = 1;
    }

    v21 = v17 & 1;
    v22 = v20 & 1;
    v23 = v13 & 1;
    v24 = v19 & 1;
    v25 = v18 & 1;
    v52 = v18 & 1;
    (*(v39 + 8))(v10, v16);
    v26 = v36;
    *a2 = v38;
    *(a2 + 8) = v26;
    *(a2 + 16) = v21;
    v27 = v33;
    *(a2 + 24) = v32;
    *(a2 + 32) = v22;
    *(a2 + 33) = v23;
    *(a2 + 34) = v24;
    v29 = v34;
    v28 = v35;
    *(a2 + 40) = v27;
    *(a2 + 48) = v28;
    *(a2 + 56) = v25;
    v30 = v37;
    *(a2 + 64) = v29;
    *(a2 + 72) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9480628()
{
  result = qword_1EDB7DB80;
  if (!qword_1EDB7DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB80);
  }

  return result;
}

unint64_t sub_1C948067C()
{
  result = qword_1EDB7DB88;
  if (!qword_1EDB7DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NamedNetworkConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948079CLL);
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

uint64_t NetworkConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57A8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9480BF0();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v35) = 0;
    v29 = v7;
    OUTLINED_FUNCTION_1_25();
    v30 = 0;
    sub_1C96A7C24();
    v28 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57B0);
    LOBYTE(v35) = 1;
    sub_1C95548AC(&qword_1EDB7CE58);
    OUTLINED_FUNCTION_8_15();
    v27 = v37;
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_1_25();
    sub_1C96A7C24();
    v26 = v41;
    LOBYTE(v35) = 3;
    OUTLINED_FUNCTION_1_25();
    sub_1C96A7C24();
    v25 = v40;
    LOBYTE(v35) = 4;
    OUTLINED_FUNCTION_1_25();
    sub_1C96A7C24();
    v24 = v39;
    LOBYTE(v33) = 5;
    sub_1C96A7C24();
    v22 = v35;
    v21 = v36;
    LOBYTE(v32) = 6;
    sub_1C96A7C24();
    v23 = v33;
    v20 = v34;
    LOBYTE(v31) = 7;
    OUTLINED_FUNCTION_8_15();
    v11 = v32;
    v38 = 8;
    OUTLINED_FUNCTION_8_15();
    v28 &= 1u;
    v12 = v27;
    if (!v27)
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v27 = v12;
    v13 = v26 & 1;
    v26 = v25 & 1;
    v14 = (v24 == 2) | v24 & 1;
    if (v21)
    {
      v15 = 1;
    }

    else
    {
      v15 = v22;
    }

    v38 = v20;
    if (!v11)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    if (v31)
    {
      v16 = v31;
    }

    else
    {
      v16 = &unk_1F48FB2B0;
    }

    (*(v29 + 8))(v10, v5);
    v17 = v38;
    *a2 = v28;
    *(a2 + 8) = v27;
    *(a2 + 16) = v13;
    *(a2 + 17) = v26;
    *(a2 + 18) = v14;
    v18 = v23;
    *(a2 + 24) = v15;
    *(a2 + 32) = v18;
    *(a2 + 40) = v17;
    *(a2 + 48) = v11;
    *(a2 + 56) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9480B44()
{
  result = qword_1EDB7E850;
  if (!qword_1EDB7E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E850);
  }

  return result;
}

unint64_t sub_1C9480B9C()
{
  result = qword_1EDB7E858;
  if (!qword_1EDB7E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E858);
  }

  return result;
}

unint64_t sub_1C9480BF0()
{
  result = qword_1EDB7E860;
  if (!qword_1EDB7E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E860);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C9480CCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C9480D44()
{
  result = qword_1EDB7EE20;
  if (!qword_1EDB7EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE20);
  }

  return result;
}

uint64_t sub_1C9480DA0(char a1)
{
  if (!a1)
  {
    return 0x64656C62616E65;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6C50657265766573;
}

_BYTE *sub_1C9480E08(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9480ED4);
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

unint64_t sub_1C9480F04()
{
  result = qword_1EDB7EDE0;
  if (!qword_1EDB7EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDE0);
  }

  return result;
}

WeatherCore::NewsConfiguration::SeverePlacement_optional __swiftcall NewsConfiguration.SeverePlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t storeEnumTagSinglePayload for NewsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1C9481108()
{
  result = qword_1EDB7D978;
  if (!qword_1EDB7D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D978);
  }

  return result;
}

unint64_t sub_1C9481188()
{
  result = qword_1EDB7D988;
  if (!qword_1EDB7D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D988);
  }

  return result;
}

unint64_t sub_1C94811DC()
{
  result = qword_1EDB7D990;
  if (!qword_1EDB7D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D990);
  }

  return result;
}

unint64_t sub_1C9481230()
{
  result = qword_1EDB7D998[0];
  if (!qword_1EDB7D998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7D998);
  }

  return result;
}

unint64_t sub_1C9481284(char a1)
{
  result = 0x726F4D6E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    case 4:
      OUTLINED_FUNCTION_10_6();
      result = v4 + 6;
      break;
    case 5:
      OUTLINED_FUNCTION_10_6();
      result = v7 + 4;
      break;
    case 6:
      OUTLINED_FUNCTION_10_6();
      result = v8 + 15;
      break;
    case 7:
      OUTLINED_FUNCTION_10_6();
      result = v6 + 17;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      OUTLINED_FUNCTION_10_6();
      result = v5 + 25;
      break;
    default:
      OUTLINED_FUNCTION_10_6();
      result = v3 + 5;
      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationNotificationContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C94814D0()
{
  result = qword_1EDB7D5D8;
  if (!qword_1EDB7D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5D8);
  }

  return result;
}

unint64_t sub_1C9481524()
{
  result = qword_1EDB7D5E0;
  if (!qword_1EDB7D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x1C9481650);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C948167C()
{
  result = qword_1EDB7E828;
  if (!qword_1EDB7E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E828);
  }

  return result;
}

unint64_t sub_1C94816D4()
{
  result = qword_1EDB7E830;
  if (!qword_1EDB7E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E830);
  }

  return result;
}

unint64_t sub_1C948172C()
{
  result = qword_1EDB7D970;
  if (!qword_1EDB7D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D970);
  }

  return result;
}

unint64_t sub_1C9481780()
{
  result = qword_1EDB7D4B0;
  if (!qword_1EDB7D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4B0);
  }

  return result;
}

unint64_t sub_1C94817D4()
{
  result = qword_1EDB7D4C0;
  if (!qword_1EDB7D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4C0);
  }

  return result;
}

unint64_t sub_1C9481830(char a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000021;
}

_BYTE *storeEnumTagSinglePayload for ProviderAttributionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9481950);
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

unint64_t sub_1C9481978()
{
  result = qword_1EDB7D5E8;
  if (!qword_1EDB7D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5E8);
  }

  return result;
}

_BYTE *sub_1C94819D4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C9481A70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9481A9C()
{
  result = qword_1EDB7D658;
  if (!qword_1EDB7D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D658);
  }

  return result;
}

uint64_t sub_1C9481AFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A68B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9481B7C()
{
  result = qword_1EDB7FF28;
  if (!qword_1EDB7FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF28);
  }

  return result;
}

unint64_t sub_1C9481C44()
{
  result = qword_1EDB7FF38;
  if (!qword_1EDB7FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FF38);
  }

  return result;
}

unint64_t sub_1C9481C9C()
{
  result = qword_1EDB7FBC8;
  if (!qword_1EDB7FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBC8);
  }

  return result;
}

uint64_t WeatherDataServiceConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A87A8);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947BEAC();
  sub_1C96A7F44();
  if (!v2)
  {
    sub_1C96A7C24();
    if (v15)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    if (v15)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataServiceConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C9481F08);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9481F48(char a1)
{
  if (a1)
  {
    return 0x636974796C616E61;
  }

  else
  {
    return 0x68736572666572;
  }
}

unint64_t sub_1C9481FA0()
{
  result = qword_1EDB7FBB8;
  if (!qword_1EDB7FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBB8);
  }

  return result;
}

unint64_t sub_1C948201C()
{
  result = qword_1EDB7FB90;
  if (!qword_1EDB7FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FB90);
  }

  return result;
}

unint64_t sub_1C9482070()
{
  result = qword_1EDB7FB98;
  if (!qword_1EDB7FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FB98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMenuAnalyticsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C94821ACLL);
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

uint64_t sub_1C94821D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C9482228()
{
  result = qword_1EDB7E990;
  if (!qword_1EDB7E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E990);
  }

  return result;
}

unint64_t sub_1C9482294()
{
  result = qword_1EDB7E9A8;
  if (!qword_1EDB7E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E9A8);
  }

  return result;
}

uint64_t sub_1C94822F0(char a1)
{
  if (!a1)
  {
    return 0x68736572666572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000025;
  }

  return 0xD000000000000020;
}

uint64_t WidgetRefreshConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57E8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948C798();
  sub_1C96A7F44();
  if (!v2)
  {
    v40 = 0;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v11 = v39;
    v38 = v7;
    v40 = 1;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v13 = OUTLINED_FUNCTION_2_26();
    if (v14)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1800.0;
    }

    v37 = v15;
    if (v12)
    {
      v13 = 2700.0;
    }

    v36 = v13;
    v40 = 2;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v16 = v39;
    v40 = 3;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v18 = OUTLINED_FUNCTION_2_26();
    if (v14)
    {
      v19 = v16;
    }

    else
    {
      v19 = 1800.0;
    }

    v35 = v19;
    if (v17)
    {
      v20 = 2700.0;
    }

    else
    {
      v20 = v18;
    }

    v40 = 4;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v21 = v39;
    v40 = 5;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v23 = OUTLINED_FUNCTION_2_26();
    if (!v14)
    {
      v21 = 1800.0;
    }

    if (v22)
    {
      v24 = 2700.0;
    }

    else
    {
      v24 = v23;
    }

    v40 = 6;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v25 = v39;
    v40 = 7;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v27 = OUTLINED_FUNCTION_2_26();
    if (!v14)
    {
      v25 = 1800.0;
    }

    if (v26)
    {
      v28 = 2700.0;
    }

    else
    {
      v28 = v27;
    }

    v40 = 8;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    v29 = v39;
    v40 = 9;
    OUTLINED_FUNCTION_0_35();
    sub_1C96A7C24();
    (*(v38 + 8))(v10, v5);
    v31 = OUTLINED_FUNCTION_2_26();
    if (v14)
    {
      v32 = v29;
    }

    else
    {
      v32 = 1800.0;
    }

    if (v30)
    {
      v31 = 2700.0;
    }

    v33 = v36;
    *a2 = v37;
    a2[1] = v33;
    a2[2] = v35;
    a2[3] = v20;
    a2[4] = v21;
    a2[5] = v24;
    a2[6] = v25;
    a2[7] = v28;
    a2[8] = v32;
    a2[9] = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9482630(char a1)
{
  result = 0x694D657265766573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      return result;
    case 5:
      result = 0x614D657265766573;
      break;
    case 6:
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C948282CLL);
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

uint64_t sub_1C9482868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C96A4764();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C9482928(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_58();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return a2;
}

uint64_t sub_1C9482980(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C94829E0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id OUTLINED_FUNCTION_35_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_35_9()
{
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_24_6(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return sub_1C949A950(v0, type metadata accessor for LocationModel);
}

id OUTLINED_FUNCTION_24_8()
{
  v2 = *(v0 + 2648);

  return v2;
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_24_14(unint64_t *a1, uint64_t *a2)
{

  return sub_1C9469CB4(a1, a2);
}

__n128 *OUTLINED_FUNCTION_24_16()
{

  return sub_1C950B354();
}

uint64_t OUTLINED_FUNCTION_24_19()
{
}

uint64_t OUTLINED_FUNCTION_24_20()
{

  return sub_1C96A4A54();
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_1C96A7924();
}

__n128 OUTLINED_FUNCTION_42_7@<Q0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  v5 = *(v3 + 16);
  *v1 = *v3;
  v1[1] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return sub_1C96A6344();
}

__n128 OUTLINED_FUNCTION_42_11@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  *(v2 - 96) = result;
  return result;
}

uint64_t sub_1C9482E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C9470A40(a1, &v5 - v3, &unk_1EC3A5430);
  sub_1C96A3D04();
  sub_1C96A55E4();

  return sub_1C9470AFC(a1, &unk_1EC3A5430);
}

uint64_t sub_1C9482EF0()
{
  sub_1C96A3D04();
  sub_1C96A55E4();
}

uint64_t sub_1C9482F3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C9482F94()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7CFF8);
  OUTLINED_FUNCTION_2_19();
  return OUTLINED_FUNCTION_7_39();
}

uint64_t sub_1C9482FEC()
{
  v0 = sub_1C96A5154();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D63C8], v0);
  v4 = sub_1C94830F4();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_1C9483720();
  }

  sub_1C965C21C();
}

BOOL sub_1C94830F4()
{
  v1 = sub_1C96A5154();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x1E69D63C8], v1);
  v5 = sub_1C96A5144();
  (*(v2 + 8))(v4, v1);
  result = 0;
  if (v5)
  {
    v6 = (v0 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore);
    v7 = *(v0 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore + 24);
    v8 = *(v0 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore), v7);
    if ((*(v8 + 8))(v7, v8))
    {
      v9 = v6[3];
      v10 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v9);
      if (((*(v10 + 16))(v9, v10) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL AppConfigurationStore.isCached.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  sub_1C948334C();
  v4 = sub_1C96A4A54();
  v5 = __swift_getEnumTagSinglePayload(v3, 1, v4) != 1;
  sub_1C9470AFC(v3, &unk_1EC3A5430);
  return v5;
}

uint64_t sub_1C948334C()
{
  sub_1C96A3D04();
  sub_1C96A55D4();
}

uint64_t AppConfigurationStore.isExpired.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62E0);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - v2;
  v4 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v8);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  sub_1C948334C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C9470AFC(v11, &unk_1EC3A5430);
  }

  else
  {
    (*(v14 + 32))(v21, v11, v12);
    *&v22 = COERCE_DOUBLE(sub_1C94836D8());
    if ((v23 & 1) == 0)
    {
      v29 = *&v22;
      sub_1C96A5954();
      sub_1C96A5944();
      sub_1C96A4964();
      v31 = v30;
      v32 = *(v14 + 8);
      v32(v18, v12);
      v32(v21, v12);
      return v31 >= v29;
    }

    (*(v14 + 8))(v21, v12);
  }

  AppConfigurationStore.read()(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1C9470AFC(v3, &qword_1EC3A62E0);
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_2_44();
    sub_1C948CDA4(v3, v7, v25);
    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A4964();
    v27 = v26;
    (*(v14 + 8))(v18, v12);
    v28 = *&v7[*(v4 + 20)];
    sub_1C9484108(v7);
    return v28 <= v27;
  }
}

uint64_t sub_1C94836D8()
{
  sub_1C96A3D04();
  sub_1C96A55D4();

  return v1;
}

uint64_t sub_1C9483720()
{
  v0 = sub_1C96A6564();
  v57 = *(v0 - 8);
  v58 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v55 = v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C96A65E4();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C96A6554();
  v52 = *(v63 - 8);
  v3 = MEMORY[0x1EEE9AC00](v63);
  v51 = (v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v62 = (v48 - v5);
  v64 = sub_1C96A6604();
  v49 = *(v64 - 8);
  v6 = MEMORY[0x1EEE9AC00](v64);
  v50 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = v48 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v60 = v48 - v10;
  v11 = type metadata accessor for AppConfiguration();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C96A77A4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1C946B5D0(0, &qword_1EDB7CDA0);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C946F950(&qword_1EDB7CDA8, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7BA0);
  sub_1C9469C60(&unk_1EDB7CE40, &qword_1EC3A7BA0);
  sub_1C96A79E4();
  v48[1] = sub_1C96A77B4();
  (*(v16 + 8))(v18, v15);
  AppConfigurationManager.appConfiguration.getter(v14);
  v19 = *&v14[*(v12 + 28)];
  v20 = v19;
  sub_1C9484108(v14);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v19 < 9.22337204e18)
  {
    v21 = v59;
    sub_1C96A65F4();
    v23 = v62;
    v22 = v63;
    *v62 = v19;
    v24 = v52;
    (*(v52 + 104))(v23, *MEMORY[0x1E69E7F48], v22);
    v20 = *&v60;
    MEMORY[0x1CCA8C000](v21, v23);
    v14 = *(v24 + 8);
    (v14)(v23, v22);
    v12 = v49;
    v15 = v64;
    v61 = *(v49 + 8);
    v61(v21, v64);
    if (qword_1EDB7CFF0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  swift_once();
LABEL_5:
  v25 = sub_1C96A6154();
  __swift_project_value_buffer(v25, qword_1EDB7CFF8);
  v26 = *(v12 + 16);
  v27 = v50;
  v26(v50, *&v20, v15);
  v28 = sub_1C96A6134();
  v29 = sub_1C96A76A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446210;
    v26(v59, v27, v64);
    v32 = sub_1C96A70A4();
    v34 = v33;
    v61(v27, v64);
    v35 = sub_1C9484164(v32, v34, aBlock);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1C945E000, v28, v29, "Queueing up the next app config update: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v36 = v31;
    v20 = *&v60;
    MEMORY[0x1CCA8E3D0](v36, -1, -1);
    v37 = v30;
    v15 = v64;
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
  }

  else
  {

    v61(v27, v15);
  }

  ObjectType = swift_getObjectType();
  v39 = v62;
  sub_1C9484384(v62);
  v40 = v51;
  sub_1C94843F8(v51);
  MEMORY[0x1CCA8D210](*&v20, v39, v40, ObjectType);
  v41 = v63;
  (v14)(v40, v63);
  (v14)(v39, v41);
  v42 = v20;
  v43 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1C965E724;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_20;
  v44 = _Block_copy(aBlock);
  sub_1C96A3D04();
  v45 = v53;
  sub_1C96A6594();
  v46 = v55;
  sub_1C9484470();
  sub_1C96A77C4();
  _Block_release(v44);
  (*(v57 + 8))(v46, v58);
  (*(v54 + 8))(v45, v56);

  sub_1C96A77D4();
  swift_unknownObjectRelease();
  return (v61)(*&v42, v15);
}

uint64_t sub_1C9483FFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t AppConfigurationManager.appConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C96A50E4();
  v3 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig;
  swift_beginAccess();
  sub_1C94840A4(v1 + v3, a1);
  return sub_1C96A50F4();
}

uint64_t sub_1C94840A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9484108(uint64_t a1)
{
  v2 = type metadata accessor for AppConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C9484164(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1C96A53C4();
  v6 = sub_1C9484228(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C9484328(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1C9484228(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C94AF094(a5, a6);
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
    result = sub_1C96A7AF4();
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

uint64_t sub_1C9484328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C9484384@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1C96A6554();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C94843F8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1C96A6554();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C9484470()
{
  sub_1C96A6564();
  sub_1C946F950(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469C60(&qword_1EDB7CE80, &unk_1EC3A5370);
  return sub_1C96A79E4();
}

uint64_t sub_1C9484590(uint64_t a1)
{
  result = type metadata accessor for AppConfiguration();
  v3 = *(a1 + *(result + 68) + 137);
  if (v3 != 2)
  {
    if (qword_1EDB79EA8 != -1)
    {
      result = OUTLINED_FUNCTION_0_26();
    }

    MEMORY[0x1EEE9AC00](result);
    OUTLINED_FUNCTION_1_21();
    *(v4 - 8) = v3 & 1;
    sub_1C96A5134();
    sub_1C96A3D04();
    sub_1C96A5554();
  }

  return result;
}

void *NanoPreferencesSynchronizer.init(domain:container:appGroupContainer:)()
{
  OUTLINED_FUNCTION_0_28();
  v7 = [objc_allocWithZone(NPSManagerBridge) init];
  v1[7] = v0;
  v1[8] = v7;
  v1[2] = v6;
  v1[3] = v5;
  v1[4] = v4;
  v1[5] = v3;
  v1[6] = v2;
  return v1;
}

uint64_t sub_1C9484800()
{
  type metadata accessor for UnitManager();
  swift_allocObject();
  result = sub_1C9484860();
  qword_1EDB80320 = result;
  return result;
}

uint64_t sub_1C9484860()
{
  v1 = v0;
  v2 = sub_1C96A4C14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7 + 40;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1C9484BA4(&v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5678);
  swift_allocObject();
  v9 = sub_1C96A55B4();
  sub_1C94BE204(&v20, &qword_1EC3A5630);
  *(v1 + 24) = v9;
  sub_1C96A4B74();
  (*(v3 + 16))(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5680);
  swift_allocObject();
  v10 = sub_1C96A55B4();
  (*(v3 + 8))(v8, v2);
  *(v1 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5688);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = v11;
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB80330 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  *(v1 + 48) = v20;
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EDB80358;
  v13 = type metadata accessor for SyncedUnitProvider();
  v14 = swift_allocObject();
  v15 = sub_1C9484E28(v12, v14);
  swift_beginAccess();
  *(&v21 + 1) = v13;
  v22 = &off_1F490AB30;
  *&v20 = v15;
  sub_1C9469B6C(&v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5690);
  swift_allocObject();
  sub_1C96A3D04();
  v16 = sub_1C96A55B4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  *(v1 + 16) = v16;
  swift_endAccess();

  return v1;
}

uint64_t sub_1C9484BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9484C14()
{
  v0 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB80338 = result;
  return result;
}

uint64_t sub_1C9484DBC()
{
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  v0 = sub_1C96A4FA4();

  qword_1EDB80358 = v0;
  return result;
}

uint64_t sub_1C9484E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v11[3] = sub_1C946B5D0(0, &qword_1EDB80340);
  v11[4] = &protocol witness table for NSUserDefaults;
  v11[0] = a1;
  *(a2 + 16) = 0xD000000000000012;
  *(a2 + 24) = 0x80000001C96CEE20;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(a2 + 32) = sub_1C96A5124();
  *(a2 + 88) = 0;
  sub_1C9469B6C(v11, a2 + 40);
  *(a2 + 80) = 33882626;
  *(a2 + 84) = 261;
  sub_1C9484F64(&v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v5 = v9;
  v6 = v10;
  *(a2 + 80) = v8;
  *(a2 + 84) = v5;
  *(a2 + 85) = v6;
  return a2;
}

void sub_1C9484F64(char *a1@<X8>)
{
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  sub_1C9485198(v1[2], v1[3], v4, v5, &v29);
  v6 = v29 | (WORD2(v29) << 32);
  v7 = BYTE4(v6);
  v8 = (v6 >> 40) & 1;
  if (v29 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = v29;
  }

  if (v29 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = BYTE1(v29);
  }

  if (v29 == 3)
  {
    v11 = 5;
  }

  else
  {
    v11 = BYTE2(v29);
  }

  if (v29 == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = BYTE3(v29);
  }

  if (v29 == 3)
  {
    v13 = 5;
  }

  else
  {
    v13 = v7;
  }

  if (v29 == 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = v8;
  }

  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_79();
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB80088);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (os_log_type_enabled(v16, v17))
  {
    swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_7_49();
    v29 = v28;
    *v2 = 136446210;
    sub_1C9485C10();
    v18 = sub_1C96A53A4();
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = v14;
    v25 = v13;
    v26 = sub_1C9484164(v18, v19, &v29);

    *(buf + 4) = v26;
    v13 = v25;
    v14 = v24;
    v12 = v23;
    v11 = v22;
    v10 = v21;
    v9 = v20;
    _os_log_impl(&dword_1C945E000, v16, v17, "Read units from locale storage. Units=%{public}s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_20();
  }

  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v14;
  OUTLINED_FUNCTION_18_3();
}

void *sub_1C9485198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = (*(a4 + 8))(&v11, a1, a2, MEMORY[0x1E6969080], a3);
  v7 = v12;
  if (v12 >> 60 == 15)
  {
    v9 = 3;
  }

  else
  {
    v8 = v11;
    sub_1C96A4184();
    swift_allocObject();
    sub_1C96A4174();
    sub_1C9485390();
    sub_1C96A4154();
    sub_1C9485BFC(v8, v7);

    v10 = 0x10000000000;
    if (!BYTE5(v11))
    {
      v10 = 0;
    }

    v9 = v11 | (BYTE4(v11) << 32) | v10;
  }

  *a5 = v9;
  *(a5 + 4) = WORD2(v9);
  return result;
}

uint64_t NSUserDefaults.get<A>(for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C96A7004();
  v7 = [v3 objectForKey_];

  if (v7)
  {
    sub_1C96A79C4();
    swift_unknownObjectRelease();
    sub_1C946306C(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A90);
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v8 ^ 1u, 1, a1);
}

unint64_t sub_1C9485390()
{
  result = qword_1EDB7DB90;
  if (!qword_1EDB7DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB90);
  }

  return result;
}

uint64_t sub_1C94853E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77C0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948574C();
  sub_1C96A7F44();
  if (!v2)
  {
    v30 = 0;
    sub_1C947BC50();
    OUTLINED_FUNCTION_0_95();
    v11 = v31;
    v28 = 1;
    sub_1C948588C();
    OUTLINED_FUNCTION_0_95();
    v12 = v29;
    v26 = 2;
    sub_1C94858E0();
    OUTLINED_FUNCTION_0_95();
    v19 = v12;
    v13 = v27;
    v24 = 3;
    sub_1C9485A2C();
    OUTLINED_FUNCTION_0_95();
    v18 = v13;
    LOBYTE(v13) = v25;
    v22 = 4;
    sub_1C947BBF0();
    OUTLINED_FUNCTION_0_95();
    v17 = v23;
    v20 = 5;
    sub_1C9481B7C();
    OUTLINED_FUNCTION_0_95();
    (*(v7 + 8))(v10, v5);
    v15 = v21;
    *a2 = v11;
    v16 = v18;
    a2[1] = v19;
    a2[2] = v16;
    a2[3] = v13;
    a2[4] = v17;
    a2[5] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C94856A0()
{
  result = qword_1EDB7DB98;
  if (!qword_1EDB7DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB98);
  }

  return result;
}

unint64_t sub_1C94856F8()
{
  result = qword_1EDB7DBA0;
  if (!qword_1EDB7DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DBA0);
  }

  return result;
}

unint64_t sub_1C948574C()
{
  result = qword_1EDB7DBA8[0];
  if (!qword_1EDB7DBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7DBA8);
  }

  return result;
}

unint64_t sub_1C94857A8(char a1)
{
  result = 0x65636E6174736964;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0x6572757373657270;
      break;
    case 3:
      result = 0x74617265706D6574;
      break;
    case 4:
      result = 0x65657053646E6977;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C948588C()
{
  result = qword_1EDB7EBD8;
  if (!qword_1EDB7EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBD8);
  }

  return result;
}

unint64_t sub_1C94858E0()
{
  result = qword_1EDB7EBC8;
  if (!qword_1EDB7EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBC8);
  }

  return result;
}

_BYTE *sub_1C948593C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9485A04);
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
          result = OUTLINED_FUNCTION_42_13(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9485A2C()
{
  result = qword_1EDB7EBE0;
  if (!qword_1EDB7EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoredUnitsConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9485B4CLL);
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

uint64_t getEnumTagSinglePayload for MockHomeAndWorkLocation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C9485BFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C9482F3C(a1, a2);
  }

  return a1;
}

unint64_t sub_1C9485C10()
{
  result = qword_1EDB800B0;
  if (!qword_1EDB800B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB800B0);
  }

  return result;
}

unint64_t sub_1C9485C68()
{
  result = qword_1EDB800A8;
  if (!qword_1EDB800A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB800A8);
  }

  return result;
}

uint64_t sub_1C9485CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96B20F0;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 32) = 0x65636E6174736964;
  *(inited + 40) = 0xE800000000000000;
  v10 = 28011;
  if ((v3 & 1) == 0)
  {
    v10 = 0x73656C696DLL;
  }

  v11 = 0xE500000000000000;
  if (v3)
  {
    v11 = 0xE200000000000000;
  }

  if (v3 == 2)
  {
    v10 = 7104878;
    v11 = 0xE300000000000000;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 72) = v9;
  *(inited + 80) = 0x7469706963657270;
  v12 = 28265;
  if (v4)
  {
    v12 = 0x6D63202C6D6DLL;
  }

  v13 = 0xE600000000000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0xE200000000000000;
  }

  if (v4 == 2)
  {
    v12 = 7104878;
  }

  *(inited + 88) = 0xED00006E6F697461;
  *(inited + 96) = v12;
  if (v4 == 2)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = v13;
  }

  *(inited + 104) = v14;
  *(inited + 120) = v9;
  *(inited + 128) = 0x6572757373657270;
  v15 = 0xE400000000000000;
  *(inited + 136) = 0xE800000000000000;
  v16 = 1918984813;
  switch(v5)
  {
    case 1:
      v16 = 1732800105;
      v15 = 0xE400000000000000;
      goto LABEL_21;
    case 2:
      v16 = 1732799853;
      goto LABEL_21;
    case 3:
      v15 = 0xE300000000000000;
      v16 = 6377576;
      goto LABEL_21;
    case 4:
      v16 = 6377579;
      v15 = 0xE300000000000000;
      goto LABEL_21;
    case 5:
      *(inited + 168) = v9;
      *(inited + 144) = 7104878;
      v15 = 0xE300000000000000;
      goto LABEL_22;
    default:
LABEL_21:
      *(inited + 168) = v9;
      *(inited + 144) = v16;
LABEL_22:
      *(inited + 152) = v15;
      *(inited + 176) = 0x74617265706D6574;
      *(inited + 184) = 0xEB00000000657275;
      v17 = 102;
      if (v6)
      {
        v17 = 99;
      }

      if (v6 == 2)
      {
        v18 = 7104878;
      }

      else
      {
        v18 = v17;
      }

      v19 = 0xE100000000000000;
      v20 = 0xE300000000000000;
      if (v6 == 2)
      {
        v19 = 0xE300000000000000;
      }

      *(inited + 192) = v18;
      *(inited + 200) = v19;
      *(inited + 216) = v9;
      *(inited + 224) = 0x65657053646E6977;
      *(inited + 232) = 0xE900000000000064;
      v21 = 6844525;
      switch(v7)
      {
        case 1:
          v21 = 6843755;
          goto LABEL_34;
        case 2:
          v20 = 0xE200000000000000;
          v21 = 29549;
          goto LABEL_34;
        case 3:
          v21 = 7628386;
          goto LABEL_34;
        case 4:
          v21 = 7566443;
          goto LABEL_34;
        case 5:
          *(inited + 264) = v9;
          *(inited + 240) = 7104878;
          goto LABEL_35;
        default:
LABEL_34:
          *(inited + 264) = v9;
          *(inited + 240) = v21;
LABEL_35:
          *(inited + 248) = v20;
          sub_1C96A6F04();
          a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77B8);
          a1[4] = sub_1C948602C();
          __swift_allocate_boxed_opaque_existential_1(a1);
          return sub_1C96A53B4();
      }
  }
}

unint64_t sub_1C948602C()
{
  result = qword_1EDB800A0;
  if (!qword_1EDB800A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A77B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB800A0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t UnitManager.setInitialUnitConfiguration(_:)()
{
  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB80088);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "Set initial unit configuration.", v3, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_52_3();
  sub_1C96A3D04();
  v4 = sub_1C96A55C4();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v9 = 0;
  (*(v7 + 56))(&v9, v6, v7);
  v4(v10, 0);
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 224) = v1;
  *(v2 - 216) = v3;
  return v2 - 224;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1C9486320(char *a1)
{
  v2 = *a1;
  sub_1C96A50E4();
  *(v1 + 85) = v2;
  return sub_1C96A50F4();
}

uint64_t UnitManager.setupUnitsPushing(nanoPrefencesSynchronizer:)(uint64_t a1)
{
  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB80088);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Set up unit synchronisation", v5, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_1C9486640();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v6 = OUTLINED_FUNCTION_9_14();
  v7(v6);
  v8 = v16[0];
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  sub_1C9469B6C(a1, v17);
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1EDB80358;
  v10 = type metadata accessor for UnitSyncManager();
  v11 = swift_allocObject();
  v12 = qword_1EDB79D90;
  v13 = v9;
  if (v12 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5258);
  swift_allocObject();
  sub_1C96A3D04();
  *(v11 + 136) = sub_1C96A4F14();
  sub_1C9469B6C(v17, v11 + 96);
  v14 = sub_1C9484E28(v13, v11);
  sub_1C94868B8();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v18 = v10;
  v19 = &off_1F490AB30;
  *v17 = v14;
  OUTLINED_FUNCTION_52_3();
  sub_1C9469B6C(v17, v16);
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A55E4();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v18 = v10;
  v19 = &off_1F4908D18;
  *v17 = v14;
  sub_1C96A3D04();
  sub_1C94879AC(v17);
  v17[0] = v8;
  sub_1C96A3D04();
  sub_1C9486320(v17);

  sub_1C9487A10();
}

uint64_t sub_1C9486640()
{
  swift_beginAccess();
  sub_1C96A3D04();
  sub_1C96A55D4();
}

uint64_t sub_1C948671C()
{
  v0 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  (*(v10 + 104))(v9 - v8, *MEMORY[0x1E69D6E88]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6EA0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F20);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB79D98 = result;
  return result;
}

uint64_t sub_1C94868B8()
{
  v1 = sub_1C96A6EB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14();
  v15 = *(v0 + 32);
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  v17 = &type metadata for StoredUnitsConfiguration;
  v18 = sub_1C9486B70();
  LODWORD(v15) = v19;
  WORD2(v15) = v20;
  sub_1C9486BC4(&v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v15);
  v2 = sub_1C9487768();
  v4 = v3;
  v5 = sub_1C96A4844();
  v7 = v6;
  sub_1C9482F3C(v2, v4);
  sub_1C96A3D04();
  sub_1C96A4EF4();

  if (v15 == v5 && v16 == v7)
  {
  }

  v9 = sub_1C96A7DE4();

  if (v9)
  {
  }

  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_79();
  }

  v11 = sub_1C96A6154();
  __swift_project_value_buffer(v11, qword_1EDB80088);
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C945E000, v12, v13, "Watch units out of sync - force sync to watch.", v14, 2u);
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
  }

  sub_1C9630E3C();
  v15 = v5;
  v16 = v7;
  sub_1C96A3D04();
  sub_1C96A4F04();
}

uint64_t sub_1C9486B4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 84);
  v3 = *(result + 85);
  *a2 = *(result + 80);
  *(a2 + 4) = v2;
  *(a2 + 5) = v3;
  return result;
}

unint64_t sub_1C9486B70()
{
  result = qword_1EDB795D8;
  if (!qword_1EDB795D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795D8);
  }

  return result;
}

uint64_t sub_1C9486BC4(void *a1)
{
  v3 = sub_1C96A6EA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_1C96A41A4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_14();
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A41F4();
  sub_1C96A4194();
  sub_1C96A41B4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96A41E4();
  if (v1)
  {
  }

  sub_1C9487478(&qword_1EDB77D98, MEMORY[0x1E6966688]);
  sub_1C96A6E74();
  v10 = OUTLINED_FUNCTION_6_11();
  sub_1C94874C0(v10, v11);
  v12 = OUTLINED_FUNCTION_6_11();
  sub_1C9487518(v12, v13, v7);
  v14 = OUTLINED_FUNCTION_6_11();
  sub_1C9482F3C(v14, v15);
  sub_1C96A6E54();
  (*(v4 + 8))(v7, v3);

  v16 = OUTLINED_FUNCTION_6_11();
  return sub_1C9482F3C(v16, v17);
}

uint64_t sub_1C9486DE4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77C8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *v1;
  v11 = v1[1];
  v23 = v1[2];
  v24 = v11;
  v12 = v1[3];
  v21 = v1[4];
  v22 = v12;
  v20 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948574C();
  v13 = v4;
  sub_1C96A7F54();
  v36 = v10;
  v35 = 0;
  sub_1C9487068();
  sub_1C96A7D14();
  if (!v2)
  {
    v15 = v22;
    v14 = v23;
    v17 = v20;
    v16 = v21;
    v34 = v24;
    v33 = 1;
    sub_1C94870BC();
    OUTLINED_FUNCTION_1_68();
    v32 = v14;
    v31 = 2;
    sub_1C9487110();
    OUTLINED_FUNCTION_1_68();
    v30 = v15;
    v29 = 3;
    sub_1C9487164();
    OUTLINED_FUNCTION_1_68();
    v28 = v16;
    v27 = 4;
    sub_1C94871B8();
    OUTLINED_FUNCTION_1_68();
    v26 = v17;
    v25 = 5;
    sub_1C948720C();
    OUTLINED_FUNCTION_1_68();
  }

  return (*(v6 + 8))(v9, v13);
}

unint64_t sub_1C9487068()
{
  result = qword_1EDB799C8;
  if (!qword_1EDB799C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799C8);
  }

  return result;
}

unint64_t sub_1C94870BC()
{
  result = qword_1EDB799D8;
  if (!qword_1EDB799D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799D8);
  }

  return result;
}

unint64_t sub_1C9487110()
{
  result = qword_1EDB799C0;
  if (!qword_1EDB799C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799C0);
  }

  return result;
}

unint64_t sub_1C9487164()
{
  result = qword_1EDB799E0;
  if (!qword_1EDB799E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB799E0);
  }

  return result;
}

unint64_t sub_1C94871B8()
{
  result = qword_1EDB7EBC0;
  if (!qword_1EDB7EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBC0);
  }

  return result;
}

unint64_t sub_1C948720C()
{
  result = qword_1EDB7EBB8;
  if (!qword_1EDB7EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EBB8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t UnitConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A8518);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947BB8C();
  sub_1C96A7F54();
  return (*(v5 + 8))(v1, v3);
}

uint64_t sub_1C94873D8@<X0>(uint64_t *a1@<X8>)
{
  result = UnitConfiguration.WindSpeed.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UnitConfiguration.WindSpeed.rawValue.getter()
{
  result = 6844525;
  switch(*v0)
  {
    case 1:
      result = 6843755;
      break;
    case 2:
      result = 29549;
      break;
    case 3:
      result = 7628386;
      break;
    case 4:
      result = 7566443;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9487478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94874C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_1C96A3D04();
  }

  return sub_1C96A3D04();
}

uint64_t sub_1C9487574(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v16 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v16;
LABEL_9:
      result = sub_1C9487640(a1, v14, v13, a3, a4, a5, a6);
      if (v6)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v12 = *(a1 + 24);
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v14 = v12;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v11 = 0;
      goto LABEL_5;
    default:
      v11 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C96A3610(a1, v11, a3, a4, a5, a6);
      if (v6)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x1C9487630);
      }

      return result;
  }
}

uint64_t sub_1C9487640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_1C96A43E4();
  if (!result || (result = sub_1C96A4404(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C96A43F4();
      a5(0);
      sub_1C9487720(a6, a7);
      return sub_1C96A6E44();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9487720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94877B0(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a2(0);
  v12 = v7;
  v13 = sub_1C9487478(a3, a4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  v9 = *(v7 - 8);
  (*(v9 + 16))(boxed_opaque_existential_1, a1, v7);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_0_16();
  sub_1C96A44B4();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  (*(v9 + 8))(a1, v7);
  return OUTLINED_FUNCTION_4_4();
}

uint64_t sub_1C94878C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C96A4784();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA8A130]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA8A150]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C9487940()
{
  sub_1C9487974();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1C9487974()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return v0;
}

uint64_t sub_1C94879AC(uint64_t a1)
{
  sub_1C9484BA4(a1, v3);
  sub_1C96A3D04();
  sub_1C96A55E4();

  return sub_1C94BE204(a1, &qword_1EC3A5630);
}

void sub_1C9487A10()
{
  v1 = 0x10000000000;
  if (!*(v0 + 85))
  {
    v1 = 0;
  }

  v2 = *(v0 + 80) | (*(v0 + 84) << 32) | v1;
  v3 = *(v0 + 80);
  v4 = WORD2(v2);
  sub_1C9487A60(&v3);
}

void sub_1C9487A60(unsigned int *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = (&v43 - v5);
  v6 = sub_1C96A6EB4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v43.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 2);
  v9 = *a1;
  v10 = v9 | (v8 << 32);
  sub_1C96A50E4();
  v11 = v2[8];
  v12 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v11);
  v13 = v2[2];
  v14 = v2[3];
  sub_1C9485198(v13, v14, v11, v12, v50);
  v15 = LODWORD(v50[0]) | (WORD2(v50[0]) << 32);
  v16 = v2[8];
  v17 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v16);
  WORD2(v50[0]) = v8;
  LODWORD(v50[0]) = v9;
  sub_1C9487FC4(v50, v13, v14, v16, v17);
  sub_1C96A50F4();
  v18 = vdupq_n_s64(v10);
  v44 = v18;
  if (v15 == 3)
  {
    if (v9 != 3)
    {
LABEL_13:
      if (qword_1EDB80080 != -1)
      {
        swift_once();
      }

      v26 = sub_1C96A6154();
      __swift_project_value_buffer(v26, qword_1EDB80088);
      v27 = sub_1C96A6134();
      v28 = sub_1C96A76A4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1C945E000, v27, v28, "Update stored units, synchronise back to shared store", v29, 2u);
        MEMORY[0x1CCA8E3D0](v29, -1, -1);
      }

      sub_1C966A32C();
      sub_1C9630E3C();
      if (v9 == 3)
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      else
      {
        v30.i64[0] = 0xFFFFFFFFFFFFLL;
        v30.i64[1] = 0xFFFFFFFFFFFFLL;
        v31 = vandq_s8(v44, v30);
        v44 = vshlq_u64(v31, xmmword_1C96BEB40);
        v43 = vshlq_u64(v31, xmmword_1C96BEB50);
        v50[3] = &type metadata for StoredUnitsConfiguration;
        v50[4] = sub_1C9486B70();
        LOBYTE(v50[0]) = v9;
        v32.i64[1] = v44.i64[1];
        v33 = vmovn_s64(v43);
        *v32.i8 = vmovn_s64(v44);
        v32.i16[1] = v32.i16[2];
        v32.i16[2] = v33.i16[0];
        v32.i16[3] = v33.i16[2];
        *(v50 + 1) = vmovn_s16(v32).u32[0];
        BYTE5(v50[0]) = BYTE5(v10) & 1;
        sub_1C9486BC4(v50);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        v37 = sub_1C9487768();
        v39 = v38;
        v40 = sub_1C96A4844();
        v42 = v41;
        sub_1C9482F3C(v37, v39);
      }

      v50[0] = v40;
      v50[1] = v42;
      sub_1C96A3D04();
      sub_1C96A4F04();

      sub_1C966A350();
      v34 = sub_1C96A7414();
      v35 = v46;
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v34);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      sub_1C9584F28(0, 0, v35, &unk_1C96BEBB8, v36);

      return;
    }
  }

  else
  {
    LODWORD(v50[0]) = v15;
    WORD2(v50[0]) = WORD2(v15);
    if (v9 == 3)
    {
      goto LABEL_13;
    }

    v19.i64[0] = 0xFFFFFFFFFFFFLL;
    v19.i64[1] = 0xFFFFFFFFFFFFLL;
    v20 = vandq_s8(v18, v19);
    v21 = vshlq_u64(v20, xmmword_1C96BEB40);
    v47 = v9;
    *v20.i8 = vmovn_s64(vshlq_u64(v20, xmmword_1C96BEB50));
    *v21.i8 = vmovn_s64(v21);
    v21.i16[1] = v21.i16[2];
    v21.i16[2] = v20.i16[0];
    v21.i16[3] = v20.i16[2];
    v48 = vmovn_s16(v21).u32[0];
    v49 = BYTE5(v10) & 1;
    if ((sub_1C948822C(v50, &v47) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (qword_1EDB80080 != -1)
  {
    swift_once();
  }

  v22 = sub_1C96A6154();
  __swift_project_value_buffer(v22, qword_1EDB80088);
  v46 = sub_1C96A6134();
  v23 = sub_1C96A76A4();
  if (os_log_type_enabled(v46, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C945E000, v46, v23, "Update stored units, no need to synchronise", v24, 2u);
    MEMORY[0x1CCA8E3D0](v24, -1, -1);
  }

  v25 = v46;
}