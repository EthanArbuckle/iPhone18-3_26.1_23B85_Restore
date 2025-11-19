uint64_t sub_1C8F3E84C(char a1)
{
  if (a1)
  {
    return 0x65636E6575716573;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1C8F3E890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F3E77C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F3E8B8(uint64_t a1)
{
  v2 = sub_1C8F3F01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F3E8F4(uint64_t a1)
{
  v2 = sub_1C8F3F01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolDatabase.LaunchServicesDatabaseVersion.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A548, &qword_1C90AB5E0);
  OUTLINED_FUNCTION_11(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_3();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F3F01C();
  sub_1C9064E1C();
  sub_1C906204C();
  OUTLINED_FUNCTION_5_50();
  sub_1C8F3F3F4(v13, v14);
  sub_1C9064B8C();
  if (!v2)
  {
    v15 = *(v4 + *(type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion() + 20));
    sub_1C9064B6C();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t ToolDatabase.LaunchServicesDatabaseVersion.hash(into:)()
{
  sub_1C906204C();
  OUTLINED_FUNCTION_5_50();
  sub_1C8F3F3F4(v1, v2);
  sub_1C9063E7C();
  v3 = type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion();
  return MEMORY[0x1CCA82810](*(v0 + *(v3 + 20)));
}

uint64_t ToolDatabase.LaunchServicesDatabaseVersion.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C906204C();
  OUTLINED_FUNCTION_5_50();
  sub_1C8F3F3F4(v1, v2);
  sub_1C9063E7C();
  v3 = type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion();
  MEMORY[0x1CCA82810](*(v0 + *(v3 + 20)));
  return sub_1C9064DBC();
}

void ToolDatabase.LaunchServicesDatabaseVersion.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v26 = v4;
  v5 = sub_1C906204C();
  v6 = OUTLINED_FUNCTION_11(v5);
  v27 = v7;
  v28 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A550, &qword_1C90AB5E8);
  OUTLINED_FUNCTION_11(v29);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion();
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8F3F01C();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_5_50();
    sub_1C8F3F3F4(v21, v22);
    sub_1C9064A6C();
    (*(v27 + 32))(v1, v12, v28);
    v23 = sub_1C9064A4C();
    v24 = OUTLINED_FUNCTION_41_18();
    v25(v24);
    *(v1 + *(v16 + 20)) = v23;
    sub_1C8F3F070(v1, v26);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8F3F0D4(v1, type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F3EED8(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  sub_1C906204C();
  sub_1C8F3F3F4(&qword_1EDA666F0, MEMORY[0x1E69695A8]);
  sub_1C9063E7C();
  MEMORY[0x1CCA82810](*(v2 + *(a2 + 20)));
  return sub_1C9064DBC();
}

unint64_t sub_1C8F3EF7C()
{
  result = qword_1EC31A540;
  if (!qword_1EC31A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A540);
  }

  return result;
}

uint64_t type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion()
{
  result = qword_1EDA68CF8;
  if (!qword_1EDA68CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C8F3F01C()
{
  result = qword_1EDA661D8;
  if (!qword_1EDA661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661D8);
  }

  return result;
}

uint64_t sub_1C8F3F070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8F3F0D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8F3F174(void *a1)
{
  a1[1] = sub_1C8F3F1AC();
  a1[2] = sub_1C8F3F200();
  result = sub_1C8F3F254();
  a1[3] = result;
  return result;
}

unint64_t sub_1C8F3F1AC()
{
  result = qword_1EDA68D30;
  if (!qword_1EDA68D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D30);
  }

  return result;
}

unint64_t sub_1C8F3F200()
{
  result = qword_1EDA68D48;
  if (!qword_1EDA68D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D48);
  }

  return result;
}

unint64_t sub_1C8F3F254()
{
  result = qword_1EDA68D40;
  if (!qword_1EDA68D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D40);
  }

  return result;
}

unint64_t sub_1C8F3F2AC()
{
  result = qword_1EDA68D38;
  if (!qword_1EDA68D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D38);
  }

  return result;
}

uint64_t sub_1C8F3F300(void *a1)
{
  a1[1] = sub_1C8F3F3F4(&qword_1EDA68D10, type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion);
  a1[2] = sub_1C8F3F3F4(&qword_1EDA68D28, type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion);
  result = sub_1C8F3F3F4(&qword_1EDA68D20, type metadata accessor for ToolDatabase.LaunchServicesDatabaseVersion);
  a1[3] = result;
  return result;
}

uint64_t sub_1C8F3F3F4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s32LaunchServicesDatabaseVersionKeyVwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C8F3F510()
{
  result = sub_1C906204C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s29LaunchServicesDatabaseVersionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8F3F674()
{
  result = qword_1EC31A558;
  if (!qword_1EC31A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A558);
  }

  return result;
}

unint64_t sub_1C8F3F6CC()
{
  result = qword_1EDA661C8;
  if (!qword_1EDA661C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661C8);
  }

  return result;
}

unint64_t sub_1C8F3F724()
{
  result = qword_1EDA661D0;
  if (!qword_1EDA661D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661D0);
  }

  return result;
}

unint64_t sub_1C8F3F77C()
{
  result = qword_1EC31A560;
  if (!qword_1EC31A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A560);
  }

  return result;
}

unint64_t sub_1C8F3F7D4()
{
  result = qword_1EC31A568;
  if (!qword_1EC31A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A568);
  }

  return result;
}

void OUTLINED_FUNCTION_35_22(uint64_t a1@<X8>)
{
  *(v1 - 136) = 0;
  *(v1 - 128) = 0;
  *(v1 - 120) = 0;
  *(v1 - 112) = 0;
  *(v1 - 104) = a1;
}

uint64_t OUTLINED_FUNCTION_37_20()
{
  v2 = *(v0 - 344);

  return sub_1C8F39BAC();
}

uint64_t OUTLINED_FUNCTION_50_16()
{
  v2 = *(v0 - 344);
}

uint64_t OUTLINED_FUNCTION_51_13(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_52_15()
{
  v2 = *(v0 - 352);
}

void *OUTLINED_FUNCTION_53_13()
{
  *(v0 + 16) = v1;

  return memcpy((v0 + v3 * v2 + 32), (v4 - 192), 0x70uLL);
}

void OUTLINED_FUNCTION_56_12(uint64_t a1@<X8>)
{
  *(v3 - 120) = v2;
  *(v3 - 112) = v1;
  *(v3 - 104) = 0;
  *(v3 - 96) = 0;
  *(v3 - 88) = 0;
  *(v3 - 80) = 0;
  *(v3 - 72) = a1;
}

uint64_t OUTLINED_FUNCTION_66_13()
{
  v2 = *(v0 - 360);

  return sub_1C906205C();
}

uint64_t static ToolExecutorPoolEvent.== infix(_:_:)(uint64_t a1)
{
  v70 = sub_1C906204C();
  v2 = OUTLINED_FUNCTION_11(v70);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolExecutorPoolEvent(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A570, &qword_1C90AB9C0);
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  v26 = &v58 + *(v25 + 56) - v23;
  sub_1C8F40714(a1, &v58 - v23, type metadata accessor for ToolExecutorPoolEvent);
  v27 = OUTLINED_FUNCTION_127();
  sub_1C8F40714(v27, v28, type metadata accessor for ToolExecutorPoolEvent);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v55 = OUTLINED_FUNCTION_47_17();
    sub_1C8F40714(v55, v18, v56);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v54 = sub_1C8E5AA54(*v18, *v26);
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v67 = v8;
  v69 = v4;
  v29 = OUTLINED_FUNCTION_47_17();
  sub_1C8F40714(v29, v15, v30);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A578, &qword_1C90AB9C8) + 48);
  v68 = v15;
  v32 = v15 + v31;
  v34 = *(v15 + v31);
  v33 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 24);
  v37 = *(v32 + 32);
  v38 = *(v32 + 40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C8E1B758(v34, v33, v35, v36, v37, v38);
    (*(v69 + 8))(v68, v70);
LABEL_9:
    sub_1C8D16D78(v24, &qword_1EC31A570, &qword_1C90AB9C0);
LABEL_10:
    v54 = 0;
    return v54 & 1;
  }

  v61 = v34;
  v62 = v33;
  v63 = v35;
  v64 = v36;
  v65 = v37;
  v66 = v38;
  v39 = *&v26[v31 + 8];
  v58 = *&v26[v31];
  v59 = v39;
  v40 = *&v26[v31 + 24];
  v60 = *&v26[v31 + 16];
  v41 = *&v26[v31 + 32];
  v42 = v26[v31 + 40];
  v43 = v69;
  v44 = v70;
  v45 = v67;
  (*(v69 + 32))(v67, v26, v70);
  v46 = v68;
  v47 = _s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0();
  v50 = *(v43 + 8);
  v48 = v43 + 8;
  v49 = v50;
  v50(v46, v44);
  if ((v47 & 1) == 0)
  {
    v49(v45, v44);
    sub_1C8E1B758(v58, v59, v60, v40, v41, v42);
    OUTLINED_FUNCTION_87_7();
    OUTLINED_FUNCTION_53_14();
    goto LABEL_10;
  }

  v73[0] = v61;
  v73[1] = v62;
  v69 = v48;
  v73[2] = v63;
  v73[3] = v64;
  v73[4] = v65;
  v74 = v66;
  v51 = v58;
  v52 = v59;
  v71[0] = v58;
  v71[1] = v59;
  v53 = v60;
  v71[2] = v60;
  v71[3] = v40;
  v71[4] = v41;
  v72 = v42;
  v54 = static ToolExecutorEvent.== infix(_:_:)(v73, v71);
  v49(v67, v44);
  sub_1C8E1B758(v51, v52, v53, v40, v41, v42);
  OUTLINED_FUNCTION_87_7();
LABEL_7:
  OUTLINED_FUNCTION_53_14();
  return v54 & 1;
}

ToolKit::ToolExecutorPoolState_optional __swiftcall ToolExecutorPoolState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C906497C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ToolExecutorPoolState.rawValue.getter()
{
  result = 0x676E697472617473;
  switch(*v0)
  {
    case 1:
      result = 1701602409;
      break;
    case 2:
      result = OUTLINED_FUNCTION_54_14();
      break;
    case 3:
      result = OUTLINED_FUNCTION_13_33();
      break;
    case 4:
      result = OUTLINED_FUNCTION_14_38();
      break;
    case 5:
      result = OUTLINED_FUNCTION_2_69();
      break;
    case 6:
      result = OUTLINED_FUNCTION_21_27();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F3FEBC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolExecutorPoolState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C8F3FEF0(uint64_t a1, uint64_t a2)
{
  sub_1C906478C();

  MEMORY[0x1CCA81A90](a1, a2);
  return 0xD000000000000019;
}

uint64_t sub_1C8F3FF84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C8F40588(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1C8F3FFC0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C8F405C8(&v4);
}

uint64_t sub_1C8F3FFF8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ToolExecutorPoolEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A598, &qword_1C90ABA28);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A608, &qword_1C90ABE50);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v42 = sub_1C9063D3C();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  swift_beginAccess();
  result = sub_1C8E5AA54(*(v2 + 112), v20);
  if ((result & 1) == 0)
  {
    v41 = v15;
    v22 = *MEMORY[0x1E69E1100];
    sub_1C906371C();

    v23 = sub_1C9063D1C();
    v24 = sub_1C906446C();

    v40 = v24;
    if (os_log_type_enabled(v23, v24))
    {
      v38 = v23;
      v39 = v4;
      v25 = 0x676E697472617473;
      v26 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v26 = 136315394;
      v27 = 0xE800000000000000;
      v36 = v16;
      v28 = 0x676E697472617473;
      switch(v20)
      {
        case 1:
          v27 = 0xE400000000000000;
          v28 = 1701602409;
          break;
        case 2:
          v27 = 0xE600000000000000;
          v28 = 0x657669746361;
          break;
        case 3:
          v28 = 0x676E696E69617264;
          break;
        case 4:
          v28 = 0x6465637365697571;
          break;
        case 5:
          v28 = 0x74616E696D726574;
          v27 = 0xEB00000000676E69;
          break;
        case 6:
          v27 = 0xE500000000000000;
          v28 = 0x6465646E65;
          break;
        default:
          break;
      }

      v29 = sub_1C8CACE04(v28, v27, &v46);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = 0xE800000000000000;
      switch(*(v2 + 112))
      {
        case 1:
          v30 = 0xE400000000000000;
          v25 = 1701602409;
          break;
        case 2:
          v30 = 0xE600000000000000;
          v25 = 0x657669746361;
          break;
        case 3:
          v25 = 0x676E696E69617264;
          break;
        case 4:
          v25 = 0x6465637365697571;
          break;
        case 5:
          v25 = 0x74616E696D726574;
          v30 = 0xEB00000000676E69;
          break;
        case 6:
          v30 = 0xE500000000000000;
          v25 = 0x6465646E65;
          break;
        default:
          break;
      }

      v31 = sub_1C8CACE04(v25, v30, &v46);

      *(v26 + 14) = v31;
      v32 = v38;
      _os_log_impl(&dword_1C8C9B000, v38, v40, "Executor pool state change from %s to %s", v26, 0x16u);
      v33 = v37;
      swift_arrayDestroy();
      MEMORY[0x1CCA833A0](v33, -1, -1);
      MEMORY[0x1CCA833A0](v26, -1, -1);

      (*(v36 + 8))(v19, v42);
    }

    else
    {

      (*(v16 + 8))(v19, v42);
    }

    v34 = v45;
    (*(v45 + 16))(v11, v2 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventContinuation, v8);
    *v7 = *(v2 + 112);
    swift_storeEnumTagMultiPayload();
    v35 = v41;
    sub_1C90642CC();
    (*(v34 + 8))(v11, v8);
    return (*(v43 + 8))(v35, v44);
  }

  return result;
}

uint64_t sub_1C8F40588@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_26_20();
  result = swift_beginAccess();
  *a1 = *(v1 + 112);
  return result;
}

uint64_t sub_1C8F405C8(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_116_8();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v5 = v3;
  return sub_1C8F3FFF8(&v5);
}

void (*sub_1C8F40610(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 112);
  return sub_1C8F40684;
}

void sub_1C8F40684(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v6 = *(*a1 + 32);
    v5 = &v6;
  }

  else
  {
    v7 = *(*a1 + 32);
    v5 = &v7;
  }

  sub_1C8F405C8(v5);

  free(v2);
}

uint64_t sub_1C8F40714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8F40774(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A580, &qword_1C90AB9D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, a1, v6);
  v10 = *a2;
  return sub_1C8F408D0(v8);
}

uint64_t sub_1C8F40848@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventStream;
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A580, &qword_1C90AB9D0);
  OUTLINED_FUNCTION_13_1(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_1C8F408D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventStream;
  OUTLINED_FUNCTION_80_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A580, &qword_1C90AB9D0);
  OUTLINED_FUNCTION_13_1(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C8F409B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C8F40A28(v4);
}

uint64_t sub_1C8F409E4()
{
  v1 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1C8F40A28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_116_8();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C8F40AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A610, &qword_1C90ABE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A598, &qword_1C90ABA28);
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A580, &qword_1C90AB9D0);
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v23 - v16;
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions) = MEMORY[0x1E69E7CC0];
  v19 = (v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessionCreationBlock);
  *v19 = 0;
  v19[1] = 0;
  *(v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_pendingTransitions) = v18;
  *(v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_isTransitioning) = 0;
  sub_1C8F40714(a1, v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessionOptions, type metadata accessor for ToolExecutor.SessionOptions);
  v20 = (v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessionCreationBlock);
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  type metadata accessor for ToolExecutorPoolEvent(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  sub_1C90642BC();
  sub_1C8F4A7AC(a1, type metadata accessor for ToolExecutor.SessionOptions);
  (*(v6 + 8))(v9, v5);
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventStream, v17, v24);
  (*(v27 + 32))(v3 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventContinuation, v13, v28);
  return v3;
}

uint64_t static ToolExecutorPool.start(sessionOptions:)()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_87_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52(v1);
  OUTLINED_FUNCTION_21_1();

  return static ToolExecutorPool.start(sessionOptions:sessionCreationBlock:)();
}

uint64_t sub_1C8F40E64()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  OUTLINED_FUNCTION_63();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t static ToolExecutorPool.start(sessionOptions:sessionCreationBlock:)()
{
  OUTLINED_FUNCTION_7();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for ToolExecutor.SessionOptions(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  v0[5] = OUTLINED_FUNCTION_39();
  v7 = sub_1C9063D3C();
  v0[6] = v7;
  OUTLINED_FUNCTION_46(v7);
  v0[7] = v8;
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C8F41018()
{
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 64);
  v2 = *MEMORY[0x1E69E1100];
  sub_1C906371C();
  v3 = sub_1C9063D1C();
  v4 = sub_1C906446C();
  if (OUTLINED_FUNCTION_15_2(v4))
  {
    v5 = OUTLINED_FUNCTION_63_14();
    OUTLINED_FUNCTION_60_14(v5);
    OUTLINED_FUNCTION_7_47();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_31_21();
  }

  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = *(v0 + 16);

  v18 = *(v12 + 8);
  v19 = OUTLINED_FUNCTION_145();
  v20(v19);
  OUTLINED_FUNCTION_50_17();
  sub_1C8F40714(v17, v14, v21);
  v22 = type metadata accessor for ToolExecutorPool(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1C8E05190(v16);
  *(v0 + 72) = sub_1C8F40AD0(v14, v16, v15);
  *(v0 + 104) = 0;
  v25 = swift_task_alloc();
  *(v0 + 80) = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_52(v25);

  return sub_1C8F42FC0();
}

uint64_t sub_1C8F41188()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    *(v3 + 105) = 1;
    v12 = v3 + 105;
    v13 = swift_task_alloc();
    *(v12 - 9) = v13;
    *v13 = v7;
    v13[1] = sub_1C8F412FC;
    v14 = *(v12 - 33);

    return sub_1C8F46530();
  }
}

uint64_t sub_1C8F412FC()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[5];
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  v7 = *(v5 + 8);
  v8 = v0[9];

  return v7(v8);
}

uint64_t sub_1C8F4143C()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[11];

  return v4();
}

uint64_t sub_1C8F414CC()
{
  OUTLINED_FUNCTION_7();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = sub_1C906464C();
  v1[18] = v5;
  OUTLINED_FUNCTION_46(v5);
  v1[19] = v6;
  v8 = *(v7 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v9 = sub_1C9063D3C();
  v1[21] = v9;
  OUTLINED_FUNCTION_46(v9);
  v1[22] = v10;
  v12 = *(v11 + 64);
  v1[23] = OUTLINED_FUNCTION_39();
  v13 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C8F415C4()
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_95_4();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  switch(*(v1 + 112))
  {
    case 2:
LABEL_17:

      goto LABEL_18;
    case 3:
      OUTLINED_FUNCTION_13_33();
      break;
    case 4:
      OUTLINED_FUNCTION_14_38();
      break;
    case 5:
      OUTLINED_FUNCTION_2_69();
      OUTLINED_FUNCTION_70_6();
      break;
    case 6:
      OUTLINED_FUNCTION_21_27();
      break;
    default:
      break;
  }

  sub_1C9064C2C();
  OUTLINED_FUNCTION_99_7();

  switch(*(v1 + 112))
  {
    case 1:
      goto LABEL_17;
    case 3:
      OUTLINED_FUNCTION_13_33();
      break;
    case 4:
      OUTLINED_FUNCTION_14_38();
      break;
    case 5:
      OUTLINED_FUNCTION_2_69();
      OUTLINED_FUNCTION_70_6();
      break;
    case 6:
      OUTLINED_FUNCTION_21_27();
      break;
    default:
      break;
  }

  sub_1C9064C2C();
  OUTLINED_FUNCTION_99_7();

  switch(*(v1 + 112))
  {
    case 3:
      OUTLINED_FUNCTION_13_33();
      break;
    case 4:
      goto LABEL_17;
    case 5:
      OUTLINED_FUNCTION_2_69();
      OUTLINED_FUNCTION_70_6();
      break;
    case 6:
      OUTLINED_FUNCTION_21_27();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_99_7();

  switch(*(v1 + 112))
  {
    case 1:
      OUTLINED_FUNCTION_76_8();
      break;
    case 3:
      goto LABEL_17;
    case 5:
      OUTLINED_FUNCTION_2_69();
      OUTLINED_FUNCTION_38_21();
      break;
    case 6:
      OUTLINED_FUNCTION_21_27();
      break;
    default:
      break;
  }

  v13 = OUTLINED_FUNCTION_90_3();

  if (v13)
  {
LABEL_18:
    v2 = *(v0 + 136);
    v3 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
    OUTLINED_FUNCTION_26_20();
    swift_beginAccess();
    if (sub_1C8CAD8AC(*(v2 + v3)))
    {
      goto LABEL_24;
    }

    switch(*(v1 + 112))
    {
      case 4:

        goto LABEL_23;
      case 5:
        OUTLINED_FUNCTION_38_21();
        break;
      default:
        break;
    }

    v4 = OUTLINED_FUNCTION_90_3();

    if ((v4 & 1) == 0)
    {
LABEL_24:
      *(v0 + 288) = 1;
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      *(v0 + 208) = v9;
      *v9 = v10;
      v9[1] = sub_1C8F41CE8;
      v11 = *(v0 + 136);
      v8 = (v0 + 288);
    }

    else
    {
LABEL_23:
      *(v0 + 292) = 0;
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      *(v0 + 192) = v5;
      *v5 = v6;
      v5[1] = sub_1C8F41A84;
      v7 = *(v0 + 136);
      v8 = (v0 + 292);
    }

    return sub_1C8F42BF0(v8);
  }

  else
  {
    sub_1C8F4A588();
    swift_allocError();
    *v14 = 0xD00000000000002BLL;
    v14[1] = 0x80000001C90CD190;
    swift_willThrow();
    OUTLINED_FUNCTION_115_5();

    OUTLINED_FUNCTION_6_0();

    return v15();
  }
}

uint64_t sub_1C8F41A84()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  v7 = *(v6 + 192);
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  v3[25] = v0;

  v10 = v3[17];
  if (v0)
  {
    v11 = sub_1C8F42574;
  }

  else
  {
    v11 = sub_1C8F41B8C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1C8F41B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_79_8();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_78_0();
  a18 = v20;
  v23 = *(v20 + 184);
  *(v20 + 224) = *(v20 + 72);
  v24 = *MEMORY[0x1E69E1100];

  OUTLINED_FUNCTION_114_4();

  v25 = sub_1C9063D1C();
  v26 = sub_1C906446C();

  v27 = os_log_type_enabled(v25, v26);
  v29 = *(v20 + 176);
  v28 = *(v20 + 184);
  v30 = *(v20 + 168);
  if (v27)
  {
    v31 = OUTLINED_FUNCTION_57_11();
    v32 = OUTLINED_FUNCTION_18_19();
    a9 = v32;
    *v31 = 136315138;
    v33 = sub_1C8F3460C();
    v35 = sub_1C8CACE04(v33, v34, &a9);

    *(v31 + 4) = v35;
    OUTLINED_FUNCTION_110_6(&dword_1C8C9B000, v36, v37, "Acquiring session %s");
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  v38 = OUTLINED_FUNCTION_72_7();
  v39(v38);
  *(v20 + 289) = 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v20 + 232) = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_36_20(v40);
  OUTLINED_FUNCTION_77_7();

  return sub_1C8F46530();
}

uint64_t sub_1C8F41CE8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  v7 = *(v6 + 208);
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  v3[27] = v0;

  v10 = v3[17];
  if (v0)
  {
    v11 = sub_1C8F425D4;
  }

  else
  {
    v11 = sub_1C8F41DF0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1C8F41DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_79_8();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_78_0();
  a18 = v20;
  v23 = *(v20 + 184);
  *(v20 + 224) = *(v20 + 96);
  v24 = *MEMORY[0x1E69E1100];

  OUTLINED_FUNCTION_114_4();

  v25 = sub_1C9063D1C();
  v26 = sub_1C906446C();

  v27 = os_log_type_enabled(v25, v26);
  v29 = *(v20 + 176);
  v28 = *(v20 + 184);
  v30 = *(v20 + 168);
  if (v27)
  {
    v31 = OUTLINED_FUNCTION_57_11();
    v32 = OUTLINED_FUNCTION_18_19();
    a9 = v32;
    *v31 = 136315138;
    v33 = sub_1C8F3460C();
    v35 = sub_1C8CACE04(v33, v34, &a9);

    *(v31 + 4) = v35;
    OUTLINED_FUNCTION_110_6(&dword_1C8C9B000, v36, v37, "Acquiring session %s");
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  v38 = OUTLINED_FUNCTION_72_7();
  v39(v38);
  *(v20 + 289) = 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v20 + 232) = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_36_20(v40);
  OUTLINED_FUNCTION_77_7();

  return sub_1C8F46530();
}

uint64_t sub_1C8F41F4C()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_3();
  *v2 = v0;
  v3 = v0[29];
  v4 = v0[15];
  v5 = *v1;
  *v2 = *v1;

  v12 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v5;
  v7[1] = sub_1C8F42118;
  v8 = v0[28];
  v9 = v0[20];
  v10 = v0[16];

  return v12(v9, v8);
}

uint64_t sub_1C8F42118()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    v9 = v3[17];
    v10 = sub_1C8F42634;
  }

  else
  {
    v11 = v3[28];
    v12 = v3[17];

    v10 = sub_1C8F42228;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C8F42228()
{
  OUTLINED_FUNCTION_7();
  (*(v0[19] + 32))(v0[14], v0[20], v0[18]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_83_7(v1);

  return sub_1C8F45844();
}

uint64_t sub_1C8F422C8()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_3();
  *v2 = v0;
  v3 = *(v0 + 256);
  v4 = *v1;
  *v2 = *v1;

  *(v0 + 291) = 1;
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  *v5 = v4;
  v5[1] = sub_1C8F42408;
  v6 = *(v0 + 136);

  return sub_1C8F46530();
}

uint64_t sub_1C8F42408()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 264);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F42500()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[20];

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_1C8F42574()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_115_5();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t sub_1C8F425D4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_115_5();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t sub_1C8F42634()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 224);

  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_83_7(v2);

  return sub_1C8F45844();
}

uint64_t sub_1C8F426C0()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_3();
  *v2 = v0;
  v3 = *(v0 + 272);
  v4 = *v1;
  *v2 = *v1;

  *(v0 + 290) = 1;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v4;
  v5[1] = sub_1C8F42800;
  v6 = *(v0 + 136);

  return sub_1C8F46530();
}

uint64_t sub_1C8F42800()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 280);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F428F8()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  swift_willThrow();

  v3 = *(v0 + 248);
  OUTLINED_FUNCTION_115_5();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_1C8F42974()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 24) = 3;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_87_4(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_52(v2);

  return sub_1C8F46530();
}

uint64_t sub_1C8F42A04()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 24) = 5;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_87_4(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_52(v2);

  return sub_1C8F46530();
}

uint64_t sub_1C8F42AAC()
{
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_26_20();
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    result = sub_1C906492C();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA82230](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    ++v6;
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    swift_getObjectType();
    swift_unknownObjectRetain();
    ToolExecutionSession.userHasResignedFocus()();
    swift_unknownObjectRelease();
  }

  while (v5 != v6);

LABEL_10:
  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t sub_1C8F42BF0(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 65) = *a1;
  return OUTLINED_FUNCTION_0_79(a1, v1);
}

uint64_t sub_1C8F42C10()
{
  OUTLINED_FUNCTION_78_0();
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_1C8CAD8AC(v3);

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA82230](i, v3);
      v7 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (sub_1C8F343A0())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D0, &unk_1C9068DB0);
      OUTLINED_FUNCTION_93_6();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C906A950;
      sub_1C906478C();

      v12 = sub_1C8F3460C();
      MEMORY[0x1CCA81A90](v12);

      MEMORY[0x1CCA81A90](0xD000000000000018, 0x80000001C90CD2A0);
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 32) = 0x206E6F6973736553;
      *(v11 + 40) = 0xE800000000000000;
      sub_1C9064D5C();

      OUTLINED_FUNCTION_63();

      return v13(v7);
    }
  }

  v8 = *(v0 + 65);

  *(v0 + 64) = v8;
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_1C8F42E88;
  v10 = *(v0 + 40);
  OUTLINED_FUNCTION_57_14();

  return sub_1C8F42FC0();
}

uint64_t sub_1C8F42E88()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (v0)
  {
    v11 = *(v5 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1C8CFE7B0, v11, 0);
  }

  else
  {
    v12 = *(v9 + 8);

    return v12(v3);
  }
}

uint64_t sub_1C8F42FC0()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  *(v1 + 16) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_39();
  v7 = sub_1C9063D3C();
  *(v1 + 32) = v7;
  OUTLINED_FUNCTION_46(v7);
  *(v1 + 40) = v8;
  v10 = *(v9 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_39();
  *(v1 + 120) = *v3;
  v11 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C8F4309C()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0[2] + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessionCreationBlock;
  v2 = *v1;
  v0[7] = *v1;
  v0[8] = *(v1 + 8);
  if (v2)
  {

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_52(v4);

    return v8();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    v0[13] = v6;
    *v6 = v7;
    v6[1] = sub_1C8F43608;

    return static ToolExecutor.start(options:)();
  }
}

uint64_t sub_1C8F43224()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v9 = v6[9];
  *v8 = *v1;
  v7[10] = v0;

  v10 = v6[2];
  if (v0)
  {
    v11 = sub_1C8F43A00;
  }

  else
  {
    v7[11] = v3;
    v7[12] = v5;
    v11 = sub_1C8F43358;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1C8F43358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_166();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_202();
  a22 = v24;
  v27 = *(v24 + 64);
  sub_1C8CC7E94(*(v24 + 56));
  v29 = *(v24 + 88);
  v28 = *(v24 + 96);
  OUTLINED_FUNCTION_113_6();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  ToolExecutorPool.Session.init(lifetime:toolSession:)(&a12 + 7, v28, v29);
  v30 = *MEMORY[0x1E69E1100];
  sub_1C906371C();

  v31 = sub_1C9063D1C();
  v32 = sub_1C906446C();

  if (os_log_type_enabled(v31, v32))
  {
    a11 = v29;
    v33 = *(v24 + 120);
    v34 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = sub_1C8F3460C();
    sub_1C8CACE04(v35, v36, &a13);

    OUTLINED_FUNCTION_49_17();
    v40 = v39 & 0xFFFF0000FFFFLL | 0xEC000000656D0000;
    v41 = 0x656D6F536C6C696BLL;
    if (!v42)
    {
      v41 = 0x656D6D496C6C696BLL;
      v40 = 0xEF796C6574616964;
    }

    if (v33)
    {
      v43 = v41;
    }

    else
    {
      v43 = v38;
    }

    if (v33)
    {
      v44 = v40;
    }

    else
    {
      v44 = v37;
    }

    v45 = *(v24 + 40);
    a9 = *(v24 + 32);
    a10 = *(v24 + 48);
    v46 = sub_1C8CACE04(v43, v44, &a13);

    *(v34 + 14) = v46;
    OUTLINED_FUNCTION_111_4(&dword_1C8C9B000, v47, v48, "Creating a new session %s with lifetime %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_51_14();

    (*(v45 + 8))(a10, a9);
  }

  else
  {
    v50 = *(v24 + 40);
    v49 = *(v24 + 48);
    v51 = *(v24 + 32);

    (*(v50 + 8))(v49, v51);
  }

  v52 = *(v24 + 48);
  v53 = *(v24 + 16);
  v54 = *(v24 + 24);
  sub_1C8F4507C();
  sub_1C90642AC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  OUTLINED_FUNCTION_93_6();
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_88_4(v59);

  OUTLINED_FUNCTION_45_20();

  swift_unknownObjectRelease();
  sub_1C8D16D78(v54, &unk_1EC316510, &qword_1C9085200);

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_128();

  return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F43608()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[6];
    v12 = v5[3];

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    v15 = v5[2];
    v5[14] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1C8F43750, v15, 0);
  }
}

uint64_t sub_1C8F43750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_166();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_202();
  a22 = v24;
  v27 = *(v24 + 112);
  OUTLINED_FUNCTION_113_6();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  ToolExecutorPool.Session.init(lifetime:toolSession:)(&a12 + 7, v27, &off_1F48A6CC8);
  v28 = *MEMORY[0x1E69E1100];
  sub_1C906371C();

  v29 = sub_1C9063D1C();
  v30 = sub_1C906446C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v24 + 120);
    v32 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = sub_1C8F3460C();
    sub_1C8CACE04(v33, v34, &a13);

    OUTLINED_FUNCTION_49_17();
    v38 = v37 & 0xFFFF0000FFFFLL | 0xEC000000656D0000;
    v39 = 0x656D6F536C6C696BLL;
    if (!v40)
    {
      v39 = 0x656D6D496C6C696BLL;
      v38 = 0xEF796C6574616964;
    }

    if (v31)
    {
      v41 = v39;
    }

    else
    {
      v41 = v36;
    }

    if (v31)
    {
      v42 = v38;
    }

    else
    {
      v42 = v35;
    }

    v43 = *(v24 + 40);
    a10 = *(v24 + 32);
    a11 = *(v24 + 48);
    v44 = sub_1C8CACE04(v41, v42, &a13);

    *(v32 + 14) = v44;
    OUTLINED_FUNCTION_111_4(&dword_1C8C9B000, v45, v46, "Creating a new session %s with lifetime %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_51_14();

    (*(v43 + 8))(a11, a10);
  }

  else
  {
    v48 = *(v24 + 40);
    v47 = *(v24 + 48);
    v49 = *(v24 + 32);

    (*(v48 + 8))(v47, v49);
  }

  v50 = *(v24 + 48);
  v51 = *(v24 + 16);
  v52 = *(v24 + 24);
  sub_1C8F4507C();
  sub_1C90642AC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_93_6();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_88_4(v57);

  OUTLINED_FUNCTION_45_20();

  swift_unknownObjectRelease();
  sub_1C8D16D78(v52, &unk_1EC316510, &qword_1C9085200);

  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_128();

  return v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F43A00()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[8];
  sub_1C8CC7E94(v0[7]);
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[3];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t sub_1C8F43A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = sub_1C9063D3C();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A5F8, &qword_1C90ABE18);
  v7[24] = v12;
  v13 = *(v12 - 8);
  v7[25] = v13;
  v14 = *(v13 + 64) + 15;
  v7[26] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A600, &qword_1C90ABE20);
  v7[27] = v15;
  v16 = *(v15 - 8);
  v7[28] = v16;
  v17 = *(v16 + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8F43C54, 0, 0);
}

uint64_t sub_1C8F43C54()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[14];
  v6 = v0[15];
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(ObjectType, v6);
  sub_1C90642EC();
  (*(v3 + 8))(v2, v4);
  v8 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[30] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_40_21(v9);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DB90]();
}

uint64_t sub_1C8F43D40()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8F43E3C()
{
  v1 = *(v0 + 56);
  if (v1 == 255)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    OUTLINED_FUNCTION_108_4();

    OUTLINED_FUNCTION_6_0();

    return v14();
  }

  else
  {
    v2 = *(v0 + 32);
    v28 = *(v0 + 24);
    v29 = *(v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 184);
    v26 = *(v0 + 176);
    v6 = *(v0 + 128);
    v7 = sub_1C90642AC();
    v27 = *(v0 + 112);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
    OUTLINED_FUNCTION_50();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = v27;
    *(v12 + 56) = v29;
    *(v12 + 64) = v28;
    *(v12 + 72) = v2;
    *(v12 + 80) = v3;
    *(v12 + 88) = v4;
    *(v12 + 96) = v1;
    sub_1C8CE925C(v5, v26);
    v25 = v7;
    LODWORD(v5) = __swift_getEnumTagSinglePayload(v26, 1, v7);
    swift_unknownObjectRetain();
    sub_1C8F4C16C(v29, v28, v2, v3, v4, v1);

    v13 = *(v0 + 176);
    if (v5 == 1)
    {
      sub_1C8D16D78(*(v0 + 176), &unk_1EC316510, &qword_1C9085200);
    }

    else
    {
      sub_1C906429C();
      (*(*(v25 - 8) + 8))(v13);
    }

    v16 = *(v12 + 16);
    v17 = *(v12 + 24);
    swift_unknownObjectRetain();

    if (v16)
    {
      swift_getObjectType();
      v18 = sub_1C906424C();
      v20 = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    sub_1C8D16D78(*(v0 + 184), &unk_1EC316510, &qword_1C9085200);
    v21 = swift_allocObject();
    *(v21 + 16) = &unk_1C90ABE40;
    *(v21 + 24) = v12;
    if (v20 | v18)
    {
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      *(v0 + 80) = v18;
      *(v0 + 88) = v20;
    }

    swift_task_create();
    sub_1C8F4C180(v29, v28, v2, v3, v4, v1);

    v22 = *(MEMORY[0x1E69E87A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v0 + 240) = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_40_21();
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DB90]();
  }
}

uint64_t sub_1C8F441C8()
{
  OUTLINED_FUNCTION_133();
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  v1 = *(v0 + 96);
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 57) & 1) == 0)
  {
    v3 = *(v0 + 160);
    v4 = *MEMORY[0x1E69E1100];
    sub_1C906371C();
    v5 = sub_1C9063D1C();
    v6 = sub_1C906446C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_63_14();
      *v7 = 0;
      _os_log_impl(&dword_1C8C9B000, v5, v6, "Session died removing from the executor pool.", v7, 2u);
      OUTLINED_FUNCTION_25_0();
    }

    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);

    (*(v11 + 8))(v9, v10);
    sub_1C90642AC();
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_50();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    v19[5] = v12;

    v20 = OUTLINED_FUNCTION_100_8();
    sub_1C8CE8364(v20, v21, v22, v23, v19);
  }

  OUTLINED_FUNCTION_108_4();

  OUTLINED_FUNCTION_6_0();

  return v24();
}

uint64_t sub_1C8F443E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = type metadata accessor for ToolExecutorPoolEvent(0);
  v7[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A598, &qword_1C90ABA28);
  v7[20] = v10;
  v11 = *(v10 - 8);
  v7[21] = v11;
  v12 = *(v11 + 64) + 15;
  v7[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A608, &qword_1C90ABE50);
  v7[23] = v13;
  v14 = *(v13 - 8);
  v7[24] = v14;
  v15 = *(v14 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8F44550, 0, 0);
}

uint64_t sub_1C8F44550()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8F44610, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_89_0();

    OUTLINED_FUNCTION_6_0();

    return v3();
  }
}

uint64_t sub_1C8F44610()
{
  OUTLINED_FUNCTION_7();
  (*(v0[21] + 16))(v0[22], v0[26] + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventContinuation, v0[20]);
  v1 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C8F4468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v15 = v14[24];
  v16 = v14[22];
  v48 = v14[25];
  v49 = v14[23];
  v18 = v14[20];
  v17 = v14[21];
  v19 = v14[19];
  v47 = v14[18];
  v21 = v14[16];
  v20 = v14[17];
  v22 = v14[15];
  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A578, &qword_1C90AB9C8) + 48));
  ObjectType = swift_getObjectType();
  (*(v21 + 8))(ObjectType, v21);
  v25 = *v20;
  v26 = *(v20 + 16);
  *(v23 + 25) = *(v20 + 25);
  *v23 = v25;
  v23[1] = v26;
  swift_storeEnumTagMultiPayload();
  sub_1C8F4C194(v20, (v14 + 2));
  sub_1C90642CC();
  v27 = *(v17 + 8);
  v28 = OUTLINED_FUNCTION_127();
  v29(v28);
  (*(v15 + 8))(v48, v49);
  if (*(v20 + 40) == 3 && (v30 = v14[17], *v30 == 1) && (v31 = vorrq_s8(*(v30 + 8), *(v30 + 24)), !*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL))))
  {
    v32 = v14[26];
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v33, v34, v35);
  }

  else
  {
    v37 = v14[26];

    OUTLINED_FUNCTION_89_0();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_101();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, a12, a13, a14);
  }
}

uint64_t sub_1C8F44844()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  *(v0 + 57) = *(v1 + 112);
  v2 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C8F448B4()
{
  OUTLINED_FUNCTION_24_0();
  switch(*(v0 + 57))
  {
    case 1:
      OUTLINED_FUNCTION_76_8();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_54_14();
      goto LABEL_7;
    case 3:

      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_14_38();
      goto LABEL_7;
    case 5:
      OUTLINED_FUNCTION_2_69();
      OUTLINED_FUNCTION_38_21();
      goto LABEL_7;
    case 6:
      OUTLINED_FUNCTION_21_27();
      goto LABEL_7;
    default:
LABEL_7:
      OUTLINED_FUNCTION_90_3();
      OUTLINED_FUNCTION_101_6();

LABEL_9:
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      *(v0 + 216) = v1;
      *v1 = v2;
      v1[1] = sub_1C8F44B24;
      v3 = *(v0 + 208);

      return sub_1C8F46364(1);
  }
}

uint64_t sub_1C8F44B24()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8F44C08()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 208);

  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t sub_1C8F44C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C8F44C98, 0, 0);
}

uint64_t sub_1C8F44C98()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8F44D50, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_6_0();

    return v3();
  }
}

uint64_t sub_1C8F44D50()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  sub_1C8F453D4(*(v0 + 56));

  v2 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C8F44DB4()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_6_0();
  return v1();
}

uint64_t sub_1C8F44DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1C8CE925C(a3, v26 - v11);
  v13 = sub_1C90642AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC316510, &qword_1C9085200);
  }

  else
  {
    sub_1C906429C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C906424C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C9063F7C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C8F4507C()
{
  v1 = v0;
  v2 = sub_1C9063D3C();
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v46 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v45 = *MEMORY[0x1E69E1100];
  sub_1C906371C();

  v13 = sub_1C9063D1C();
  v14 = sub_1C906446C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_57_11();
    v16 = OUTLINED_FUNCTION_18_19();
    HIDWORD(v44) = v14;
    v17 = v16;
    v47[0] = v16;
    *v15 = 136315138;
    v18 = sub_1C8F3460C();
    v20 = v5;
    v21 = v2;
    v22 = sub_1C8CACE04(v18, v19, v47);

    *(v15 + 4) = v22;
    v2 = v21;
    v5 = v20;
    _os_log_impl(&dword_1C8C9B000, v13, BYTE4(v44), "Added session to list %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_31_21();

    v23 = v20;
  }

  else
  {

    v23 = v5;
  }

  v24 = *(v23 + 8);
  v24(v12, v2);
  v25 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_80_6();

  MEMORY[0x1CCA81C00](v26);
  sub_1C8E73AD8(*((*(v0 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C906422C();
  swift_endAccess();
  v27 = v46;
  sub_1C906371C();

  v28 = sub_1C9063D1C();
  v29 = sub_1C906446C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_57_11();
    v45 = v5;
    v31 = v30;
    v32 = OUTLINED_FUNCTION_18_19();
    v47[0] = v32;
    *v31 = 136315138;
    v33 = *(v1 + v25);
    v34 = type metadata accessor for ToolExecutorPool.Session();

    v36 = MEMORY[0x1CCA81C60](v35, v34);
    v37 = v2;
    v39 = v38;

    v40 = sub_1C8CACE04(v36, v39, v47);

    *(v31 + 4) = v40;
    _os_log_impl(&dword_1C8C9B000, v28, v29, "Complete sesion list after addition %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_51_14();

    v41 = v27;
    v42 = v37;
  }

  else
  {

    v41 = v27;
    v42 = v2;
  }

  return (v24)(v41, v42);
}

uint64_t sub_1C8F453D4(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1C9063D3C();
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = *MEMORY[0x1E69E1100];
  sub_1C906371C();

  v18 = sub_1C9063D1C();
  sub_1C906446C();
  OUTLINED_FUNCTION_99_7();

  if (os_log_type_enabled(v18, v1))
  {
    v19 = OUTLINED_FUNCTION_57_11();
    v48 = v5;
    v20 = v19;
    v47 = OUTLINED_FUNCTION_18_19();
    v49[0] = v47;
    *v20 = 136315138;
    v21 = sub_1C8F3460C();
    v23 = sub_1C8CACE04(v21, v22, v49);
    v46 = v1;
    v24 = v13;
    v25 = v8;
    v26 = v23;

    *(v20 + 4) = v26;
    v8 = v25;
    v13 = v24;
    v3 = v2;
    _os_log_impl(&dword_1C8C9B000, v18, v46, "Removing session from list %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_25_0();
    v5 = v48;
    OUTLINED_FUNCTION_25_0();
  }

  v27 = *(v8 + 8);
  v27(v16, v5);
  v28 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_80_6();

  v29 = sub_1C8F4B7E0((v3 + v28), a1);
  result = sub_1C8CAD8AC(*(v3 + v28));
  if (result < v29)
  {
    __break(1u);
  }

  else
  {
    sub_1C8F4BCEC(v29, result);
    swift_endAccess();
    sub_1C906371C();

    v31 = sub_1C9063D1C();
    v32 = sub_1C906446C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_57_11();
      v48 = v8;
      v34 = v33;
      v35 = OUTLINED_FUNCTION_18_19();
      v49[0] = v35;
      *v34 = 136315138;
      v36 = *(v3 + v28);
      type metadata accessor for ToolExecutorPool.Session();
      v37 = v5;
      OUTLINED_FUNCTION_57_14();

      v39 = MEMORY[0x1CCA81C60](v38, v5);
      v41 = v40;

      v42 = sub_1C8CACE04(v39, v41, v49);

      *(v34 + 4) = v42;
      _os_log_impl(&dword_1C8C9B000, v31, v32, "Complete session list after removal %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_51_14();

      v43 = v13;
      v44 = v37;
    }

    else
    {

      v43 = v13;
      v44 = v5;
    }

    return (v27)(v43, v44);
  }

  return result;
}

uint64_t sub_1C8F4575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_112_6();
  OUTLINED_FUNCTION_133();
  v11 = *(v10 + 16);
  result = sub_1C8CAD8AC(v11);
  v13 = result;
  v14 = 0;
  v15 = v11 & 0xC000000000000001;
  v16 = v11 & 0xFFFFFFFFFFFFFF8;
  v17 = v11 + 32;
  do
  {
    v18 = v14;
    if (v13 == v14)
    {
      break;
    }

    if (v15)
    {
      result = MEMORY[0x1CCA82230](v14, *(v10 + 16));
    }

    else
    {
      if (v14 >= *(v16 + 16))
      {
        goto LABEL_14;
      }

      v19 = *(v17 + 8 * v14);
    }

    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v20 = sub_1C8F343A0();

    v14 = v18 + 1;
  }

  while ((v20 & 1) != 0);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_109_4();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C8F45844()
{
  OUTLINED_FUNCTION_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_39();
  v6 = sub_1C9063D3C();
  v1[5] = v6;
  OUTLINED_FUNCTION_46(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_39();
  v10 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C8F45914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_79_8();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_78_0();
  a18 = v20;
  v23 = v20[2];
  if (*(v23 + 16))
  {
    if (*(v23 + 16) == 1)
    {
      v24 = v20[7];
      v25 = *MEMORY[0x1E69E1100];
      sub_1C906371C();

      v26 = sub_1C9063D1C();
      v27 = sub_1C906446C();

      v28 = os_log_type_enabled(v26, v27);
      v30 = v20[6];
      v29 = v20[7];
      v31 = v20[5];
      if (v28)
      {
        v32 = v20[2];
        v33 = OUTLINED_FUNCTION_57_11();
        v34 = OUTLINED_FUNCTION_18_19();
        a9 = v34;
        *v33 = 136315138;
        v35 = sub_1C8F3460C();
        v37 = sub_1C8CACE04(v35, v36, &a9);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1C8C9B000, v26, v27, "Scheduled session for disposal with 5 second delay %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_51_14();
      }

      v38 = OUTLINED_FUNCTION_72_7();
      v39(v38);
      v40 = v20[3];
      v41 = v20[4];
      v42 = v20[2];
      sub_1C90642AC();
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      OUTLINED_FUNCTION_50();
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v47;
      v48[5] = v42;

      v49 = OUTLINED_FUNCTION_100_8();
      sub_1C8F4609C(v49, v50, v51, v52, v48);

      sub_1C8D16D78(v41, &unk_1EC316510, &qword_1C9085200);
    }

    else
    {
      v53 = v20[3];
      v54 = v20[2];
      sub_1C8F34428();
      sub_1C8F453D4(v23);
    }
  }

  v55 = v20[7];
  v56 = v20[4];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_77_7();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
}

uint64_t sub_1C8F45B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1C906489C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8F45BF0, 0, 0);
}

uint64_t sub_1C8F45BF0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);
  sub_1C9064CEC();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1C8F45CB4;
  v3 = *(v0 + 72);
  OUTLINED_FUNCTION_26_20();

  return sub_1C8F14AD4(v4, v5, v6, v7, 1);
}

uint64_t sub_1C8F45CB4()
{
  OUTLINED_FUNCTION_4_2();
  v2 = *v1;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = v2[10];
  *v4 = *v1;
  *(v3 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F45E0C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[5];
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1C8F45EF8;
    v4 = v0[6];

    return sub_1C8F462DC(v4);
  }

  else
  {
    v6 = v0[9];

    OUTLINED_FUNCTION_6_0();

    return v7();
  }
}

uint64_t sub_1C8F45EF8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8F45FDC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);

  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_1C8F46040()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1C8F4609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1C8CE925C(a3, v23 - v10);
  v12 = sub_1C90642AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v11, &unk_1EC316510, &qword_1C9085200);
  }

  else
  {
    sub_1C906429C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C906424C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C9063F7C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
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

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C8F462DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_79(a1, v1);
}

uint64_t sub_1C8F462F4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  if (sub_1C8F343A0())
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    sub_1C8F34428();
    sub_1C8F453D4(v3);
  }

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_1C8F46364(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_79(a1, v1);
}

uint64_t sub_1C8F46380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v15 = *(v14 + 40);
  v16 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_116_8();
  v18 = *(v15 + v17);
  result = sub_1C8CAD8AC(v18);
  if (!result)
  {
    goto LABEL_16;
  }

  v20 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  a10 = v15;

  for (i = 0; i != v20; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1CCA82230](i, v18);
    }

    else
    {
      v22 = *(v18 + 8 * i + 32);
    }

    if (*(v14 + 48) == 1)
    {
      if (sub_1C8F343A0())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v23 = *(v22 + 24);
      v24 = *(v22 + 32);
      ObjectType = swift_getObjectType();
      if (((*(v24 + 32))(ObjectType, v24) & 1) == 0)
      {
LABEL_9:
        sub_1C8F34428();

        continue;
      }
    }

    MEMORY[0x1CCA81C00](v26);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C90641CC();
    }

    sub_1C906422C();

    v16 = v36;
  }

  v15 = a10;
LABEL_16:
  v27 = *(v15 + v17);
  *(v15 + v17) = v16;

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_101();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v36, a12, a13, a14);
}

uint64_t sub_1C8F46530()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  *(v1 + 64) = v0;
  v4 = sub_1C9063D3C();
  *(v1 + 72) = v4;
  OUTLINED_FUNCTION_46(v4);
  *(v1 + 80) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 153) = *v3;
  v8 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C8F46608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_140();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_176_3();
  a20 = v22;
  v26 = *(v22 + 104);
  v27 = *MEMORY[0x1E69E1100];
  *(v22 + 112) = *MEMORY[0x1E69E1100];
  OUTLINED_FUNCTION_114_4();
  v28 = sub_1C9063D1C();
  v29 = sub_1C906446C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v22 + 153);
    v31 = OUTLINED_FUNCTION_57_11();
    v32 = OUTLINED_FUNCTION_18_19();
    a11 = v32;
    *v31 = 136315138;
    v33 = 0xE800000000000000;
    v34 = OUTLINED_FUNCTION_103_4();
    switch(v30)
    {
      case 1:
        v33 = 0xE400000000000000;
        v34 = 1701602409;
        break;
      case 2:
        v33 = 0xE600000000000000;
        v34 = OUTLINED_FUNCTION_54_14();
        break;
      case 3:
        v34 = OUTLINED_FUNCTION_13_33();
        break;
      case 4:
        v34 = OUTLINED_FUNCTION_14_38();
        break;
      case 5:
        OUTLINED_FUNCTION_73_7();
        v34 = OUTLINED_FUNCTION_2_69();
        break;
      case 6:
        v33 = 0xE500000000000000;
        v34 = OUTLINED_FUNCTION_21_27();
        break;
      default:
        break;
    }

    a10 = *(v22 + 104);
    v23 = *(v22 + 72);
    v39 = *(v22 + 80);
    v40 = sub_1C8CACE04(v34, v33, &a11);

    *(v31 + 4) = v40;
    _os_log_impl(&dword_1C8C9B000, v28, v29, "Queuing new state %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_25_0();

    v38 = *(v39 + 8);
    (v38)(a10, v23);
  }

  else
  {
    v35 = *(v22 + 104);
    v36 = *(v22 + 72);
    v37 = *(v22 + 80);

    v38 = *(v37 + 8);
    (v38)(v35, v36);
  }

  v41 = *(v22 + 153);
  v42 = *(v22 + 64);
  v43 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_pendingTransitions;
  *(v22 + 120) = v38;
  *(v22 + 128) = v43;
  OUTLINED_FUNCTION_80_6();
  sub_1C8E73A4C();
  v44 = *(*(v42 + v43) + 16);
  v45 = v42 + v43;
  sub_1C8E73B04(v44);
  v46 = *(v42 + v43);
  *(v46 + 16) = v44 + 1;
  *(v46 + v44 + 32) = v41;
  *(v42 + v43) = v46;
  swift_endAccess();
  v47 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_isTransitioning;
  *(v22 + 136) = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_isTransitioning;
  if (*(v42 + v47))
  {
    v48 = *(v22 + 88);
    OUTLINED_FUNCTION_114_4();
    v49 = sub_1C9063D1C();
    v50 = sub_1C906446C();
    v51 = OUTLINED_FUNCTION_46_14(v50);
    v53 = *(v22 + 80);
    v52 = *(v22 + 88);
    v54 = *(v22 + 72);
    if (v51)
    {
      v55 = OUTLINED_FUNCTION_63_14();
      OUTLINED_FUNCTION_61_16(v55);
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v56, v57, v58, v59, v60, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v61 = OUTLINED_FUNCTION_145();
    v38(v61);
    goto LABEL_26;
  }

  *(v42 + v47) = 1;
  OUTLINED_FUNCTION_98_7();
  if (!v44)
  {
    v68 = *(v22 + 112);
    v69 = *(v22 + 96);
    sub_1C906371C();

    v70 = sub_1C9063D1C();
    sub_1C906446C();
    OUTLINED_FUNCTION_101_6();

    if (os_log_type_enabled(v70, v42))
    {
      v71 = OUTLINED_FUNCTION_64_11();
      v72 = OUTLINED_FUNCTION_18_19();
      a11 = v72;
      *v71 = 136315138;
      v73 = *(v23 + v43);

      v75 = MEMORY[0x1CCA81C60](v74, &type metadata for ToolExecutorPoolState);
      v77 = v76;

      v78 = sub_1C8CACE04(v75, v77, &a11);

      *(v71 + 4) = v78;
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_51_14();
      OUTLINED_FUNCTION_32_0();

      a10(a9, 0);
    }

    else
    {
      v84 = *(v22 + 120);
      v85 = *(v22 + 96);
      v86 = *(v22 + 72);
      v87 = *(v22 + 80);

      v88 = OUTLINED_FUNCTION_145();
      v84(v88);
    }

    *(*(v22 + 64) + *(v22 + 136)) = 0;
LABEL_26:
    v90 = *(v22 + 96);
    v89 = *(v22 + 104);
    v91 = *(v22 + 88);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_101();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_80_6();
  v62 = *(v45 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + v41) = v45;
  if (!isUniquelyReferenced_nonNull_native || (v44 - 1) > *(v45 + 24) >> 1)
  {
    OUTLINED_FUNCTION_86_6(isUniquelyReferenced_nonNull_native);
    v45 = v64;
    *(v41 + v27) = v64;
  }

  OUTLINED_FUNCTION_65_12();
  *(v45 + 16) = v27;
  *(v41 + v44) = v45;
  swift_endAccess();
  *(v22 + 152) = v62;
  v65 = swift_task_alloc();
  *(v22 + 144) = v65;
  *v65 = v22;
  OUTLINED_FUNCTION_35_23(v65);
  OUTLINED_FUNCTION_101();

  return sub_1C8F46DCC();
}

uint64_t sub_1C8F46A94()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 144);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F46B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_140();
  a21 = v30;
  a22 = v31;
  OUTLINED_FUNCTION_176_3();
  a20 = v25;
  OUTLINED_FUNCTION_98_7();
  if (v24)
  {
    OUTLINED_FUNCTION_80_6();
    v32 = *(v23 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + v27) = v23;
    if (!isUniquelyReferenced_nonNull_native || (v24 - 1) > *(v23 + 24) >> 1)
    {
      OUTLINED_FUNCTION_86_6(isUniquelyReferenced_nonNull_native);
      v23 = v34;
      *(v27 + v22) = v34;
    }

    OUTLINED_FUNCTION_65_12();
    *(v23 + 16) = v22;
    *(v27 + v24) = v23;
    swift_endAccess();
    *(v25 + 152) = v32;
    v35 = swift_task_alloc();
    *(v25 + 144) = v35;
    *v35 = v25;
    OUTLINED_FUNCTION_35_23();
    OUTLINED_FUNCTION_101();

    return sub_1C8F46DCC();
  }

  else
  {
    v38 = *(v25 + 112);
    v39 = *(v25 + 96);
    sub_1C906371C();

    v40 = sub_1C9063D1C();
    sub_1C906446C();
    OUTLINED_FUNCTION_101_6();

    if (os_log_type_enabled(v40, v26))
    {
      v41 = OUTLINED_FUNCTION_64_11();
      v42 = OUTLINED_FUNCTION_18_19();
      a11 = v42;
      *v41 = 136315138;
      v43 = *(v29 + v28);

      v45 = MEMORY[0x1CCA81C60](v44, &type metadata for ToolExecutorPoolState);
      v47 = v46;

      v48 = sub_1C8CACE04(v45, v47, &a11);

      *(v41 + 4) = v48;
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_51_14();
      OUTLINED_FUNCTION_32_0();

      a10(a9, 0);
    }

    else
    {
      v54 = *(v25 + 120);
      v55 = *(v25 + 96);
      v56 = *(v25 + 72);
      v57 = *(v25 + 80);

      v58 = OUTLINED_FUNCTION_145();
      v54(v58);
    }

    *(*(v25 + 64) + *(v25 + 136)) = 0;
    v60 = *(v25 + 96);
    v59 = *(v25 + 104);
    v61 = *(v25 + 88);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_101();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C8F46DCC()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  *(v1 + 184) = v0;
  v4 = sub_1C9063D3C();
  *(v1 + 192) = v4;
  OUTLINED_FUNCTION_46(v4);
  *(v1 + 200) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 432) = *v3;
  v8 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C8F46F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_79_8();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_78_0();
  a18 = v20;
  v24 = *(v20 + 312);
  v25 = *(v20 + 184);
  *(v20 + 320) = *MEMORY[0x1E69E1100];
  sub_1C906371C();

  v26 = sub_1C9063D1C();
  v27 = sub_1C906446C();

  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_95_4();
    v28 = *(v20 + 432);
    v29 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = 0xE800000000000000;
    v31 = v21;
    switch(v28)
    {
      case 1:
        v30 = 0xE400000000000000;
        v31 = 1701602409;
        break;
      case 2:
        v30 = 0xE600000000000000;
        v31 = OUTLINED_FUNCTION_54_14();
        break;
      case 3:
        v31 = OUTLINED_FUNCTION_13_33();
        break;
      case 4:
        v31 = OUTLINED_FUNCTION_14_38();
        break;
      case 5:
        OUTLINED_FUNCTION_2_69();
        OUTLINED_FUNCTION_73_7();
        break;
      case 6:
        v30 = 0xE500000000000000;
        v31 = OUTLINED_FUNCTION_21_27();
        break;
      default:
        break;
    }

    v37 = *(v20 + 184);
    v38 = sub_1C8CACE04(v31, v30, &a9);

    *(v29 + 4) = v38;
    *(v29 + 12) = 2080;
    OUTLINED_FUNCTION_26_20();
    swift_beginAccess();
    switch(*(v37 + 112))
    {
      case 2:
        OUTLINED_FUNCTION_102_7();
        break;
      case 3:
        OUTLINED_FUNCTION_92_6();
        break;
      case 4:
        OUTLINED_FUNCTION_94_7();
        break;
      case 5:
        OUTLINED_FUNCTION_73_7();
        break;
      default:
        break;
    }

    v39 = *(v20 + 312);
    v40 = *(v20 + 192);
    v41 = *(v20 + 200);
    v42 = OUTLINED_FUNCTION_127();
    v45 = sub_1C8CACE04(v42, v43, v44);

    *(v29 + 14) = v45;
    _os_log_impl(&dword_1C8C9B000, v26, v27, "Transitioning to %s from %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();

    v35 = *(v41 + 8);
    v35(v39, v40);
  }

  else
  {
    v32 = *(v20 + 312);
    v33 = *(v20 + 192);
    v34 = *(v20 + 200);

    v35 = *(v34 + 8);
    v36 = OUTLINED_FUNCTION_145();
    (v35)(v36);
  }

  *(v20 + 328) = v35;
  v46 = swift_task_alloc();
  *(v20 + 336) = v46;
  *v46 = v20;
  v46[1] = sub_1C8F47218;
  v47 = *(v20 + 184);
  OUTLINED_FUNCTION_77_7();

  return sub_1C8F46364(v48);
}

uint64_t sub_1C8F47218()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 336);
  v3 = *(v1 + 184);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F47F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[43];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F481F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[44];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F48444()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = v1[46];
  v3 = v1[45];
  v4 = v1[23];
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v8 + 433) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C8F48568, v4, 0);
}

uint64_t sub_1C8F48568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_166();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_202();
  a22 = v24;
  if (*(v24 + 433) == 1)
  {
    v27 = *(v24 + 184);
    HIBYTE(a13) = 1;
    sub_1C8F405C8(&a13 + 7);
  }

  else
  {
    v28 = *(v24 + 320);
    v29 = *(v24 + 304);
    sub_1C906371C();
    v30 = sub_1C9063D1C();
    v31 = sub_1C906446C();
    v32 = OUTLINED_FUNCTION_46_14(v31);
    v33 = *(v24 + 328);
    v34 = *(v24 + 304);
    v35 = *(v24 + 192);
    v36 = *(v24 + 200);
    if (v32)
    {
      v37 = OUTLINED_FUNCTION_63_14();
      OUTLINED_FUNCTION_61_16(v37);
      OUTLINED_FUNCTION_12_1();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v43 = OUTLINED_FUNCTION_145();
    v33(v43);
  }

  v45 = *(v24 + 304);
  v44 = *(v24 + 312);
  v47 = *(v24 + 288);
  v46 = *(v24 + 296);
  v49 = *(v24 + 272);
  v48 = *(v24 + 280);
  v51 = *(v24 + 256);
  v50 = *(v24 + 264);
  v53 = *(v24 + 240);
  v52 = *(v24 + 248);
  v63 = *(v24 + 232);
  v64 = *(v24 + 224);
  v65 = *(v24 + 216);
  v66 = *(v24 + 208);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_128();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, v63, v64, v65, v66, a13, a14, a15, a16);
}

uint64_t sub_1C8F486E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[47];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F48934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[48];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F48B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[49];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F48DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[50];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F49030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[51];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F49284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[52];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F494D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_58_12();
  v18 = v16[53];
  v19 = *v17;
  OUTLINED_FUNCTION_3();
  *v20 = v19;

  OUTLINED_FUNCTION_19_30();
  v22 = *(v21 + 312);
  v23 = v16[38];
  v24 = v16[37];
  v25 = v16[36];
  v26 = v16[35];
  v27 = v16[34];
  v28 = v16[33];
  v29 = v16[32];
  v30 = v16[31];
  OUTLINED_FUNCTION_12_37();
  v32 = *(v31 + 240);
  OUTLINED_FUNCTION_9_40();
  v34 = *(v33 + 232);
  OUTLINED_FUNCTION_6_43();
  v36 = *(v35 + 224);
  OUTLINED_FUNCTION_5_51();
  v38 = *(v37 + 216);
  OUTLINED_FUNCTION_8_46();
  v40 = *(v39 + 208);

  OUTLINED_FUNCTION_11_37();
  OUTLINED_FUNCTION_128();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C8F4972C()
{
  OUTLINED_FUNCTION_7();
  v1[5] = v0;
  v2 = sub_1C9063D3C();
  v1[6] = v2;
  OUTLINED_FUNCTION_46(v2);
  v1[7] = v3;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F497E4()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0[9];
  v0[10] = *MEMORY[0x1E69E1100];
  sub_1C906371C();
  v2 = sub_1C9063D1C();
  v3 = sub_1C906446C();
  if (OUTLINED_FUNCTION_15_2(v3))
  {
    v4 = OUTLINED_FUNCTION_63_14();
    OUTLINED_FUNCTION_60_14(v4);
    OUTLINED_FUNCTION_7_47();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_31_21();
  }

  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];

  v0[11] = *(v12 + 8);
  v13 = OUTLINED_FUNCTION_145();
  v14(v13);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_1C8F498F8;
  v16 = v0[5];

  return sub_1C8F46364(1);
}

uint64_t sub_1C8F498F8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 96);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F499F0()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_26_20();
  swift_beginAccess();
  v3 = sub_1C8CAD8AC(*(v1 + v2));
  v4 = *(v0 + 64);
  if (v3)
  {
    v5 = *(v0 + 72);

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 64);
    sub_1C906371C();
    v10 = sub_1C9063D1C();
    v11 = sub_1C906446C();
    if (OUTLINED_FUNCTION_15_2(v11))
    {
      v12 = OUTLINED_FUNCTION_63_14();
      OUTLINED_FUNCTION_60_14(v12);
      OUTLINED_FUNCTION_7_47();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_31_21();
    }

    v18 = *(v0 + 88);
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 48);

    v22 = OUTLINED_FUNCTION_145();
    v18(v22);
    *(v0 + 112) = 4;
    v23 = swift_task_alloc();
    *(v0 + 104) = v23;
    *v23 = v0;
    v23[1] = sub_1C8F49B74;
    v24 = *(v0 + 40);
    v25 = OUTLINED_FUNCTION_57_14();

    return sub_1C8F46530(v25);
  }
}

uint64_t sub_1C8F49B74()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_84_5();
  v2 = v0[13];
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = v0[9];
  v6 = v0[8];

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1C8F49C90()
{
  OUTLINED_FUNCTION_7();
  v1[5] = v0;
  v2 = sub_1C9063D3C();
  v1[6] = v2;
  OUTLINED_FUNCTION_46(v2);
  v1[7] = v3;
  v5 = *(v4 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v6 = OUTLINED_FUNCTION_4_55();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8F49D34()
{
  OUTLINED_FUNCTION_112_6();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 64);
  v2 = *MEMORY[0x1E69E1100];
  sub_1C906371C();
  v3 = sub_1C9063D1C();
  v4 = sub_1C906446C();
  if (OUTLINED_FUNCTION_15_2(v4))
  {
    v5 = OUTLINED_FUNCTION_63_14();
    OUTLINED_FUNCTION_60_14(v5);
    OUTLINED_FUNCTION_7_47();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_31_21();
  }

  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);

  v15 = *(v12 + 8);
  v16 = OUTLINED_FUNCTION_145();
  v17(v16);
  v18 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions;
  OUTLINED_FUNCTION_116_8();
  v19 = *(v14 + v18);
  result = sub_1C8CAD8AC(v19);
  if (result)
  {
    v21 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v21; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA82230](i, v19);
      }

      else
      {
        v23 = *(v19 + 8 * i + 32);
      }

      sub_1C8F34428();
    }
  }

  v24 = *(v14 + v18);
  *(v14 + v18) = MEMORY[0x1E69E7CC0];

  *(v0 + 80) = 6;
  v25 = swift_task_alloc();
  *(v0 + 72) = v25;
  *v25 = v0;
  v25[1] = sub_1C8F49EE8;
  v26 = *(v0 + 40);
  OUTLINED_FUNCTION_57_14();
  OUTLINED_FUNCTION_109_4();

  return sub_1C8F46530(v27);
}

uint64_t sub_1C8F49EE8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t sub_1C8F49FE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A598, &qword_1C90ABA28);
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = v11 - v8;
  (*(v4 + 16))(v11 - v8, v0 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventContinuation, v1, v7);
  v11[1] = 0;
  sub_1C90642DC();
  return (*(v4 + 8))(v9, v1);
}

uint64_t ToolExecutorPool.deinit()
{
  sub_1C8F4A7AC(v0 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessionOptions, type metadata accessor for ToolExecutor.SessionOptions);
  v1 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A580, &qword_1C90AB9D0);
  OUTLINED_FUNCTION_13_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_eventContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A598, &qword_1C90ABA28);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessions);

  v8 = *(v0 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessionCreationBlock + 8);
  sub_1C8CC7E94(*(v0 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_sessionCreationBlock));
  v9 = *(v0 + OBJC_IVAR____TtC7ToolKit16ToolExecutorPool_pendingTransitions);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ToolExecutorPool.__deallocating_deinit()
{
  ToolExecutorPool.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C8F4A234(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C8F4A254, v1, 0);
}

uint64_t sub_1C8F4A254()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  sub_1C8F40588(*(v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t sub_1C8F4A2AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C8F4A2CC, v1, 0);
}

uint64_t sub_1C8F4A2CC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  sub_1C8F40848(*(v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t sub_1C8F4A324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1685C;

  return sub_1C8F414CC();
}

uint64_t sub_1C8F4A3E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return sub_1C8F42974();
}

uint64_t sub_1C8F4A470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return sub_1C8F42A04();
}

uint64_t sub_1C8F4A4FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1685C;

  return sub_1C8F42A94(v1);
}

unint64_t sub_1C8F4A588()
{
  result = qword_1EC31A588;
  if (!qword_1EC31A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A588);
  }

  return result;
}

uint64_t sub_1C8F4A5DC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_4(v4);
  *v5 = v6;
  v5[1] = sub_1C8F4A6C8;

  return v8(v1);
}

uint64_t sub_1C8F4A6C8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t sub_1C8F4A7AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8F4A808()
{
  result = qword_1EC31A5B0;
  if (!qword_1EC31A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A5B0);
  }

  return result;
}

void sub_1C8F4A85C()
{
  sub_1C8F4A8C8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1C8F4A8C8()
{
  if (!qword_1EC31A5C8)
  {
    sub_1C906204C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC31A5C8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolExecutorPoolState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of ToolExecutionSessionPool.state.getter()
{
  OUTLINED_FUNCTION_24_0();
  v3 = *(OUTLINED_FUNCTION_158(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_37_0();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1_4(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_67_12(v8);

  return v11(v10);
}

uint64_t dispatch thunk of ToolExecutionSessionPool.eventStream.getter()
{
  OUTLINED_FUNCTION_24_0();
  v3 = *(OUTLINED_FUNCTION_158(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_37_0();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1_4(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_67_12(v8);

  return v11(v10);
}

uint64_t dispatch thunk of ToolExecutionSessionPool.acquireSession<A>(_:)()
{
  OUTLINED_FUNCTION_78_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v0 + 24);
  OUTLINED_FUNCTION_37_0();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_1_4(v16);
  *v17 = v18;
  v17[1] = sub_1C8E1BB44;

  return v20(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of ToolExecutionSessionPool.quiesce()()
{
  OUTLINED_FUNCTION_24_0();
  v2 = *(OUTLINED_FUNCTION_71_8(v0, v1) + 32);
  OUTLINED_FUNCTION_37_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_87_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_34_16(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ToolExecutionSessionPool.stop()()
{
  OUTLINED_FUNCTION_24_0();
  v2 = *(OUTLINED_FUNCTION_71_8(v0, v1) + 40);
  OUTLINED_FUNCTION_37_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_87_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_34_16(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ToolExecutionSessionPool.resignFocus()()
{
  OUTLINED_FUNCTION_24_0();
  v2 = *(OUTLINED_FUNCTION_71_8(v0, v1) + 48);
  OUTLINED_FUNCTION_37_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_87_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_34_16(v7);

  return v10(v9);
}

void sub_1C8F4B024()
{
  v0 = type metadata accessor for ToolExecutor.SessionOptions(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C8F4B748(319, &qword_1EC31A5E8, MEMORY[0x1E69E87C8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C8F4B748(319, &qword_1EC31A5F0, MEMORY[0x1E69E87A0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ToolExecutorPool.acquireSession<A>(_:)()
{
  OUTLINED_FUNCTION_133();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_91_5();
  v14 = (*(v8 + 280) + **(v8 + 280));
  v9 = *(*(v8 + 280) + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_1_4(v10);
  *v11 = v12;
  v11[1] = sub_1C8E1685C;

  return v14(v7, v5, v3, v1);
}

uint64_t dispatch thunk of ToolExecutorPool.quiesce()()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_91_5();
  v6 = (*(v0 + 288) + **(v0 + 288));
  v1 = *(*(v0 + 288) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_87_4(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_52(v3);

  return v6();
}

uint64_t dispatch thunk of ToolExecutorPool.stop()()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_91_5();
  v6 = (*(v0 + 296) + **(v0 + 296));
  v1 = *(*(v0 + 296) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_87_4(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_52(v3);

  return v6();
}

uint64_t dispatch thunk of ToolExecutorPool.resignFocus()()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_91_5();
  v6 = (*(v0 + 304) + **(v0 + 304));
  v1 = *(*(v0 + 304) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_87_4(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_52(v3);

  return v6();
}

void sub_1C8F4B748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ToolExecutorPoolEvent(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316420, &qword_1C90729E0);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C8F4B7E0(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  result = sub_1C8F4B9FC(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    v8 = sub_1C8CAD8AC(v5);
LABEL_36:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_1C906492C();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1CCA82230](v9, v5);
        result = swift_unknownObjectRelease();
        if (v19 != a2)
        {
          if (v8 != v9)
          {
            v12 = MEMORY[0x1CCA82230](v8, v5);
            v11 = MEMORY[0x1CCA82230](v9, v5);
            goto LABEL_16;
          }

LABEL_26:
          v18 = __OFADD__(v8++, 1);
          if (v18)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v10)
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 32 + 8 * v9);
        if (v11 != a2)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v10)
            {
              goto LABEL_42;
            }

            v12 = *(v5 + 32 + 8 * v8);

LABEL_16:
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1C8F4BDA4(v5);
              v13 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            v14 = v5 & 0xFFFFFFFFFFFFFF8;
            v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v11;

            if ((v5 & 0x8000000000000000) != 0 || v13)
            {
              result = sub_1C8F4BDA4(v5);
              v5 = result;
              v14 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v14 + 16))
            {
              goto LABEL_43;
            }

            v16 = v14 + 8 * v9;
            v17 = *(v16 + 32);
            *(v16 + 32) = v12;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F4B9FC(uint64_t a1, uint64_t a2)
{
  result = sub_1C8CAD8AC(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1CCA82230](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C8F4BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ToolExecutorPool.Session();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1C906492C();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C8CD382C(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_1C906492C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8F4BBBC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C8E95B74(result, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for ToolDatabase.RollbackCleanupOperation() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1C8D093DC(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C8F4BCEC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1C8CADD20(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1C8CB217C(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1C8E95BBC(result);

  return sub_1C8F4BAD4(v4, a2, 0);
}

uint64_t sub_1C8F4BDA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C906492C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C90647BC();
}

uint64_t sub_1C8F4BE08()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_132_1();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_4(v3);
  *v4 = v5;
  v4[1] = sub_1C8E1BB44;
  v6 = OUTLINED_FUNCTION_15_31();

  return sub_1C8F45B30(v6, v7, v8, v9, v1);
}

uint64_t sub_1C8F4BEA8()
{
  OUTLINED_FUNCTION_112_6();
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_132_1();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_4(v5);
  *v6 = v7;
  v6[1] = sub_1C8E1BB44;
  OUTLINED_FUNCTION_15_31();
  OUTLINED_FUNCTION_109_4();

  return sub_1C8F43A70(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C8F4BF4C()
{
  OUTLINED_FUNCTION_4_2();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_1(v4);

  return v7(v6);
}

uint64_t objectdestroy_77Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8F4C028()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_132_1();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_4(v3);
  *v4 = v5;
  v4[1] = sub_1C8E1BB44;
  v6 = OUTLINED_FUNCTION_15_31();

  return sub_1C8F44C74(v6, v7, v8, v9, v1);
}

uint64_t sub_1C8F4C0C8()
{
  OUTLINED_FUNCTION_112_6();
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_132_1();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_4(v4);
  *v5 = v6;
  v5[1] = sub_1C8E1BB44;
  OUTLINED_FUNCTION_15_31();
  OUTLINED_FUNCTION_109_4();

  return sub_1C8F443E8(v7, v8, v9, v10, v11, v12, v13);
}

id sub_1C8F4C16C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1C8E4DB00(result, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_1C8F4C180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_1C8E1B758(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t OUTLINED_FUNCTION_35_23(uint64_t a1)
{
  *(a1 + 8) = sub_1C8F46A94;
  v3 = *(v2 + 64);
  return v1;
}

void OUTLINED_FUNCTION_51_14()
{

  JUMPOUT(0x1CCA833A0);
}

uint64_t OUTLINED_FUNCTION_52_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 + 184);
  a13 = 5;

  return sub_1C8F405C8(&a13);
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return sub_1C8F4A7AC(v0, type metadata accessor for ToolExecutorPoolEvent);
}

uint64_t OUTLINED_FUNCTION_80_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_110_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_113_6()
{
  v2 = *(v0 + 48);
  v4 = *(v0 + 120);

  return type metadata accessor for ToolExecutorPool.Session();
}

uint64_t OUTLINED_FUNCTION_115_5()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
}

uint64_t OUTLINED_FUNCTION_116_8()
{

  return swift_beginAccess();
}

uint64_t static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v2 = *v1;
  if (*v0 != 47)
  {
    v8 = *v0;
    if (v2 == 47)
    {
      return 0;
    }

    v7 = v2;
    if (!static ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind.== infix(_:_:)(&v8, &v7))
    {
      return 0;
    }

LABEL_6:
    v3 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
    OUTLINED_FUNCTION_63_10(v3);
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v4, v5);
    return OUTLINED_FUNCTION_12_28() & 1;
  }

  if (v2 == 47)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t static ToolKitProtoTypeIdentifier.Builtin.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v2 = *v0;
  v3 = *v1;
  if (*v0 != 16)
  {
    v11 = *v0;
    if (v3 != 16)
    {
      v10 = *v1;
      sub_1C8D9815C(v2);
      sub_1C8D9815C(v3);
      sub_1C8D9815C(v2);
      static ToolKitProtoTypeIdentifier.ToolKitProtoBuiltinKind.== infix(_:_:)();
      v6 = v5;
      sub_1C8D3F130(v10);
      sub_1C8D3F130(v11);
      sub_1C8D98198(v2);
      if (v6)
      {
        goto LABEL_10;
      }

      return 0;
    }

    sub_1C8D9815C(v2);
    sub_1C8D9815C(0x10uLL);
    sub_1C8D9815C(v2);
    sub_1C8D3F130(v2);
LABEL_7:
    sub_1C8D98198(v2);
    sub_1C8D98198(v3);
    return 0;
  }

  sub_1C8D9815C(0x10uLL);
  if (v3 != 16)
  {
    sub_1C8D9815C(v3);
    goto LABEL_7;
  }

  sub_1C8D9815C(0x10uLL);
  sub_1C8D98198(0x10uLL);
LABEL_10:
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
  OUTLINED_FUNCTION_63_10(v7);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v8, v9);
  return OUTLINED_FUNCTION_12_28() & 1;
}

void static ToolKitProtoTypeIdentifier.Attributed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v7 = OUTLINED_FUNCTION_39_19(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v57 = v10;
  v11 = OUTLINED_FUNCTION_94();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v56 = (v17 - v18);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C100, &qword_1C90ABF60);
  v23 = OUTLINED_FUNCTION_44_22(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  v58 = v26 - v27;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_156_0();
  v59 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(0);
  v60 = v5;
  v29 = *(v59 + 20);
  v30 = *(v0 + 48);
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_14_2(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_14_2(v1 + v30);
    if (!v31)
    {
      goto LABEL_16;
    }

    sub_1C8D16D78(v1, &qword_1EC314718, &qword_1C9074DA8);
  }

  else
  {
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_14_2(v1 + v30);
    if (v31)
    {
LABEL_15:
      OUTLINED_FUNCTION_119_9();
      sub_1C8CD20B4(v21, v43);
LABEL_16:
      sub_1C8D16D78(v1, &qword_1EC31C100, &qword_1C90ABF60);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_77_8();
    sub_1C900BE74();
    OUTLINED_FUNCTION_292();
    static ToolKitProtoContainerDefinition.== infix(_:_:)();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_93();
    sub_1C8CD20B4(v34, v35);
    v36 = OUTLINED_FUNCTION_206_0();
    sub_1C8CD20B4(v36, v37);
    sub_1C8D16D78(v1, &qword_1EC314718, &qword_1C9074DA8);
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v39 = v59;
  v38 = v60;
  v40 = *(v59 + 24);
  v41 = *(v0 + 48);
  v1 = v58;
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_14_2(v1);
  if (!v31)
  {
    v21 = v56;
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_14_2(v1 + v41);
    if (!v42)
    {
      OUTLINED_FUNCTION_77_8();
      sub_1C900BE74();
      OUTLINED_FUNCTION_292();
      static ToolKitProtoContainerDefinition.== infix(_:_:)();
      v46 = v45;
      v47 = OUTLINED_FUNCTION_93();
      sub_1C8CD20B4(v47, v48);
      v49 = OUTLINED_FUNCTION_206_0();
      sub_1C8CD20B4(v49, v50);
      sub_1C8D16D78(v1, &qword_1EC314718, &qword_1C9074DA8);
      if ((v46 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_14_2(v1 + v41);
  if (!v31)
  {
    goto LABEL_16;
  }

  sub_1C8D16D78(v1, &qword_1EC314718, &qword_1C9074DA8);
LABEL_20:
  v51 = *v38 == *v3 && v38[1] == v3[1];
  if (v51 || (sub_1C9064C2C() & 1) != 0)
  {
    v52 = *(v39 + 28);
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v53, v54);
    OUTLINED_FUNCTION_257_2();
    v44 = OUTLINED_FUNCTION_358_1();
    goto LABEL_18;
  }

LABEL_17:
  v44 = 0;
LABEL_18:
  OUTLINED_FUNCTION_50_0(v44);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F4C9C4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  OUTLINED_FUNCTION_63_10(v7);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v8, v9);
  return OUTLINED_FUNCTION_12_28() & 1;
}

void static ToolKitProtoSystemTypeProtocol.AssistantSchema.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C108, &qword_1C90ABF68);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC313F20, &unk_1C9074D20);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_129_6();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C108, &qword_1C90ABF68);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_250_2();
  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC313F20, &unk_1C9074D20);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypeDefinition.Version1.Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_323_2();
  v71 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v5);
  v6 = OUTLINED_FUNCTION_13_1(v71);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_86_7(v14, v67);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C110, &qword_1C90ABF70);
  OUTLINED_FUNCTION_13_1(v69);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_91_6(v18, v68);
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier(v19);
  v21 = OUTLINED_FUNCTION_13_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_51_15();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_51();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78);
  OUTLINED_FUNCTION_186_6(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_109_0();
  v70 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(v32);
  v33 = v70[10];
  OUTLINED_FUNCTION_279_2();
  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_34_17(v2);
  if (v34)
  {
    OUTLINED_FUNCTION_34_17(v2 + v1);
    if (v34)
    {
      sub_1C8D16D78(v2, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_12;
    }

LABEL_9:
    v36 = &qword_1EC31C118;
    v37 = &qword_1C90ABF78;
    v38 = v2;
LABEL_10:
    sub_1C8D16D78(v38, v36, v37);
LABEL_29:
    v66 = 0;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_355_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v2 + v1);
  if (v34)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1C8CD20B4(v0, v35);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_249_1();
  sub_1C900BE74();
  v39 = OUTLINED_FUNCTION_226_1();
  v41 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v39, v40);
  v42 = OUTLINED_FUNCTION_130_1();
  sub_1C8CD20B4(v42, v43);
  v44 = OUTLINED_FUNCTION_95_0();
  sub_1C8CD20B4(v44, v45);
  sub_1C8D16D78(v2, &qword_1EC3139D8, &qword_1C9072A40);
  if ((v41 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  OUTLINED_FUNCTION_334_2();
  sub_1C8CEEBF0();
  if ((v46 & 1) == 0)
  {
    goto LABEL_29;
  }

  v47 = v4[1];
  sub_1C8CED86C();
  if ((v48 & 1) == 0)
  {
    goto LABEL_29;
  }

  v49 = v70[11];
  v50 = *(v69 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  OUTLINED_FUNCTION_64_12(v72);
  if (v34)
  {
    OUTLINED_FUNCTION_34_17(v72 + v50);
    if (v34)
    {
      sub_1C8D16D78(v72, &qword_1EC313F18, &unk_1C9072A20);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_360_1();
  OUTLINED_FUNCTION_34_17(v72 + v50);
  if (v51)
  {
    OUTLINED_FUNCTION_118_4();
    sub_1C8CD20B4(v49, v52);
LABEL_22:
    v36 = &qword_1EC31C110;
    v37 = &qword_1C90ABF70;
    v38 = v72;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_247_2();
  sub_1C900BE74();
  v53 = OUTLINED_FUNCTION_212();
  static ToolKitProtoTypeDisplayRepresentation.== infix(_:_:)(v53, v54);
  OUTLINED_FUNCTION_163_7();
  v55 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v55, v56);
  sub_1C8D16D78(v72, &qword_1EC313F18, &unk_1C9072A20);
  if ((&unk_1C9072A20 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  v57 = v4[2];
  sub_1C8CEDC30();
  if ((v58 & 1) == 0)
  {
    goto LABEL_29;
  }

  v59 = v4[3];
  sub_1C8CEF5F0();
  if ((v60 & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((sub_1C8CEFA0C(0x70006D3D2, v4[4]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v61 = v4[5];
  sub_1C8CEFA7C();
  if ((v62 & 1) == 0)
  {
    goto LABEL_29;
  }

  v63 = v70[12];
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v64, v65);
  OUTLINED_FUNCTION_257_2();
  v66 = OUTLINED_FUNCTION_269_1();
LABEL_30:
  OUTLINED_FUNCTION_50_0(v66);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypeDefinition.Version1.Enumeration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_323_2();
  v68 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v6);
  v7 = OUTLINED_FUNCTION_13_1(v68);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_86_7(v15, v64);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C110, &qword_1C90ABF70);
  OUTLINED_FUNCTION_13_1(v66);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = OUTLINED_FUNCTION_91_6(v19, v65);
  v21 = type metadata accessor for ToolKitProtoTypeIdentifier(v20);
  v22 = OUTLINED_FUNCTION_13_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_51_15();
  v25 = OUTLINED_FUNCTION_136();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_9(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_142();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78);
  OUTLINED_FUNCTION_186_6(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_109_0();
  v67 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(v35);
  v36 = v67[8];
  OUTLINED_FUNCTION_279_2();
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v3);
  if (v37)
  {
    OUTLINED_FUNCTION_54_15(v3 + v1);
    if (v37)
    {
      sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_12;
    }

LABEL_9:
    v39 = &qword_1EC31C118;
    v40 = &qword_1C90ABF78;
    v41 = v3;
LABEL_10:
    sub_1C8D16D78(v41, v39, v40);
LABEL_27:
    v63 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_206_0();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v3 + v1);
  if (v37)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1C8CD20B4(v0, v38);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_5();
  sub_1C900BE74();
  v42 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v0, v2);
  v43 = OUTLINED_FUNCTION_306_2();
  sub_1C8CD20B4(v43, v44);
  v45 = OUTLINED_FUNCTION_94();
  sub_1C8CD20B4(v45, v46);
  sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  OUTLINED_FUNCTION_334_2();
  sub_1C8CEF13C();
  if ((v47 & 1) == 0)
  {
    goto LABEL_27;
  }

  v48 = *(v5 + 8);
  sub_1C8CED86C();
  if ((v49 & 1) == 0)
  {
    goto LABEL_27;
  }

  v50 = v67[9];
  v51 = *(v66 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  OUTLINED_FUNCTION_64_12(v69);
  if (v37)
  {
    OUTLINED_FUNCTION_34_17(v69 + v51);
    if (v37)
    {
      sub_1C8D16D78(v69, &qword_1EC313F18, &unk_1C9072A20);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_360_1();
  OUTLINED_FUNCTION_34_17(v69 + v51);
  if (v52)
  {
    OUTLINED_FUNCTION_118_4();
    sub_1C8CD20B4(v50, v53);
LABEL_22:
    v39 = &qword_1EC31C110;
    v40 = &qword_1C90ABF70;
    v41 = v69;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_247_2();
  sub_1C900BE74();
  v54 = OUTLINED_FUNCTION_212();
  static ToolKitProtoTypeDisplayRepresentation.== infix(_:_:)(v54, v55);
  OUTLINED_FUNCTION_163_7();
  v56 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v56, v57);
  sub_1C8D16D78(v69, &qword_1EC313F18, &unk_1C9072A20);
  if ((&unk_1C9072A20 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (*(v5 + 16) != 204)
  {
    goto LABEL_27;
  }

  v58 = *(v5 + 24);
  sub_1C8CEF5F0();
  if ((v59 & 1) == 0)
  {
    goto LABEL_27;
  }

  v60 = v67[10];
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v61, v62);
  OUTLINED_FUNCTION_257_2();
  v63 = OUTLINED_FUNCTION_269_1();
LABEL_28:
  OUTLINED_FUNCTION_50_0(v63);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypeDefinition.Version1.Query.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_152_5();
  v47 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v4 = OUTLINED_FUNCTION_13_1(v47);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_104_7(v12, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C120, &qword_1C90ABF80);
  OUTLINED_FUNCTION_13_1(v46);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v20 = OUTLINED_FUNCTION_209();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_9(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_142();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78);
  OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_112_7(v30);
  OUTLINED_FUNCTION_192_7();
  OUTLINED_FUNCTION_97_7(v3);
  if (v31)
  {
    OUTLINED_FUNCTION_97_7(v3 + v2);
    if (v31)
    {
      sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_11;
    }

LABEL_9:
    v33 = &qword_1EC31C118;
    v34 = &qword_1C90ABF78;
    v35 = v3;
LABEL_20:
    sub_1C8D16D78(v35, v33, v34);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_130_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_97_7(v3 + v2);
  if (v31)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1C8CD20B4(v0, v32);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_5();
  sub_1C900BE74();
  v36 = OUTLINED_FUNCTION_210();
  static ToolKitProtoTypeIdentifier.== infix(_:_:)(v36, v37);
  OUTLINED_FUNCTION_317_1();
  v38 = OUTLINED_FUNCTION_94();
  sub_1C8CD20B4(v38, v39);
  sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
  if ((&qword_1C9072A40 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v40 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  OUTLINED_FUNCTION_189_6(v40);
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_191_6();
  OUTLINED_FUNCTION_64_12(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_30_26();
    if (v31)
    {
      sub_1C8D16D78(v1, &qword_1EC314208, &unk_1C9074D30);
LABEL_24:
      OUTLINED_FUNCTION_390_0();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v43, v44);
      v42 = OUTLINED_FUNCTION_266_3();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_326_1();
  OUTLINED_FUNCTION_30_26();
  if (v41)
  {
    OUTLINED_FUNCTION_268_2();
LABEL_19:
    v33 = &qword_1EC31C120;
    v34 = &qword_1C90ABF80;
    v35 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_246_0();
  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_335_1();
  sub_1C8D16D78(v1, &qword_1EC314208, &unk_1C9074D30);
  if (&unk_1C9074D30)
  {
    goto LABEL_24;
  }

LABEL_21:
  v42 = 0;
LABEL_22:
  OUTLINED_FUNCTION_50_0(v42);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypeDefinition.Version1.Codable.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C110, &qword_1C90ABF70);
  OUTLINED_FUNCTION_44_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_41_19();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(0);
  OUTLINED_FUNCTION_155_4(v18);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_24_28();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC313F18, &unk_1C9072A20);
LABEL_17:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v29, v30);
      v21 = OUTLINED_FUNCTION_12_28();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v19)
  {
    OUTLINED_FUNCTION_118_4();
    sub_1C8CD20B4(v1, v20);
LABEL_14:
    sub_1C8D16D78(v0, &qword_1EC31C110, &qword_1C90ABF70);
    goto LABEL_15;
  }

  sub_1C900BE74();
  v22 = OUTLINED_FUNCTION_398();
  v24 = static ToolKitProtoTypeDisplayRepresentation.== infix(_:_:)(v22, v23);
  v25 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v25, v26);
  v27 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v27, v28);
  sub_1C8D16D78(v0, &qword_1EC313F18, &unk_1C9072A20);
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_15:
  v21 = 0;
LABEL_18:
  OUTLINED_FUNCTION_50_0(v21);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.Decimal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(v4);
  v6 = OUTLINED_FUNCTION_39_19(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_23();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C128, &qword_1C90ABF88);
  OUTLINED_FUNCTION_44_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154_5();
  if (!v19 || *(v1 + 4) != *(v0 + 4) || *(v1 + 8) != *(v0 + 8) || *(v1 + 12) != *(v0 + 12))
  {
    goto LABEL_15;
  }

  v31 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v17 = *(v31 + 32);
  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v19)
  {
    OUTLINED_FUNCTION_24_28();
    if (v19)
    {
      sub_1C8D16D78(v2, &qword_1EC313A28, &unk_1C9074CD0);
LABEL_18:
      v28 = *(v31 + 36);
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v29, v30);
      v20 = OUTLINED_FUNCTION_12_28();
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v19)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_14:
    sub_1C8D16D78(v2, &qword_1EC31C128, &qword_1C90ABF88);
    goto LABEL_15;
  }

  sub_1C900BE74();
  v21 = OUTLINED_FUNCTION_398();
  v23 = static ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.== infix(_:_:)(v21, v22);
  v24 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v24, v25);
  v26 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v26, v27);
  sub_1C8D16D78(v2, &qword_1EC313A28, &unk_1C9074CD0);
  if (v23)
  {
    goto LABEL_18;
  }

LABEL_15:
  v20 = 0;
LABEL_16:
  OUTLINED_FUNCTION_50_0(v20);
  OUTLINED_FUNCTION_163();
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.Measurement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0 || *(v3 + 16) != *(v2 + 16) || *(v3 + 24) != *(v2 + 24))
  {
    return 0;
  }

  v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  OUTLINED_FUNCTION_327_1(v7);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v8, v9);
  return OUTLINED_FUNCTION_12_28() & 1;
}

void static ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_143();
  v60 = type metadata accessor for ToolKitProtoDisplayRepresentation(v2);
  v3 = OUTLINED_FUNCTION_13_1(v60);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_86_7(v11, v55);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_13_1(v58);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v16 = OUTLINED_FUNCTION_91_6(v15, v56);
  v17 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(v16);
  v18 = OUTLINED_FUNCTION_13_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_51_15();
  v21 = OUTLINED_FUNCTION_94();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_73();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C130, &qword_1C90ABF90);
  OUTLINED_FUNCTION_186_6(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_109_0();
  v59 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(v31);
  v32 = v59[5];
  v33 = *(v0 + 56);
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_54_15(v1);
  if (v34)
  {
    OUTLINED_FUNCTION_54_15(v1 + v33);
    if (v34)
    {
      sub_1C8D16D78(v1, &qword_1EC313A40, &qword_1C906F558);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_1EC31C130;
    v36 = &qword_1C90ABF90;
    v37 = v1;
LABEL_25:
    sub_1C8D16D78(v37, v35, v36);
    goto LABEL_26;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v1 + v33);
  if (v34)
  {
    OUTLINED_FUNCTION_292_2();
    goto LABEL_9;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_300();
  static ToolKitProtoTypedValue.PrimitiveValue.Decimal.== infix(_:_:)();
  v39 = v38;
  v40 = OUTLINED_FUNCTION_130_1();
  sub_1C8CD20B4(v40, v41);
  OUTLINED_FUNCTION_335_1();
  sub_1C8D16D78(v1, &qword_1EC313A40, &qword_1C906F558);
  if ((v39 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  OUTLINED_FUNCTION_375_0();
  if (v34)
  {
    v44 = v42 == v43;
  }

  else
  {
    v44 = 0;
  }

  if (!v44 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = v59[6];
  v46 = *(v58 + 48);
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_64_12(v61);
  if (v34)
  {
    OUTLINED_FUNCTION_34_17(v61 + v46);
    if (v34)
    {
      sub_1C8D16D78(v61, &qword_1EC312A48, &unk_1C9072A10);
LABEL_29:
      v52 = v59[7];
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v53, v54);
      OUTLINED_FUNCTION_256_1();
      v49 = sub_1C9063EAC();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v61 + v46);
  if (v47)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v57, v48);
LABEL_24:
    v35 = &qword_1EC312A50;
    v36 = &unk_1C9068E30;
    v37 = v61;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_73_8();
  sub_1C900BE74();
  OUTLINED_FUNCTION_212();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v50 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v50, v51);
  sub_1C8D16D78(v61, &qword_1EC312A48, &unk_1C9072A10);
  if (&unk_1C9072A10)
  {
    goto LABEL_29;
  }

LABEL_26:
  v49 = 0;
LABEL_27:
  OUTLINED_FUNCTION_50_0(v49);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(v4);
  v6 = OUTLINED_FUNCTION_39_19(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_23();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154_5();
  if (!v20)
  {
    goto LABEL_21;
  }

  v17 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v17)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_201_2();
    v20 = v20 && v18 == v19;
    if (!v20 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v17)
  {
    goto LABEL_21;
  }

  v21 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  OUTLINED_FUNCTION_276_2(v21);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v20)
  {
    OUTLINED_FUNCTION_24_28();
    if (v20)
    {
      sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
LABEL_24:
      OUTLINED_FUNCTION_303_2();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v31, v32);
      v24 = OUTLINED_FUNCTION_12_28();
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v22)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v3, v23);
LABEL_20:
    sub_1C8D16D78(v2, &qword_1EC312A50, &unk_1C9068E30);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_50_18();
  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v27, v28);
  v29 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v29, v30);
  sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
  if (v26)
  {
    goto LABEL_24;
  }

LABEL_21:
  v24 = 0;
LABEL_22:
  OUTLINED_FUNCTION_50_0(v24);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.Placemark.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(v4);
  v6 = OUTLINED_FUNCTION_39_19(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v43 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_72();
  v19 = *(v1 + 1);
  v18 = *(v1 + 2);
  v20 = v1;
  v21 = *(v0 + 1);
  v22 = *(v0 + 2);
  v23 = v0;
  if (v18 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      v24 = OUTLINED_FUNCTION_221_3();
      sub_1C8CE7BD0(v24, v25);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v22 >> 60 == 15)
  {
LABEL_5:
    v26 = OUTLINED_FUNCTION_221_3();
    sub_1C8CE7BD0(v26, v27);
    sub_1C8CE7BD0(v21, v22);
LABEL_19:
    v42 = 0;
    goto LABEL_20;
  }

  v28 = OUTLINED_FUNCTION_221_3();
  v29 = MEMORY[0x1CCA7F9A0](v28);
  sub_1C8CE7BD0(v21, v22);
  sub_1C8CE7BD0(v19, v18);
  if ((v29 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v30 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v31 = *(v30 + 24);
  v32 = *(v3 + 48);
  OUTLINED_FUNCTION_150_1();
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_18_32();
  if (v33)
  {
    OUTLINED_FUNCTION_14_2(v2 + v32);
    if (v33)
    {
      sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_14_2(v2 + v32);
  if (v33)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v43, v34);
LABEL_15:
    sub_1C8D16D78(v2, &qword_1EC312A50, &unk_1C9068E30);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_73_8();
  sub_1C900BE74();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  v36 = v35;
  v37 = OUTLINED_FUNCTION_95_0();
  sub_1C8CD20B4(v37, v38);
  OUTLINED_FUNCTION_335_1();
  sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
  if ((v36 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (*v20 != *v23)
  {
    goto LABEL_19;
  }

  v39 = *(v30 + 28);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v40, v41);
  v42 = sub_1C9063EAC();
LABEL_20:
  OUTLINED_FUNCTION_50_0(v42);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.Person.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v5 = v4;
  v158 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  v6 = OUTLINED_FUNCTION_13_1(v158);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_316_2(v13);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C138, &qword_1C90ABF98);
  OUTLINED_FUNCTION_13_1(v157);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_102_8(v17);
  v161 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  v18 = OUTLINED_FUNCTION_13_1(v161);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A58, &qword_1C906F560);
  OUTLINED_FUNCTION_9(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_86_7(v25, v154);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C140, &qword_1C90ABFA0);
  OUTLINED_FUNCTION_13_1(v160);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v30 = OUTLINED_FUNCTION_91_6(v29, v155);
  v31 = type metadata accessor for ToolKitProtoDisplayRepresentation(v30);
  v32 = OUTLINED_FUNCTION_13_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v163 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_38();
  v44 = v5[3];
  v45 = v5[4];
  v46 = v5;
  v47 = v3;
  v49 = *(v3 + 24);
  v48 = *(v3 + 32);
  if (v45 >> 60 == 15)
  {
    if (v48 >> 60 == 15)
    {
      v50 = OUTLINED_FUNCTION_172_3();
      sub_1C8D04F90(v50, v51);
      v52 = OUTLINED_FUNCTION_207_2();
      sub_1C8D04F90(v52, v53);
      v54 = OUTLINED_FUNCTION_172_3();
      sub_1C8CE7BD0(v54, v55);
      goto LABEL_8;
    }

LABEL_5:
    v56 = OUTLINED_FUNCTION_172_3();
    sub_1C8D04F90(v56, v57);
    v58 = OUTLINED_FUNCTION_207_2();
    sub_1C8D04F90(v58, v59);
    v60 = OUTLINED_FUNCTION_172_3();
    sub_1C8CE7BD0(v60, v61);
    v62 = v49;
LABEL_6:
    sub_1C8CE7BD0(v62, v48);
    goto LABEL_29;
  }

  if (v48 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v63 = OUTLINED_FUNCTION_172_3();
  sub_1C8D04F90(v63, v64);
  v65 = OUTLINED_FUNCTION_207_2();
  sub_1C8D04F90(v65, v66);
  v67 = OUTLINED_FUNCTION_172_3();
  v68 = MEMORY[0x1CCA7F9A0](v67);
  v69 = OUTLINED_FUNCTION_207_2();
  sub_1C8CE7BD0(v69, v70);
  v71 = OUTLINED_FUNCTION_172_3();
  sub_1C8CE7BD0(v71, v72);
  if ((v68 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  v73 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v74 = v73[7];
  v75 = *(v1 + 48);
  v76 = v46;
  OUTLINED_FUNCTION_362_1();
  OUTLINED_FUNCTION_362_1();
  OUTLINED_FUNCTION_34_17(v0);
  if (v77)
  {
    OUTLINED_FUNCTION_34_17(v0 + v75);
    if (v77)
    {
      sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
      goto LABEL_18;
    }

LABEL_16:
    v79 = &qword_1EC312A50;
    v80 = &unk_1C9068E30;
LABEL_27:
    v90 = v0;
LABEL_28:
    sub_1C8D16D78(v90, v79, v80);
    goto LABEL_29;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v0 + v75);
  if (v77)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v163, v78);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_73_8();
  sub_1C900BE74();
  OUTLINED_FUNCTION_119();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  v82 = v81;
  v83 = OUTLINED_FUNCTION_95_0();
  sub_1C8CD20B4(v83, v84);
  v85 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v85, v86);
  sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
  if ((v82 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v87 = v73[8];
  v88 = *(v160 + 48);
  v0 = v162;
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_218_1();
  OUTLINED_FUNCTION_64_12(v162);
  if (v77)
  {
    OUTLINED_FUNCTION_34_17(v162 + v88);
    if (v77)
    {
      sub_1C8D16D78(v162, &qword_1EC313A58, &qword_1C906F560);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v162 + v88);
  if (v89)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_26:
    v79 = &qword_1EC31C140;
    v80 = &qword_1C90ABFA0;
    goto LABEL_27;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_100();
  static ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v92 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v92, v93);
  sub_1C8D16D78(v162, &qword_1EC313A58, &qword_1C906F560);
  if ((&qword_1C906F560 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v94 = v73[9];
  v95 = *(v157 + 48);
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_218_1();
  v96 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_65_13(v96, v97);
  if (v77)
  {
    OUTLINED_FUNCTION_30_26();
    if (v77)
    {
      sub_1C8D16D78(v159, &qword_1EC313A50, &unk_1C9074CF0);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v98)
  {
    sub_1C8CD20B4(v156, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
LABEL_40:
    v79 = &qword_1EC31C138;
    v80 = &qword_1C90ABF98;
    v90 = v159;
    goto LABEL_28;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_212();
  static ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v99 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v99, v100);
  sub_1C8D16D78(v159, &qword_1EC313A50, &unk_1C9074CF0);
  if ((&unk_1C9074CF0 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_42:
  v101 = *v46 == *v47 && v46[1] == *(v47 + 8);
  if (!v101 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v102 = v73[10];
  v104 = *(v46 + v102);
  v103 = *(v76 + v102 + 8);
  v105 = (v47 + v102);
  v106 = *v105;
  v48 = v105[1];
  if (v103 >> 60 == 15)
  {
    OUTLINED_FUNCTION_374_0();
    if (!(!v77 & v107))
    {
      goto LABEL_53;
    }

    v108 = OUTLINED_FUNCTION_95_0();
    sub_1C8D04F90(v108, v109);
    v110 = OUTLINED_FUNCTION_100();
    sub_1C8D04F90(v110, v111);
    v112 = OUTLINED_FUNCTION_95_0();
    sub_1C8CE7BD0(v112, v113);
  }

  else
  {
    OUTLINED_FUNCTION_374_0();
    if (!v77 & v107)
    {
LABEL_53:
      v114 = OUTLINED_FUNCTION_95_0();
      sub_1C8D04F90(v114, v115);
      v116 = OUTLINED_FUNCTION_100();
      sub_1C8D04F90(v116, v117);
      v118 = OUTLINED_FUNCTION_95_0();
      sub_1C8CE7BD0(v118, v119);
      v62 = v106;
      goto LABEL_6;
    }

    v120 = OUTLINED_FUNCTION_95_0();
    sub_1C8D04F90(v120, v121);
    v122 = OUTLINED_FUNCTION_100();
    sub_1C8D04F90(v122, v123);
    v124 = OUTLINED_FUNCTION_95_0();
    v125 = MEMORY[0x1CCA7F9A0](v124);
    v126 = OUTLINED_FUNCTION_100();
    sub_1C8CE7BD0(v126, v127);
    v128 = OUTLINED_FUNCTION_95_0();
    sub_1C8CE7BD0(v128, v129);
    if ((v125 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  OUTLINED_FUNCTION_200_5(v76 + v73[11]);
  if (v132)
  {
    if (!v130)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_105_5(v131);
    v135 = v77 && v133 == v134;
    if (!v135 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v130)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_200_5(v76 + v73[12]);
  if (v138)
  {
    if (!v136)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_105_5(v137);
    v141 = v77 && v139 == v140;
    if (!v141 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v136)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_200_5(v76 + v73[13]);
  if (v144)
  {
    if (!v142)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_105_5(v143);
    v147 = v77 && v145 == v146;
    if (!v147 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v142)
  {
    goto LABEL_29;
  }

  v148 = v73[14];
  v149 = *(v76 + v148);
  v150 = *(v47 + v148);
  if (v149 == 2)
  {
    if (v150 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v150 == 2 || ((v149 ^ v150) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (*(v76 + 16) == *(v47 + 16))
  {
    v151 = v73[15];
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v152, v153);
    v91 = sub_1C9063EAC();
    goto LABEL_30;
  }

LABEL_29:
  v91 = 0;
LABEL_30:
  OUTLINED_FUNCTION_50_0(v91);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.File.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_24_2();
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(v5);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38();
  if ((MEMORY[0x1CCA7F9A0](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v39 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v18 = v39[5];
  v19 = *(v4 + 48);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_177_5();
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_78_4(v2 + v19);
    if (!v20)
    {
      sub_1C900BE74();
      OUTLINED_FUNCTION_49();
      static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
      v24 = v23;
      v25 = OUTLINED_FUNCTION_287();
      sub_1C8CD20B4(v25, v26);
      v27 = OUTLINED_FUNCTION_203();
      sub_1C8CD20B4(v27, v28);
      sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
      if ((v24 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v3, v21);
LABEL_10:
    sub_1C8D16D78(v2, &qword_1EC312A50, &unk_1C9068E30);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_78_4(v2 + v19);
  if (!v20)
  {
    goto LABEL_10;
  }

  sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
LABEL_14:
  v29 = v39[6];
  OUTLINED_FUNCTION_274_3();
  if (v32)
  {
    if (v30)
    {
      OUTLINED_FUNCTION_105_5(v31);
      v35 = v20 && v33 == v34;
      if (v35 || (sub_1C9064C2C() & 1) != 0)
      {
        goto LABEL_23;
      }
    }
  }

  else if (!v30)
  {
LABEL_23:
    v36 = v39[7];
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v37, v38);
    v22 = OUTLINED_FUNCTION_12_28();
    goto LABEL_12;
  }

LABEL_11:
  v22 = 0;
LABEL_12:
  OUTLINED_FUNCTION_50_0(v22);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.App.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_41_19();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  OUTLINED_FUNCTION_155_4(v18);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_24_28();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
LABEL_17:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v28, v29);
      v21 = OUTLINED_FUNCTION_12_28();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v19)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v1, v20);
LABEL_14:
    sub_1C8D16D78(v0, &qword_1EC312A50, &unk_1C9068E30);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_50_18();
  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v24, v25);
  v26 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v26, v27);
  sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_15:
  v21 = 0;
LABEL_18:
  OUTLINED_FUNCTION_50_0(v21);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.DateComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = OUTLINED_FUNCTION_124();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C148, &qword_1C90ABFA8);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_20(v17);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (!v18)
  {
    OUTLINED_FUNCTION_287();
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_16_31();
    if (!v18)
    {
      sub_1C900BE74();
      v21 = OUTLINED_FUNCTION_398();
      v23 = static ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)(v21, v22);
      v24 = OUTLINED_FUNCTION_181_0();
      sub_1C8CD20B4(v24, v25);
      v26 = OUTLINED_FUNCTION_125();
      sub_1C8CD20B4(v26, v27);
      sub_1C8D16D78(v0, &qword_1EC313AB0, &qword_1C906F588);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_238_4();
    sub_1C8CD20B4(v1, v19);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C148, &qword_1C90ABFA8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_16_31();
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1C8D16D78(v0, &qword_1EC313AB0, &qword_1C906F588);
LABEL_13:
  v28 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v29 = v28[5];
  OUTLINED_FUNCTION_274_3();
  if (v32)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_105_5(v31);
    v35 = v18 && v33 == v34;
    if (!v35 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_58_13(v28[6]);
  if (v37)
  {
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v38)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[7]);
  if (v40)
  {
    if (!v39)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v41)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[8]);
  if (v43)
  {
    if (!v42)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v44)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[9]);
  if (v46)
  {
    if (!v45)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v47)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[10]);
  if (v49)
  {
    if (!v48)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v50)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[11]);
  if (v52)
  {
    if (!v51)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v53)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[12]);
  if (v55)
  {
    if (!v54)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v56)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[13]);
  if (v58)
  {
    if (!v57)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v59)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[14]);
  if (v61)
  {
    if (!v60)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v62)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[15]);
  if (v64)
  {
    if (!v63)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v65)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[16]);
  if (v67)
  {
    if (!v66)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v68)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[17]);
  if (v70)
  {
    if (!v69)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v71)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[18]);
  if (v73)
  {
    if (!v72)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if (v74)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_58_13(v28[19]);
  if (v76)
  {
    if (v75)
    {
      goto LABEL_78;
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    if ((v77 & 1) == 0)
    {
LABEL_78:
      v78 = v28[20];
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v79, v80);
      v20 = OUTLINED_FUNCTION_12_28();
      goto LABEL_11;
    }
  }

LABEL_10:
  v20 = 0;
LABEL_11:
  OUTLINED_FUNCTION_50_0(v20);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.Shortcut.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_41_19();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(0);
  OUTLINED_FUNCTION_155_4(v18);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_24_28();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
LABEL_17:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v28, v29);
      v21 = OUTLINED_FUNCTION_12_28();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v19)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v1, v20);
LABEL_14:
    sub_1C8D16D78(v0, &qword_1EC312A50, &unk_1C9068E30);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_50_18();
  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v24, v25);
  v26 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v26, v27);
  sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_15:
  v21 = 0;
LABEL_18:
  OUTLINED_FUNCTION_50_0(v21);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_323_2();
  v65 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(v5);
  v6 = OUTLINED_FUNCTION_13_1(v65);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AF8, &qword_1C906F5B0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_86_7(v14, v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C150, &qword_1C90ABFB0);
  OUTLINED_FUNCTION_13_1(v64);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_120_7(v18, v63);
  v19 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v20 = OUTLINED_FUNCTION_13_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51_15();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_51();
  v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C148, &qword_1C90ABFA8) - 8);
  v28 = *(*v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_109_0();
  v67 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(v30);
  v31 = v67[17];
  v32 = v27[14];
  OUTLINED_FUNCTION_362_1();
  OUTLINED_FUNCTION_362_1();
  OUTLINED_FUNCTION_34_17(v2);
  if (v33)
  {
    OUTLINED_FUNCTION_34_17(v2 + v32);
    if (v33)
    {
      sub_1C8D16D78(v2, &qword_1EC313AB0, &qword_1C906F588);
      goto LABEL_12;
    }

LABEL_9:
    v35 = &qword_1EC31C148;
    v36 = &qword_1C90ABFA8;
    v37 = v2;
LABEL_10:
    sub_1C8D16D78(v37, v35, v36);
LABEL_36:
    v61 = 0;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_355_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v2 + v32);
  if (v33)
  {
    OUTLINED_FUNCTION_238_4();
    sub_1C8CD20B4(v0, v34);
    goto LABEL_9;
  }

  sub_1C900BE74();
  v38 = OUTLINED_FUNCTION_226_1();
  v40 = static ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)(v38, v39);
  v41 = OUTLINED_FUNCTION_130_1();
  sub_1C8CD20B4(v41, v42);
  v43 = OUTLINED_FUNCTION_95_0();
  sub_1C8CD20B4(v43, v44);
  sub_1C8D16D78(v2, &qword_1EC313AB0, &qword_1C906F588);
  if ((v40 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if (*v1 != *v4 || *(v1 + 1) != *(v4 + 1))
  {
    goto LABEL_36;
  }

  v45 = v67[18];
  v46 = *(v64 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  v47 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v47, v48);
  if (v33)
  {
    OUTLINED_FUNCTION_34_17(v66 + v46);
    if (v33)
    {
      sub_1C8D16D78(v66, &qword_1EC313AF8, &qword_1C906F5B0);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v66 + v46);
  if (v49)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_22:
    v35 = &qword_1EC31C150;
    v36 = &qword_1C90ABFB0;
    v37 = v66;
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_100();
  static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v50 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v50, v51);
  sub_1C8D16D78(v66, &qword_1EC313AF8, &qword_1C906F5B0);
  if ((&qword_1C906F5B0 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_24:
  if (v1[16] != v4[16])
  {
    goto LABEL_36;
  }

  if (v1[17] != v4[17])
  {
    goto LABEL_36;
  }

  v52 = *(v1 + 3);
  v53 = *(v4 + 3);
  sub_1C8CF05E8();
  if ((v54 & 1) == 0)
  {
    goto LABEL_36;
  }

  if ((sub_1C8CF07B0(*(v1 + 4), *(v4 + 4)) & 1) == 0)
  {
    goto LABEL_36;
  }

  if ((sub_1C8CF07B0(*(v1 + 5), *(v4 + 5)) & 1) == 0)
  {
    goto LABEL_36;
  }

  if ((sub_1C8CF07B0(*(v1 + 6), *(v4 + 6)) & 1) == 0)
  {
    goto LABEL_36;
  }

  v55 = *(v1 + 7);
  v56 = *(v4 + 7);
  sub_1C8CF0804();
  if ((v57 & 1) == 0 || (sub_1C8CF07B0(*(v1 + 8), *(v4 + 8)) & 1) == 0 || (sub_1C8CF07B0(*(v1 + 9), *(v4 + 9)) & 1) == 0 || (sub_1C8CF07B0(*(v1 + 10), *(v4 + 10)) & 1) == 0 || (sub_1C8CF07B0(*(v1 + 11), *(v4 + 11)) & 1) == 0)
  {
    goto LABEL_36;
  }

  v58 = v67[19];
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v59, v60);
  v61 = OUTLINED_FUNCTION_358_1();
LABEL_37:
  OUTLINED_FUNCTION_50_0(v61);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.DateInterval.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  OUTLINED_FUNCTION_143();
  v3 = sub_1C906378C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v70 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v67 = v8;
  v9 = OUTLINED_FUNCTION_206_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  v66[1] = v15 - v16;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_156_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C158, &qword_1C90ABFB8);
  v19 = OUTLINED_FUNCTION_13_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v66 - v26;
  v29 = *(v28 + 48);
  v68 = v0;
  OUTLINED_FUNCTION_391_0();
  v69 = v2;
  OUTLINED_FUNCTION_391_0();
  OUTLINED_FUNCTION_191(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_191(&v27[v29]);
    if (v30)
    {
      sub_1C8D16D78(v27, &qword_1EC313AD0, &unk_1C9074D00);
      goto LABEL_11;
    }

LABEL_9:
    v34 = v27;
LABEL_20:
    sub_1C8D16D78(v34, &qword_1EC31C158, &qword_1C90ABFB8);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_245();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(&v27[v29]);
  if (v30)
  {
    v31 = *(v70 + 8);
    v32 = OUTLINED_FUNCTION_306_2();
    v33(v32);
    goto LABEL_9;
  }

  v35 = v70;
  (*(v70 + 32))(v67, &v27[v29], v3);
  OUTLINED_FUNCTION_72_8();
  sub_1C8CD1B00(v36, v37);
  v38 = sub_1C9063EAC();
  v39 = *(v35 + 8);
  v40 = OUTLINED_FUNCTION_119();
  v39(v40);
  v41 = OUTLINED_FUNCTION_306_2();
  v39(v41);
  sub_1C8D16D78(v27, &qword_1EC313AD0, &unk_1C9074D00);
  if ((v38 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v42 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  v43 = *(v42 + 20);
  v44 = *(v18 + 48);
  v45 = v68;
  OUTLINED_FUNCTION_393_0();
  v46 = v69;
  OUTLINED_FUNCTION_393_0();
  OUTLINED_FUNCTION_191(v24);
  if (!v30)
  {
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_191(v24 + v44);
    if (!v47)
    {
      v52 = v70;
      (*(v70 + 32))(v67, v24 + v44, v3);
      OUTLINED_FUNCTION_72_8();
      sub_1C8CD1B00(v53, v54);
      v55 = sub_1C9063EAC();
      v56 = *(v52 + 8);
      v57 = OUTLINED_FUNCTION_306_2();
      v56(v57);
      v58 = OUTLINED_FUNCTION_355_1();
      v56(v58);
      sub_1C8D16D78(v24, &qword_1EC313AD0, &unk_1C9074D00);
      if ((v55 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    v48 = *(v70 + 8);
    v49 = OUTLINED_FUNCTION_355_1();
    v50(v49);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_191(v24 + v44);
  if (!v30)
  {
LABEL_19:
    v34 = v24;
    goto LABEL_20;
  }

  sub_1C8D16D78(v24, &qword_1EC313AD0, &unk_1C9074D00);
LABEL_24:
  v59 = *(v42 + 24);
  v60 = (v45 + v59);
  v61 = *(v45 + v59 + 8);
  v62 = (v46 + v59);
  v63 = *(v46 + v59 + 8);
  if (v61)
  {
    if (v63)
    {
LABEL_30:
      OUTLINED_FUNCTION_389_0();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v64, v65);
      OUTLINED_FUNCTION_256_1();
      v51 = OUTLINED_FUNCTION_358_1();
      goto LABEL_22;
    }
  }

  else
  {
    if (*v60 != *v62)
    {
      LOBYTE(v63) = 1;
    }

    if ((v63 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_21:
  v51 = 0;
LABEL_22:
  OUTLINED_FUNCTION_50_0(v51);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_24_2();
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(v3);
  v5 = OUTLINED_FUNCTION_39_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_23();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C168, &qword_1C90ABFC0);
  OUTLINED_FUNCTION_13_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  v16 = v1[1];
  v17 = v0[1];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_64;
    }

    v18 = *v1 == *v0 && v16 == v17;
    if (!v18 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v17)
  {
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_371_0();
  if (v20)
  {
    if (!v19)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_272_1();
    v23 = v18 && v21 == v22;
    if (!v23 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v19)
  {
    goto LABEL_64;
  }

  v24 = v1[5];
  v25 = v0[5];
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_64;
    }

    v26 = v1[4] == v0[4] && v24 == v25;
    if (!v26 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v25)
  {
    goto LABEL_64;
  }

  v27 = v0[7];
  if (v1[7])
  {
    if (!v27)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_332_1();
    v30 = v18 && v28 == v29;
    if (!v30 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v27)
  {
    goto LABEL_64;
  }

  v31 = v0[9];
  if (v1[9])
  {
    if (!v31)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_331_1();
    v34 = v18 && v32 == v33;
    if (!v34 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v31)
  {
    goto LABEL_64;
  }

  v35 = v1[11];
  v36 = v0[11];
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_64;
    }

    v37 = v1[10] == v0[10] && v35 == v36;
    if (!v37 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v36)
  {
    goto LABEL_64;
  }

  v50 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  v38 = *(v50 + 40);
  v39 = *(v12 + 48);
  OUTLINED_FUNCTION_182_6();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_310_1();
  OUTLINED_FUNCTION_18_32();
  if (v18)
  {
    OUTLINED_FUNCTION_24_28();
    if (v18)
    {
      sub_1C8D16D78(v2, &qword_1EC3139A8, &unk_1C9074CE0);
LABEL_67:
      v47 = *(v50 + 44);
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v48, v49);
      v41 = OUTLINED_FUNCTION_12_28();
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v40)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_63:
    sub_1C8D16D78(v2, &qword_1EC31C168, &qword_1C90ABFC0);
    goto LABEL_64;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  v42 = static ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.== infix(_:_:)();
  v43 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v43, v44);
  v45 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v45, v46);
  sub_1C8D16D78(v2, &qword_1EC3139A8, &unk_1C9074CE0);
  if (v42)
  {
    goto LABEL_67;
  }

LABEL_64:
  v41 = 0;
LABEL_65:
  OUTLINED_FUNCTION_50_0(v41);
  OUTLINED_FUNCTION_163();
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.Duration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_330_2(a1, a2);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
  OUTLINED_FUNCTION_64_7(v5);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v6, v7);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8F50654(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_123_6();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v10 = a3(0);
  OUTLINED_FUNCTION_64_7(v10);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v11, v12);
  return OUTLINED_FUNCTION_12_28() & 1;
}

void sub_1C8F508F8()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_143();
  v63 = type metadata accessor for ToolKitProtoDisplayRepresentation(v5);
  v6 = OUTLINED_FUNCTION_13_1(v63);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_86_7(v14, v58);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_13_1(v61);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_91_6(v18, v59);
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier(v19);
  v21 = OUTLINED_FUNCTION_13_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_51_15();
  v24 = OUTLINED_FUNCTION_94();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_73();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78);
  OUTLINED_FUNCTION_186_6(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_109_0();
  v62 = v4(v34);
  v35 = v62[5];
  v36 = *(v0 + 56);
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_54_15(v2);
  if (v37)
  {
    OUTLINED_FUNCTION_54_15(v2 + v36);
    if (v37)
    {
      sub_1C8D16D78(v2, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_11;
    }

LABEL_9:
    v38 = &qword_1EC31C118;
    v39 = &qword_1C90ABF78;
    v40 = v2;
LABEL_25:
    sub_1C8D16D78(v40, v38, v39);
    goto LABEL_26;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v2 + v36);
  if (v37)
  {
    sub_1C8CD20B4(v1, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_9;
  }

  sub_1C900BE74();
  v41 = OUTLINED_FUNCTION_300();
  v43 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v41, v42);
  v44 = OUTLINED_FUNCTION_130_1();
  sub_1C8CD20B4(v44, v45);
  OUTLINED_FUNCTION_335_1();
  sub_1C8D16D78(v2, &qword_1EC3139D8, &qword_1C9072A40);
  if ((v43 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  OUTLINED_FUNCTION_375_0();
  if (v37)
  {
    v48 = v46 == v47;
  }

  else
  {
    v48 = 0;
  }

  if (!v48 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v49 = v62[6];
  v50 = *(v61 + 48);
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_64_12(v64);
  if (v37)
  {
    OUTLINED_FUNCTION_34_17(v64 + v50);
    if (v37)
    {
      sub_1C8D16D78(v64, &qword_1EC312A48, &unk_1C9072A10);
LABEL_29:
      v55 = v62[7];
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v56, v57);
      OUTLINED_FUNCTION_256_1();
      v52 = sub_1C9063EAC();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v64 + v50);
  if (v51)
  {
    sub_1C8CD20B4(v60, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_24:
    v38 = &qword_1EC312A50;
    v39 = &unk_1C9068E30;
    v40 = v64;
    goto LABEL_25;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_212();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v53 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v53, v54);
  sub_1C8D16D78(v64, &qword_1EC312A48, &unk_1C9072A10);
  if (&unk_1C9072A10)
  {
    goto LABEL_29;
  }

LABEL_26:
  v52 = 0;
LABEL_27:
  OUTLINED_FUNCTION_50_0(v52);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.EntityValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_323_2();
  v83 = type metadata accessor for ToolKitProtoDisplayRepresentation(v6);
  v7 = OUTLINED_FUNCTION_13_1(v83);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_86_7(v15, v78);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_13_1(v82);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_120_7(v19, v79);
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v21 = OUTLINED_FUNCTION_13_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_51_15();
  v24 = OUTLINED_FUNCTION_181();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_142();
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78) - 8);
  v31 = *(*v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v33 = OUTLINED_FUNCTION_109_0();
  v85 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(v33);
  v34 = v85[6];
  v35 = v30[14];
  OUTLINED_FUNCTION_365_1();
  OUTLINED_FUNCTION_365_1();
  OUTLINED_FUNCTION_54_15(v3);
  if (v36)
  {
    OUTLINED_FUNCTION_54_15(v3 + v35);
    if (v36)
    {
      sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_14;
    }

LABEL_9:
    v38 = &qword_1EC31C118;
    v39 = &qword_1C90ABF78;
    v40 = v3;
LABEL_10:
    sub_1C8D16D78(v40, v38, v39);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_206_0();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v3 + v35);
  if (v36)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1C8CD20B4(v0, v37);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_5();
  sub_1C900BE74();
  v42 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v0, v2);
  v43 = OUTLINED_FUNCTION_306_2();
  sub_1C8CD20B4(v43, v44);
  v45 = OUTLINED_FUNCTION_94();
  sub_1C8CD20B4(v45, v46);
  sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
  if ((v42 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v47 = *v1 == *v5 && v1[1] == v5[1];
  if (!v47 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1C8F57530(v1[2], v5[2]);
  if ((v48 & 1) == 0)
  {
    goto LABEL_11;
  }

  v49 = v85[7];
  v50 = *(v82 + 48);
  OUTLINED_FUNCTION_212_4();
  OUTLINED_FUNCTION_218_1();
  v51 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_65_13(v51, v52);
  if (v36)
  {
    OUTLINED_FUNCTION_34_17(v84 + v50);
    if (v36)
    {
      sub_1C8D16D78(v84, &qword_1EC312A48, &unk_1C9072A10);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v84 + v50);
  if (v53)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v81, v54);
LABEL_28:
    v38 = &qword_1EC312A50;
    v39 = &unk_1C9068E30;
    v40 = v84;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73_8();
  v50 = v80;
  sub_1C900BE74();
  OUTLINED_FUNCTION_100();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v55 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v55, v56);
  sub_1C8D16D78(v84, &qword_1EC312A48, &unk_1C9072A10);
  if ((&unk_1C9072A10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  OUTLINED_FUNCTION_315_1(v85[8]);
  if (!v36 & v59)
  {
    OUTLINED_FUNCTION_370_0();
    if (!(!v36 & v59))
    {
      goto LABEL_44;
    }

    v57 = OUTLINED_FUNCTION_99_8();
    sub_1C8CE7BD0(v57, v58);
  }

  else
  {
    OUTLINED_FUNCTION_370_0();
    if (!v60 & v59)
    {
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_99_8();
    OUTLINED_FUNCTION_138_6();
    v61 = MEMORY[0x1CCA7F9A0]();
    v62 = OUTLINED_FUNCTION_112();
    sub_1C8CE7BD0(v62, v63);
    sub_1C8CE7BD0(v50, v83);
    if ((v61 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_315_1(v85[9]);
  if (!v36 & v59)
  {
    OUTLINED_FUNCTION_370_0();
    if (!v36 & v59)
    {
      v64 = OUTLINED_FUNCTION_99_8();
      sub_1C8CE7BD0(v64, v65);
LABEL_46:
      v75 = v85[10];
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v76, v77);
      v41 = OUTLINED_FUNCTION_386_0();
      goto LABEL_12;
    }

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_370_0();
  if (!v67 & v66)
  {
LABEL_44:
    v68 = OUTLINED_FUNCTION_99_8();
    sub_1C8CE7BD0(v68, v69);
    v70 = OUTLINED_FUNCTION_112();
    sub_1C8CE7BD0(v70, v71);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_99_8();
  OUTLINED_FUNCTION_138_6();
  v72 = MEMORY[0x1CCA7F9A0]();
  v73 = OUTLINED_FUNCTION_112();
  sub_1C8CE7BD0(v73, v74);
  sub_1C8CE7BD0(v50, v83);
  if (v72)
  {
    goto LABEL_46;
  }

LABEL_11:
  v41 = 0;
LABEL_12:
  OUTLINED_FUNCTION_50_0(v41);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.CollectionValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_323_2();
  v60 = type metadata accessor for ToolKitProtoTypeInstance(v3);
  v4 = OUTLINED_FUNCTION_13_1(v60);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_86_7(v12, v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1(v58);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = OUTLINED_FUNCTION_91_6(v16, v57);
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier(v17);
  v19 = OUTLINED_FUNCTION_13_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_15();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_51();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78);
  OUTLINED_FUNCTION_186_6(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_109_0();
  v59 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(v30);
  v31 = *(v59 + 20);
  OUTLINED_FUNCTION_279_2();
  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_34_17(v2);
  if (v32)
  {
    OUTLINED_FUNCTION_34_17(v2 + v1);
    if (v32)
    {
      sub_1C8D16D78(v2, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_12;
    }

LABEL_9:
    v34 = &qword_1EC31C118;
    v35 = &qword_1C90ABF78;
    v36 = v2;
LABEL_10:
    sub_1C8D16D78(v36, v34, v35);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_355_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v2 + v1);
  if (v32)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1C8CD20B4(v0, v33);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_249_1();
  sub_1C900BE74();
  v37 = OUTLINED_FUNCTION_226_1();
  v39 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v37, v38);
  v40 = OUTLINED_FUNCTION_130_1();
  sub_1C8CD20B4(v40, v41);
  v42 = OUTLINED_FUNCTION_95_0();
  sub_1C8CD20B4(v42, v43);
  sub_1C8D16D78(v2, &qword_1EC3139D8, &qword_1C9072A40);
  if ((v39 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  OUTLINED_FUNCTION_334_2();
  sub_1C8CEE9DC();
  if ((v44 & 1) == 0)
  {
    goto LABEL_24;
  }

  v45 = *(v59 + 24);
  v46 = *(v58 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  OUTLINED_FUNCTION_64_12(v61);
  if (!v32)
  {
    OUTLINED_FUNCTION_360_1();
    OUTLINED_FUNCTION_34_17(v61 + v46);
    if (!v47)
    {
      OUTLINED_FUNCTION_235_3();
      sub_1C900BE74();
      v49 = OUTLINED_FUNCTION_212();
      static ToolKitProtoTypeInstance.== infix(_:_:)(v49, v50);
      OUTLINED_FUNCTION_163_7();
      v51 = OUTLINED_FUNCTION_148();
      sub_1C8CD20B4(v51, v52);
      sub_1C8D16D78(v61, &qword_1EC312A58, &unk_1C9074CC0);
      if (&unk_1C9074CC0)
      {
        goto LABEL_23;
      }

LABEL_24:
      v55 = 0;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v45, v48);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_34_17(v61 + v46);
  if (!v32)
  {
LABEL_21:
    v34 = &qword_1EC312A60;
    v35 = &unk_1C9068E40;
    v36 = v61;
    goto LABEL_10;
  }

  sub_1C8D16D78(v61, &qword_1EC312A58, &unk_1C9074CC0);
LABEL_23:
  OUTLINED_FUNCTION_389_0();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v53, v54);
  OUTLINED_FUNCTION_257_2();
  v55 = OUTLINED_FUNCTION_269_1();
LABEL_25:
  OUTLINED_FUNCTION_50_0(v55);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.QueryValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_152_5();
  v47 = type metadata accessor for ToolKitProtoQuery(0);
  v4 = OUTLINED_FUNCTION_13_1(v47);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139E0, &qword_1C906F538);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_104_7(v12, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C178, &qword_1C90ABFD0);
  OUTLINED_FUNCTION_13_1(v46);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v20 = OUTLINED_FUNCTION_209();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_9(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_142();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78);
  OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_112_7(v30);
  OUTLINED_FUNCTION_192_7();
  OUTLINED_FUNCTION_97_7(v3);
  if (v31)
  {
    OUTLINED_FUNCTION_97_7(v3 + v2);
    if (v31)
    {
      sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_11;
    }

LABEL_9:
    v33 = &qword_1EC31C118;
    v34 = &qword_1C90ABF78;
    v35 = v3;
LABEL_20:
    sub_1C8D16D78(v35, v33, v34);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_130_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_97_7(v3 + v2);
  if (v31)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1C8CD20B4(v0, v32);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_75_5();
  sub_1C900BE74();
  v36 = OUTLINED_FUNCTION_210();
  static ToolKitProtoTypeIdentifier.== infix(_:_:)(v36, v37);
  OUTLINED_FUNCTION_317_1();
  v38 = OUTLINED_FUNCTION_94();
  sub_1C8CD20B4(v38, v39);
  sub_1C8D16D78(v3, &qword_1EC3139D8, &qword_1C9072A40);
  if ((&qword_1C9072A40 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  OUTLINED_FUNCTION_189_6(Value);
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_191_6();
  OUTLINED_FUNCTION_64_12(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_30_26();
    if (v31)
    {
      sub_1C8D16D78(v1, &qword_1EC3139E0, &qword_1C906F538);
LABEL_24:
      OUTLINED_FUNCTION_390_0();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v43, v44);
      v42 = OUTLINED_FUNCTION_266_3();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_326_1();
  OUTLINED_FUNCTION_30_26();
  if (v41)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_19:
    v33 = &qword_1EC31C178;
    v34 = &qword_1C90ABFD0;
    v35 = v1;
    goto LABEL_20;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoQuery.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_335_1();
  sub_1C8D16D78(v1, &qword_1EC3139E0, &qword_1C906F538);
  if (&qword_1C906F538)
  {
    goto LABEL_24;
  }

LABEL_21:
  v42 = 0;
LABEL_22:
  OUTLINED_FUNCTION_50_0(v42);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.DeferredValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v74 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v3 = OUTLINED_FUNCTION_13_1(v74);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_316_2(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C180, &qword_1C90ABFD8);
  OUTLINED_FUNCTION_13_1(v73);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_86_7(v14, v71);
  v78 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v15 = OUTLINED_FUNCTION_13_1(v78);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_104_7(v22, v72);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1(v77);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_86();
  v26 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v27 = OUTLINED_FUNCTION_39_19(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C118, &qword_1C90ABF78);
  OUTLINED_FUNCTION_9(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_73();
  v39 = *(v38 + 56);
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_14_2(v0);
  if (v40)
  {
    OUTLINED_FUNCTION_14_2(v0 + v39);
    if (v40)
    {
      sub_1C8D16D78(v0, &qword_1EC3139D8, &qword_1C9072A40);
      goto LABEL_11;
    }

LABEL_9:
    v42 = &qword_1EC31C118;
    v43 = &qword_1C90ABF78;
    v44 = v0;
LABEL_30:
    sub_1C8D16D78(v44, v42, v43);
    goto LABEL_31;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_14_2(v0 + v39);
  if (v40)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1C8CD20B4(v1, v41);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_248_3();
  sub_1C900BE74();
  v45 = OUTLINED_FUNCTION_378();
  v47 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v45, v46);
  v48 = OUTLINED_FUNCTION_181();
  sub_1C8CD20B4(v48, v49);
  v50 = OUTLINED_FUNCTION_49();
  sub_1C8CD20B4(v50, v51);
  sub_1C8D16D78(v0, &qword_1EC3139D8, &qword_1C9072A40);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v52 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v53 = *(v52 + 20);
  v54 = *(v77 + 48);
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_64_12(v2);
  if (v40)
  {
    OUTLINED_FUNCTION_34_17(v2 + v54);
    if (v40)
    {
      sub_1C8D16D78(v2, &qword_1EC312A58, &unk_1C9074CC0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v2 + v54);
  if (v55)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v76, v56);
LABEL_19:
    v42 = &qword_1EC312A60;
    v43 = &unk_1C9068E40;
    v44 = v2;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_235_3();
  sub_1C900BE74();
  v57 = OUTLINED_FUNCTION_347();
  static ToolKitProtoTypeInstance.== infix(_:_:)(v57, v58);
  OUTLINED_FUNCTION_163_7();
  v59 = OUTLINED_FUNCTION_274_0();
  sub_1C8CD20B4(v59, v60);
  sub_1C8D16D78(v2, &qword_1EC312A58, &unk_1C9074CC0);
  if ((&unk_1C9074CC0 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v61 = *(v52 + 24);
  v62 = *(v73 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  v63 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v63, v64);
  if (v40)
  {
    OUTLINED_FUNCTION_34_17(v75 + v62);
    if (v40)
    {
      sub_1C8D16D78(v75, &qword_1EC3139F0, &unk_1C9074D10);
LABEL_34:
      OUTLINED_FUNCTION_389_0();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v69, v70);
      OUTLINED_FUNCTION_257_2();
      v66 = OUTLINED_FUNCTION_343_2();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v75 + v62);
  if (v65)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_29:
    v42 = &qword_1EC31C180;
    v43 = &qword_1C90ABFD8;
    v44 = v75;
    goto LABEL_30;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_100();
  static ToolKitProtoTypedValue.DeferredValue.Storage.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v67 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v67, v68);
  sub_1C8D16D78(v75, &qword_1EC3139F0, &unk_1C9074D10);
  if (&unk_1C9074D10)
  {
    goto LABEL_34;
  }

LABEL_31:
  v66 = 0;
LABEL_32:
  OUTLINED_FUNCTION_50_0(v66);
  OUTLINED_FUNCTION_163();
}

void static ToolKitProtoTypedValue.CodableValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(v4);
  v6 = OUTLINED_FUNCTION_39_19(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_23();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_41_19();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_1C9064C2C() & 1) == 0 || (MEMORY[0x1CCA7F9A0](*(v1 + 16), *(v1 + 24), *(v0 + 16), *(v0 + 24)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
  OUTLINED_FUNCTION_276_2(v20);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v19)
  {
    OUTLINED_FUNCTION_24_28();
    if (v19)
    {
      sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
LABEL_19:
      OUTLINED_FUNCTION_303_2();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v30, v31);
      v23 = OUTLINED_FUNCTION_12_28();
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v21)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v3, v22);
LABEL_15:
    sub_1C8D16D78(v2, &qword_1EC312A50, &unk_1C9068E30);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_50_18();
  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v26, v27);
  v28 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v28, v29);
  sub_1C8D16D78(v2, &qword_1EC312A48, &unk_1C9072A10);
  if (v25)
  {
    goto LABEL_19;
  }

LABEL_16:
  v23 = 0;
LABEL_17:
  OUTLINED_FUNCTION_50_0(v23);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F52198(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_223();
  v11 = *v9;
  v13 = *v12;
  if ((~*v9 & 0xF000000000000007) != 0)
  {
    v21 = *v9;
    if ((~v13 & 0xF000000000000007) != 0)
    {
      v15 = v10;
      v20 = v13;
      a3(v11);
      a3(v13);
      a3(v11);
      v16 = v15(&v21, &v20);

      a5(v11);
      if (v16)
      {
        goto LABEL_9;
      }

      return 0;
    }

    a3(v11);
    a3(v13);
    a3(v11);

LABEL_6:
    a5(v11);
    a5(v13);
    return 0;
  }

  a3(*v9);
  a3(v13);
  if ((~v13 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  a5(v11);
LABEL_9:
  v17 = a6(0);
  OUTLINED_FUNCTION_63_10(v17);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v18, v19);
  return OUTLINED_FUNCTION_12_28() & 1;
}

void static ToolKitProtoTypeInstance.Optional.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_152_5();
  v50 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = OUTLINED_FUNCTION_13_1(v50);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_243(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_104_7(v12, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C188, &qword_1C90ABFE0);
  OUTLINED_FUNCTION_13_1(v49);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_72();
  v16 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v20 = OUTLINED_FUNCTION_209();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_9(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_142();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_112_7(v30);
  OUTLINED_FUNCTION_192_7();
  OUTLINED_FUNCTION_97_7(v3);
  if (v31)
  {
    OUTLINED_FUNCTION_97_7(v3 + v2);
    if (v31)
    {
      sub_1C8D16D78(v3, &qword_1EC312A58, &unk_1C9074CC0);
      goto LABEL_11;
    }

LABEL_9:
    v33 = &qword_1EC312A60;
    v34 = &unk_1C9068E40;
    v35 = v3;
LABEL_20:
    sub_1C8D16D78(v35, v33, v34);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_130_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_97_7(v3 + v2);
  if (v31)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v0, v32);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_236_3();
  sub_1C900BE74();
  v36 = OUTLINED_FUNCTION_210();
  static ToolKitProtoTypeInstance.== infix(_:_:)(v36, v37);
  OUTLINED_FUNCTION_317_1();
  v38 = OUTLINED_FUNCTION_94();
  sub_1C8CD20B4(v38, v39);
  sub_1C8D16D78(v3, &qword_1EC312A58, &unk_1C9074CC0);
  if ((&unk_1C9074CC0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v40 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  OUTLINED_FUNCTION_189_6(v40);
  OUTLINED_FUNCTION_194_6();
  OUTLINED_FUNCTION_191_6();
  OUTLINED_FUNCTION_64_12(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_30_26();
    if (v31)
    {
      sub_1C8D16D78(v1, &qword_1EC314368, &unk_1C9074D90);
LABEL_24:
      OUTLINED_FUNCTION_390_0();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v46, v47);
      v43 = OUTLINED_FUNCTION_266_3();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_326_1();
  OUTLINED_FUNCTION_30_26();
  if (v41)
  {
    OUTLINED_FUNCTION_116_9();
    sub_1C8CD20B4(v2, v42);
LABEL_19:
    v33 = &qword_1EC31C188;
    v34 = &qword_1C90ABFE0;
    v35 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_115_6();
  sub_1C900BE74();
  v44 = OUTLINED_FUNCTION_398();
  static ToolKitProtoTypedValue.== infix(_:_:)(v44, v45);
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_335_1();
  sub_1C8D16D78(v1, &qword_1EC314368, &unk_1C9074D90);
  if (&unk_1C9074D90)
  {
    goto LABEL_24;
  }

LABEL_21:
  v43 = 0;
LABEL_22:
  OUTLINED_FUNCTION_50_0(v43);
  OUTLINED_FUNCTION_163();
}