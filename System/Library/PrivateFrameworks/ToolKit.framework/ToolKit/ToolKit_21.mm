uint64_t sub_1C8E3DC74(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062EFC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C9062ECC();
}

uint64_t sub_1C8E3DCBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC317158, &unk_1C908BD60);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v9 = sub_1C906348C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  (*(v12 + 104))(v16 - v15, *MEMORY[0x1E69E0760], v9);
  v18 = a1[2];
  v19 = *(a1[3] + 8);
  v20 = a1[4];
  sub_1C90636DC();
  (*(v12 + 8))(v17, v9);
  sub_1C906276C();
  v21 = sub_1C906279C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v21) != 1)
  {
    return (*(*(v21 - 8) + 32))(a2, v2, v21);
  }

  sub_1C8D16D78(v2, qword_1EC317158, &unk_1C908BD60);
  return sub_1C906275C();
}

uint64_t sub_1C8E3DEBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_1C9063D3C();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1C906278C();
  v15 = v14;
  v17 = v16;
  sub_1C906277C();
  sub_1C8E3F90C(v13, v15, v17);
  if (!v24)
  {
    sub_1C8D16D78(v23, &qword_1EC317140, &qword_1C908BD40);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317148, &qword_1C908BD48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v19 = 1;
    v18 = a2;
    goto LABEL_6;
  }

  sub_1C90634FC();
  v18 = a2;
  (*(v7 + 32))(a2, v12, a1);
  v19 = 0;
LABEL_6:
  v20 = type metadata accessor for ToolDatabaseProtobufValue();
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
}

uint64_t sub_1C8E3E200(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5674694B6C6F6F74 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E3E29C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return OUTLINED_FUNCTION_2_3();
}

uint64_t sub_1C8E3E2C0(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1C8E3E27C();
}

uint64_t sub_1C8E3E2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1C8E3E200(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C8E3E320@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = OUTLINED_FUNCTION_2_3();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C8E3E358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8E3E3AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8E3E404@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v3 = a1[4];
  return sub_1C8E3DEBC(a1[2], a2);
}

uint64_t sub_1C8E3E414()
{
  swift_getWitnessTable();

  return sub_1C9062CAC();
}

uint64_t sub_1C8E3E478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE09B18](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C8E3E51C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C8E3E558@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v50 = a3;
  v51 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC317158, &unk_1C908BD60);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v46 - v10;
  v11 = type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(0);
  v12 = OUTLINED_FUNCTION_13_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = sub_1C906348C();
  v21 = OUTLINED_FUNCTION_11(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  (*(v23 + 104))(v27 - v26, *MEMORY[0x1E69E0760], v20);
  v49 = a2;
  v29 = a2[1];
  v30 = sub_1C90641FC();
  v46 = v16;
  v47 = v19;
  v31 = (*(v23 + 8))(v28, v20);
  v52 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v49;
  v32 = v50;
  *(&v46 - 4) = a1;
  *(&v46 - 3) = v33;
  *(&v46 - 2) = v32;
  swift_getAssociatedTypeWitness();
  sub_1C906423C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  swift_getWitnessTable();
  v34 = MEMORY[0x1E6969080];
  sub_1C8EE564C();
  v36 = v35;

  v37 = v46;
  v38 = v46 + *(v11 + 20);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v37 = v36;
  v39 = v37;
  v40 = v47;
  sub_1C8E3F988(v39, v47);
  sub_1C8E3F930();
  v41 = sub_1C9063A8C();
  v54 = v34;
  v52 = v41;
  v53 = v42;
  v43 = v48;
  sub_1C906276C();
  v44 = sub_1C906279C();
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
  {
    sub_1C8D16D78(v43, qword_1EC317158, &unk_1C908BD60);
    sub_1C906275C();
    return sub_1C8E3FA74(v40);
  }

  else
  {
    sub_1C8E3FA74(v40);
    return (*(*(v44 - 8) + 32))(v51, v43, v44);
  }
}

uint64_t sub_1C8E3E950@<X0>(uint64_t a1@<X2>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 8);
  swift_getAssociatedTypeWitness();
  result = sub_1C9063A8C();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_1C8E3E9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C906387C();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317138, &qword_1C908BD38);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  v17 = type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(0);
  v18 = OUTLINED_FUNCTION_13_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v23 = (v22 - v21);
  v24 = sub_1C906278C();
  v26 = v25;
  v28 = v27;
  sub_1C906277C();
  sub_1C8E3F90C(v24, v26, v28);
  if (!*(&v39 + 1))
  {
    sub_1C8D16D78(&v38, &qword_1EC317140, &qword_1C908BD40);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317148, &qword_1C908BD48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v29 = v36;
  v30 = v37;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C8CE9144(v36, v37);
  sub_1C906386C();
  sub_1C8E3F930();
  sub_1C9063A9C();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v32 = sub_1C8E3F988(v16, v23);
  v35[0] = v35;
  *&v38 = *v23;
  MEMORY[0x1EEE9AC00](v32);
  v35[-4] = a2;
  v35[-3] = a3;
  v35[-2] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317150, &unk_1C908BD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  sub_1C8E3FA10();
  sub_1C8EE564C();
  v34 = v33;
  sub_1C8CE7B78(v29, v30);

  sub_1C8E3FA74(v23);
  return v34;
}

uint64_t sub_1C8E3ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1C8CE9144(*a1, *(a1 + 8));
  result = sub_1C90634FC();
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_1C8E3EDD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5674694B6C6F6F74 && a2 == 0xED00007365756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C8E3EE74()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];
  type metadata accessor for ToolDatabaseProtobufValue.CodingKeys();
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_11(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_233();
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_5_30();
  sub_1C9064E1C();
  sub_1C9064B8C();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_198();
}

void sub_1C8E3EF84()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v34 = *(v2 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v36 = v10 - v9;
  type metadata accessor for ToolDatabaseProtobufValue.CodingKeys();
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  v37 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v37);
  v32 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  v33 = v3;
  v15 = type metadata accessor for ToolDatabaseProtobufValue();
  OUTLINED_FUNCTION_11(v15);
  v30 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C9064DEC();
  if (!v0)
  {
    v29 = v21;
    v24 = v32;
    v23 = v33;
    v25 = v34;
    v26 = v36;
    sub_1C9064A6C();
    (*(v24 + 8))(v1, v37);
    v27 = v29;
    (*(v25 + 32))(v29, v26, v23);
    (*(v30 + 32))(v31, v27, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_198();
}

void sub_1C8E3F21C()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  type metadata accessor for ToolDatabaseProtobufArray.CodingKeys();
  OUTLINED_FUNCTION_3_38();
  swift_getWitnessTable();
  v3 = OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_233();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_5_30();
  sub_1C9064E1C();
  sub_1C906423C();
  swift_getWitnessTable();
  sub_1C9064B8C();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_198();
}

void sub_1C8E3F374()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  type metadata accessor for ToolDatabaseProtobufArray.CodingKeys();
  OUTLINED_FUNCTION_3_38();
  swift_getWitnessTable();
  v4 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v4);
  v10 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_233();
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C9064DEC();
  if (!v0)
  {
    sub_1C906423C();
    swift_getWitnessTable();
    sub_1C9064A6C();
    (*(v10 + 8))(v1, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E3F534(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1C9064D7C();
  a4(v7, a2[2], a2[3], a2[4]);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E3F584(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1C8E3EE50();
}

uint64_t sub_1C8E3F594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1C8E3EDD0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C8E3F5FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8E3F650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8E3F6B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C8E3E9E0(a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E3F6EC()
{
  swift_getWitnessTable();

  return sub_1C9062CAC();
}

uint64_t sub_1C8E3F750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE09B18](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C8E3F7F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1C8E3F830(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  sub_1C8E3EF84();
}

void sub_1C8E3F874(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 - 8);
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  sub_1C8E3F374();
  if (!v3)
  {
    *a3 = v9;
  }
}

void sub_1C8E3F8B0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 16);
  v5 = *v3;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  sub_1C8E3F21C();
}

uint64_t sub_1C8E3F90C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1C8CE7B78(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

unint64_t sub_1C8E3F930()
{
  result = qword_1EDA66BC8[0];
  if (!qword_1EDA66BC8[0])
  {
    type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA66BC8);
  }

  return result;
}

uint64_t sub_1C8E3F988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8E3FA10()
{
  result = qword_1EDA667F8;
  if (!qword_1EDA667F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317150, &unk_1C908BD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA667F8);
  }

  return result;
}

uint64_t sub_1C8E3FA74(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8E3FAD0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[4];
  return sub_1C8E3E950(v2[3], a1, a2);
}

_BYTE *sub_1C8E3FAF4(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C8E3FC48()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  v3 = *(v0 + 24);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t ToolExecutionSession.execute(invocation:)()
{
  OUTLINED_FUNCTION_7();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = type metadata accessor for ToolExecutionResult(0);
  v1[12] = v6;
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E3FD34()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 80);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  v2 = *(v1 + 56);
  OUTLINED_FUNCTION_17_19();
  v14 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 112) = v6;
  *v6 = v7;
  v6[1] = sub_1C8E3FE54;
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);

  return v14(v8, v11, v0 + 16, v12, v9);
}

uint64_t sub_1C8E3FE54()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  v4 = *(v2 + 112);
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 120) = v0;

  sub_1C8D16D78(v3 + 16, &unk_1EC316490, &qword_1C9085158);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E3FF6C()
{
  OUTLINED_FUNCTION_7();
  sub_1C8D7AE3C(v0[13] + *(v0[12] + 20), v0[7], &unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_81_3();

  OUTLINED_FUNCTION_7_10();

  return v1();
}

uint64_t sub_1C8E3FFEC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 120);

  return v2();
}

void __swiftcall ToolExecutorEvent.ToolExecutionProgress.init(progress:localizedDescription:localizedAdditionalDescription:)(ToolKit::ToolExecutorEvent::ToolExecutionProgress *__return_ptr retstr, Swift::Float progress, Swift::String_optional localizedDescription, Swift::String_optional localizedAdditionalDescription)
{
  retstr->progress = progress;
  retstr->localizedDescription = localizedDescription;
  retstr->localizedAdditionalDescription = localizedAdditionalDescription;
}

void sub_1C8E40058()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [v4 undoToken];
  sub_1C906202C();

  v9 = [v5 actionString];
  v10 = sub_1C9063EEC();
  v12 = v11;

  v13 = type metadata accessor for ToolExecutionResult.UndoContext(0);
  v14 = (v7 + *(v13 + 20));
  *v14 = v10;
  v14[1] = v12;
  v15 = (v7 + *(v13 + 24));
  *v15 = v3;
  v15[1] = v1;
  OUTLINED_FUNCTION_421();
}

uint64_t ToolExecutionResult.init(sourceInvocation:output:undoContext:didRunOpensIntent:linkAttribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C8E4D9D0(a1, a6);
  v11 = type metadata accessor for ToolExecutionResult(0);
  sub_1C8E4E960(a2, a6 + v11[5], &unk_1EC3164C0, &qword_1C9072100);
  result = sub_1C8E4E960(a3, a6 + v11[6], &qword_1EC3164B8, &unk_1C9085198);
  *(a6 + v11[7]) = a4;
  *(a6 + v11[8]) = a5;
  return result;
}

uint64_t ToolExecutionResult.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000026, 0x80000001C90CB720);
  sub_1C906204C();
  OUTLINED_FUNCTION_25_15();
  sub_1C8E54468(v7, v8);
  v9 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v9);

  MEMORY[0x1CCA81A90](0x74757074756F202CLL, 0xE90000000000003DLL);
  v10 = type metadata accessor for ToolExecutionResult(0);
  sub_1C8D7AE3C(v0 + v10[5], v6, &unk_1EC3164C0, &qword_1C9072100);
  v11 = type metadata accessor for TypedValue.ID(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_1C8D16D78(v6, &unk_1EC3164C0, &qword_1C9072100);
  }

  else
  {
    TypedValue.ID.debugDescription.getter();
    OUTLINED_FUNCTION_24_19();
    sub_1C8E4DA34(v6, v12);
  }

  v13 = OUTLINED_FUNCTION_125();
  MEMORY[0x1CCA81A90](v13);

  MEMORY[0x1CCA81A90](0xD000000000000014, 0x80000001C90CB750);
  if (*(v0 + v10[7]))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + v10[7]))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1CCA81A90](v14, v15);

  MEMORY[0x1CCA81A90](0x626972747461202CLL, 0xEF203A6E6F697475);
  v17[1] = *(v0 + v10[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317260, &unk_1C908BFD0);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return v18;
}

uint64_t TypedValueResolutionOptions.init(coercionTarget:displayRepresentationConfiguration:temporaryFileDirectoryURL:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v7 = *v6;
  *v2 = 0xF000000000000007;
  v8 = type metadata accessor for TypedValueResolutionOptions(0);
  v9 = *(v8 + 24);
  sub_1C9061EBC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = *(v8 + 28);
  v15 = type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  sub_1C8D076D8(*v3);
  *v3 = v5;
  *(v3 + 8) = v7;
  sub_1C8D7CA88(v1, v3 + v9, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v3 + v14, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_421();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

unint64_t TransformableAction.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if ((v2 & 0x2000000000000000) != 0)
  {
    sub_1C8CE9144(v1, v2 & 0xDFFFFFFFFFFFFFFFLL);
    sub_1C906478C();

    v16 = 0xD000000000000025;
    MEMORY[0x1CCA7F9E0](v1, v2 & 0xDFFFFFFFFFFFFFFFLL);
    v12 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v12);

    MEMORY[0x1CCA81A90](62, 0xE100000000000000);
    v13 = OUTLINED_FUNCTION_145();
    sub_1C8E1B1D8(v13, v14);
  }

  else
  {
    v16 = 0;
    v5 = OUTLINED_FUNCTION_145();
    sub_1C8CE9144(v5, v6);

    sub_1C906478C();
    MEMORY[0x1CCA81A90](0xD000000000000021, 0x80000001C90CB7A0);
    v7 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA7F9E0](v7);
    v8 = sub_1C9064BDC();
    MEMORY[0x1CCA81A90](v8);

    MEMORY[0x1CCA81A90](0xD000000000000013, 0x80000001C90CB7D0);
    v9 = OUTLINED_FUNCTION_112();
    MEMORY[0x1CCA81A90](v9);

    MEMORY[0x1CCA81A90](15913, 0xE200000000000000);
    v10 = OUTLINED_FUNCTION_145();
    sub_1C8CE7B78(v10, v11);
  }

  return v16;
}

uint64_t sub_1C8E406E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_12_21();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_1_4(v12);
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_14_25(v13);

  return sub_1C8E4078C(v15, v16, v11, v10, v9, v17, v18, v19, a9);
}

uint64_t sub_1C8E4078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_12_21();
  v10[2] = v11;
  v12 = type metadata accessor for ToolExecutionResult(0);
  v10[3] = v12;
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  v10[4] = OUTLINED_FUNCTION_39();
  v15 = *(v9 + 56);
  OUTLINED_FUNCTION_17_19();
  v30 = v16 + *v16;
  v18 = *(v17 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v10[5] = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1C8E408B0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E409A8()
{
  OUTLINED_FUNCTION_7();
  sub_1C8D7AE3C(v0[4] + *(v0[3] + 20), v0[2], &unk_1EC3164C0, &qword_1C9072100);
  OUTLINED_FUNCTION_81_3();

  OUTLINED_FUNCTION_7_10();

  return v1();
}

uint64_t sub_1C8E40A28()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t ToolExecutorEvent.ToolExecutionProgress.localizedDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolExecutorEvent.ToolExecutionProgress.localizedAdditionalDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_94();
}

uint64_t static ToolExecutorEvent.ToolExecutionProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
    if (!v9 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_94();
      if (sub_1C9064C2C())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C8E40BA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C90CB7F0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ELL && 0x80000001C90CB810 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E40CC0(char a1)
{
  if (!a1)
  {
    return 0x73736572676F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD00000000000001ELL;
}

uint64_t sub_1C8E40D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E40BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E40D50(uint64_t a1)
{
  v2 = sub_1C8E4DAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E40D8C(uint64_t a1)
{
  v2 = sub_1C8E4DAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolExecutorEvent.ToolExecutionProgress.encode(to:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317268, &qword_1C908BFE8);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *v1;
  v15 = *(v1 + 2);
  v16 = *(v1 + 1);
  v12 = *(v1 + 4);
  v14 = *(v1 + 3);
  v13 = a1[4];
  OUTLINED_FUNCTION_217(a1, a1[3]);
  sub_1C8E4DAAC();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_205();
  sub_1C9064B5C();
  if (!v2)
  {
    OUTLINED_FUNCTION_205();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_205();
    sub_1C9064ADC();
  }

  (*(v7 + 8))(v3, v5);
  OUTLINED_FUNCTION_328();
}

void ToolExecutorEvent.ToolExecutionProgress.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317278, &qword_1C908BFF0);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E4DAAC();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    sub_1C9064A3C();
    v12 = v11;
    OUTLINED_FUNCTION_1_7();
    v13 = sub_1C90649AC();
    v15 = v14;
    OUTLINED_FUNCTION_1_7();
    v16 = sub_1C90649AC();
    v18 = v17;
    v19 = *(v7 + 8);
    v22 = v16;
    v20 = OUTLINED_FUNCTION_146_0();
    v21(v20);
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v22;
    *(a2 + 32) = v18;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_164_0();
}

uint64_t static ToolExecutorEvent.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = *(a2 + 40);
  v83 = *(a1 + 24);
  v82 = v4;
  switch(v6)
  {
    case 1:
      if (v12 == 1)
      {
        v89 = *a1;
        v90 = v2;
        v91 = v4;
        v92 = v5;
        v84 = v8;
        v85 = v7;
        v86 = v10;
        v87 = v9;
        v88 = v11;
        v49 = v11;
        v81 = v11;
        v50 = v5;
        v38 = static ToolExecutorEvent.ToolExecutionProgress.== infix(_:_:)(&v89, &v84);
        v51 = OUTLINED_FUNCTION_21_14();
        sub_1C8E4DB00(v51, v52, v53, v54, v49, 1);
        v55 = OUTLINED_FUNCTION_107();
        sub_1C8E4DB00(v55, v56, v82, v83, v50, 1);
        v57 = OUTLINED_FUNCTION_107();
        sub_1C8E1B758(v57, v58, v82, v83, v50, 1);
        v43 = OUTLINED_FUNCTION_21_14();
        v47 = v81;
        v48 = 1;
        goto LABEL_19;
      }

      goto LABEL_24;
    case 2:
      v22 = *(a1 + 8);
      v23 = *(a1 + 32);
      if (v12 == 2)
      {
        sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
        v24 = OUTLINED_FUNCTION_21_14();
        sub_1C8E4DB00(v24, v25, v26, v27, v11, 2);
        sub_1C8E4DB00(v3, v22, v82, v83, v23, 2);
        v28 = sub_1C90645BC();
        sub_1C8E1B758(v3, v22, v82, v83, v23, 2);
        v29 = OUTLINED_FUNCTION_21_14();
        sub_1C8E1B758(v29, v30, v31, v32, v11, 2);
        return v28 & 1;
      }

      v59 = v3;
      goto LABEL_24;
    case 3:
      v34 = v4 | v2 | v3;
      v35 = *(a1 + 32);
      if (v34 | v5 | *(a1 + 24))
      {
        if (v12 == 3 && v8 == 1 && (v10 | v7 | v9 | v11) == 0)
        {
          v38 = 1;
          OUTLINED_FUNCTION_94_4();
          sub_1C8E1B758(v39, v40, v41, v42, v35, 3);
          OUTLINED_FUNCTION_94_4();
          v47 = v11;
          v48 = 3;
LABEL_19:
          sub_1C8E1B758(v43, v44, v45, v46, v47, v48);
          return v38 & 1;
        }

        goto LABEL_24;
      }

      if (v12 != 3 || v10 | v7 | v8 | v9 | v11)
      {
LABEL_24:
        v60 = OUTLINED_FUNCTION_21_14();
        sub_1C8E4DB00(v60, v61, v62, v63, v11, v12);
        v64 = OUTLINED_FUNCTION_116_5();
        sub_1C8E1B758(v64, v65, v66, v67, v68, v6);
        v69 = OUTLINED_FUNCTION_21_14();
        sub_1C8E1B758(v69, v70, v71, v72, v11, v12);
LABEL_25:
        v38 = 0;
        return v38 & 1;
      }

      OUTLINED_FUNCTION_94_4();
      sub_1C8E1B758(v73, v74, v75, v76, v35, 3);
      OUTLINED_FUNCTION_94_4();
      sub_1C8E1B758(v77, v78, v79, v80, v11, 3);
LABEL_28:
      v38 = 1;
      return v38 & 1;
    default:
      if (*(a2 + 40))
      {
        goto LABEL_24;
      }

      v13 = OUTLINED_FUNCTION_116_5();
      sub_1C8E1B758(v13, v14, v15, v16, v17, 0);
      v18 = OUTLINED_FUNCTION_21_14();
      sub_1C8E1B758(v18, v19, v20, v21, v11, 0);
      if (*&v3 != *&v8)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
  }
}

uint64_t ToolExecutor.SessionOptions.init(locale:sessionID:)()
{
  OUTLINED_FUNCTION_83_3();
  v2 = sub_1C90620BC();
  OUTLINED_FUNCTION_13_1(v2);
  (*(v3 + 32))(v1, v0);
  v4 = type metadata accessor for ToolExecutor.SessionOptions(0);
  result = OUTLINED_FUNCTION_171_4(v4);
  *(v1 + v6) = 0;
  return result;
}

uint64_t ToolExecutor.SessionOptions.init(locale:sessionID:client:)()
{
  OUTLINED_FUNCTION_83_3();
  v3 = *v2;
  v4 = sub_1C90620BC();
  OUTLINED_FUNCTION_13_1(v4);
  (*(v5 + 32))(v1, v0);
  v6 = type metadata accessor for ToolExecutor.SessionOptions(0);
  result = OUTLINED_FUNCTION_171_4(v6);
  *(v1 + v8) = v3;
  return result;
}

uint64_t sub_1C8E4159C()
{
  v0 = sub_1C90620BC();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = type metadata accessor for ToolExecutor.SessionOptions(0);
  __swift_allocate_value_buffer(v9, qword_1EDA660F8);
  v10 = __swift_project_value_buffer(v9, qword_1EDA660F8);
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  result = (*(v3 + 32))(v10, v8, v0);
  v12 = (v10 + *(v9 + 20));
  *v12 = 0;
  v12[1] = 0;
  *(v10 + *(v9 + 24)) = 0;
  return result;
}

uint64_t static ToolExecutor.start()()
{
  OUTLINED_FUNCTION_7();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AA0, &unk_1C90AB5C0);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = OUTLINED_FUNCTION_39();
  v4 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E41714()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[2];
  sub_1C90620BC();
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *MEMORY[0x1E69E13D0];
  v7 = objc_allocWithZone(MEMORY[0x1E69E0C60]);
  v8 = sub_1C8CC2AE8(0xD00000000000001BLL, 0x80000001C90CB700, 0, 0, v1, v6);
  v0[3] = v8;
  v9 = objc_allocWithZone(type metadata accessor for SageWorkflowRunnerClientToolExecutionSession());
  v0[4] = OUTLINED_FUNCTION_149_3(v8);
  if (v9)
  {

    v10 = v0[2];

    OUTLINED_FUNCTION_127_3();

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[5] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_52(v13);

    return sub_1C8CC2404();
  }
}

uint64_t sub_1C8E4187C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E41974()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_63();
  v3 = *(v0 + 32);

  return v2(v3);
}

uint64_t sub_1C8E419DC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_1C8E41A44()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);
  v3 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

void static ToolExecutorError.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for ToolInvocation();
  v28 = OUTLINED_FUNCTION_9(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v33 = v32 - v31;
  v34 = type metadata accessor for ToolExecutorError(0);
  v35 = OUTLINED_FUNCTION_13_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &a9 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &a9 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317280, &qword_1C908C008);
  OUTLINED_FUNCTION_9(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_142();
  v48 = *(v47 + 56);
  sub_1C8CC35B0(v26, v20, type metadata accessor for ToolExecutorError);
  sub_1C8CC35B0(v24, v20 + v48, type metadata accessor for ToolExecutorError);
  OUTLINED_FUNCTION_145();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = OUTLINED_FUNCTION_60_8();
      sub_1C8CC35B0(v51, v39, v52);
      if (OUTLINED_FUNCTION_188_4() != 1)
      {
        goto LABEL_10;
      }

      v53 = *v39 == *(v20 + v48);
      goto LABEL_12;
    case 2u:
      if (OUTLINED_FUNCTION_188_4() != 2)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    case 3u:
      if (OUTLINED_FUNCTION_188_4() == 3)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    default:
      v49 = OUTLINED_FUNCTION_60_8();
      sub_1C8CC35B0(v49, v42, v50);
      if (OUTLINED_FUNCTION_188_4())
      {
        sub_1C8E4DA34(v42, type metadata accessor for ToolInvocation);
LABEL_10:
        sub_1C8D16D78(v20, &qword_1EC317280, &qword_1C908C008);
      }

      else
      {
        sub_1C8E4D9D0(v20 + v48, v33);
        static ToolInvocation.== infix(_:_:)(v42, v33);
        sub_1C8E4DA34(v33, type metadata accessor for ToolInvocation);
        sub_1C8E4DA34(v42, type metadata accessor for ToolInvocation);
LABEL_12:
        OUTLINED_FUNCTION_80_3();
      }

      OUTLINED_FUNCTION_163();
      return;
  }
}

void *ToolExecutionResult.linkAttribution.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolExecutionResult(0) + 32));
  v2 = v1;
  return v1;
}

uint64_t ToolExecutionResult.UndoContext.token.getter()
{
  OUTLINED_FUNCTION_386();
  v0 = sub_1C906204C();
  OUTLINED_FUNCTION_13_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_94();

  return v4(v3);
}

uint64_t ToolExecutionResult.UndoContext.actionDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolExecutionResult.UndoContext(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolExecutionResult.UndoContext.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolExecutionResult.UndoContext(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_94();
}

void ToolExecutionResult.UndoContext.init(token:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_83_3();
  v4 = sub_1C906204C();
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  (*(v7 + 16))(v3, v2, v4);
  v8 = type metadata accessor for ToolExecutionResult.UndoContext(0);
  v9 = (v3 + *(v8 + 24));
  *v9 = v1;
  v9[1] = v0;
  (*(v6 + 8))(v2, v4);
  v10 = (v3 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_421();
}

uint64_t static ToolExecutionResult.UndoContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0())
  {
    v4 = type metadata accessor for ToolExecutionResult.UndoContext(0);
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_1C9064C2C() & 1) != 0)
    {
      v10 = *(v4 + 24);
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_1C9064C2C() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C8E42094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C90CB830 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E421B0(char a1)
{
  if (!a1)
  {
    return 0x6E656B6F74;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0xD000000000000010;
}

uint64_t sub_1C8E42218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E42094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E42240(uint64_t a1)
{
  v2 = sub_1C8E4DBA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E4227C(uint64_t a1)
{
  v2 = sub_1C8E4DBA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolExecutionResult.UndoContext.encode(to:)()
{
  OUTLINED_FUNCTION_214_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317288, &qword_1C908C010);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_44_14(v0);
  sub_1C8E4DBA4();
  OUTLINED_FUNCTION_50_3();
  sub_1C906204C();
  OUTLINED_FUNCTION_25_15();
  sub_1C8E54468(v9, v10);
  OUTLINED_FUNCTION_31_13();
  sub_1C9064B8C();
  if (!v1)
  {
    v11 = type metadata accessor for ToolExecutionResult.UndoContext(0);
    v12 = (v2 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v15 = (v2 + *(v11 + 24));
    v16 = *v15;
    v17 = v15[1];
    OUTLINED_FUNCTION_177_4();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064ADC();
  }

  v18 = OUTLINED_FUNCTION_111_0();
  v19(v18);
  OUTLINED_FUNCTION_159_0();
}

void ToolExecutionResult.UndoContext.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v34 = v4;
  v5 = sub_1C906204C();
  v6 = OUTLINED_FUNCTION_11(v5);
  v36 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v37 = v11 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317298, &qword_1C908C018);
  OUTLINED_FUNCTION_11(v38);
  v35 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_110();
  v16 = type metadata accessor for ToolExecutionResult.UndoContext(0);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E4DBA4();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v33 = v16;
    OUTLINED_FUNCTION_25_15();
    sub_1C8E54468(v24, v25);
    sub_1C9064A6C();
    (*(v36 + 32))(v22, v37, v5);
    OUTLINED_FUNCTION_223_0();
    v26 = sub_1C9064A0C();
    v27 = (v22 + *(v16 + 20));
    *v27 = v26;
    v27[1] = v28;
    OUTLINED_FUNCTION_177_4();
    v29 = sub_1C90649AC();
    v31 = v30;
    (*(v35 + 8))(v1, v38);
    v32 = (v22 + *(v33 + 24));
    *v32 = v29;
    v32[1] = v31;
    sub_1C8CC35B0(v22, v34, type metadata accessor for ToolExecutionResult.UndoContext);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8E4DA34(v22, type metadata accessor for ToolExecutionResult.UndoContext);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E42808()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_61_8();
  return sub_1C8D7AE3C(v3, v4, v5, v6);
}

uint64_t TypedValueResolutionRequest.temporaryFileDirectoryURL.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = (v1 + *(type metadata accessor for TypedValueResolutionRequest(v2) + 28));
  if (v3[1] >> 60 == 15)
  {
    v4 = 1;
  }

  else
  {
    v5 = *v3;
    sub_1C8CB78AC(0, &qword_1EDA6B518, 0x1E696ACD0);
    sub_1C8CB78AC(0, &qword_1EC3172A0, 0x1E696AE98);
    v6 = OUTLINED_FUNCTION_112();
    sub_1C8CE9144(v6, v7);
    v8 = sub_1C906447C();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 url];

      sub_1C9061E3C();
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v11 = OUTLINED_FUNCTION_112();
    sub_1C8CE7BD0(v11, v12);
  }

  v13 = sub_1C9061EBC();

  return __swift_storeEnumTagSinglePayload(v0, v4, 1, v13);
}

uint64_t sub_1C8E42984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465746365707865 && a2 == 0xEC00000065707954;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000022 && 0x80000001C90CB850 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000024 && 0x80000001C90CB880 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F766E496C6F6F74 && a2 == 0xEE006E6F69746163)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

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

unint64_t sub_1C8E42AF4(char a1)
{
  result = 0x6465746365707865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0x6F766E496C6F6F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E42BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E42984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E42BC8(uint64_t a1)
{
  v2 = sub_1C8E4DC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E42C04(uint64_t a1)
{
  v2 = sub_1C8E4DC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C8E42C40(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v12[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v12];
  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1C9061F3C();
    v8 = v7;
  }

  else
  {
    v9 = v5;
    v10 = sub_1C9061D7C();

    swift_willThrow();
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v8;
  v11 = *MEMORY[0x1E69E9840];
}

void TypedValueResolutionRequest.encode(to:)()
{
  OUTLINED_FUNCTION_214_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172A8, &qword_1C908C020);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_72();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_44_14(v0);
  sub_1C8E4DC18();
  OUTLINED_FUNCTION_50_3();
  v18 = *v1;
  v8 = sub_1C8CA6D90();

  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_12_0();
  sub_1C9064B8C();

  if (!v8)
  {
    v19 = *(v1 + 8);
    OUTLINED_FUNCTION_275();
    sub_1C8E4DC6C();
    OUTLINED_FUNCTION_124_3();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    v9 = type metadata accessor for TypedValueResolutionRequest(0);
    v10 = (v1 + *(v9 + 28));
    v20 = *v10;
    v21 = v10[1];
    OUTLINED_FUNCTION_119_1();
    sub_1C8D04F90(v11, v12);
    sub_1C8D02AA8();
    OUTLINED_FUNCTION_124_3();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B0C();
    sub_1C8CE7BD0(v20, v21);
    v13 = *(v9 + 24);
    type metadata accessor for ToolInvocation();
    OUTLINED_FUNCTION_4_32();
    sub_1C8E54468(v14, v15);
    OUTLINED_FUNCTION_31_13();
    sub_1C9064B0C();
  }

  v16 = OUTLINED_FUNCTION_111_0();
  v17(v16);
  OUTLINED_FUNCTION_159_0();
}

void TypedValueResolutionRequest.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v24 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_142();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172B0, &qword_1C908C028);
  OUTLINED_FUNCTION_11(v25);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_110();
  v12 = type metadata accessor for TypedValueResolutionRequest(0);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E4DC18();
  sub_1C9064DEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1C8CAC450();
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_129_3();
    sub_1C9064A6C();
    *v18 = v26;
    OUTLINED_FUNCTION_275();
    sub_1C8E4DCC0();
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_129_3();
    sub_1C9064A6C();
    *(v18 + 8) = v26;
    OUTLINED_FUNCTION_119_1();
    sub_1C8D02AFC();
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_129_3();
    sub_1C90649EC();
    *(v18 + *(v12 + 28)) = v26;
    type metadata accessor for ToolInvocation();
    OUTLINED_FUNCTION_4_32();
    sub_1C8E54468(v20, v21);
    sub_1C90649EC();
    v22 = OUTLINED_FUNCTION_130_4();
    v23(v22);
    sub_1C8E4E960(v0, v18 + *(v12 + 24), &qword_1EC316440, &dword_1C908BFE0);
    sub_1C8CC35B0(v18, v24, type metadata accessor for TypedValueResolutionRequest);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8E4DA34(v18, type metadata accessor for TypedValueResolutionRequest);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

void sub_1C8E432C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_422();
  a17 = v18;
  a18 = v19;
  v20 = OUTLINED_FUNCTION_94();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_9(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for TypedValueResolutionOptions(0);
  __swift_allocate_value_buffer(v28, qword_1EC390C30);
  v29 = OUTLINED_FUNCTION_112();
  v31 = __swift_project_value_buffer(v29, v30);
  v32 = sub_1C9061EBC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  *v31 = 0xF000000000000007;
  v36 = *(v28 + 24);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v32);
  v40 = *(v28 + 28);
  v41 = type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v45 = *v31;
  *v31 = 0xF000000000000007;
  sub_1C8D076D8(v45);
  *(v31 + 8) = 2;
  sub_1C8D7CA88(v27, v31 + v36, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v31 + v40, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v41);
  OUTLINED_FUNCTION_421();
}

void TypedValueResolutionOptions.init(coercionTarget:displayRepresentationConfiguration:temporaryFileDirectoryURL:toolInvocation:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v9 = *v8;
  *v4 = 0xF000000000000007;
  v10 = type metadata accessor for TypedValueResolutionOptions(0);
  v11 = *(v10 + 24);
  sub_1C9061EBC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = *(v10 + 28);
  type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_1C8D076D8(*v5);
  *v5 = v7;
  *(v5 + 8) = v9;
  sub_1C8D7CA88(v3, v5 + v11, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D7CA88(v1, v5 + v16, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_421();
}

void TypedValueResolutionOptions.init(coercionTarget:displayRepresentationConfiguration:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = *v4;
  v12 = *v2;
  v13 = sub_1C9061EBC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  *v6 = 0xF000000000000007;
  v17 = type metadata accessor for TypedValueResolutionOptions(0);
  v18 = *(v17 + 24);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
  v22 = *(v17 + 28);
  v23 = type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  sub_1C8D076D8(*v6);
  *v6 = v11;
  *(v6 + 8) = v12;
  sub_1C8D7CA88(v0, v6 + v18, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v6 + v22, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8E43614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F696372656F63 && a2 == 0xEE00746567726154;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000022 && 0x80000001C90CB850 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x80000001C90CB8B0 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F766E496C6F6F74 && a2 == 0xEE006E6F69746163)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

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

unint64_t sub_1C8E43788(char a1)
{
  result = 0x6E6F696372656F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x6F766E496C6F6F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E43838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E43614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E43860(uint64_t a1)
{
  v2 = sub_1C8E4DD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E4389C(uint64_t a1)
{
  v2 = sub_1C8E4DD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValueResolutionOptions.encode(to:)()
{
  OUTLINED_FUNCTION_214_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172B8, &qword_1C908C030);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_44_14(v0);
  sub_1C8E4DD14();
  OUTLINED_FUNCTION_50_3();
  v19 = *v2;
  sub_1C8CD1784(*v2);
  sub_1C8CA6D90();
  OUTLINED_FUNCTION_12_0();
  sub_1C9064B0C();
  sub_1C8D076D8(v19);
  if (!v1)
  {
    v18 = *(v2 + 8);
    sub_1C8E4DC6C();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    v9 = type metadata accessor for TypedValueResolutionOptions(0);
    v10 = *(v9 + 24);
    sub_1C9061EBC();
    OUTLINED_FUNCTION_69_5();
    sub_1C8E54468(v11, v12);
    OUTLINED_FUNCTION_31_13();
    sub_1C9064B0C();
    v13 = *(v9 + 28);
    type metadata accessor for ToolInvocation();
    OUTLINED_FUNCTION_4_32();
    sub_1C8E54468(v14, v15);
    OUTLINED_FUNCTION_31_13();
    sub_1C9064B0C();
  }

  v16 = OUTLINED_FUNCTION_111_0();
  v17(v16);
  OUTLINED_FUNCTION_159_0();
}

void TypedValueResolutionOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v14 = v13;
  v53 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_9(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  v54 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_73();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172C8, &qword_1C908C038);
  v26 = OUTLINED_FUNCTION_11(v25);
  v55 = v27;
  v56 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15_0();
  v31 = type metadata accessor for TypedValueResolutionOptions(0);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  v36 = v35 - v34;
  *(v35 - v34) = 0xF000000000000007;
  v37 = *(v32 + 32);
  v38 = sub_1C9061EBC();
  v57 = v37;
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  v42 = *(v32 + 36);
  v43 = type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  v47 = v14[4];
  OUTLINED_FUNCTION_217(v14, v14[3]);
  sub_1C8E4DD14();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1C8D076D8(*v36);
    sub_1C8D16D78(v36 + v57, &qword_1EC312700, &qword_1C9066AC0);
    sub_1C8D16D78(v36 + v42, &qword_1EC316440, &dword_1C908BFE0);
  }

  else
  {
    sub_1C8CAC450();
    sub_1C90649EC();
    sub_1C8D076D8(*v36);
    *v36 = a10;
    sub_1C8E4DCC0();
    sub_1C9064A6C();
    *(v36 + 8) = v58;
    OUTLINED_FUNCTION_69_5();
    sub_1C8E54468(v48, v49);
    sub_1C90649EC();
    sub_1C8D7CA88(v11, v36 + v57, &qword_1EC312700, &qword_1C9066AC0);
    OUTLINED_FUNCTION_4_32();
    sub_1C8E54468(v50, v51);
    sub_1C90649EC();
    (*(v55 + 8))(v12, v56);
    sub_1C8D7CA88(v54, v36 + v42, &qword_1EC316440, &dword_1C908BFE0);
    sub_1C8CC35B0(v36, v53, type metadata accessor for TypedValueResolutionOptions);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_64_5();
    sub_1C8E4DA34(v36, v52);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E43F5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000022 && 0x80000001C90CB850 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E43FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E43F5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E44028(uint64_t a1)
{
  v2 = sub_1C8E4DD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E44064(uint64_t a1)
{
  v2 = sub_1C8E4DD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValueEnumerationOptions.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172D0, &qword_1C908C040);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v10 = *v0;
  v11 = v3[3];
  v12 = v3[4];
  OUTLINED_FUNCTION_44_14(v3);
  sub_1C8E4DD68();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064E1C();
  sub_1C8E4DC6C();
  OUTLINED_FUNCTION_165_5();
  sub_1C9064B8C();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void TypedValueEnumerationOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_170_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172E0, &qword_1C908C048);
  OUTLINED_FUNCTION_11(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E4DD68();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (!v14)
  {
    sub_1C8E4DCC0();
    sub_1C9064A6C();
    v22 = *(v18 + 8);
    v23 = OUTLINED_FUNCTION_125();
    v24(v23);
    *v15 = a13;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_198();
}

uint64_t TransformableAction.backing.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C8E1B188(v2, v3);
}

uint64_t sub_1C8E44318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697463416E6CLL && a2 == 0xEC00000061746144;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E443EC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E6F697463416E6CLL;
  }
}

uint64_t sub_1C8E44430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974694B69726973 && a2 == 0xED0000746E65746ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E44508(char a1)
{
  if (a1)
  {
    return 0x4974694B69726973;
  }

  else
  {
    return 0x6E65746E49707061;
  }
}

uint64_t sub_1C8E44550(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6144746E65746E69 && a2 == 0xEA00000000006174)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E445F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E44318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E4461C(uint64_t a1)
{
  v2 = sub_1C8E4DE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E44658(uint64_t a1)
{
  v2 = sub_1C8E4DE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E4469C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E44430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E446C4(uint64_t a1)
{
  v2 = sub_1C8E4DDBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E44700(uint64_t a1)
{
  v2 = sub_1C8E4DDBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E44740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E44550(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E4476C(uint64_t a1)
{
  v2 = sub_1C8E4DE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E447A8(uint64_t a1)
{
  v2 = sub_1C8E4DE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransformableAction.Type.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172E8, &qword_1C908C050);
  v7 = OUTLINED_FUNCTION_11(v6);
  v28 = v8;
  v29 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_86();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172F0, &qword_1C908C058);
  v13 = OUTLINED_FUNCTION_11(v12);
  v30 = v14;
  v31 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_233();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3172F8, &qword_1C908C060);
  OUTLINED_FUNCTION_11(v33);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_38();
  v21 = v0[1];
  v32 = *v0;
  v26 = v0[3];
  v27 = v0[2];
  v22 = v5[4];
  OUTLINED_FUNCTION_217(v5, v5[3]);
  sub_1C8E4DDBC();
  sub_1C9064E1C();
  if ((v21 & 0x2000000000000000) != 0)
  {
    sub_1C8E4DE10();
    OUTLINED_FUNCTION_380();
    sub_1C9064ACC();
    sub_1C8D02AA8();
    sub_1C9064B8C();
    (*(v28 + 8))(v3, v29);
    v23 = OUTLINED_FUNCTION_163_4();
    v25 = v33;
  }

  else
  {
    sub_1C8E4DE64();
    OUTLINED_FUNCTION_380();
    sub_1C9064ACC();
    sub_1C8D02AA8();
    sub_1C9064B8C();
    if (!v1)
    {
      OUTLINED_FUNCTION_164_3();
      sub_1C9064B2C();
    }

    (*(v30 + 8))(v2, v31);
    v23 = OUTLINED_FUNCTION_163_4();
    v25 = v33;
  }

  v24(v23, v25);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

void TransformableAction.Type.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v55 = v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317318, &qword_1C908C068);
  OUTLINED_FUNCTION_11(v53);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317320, &qword_1C908C070);
  OUTLINED_FUNCTION_11(v8);
  v54 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_142();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317328, &unk_1C908C078);
  OUTLINED_FUNCTION_11(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_73();
  v19 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E4DDBC();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (v0)
  {
    goto LABEL_9;
  }

  v20 = sub_1C9064A9C();
  sub_1C8CB8914(v20, 0);
  v24 = v13;
  if (v22 == v23 >> 1)
  {
LABEL_8:
    v31 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v33 = &type metadata for TransformableAction.Type;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v35 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v31);
    (*(v36 + 104))(v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = OUTLINED_FUNCTION_84_2();
    v38(v37, v24);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_198();
    return;
  }

  v52 = v13;
  if (v22 < (v23 >> 1))
  {
    v25 = *(v21 + v22);
    sub_1C8CB891C(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 == v29 >> 1)
    {
      if (v25)
      {
        LOBYTE(v57) = 1;
        sub_1C8E4DE10();
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_165_5();
        sub_1C906498C();
        v30 = v55;
        sub_1C8D02AFC();
        sub_1C9064A6C();
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_157_2();
        v41(v40);
        v42 = *(v15 + 8);
        v43 = OUTLINED_FUNCTION_125();
        v44(v43);
        v45 = 0;
        v46 = 0;
        v47 = v57;
        v48 = v58 | 0x2000000000000000;
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_1C8E4DE64();
        OUTLINED_FUNCTION_165_5();
        sub_1C906498C();
        sub_1C8D02AFC();
        OUTLINED_FUNCTION_314_1();
        v39 = v8;
        sub_1C9064A6C();
        v47 = v57;
        v48 = v58;
        OUTLINED_FUNCTION_275();
        v49 = (v15 + 8);
        v56 = sub_1C9064A0C();
        v51 = v50;
        swift_unknownObjectRelease();
        (*(v54 + 8))(0, v39);
        (*v49)(v1, v52);
        v46 = v51;
        v45 = v56;
        v30 = v55;
      }

      *v30 = v47;
      v30[1] = v48;
      v30[2] = v45;
      v30[3] = v46;
      __swift_destroy_boxed_opaque_existential_1(v3);
      goto LABEL_10;
    }

    v24 = v52;
    goto LABEL_8;
  }

  __break(1u);
}

void TransformableAction.init(action:bundleIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v8 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v15];
  v9 = v15[0];
  if (v8)
  {
    v10 = sub_1C9061F3C();
    v12 = v11;

    *a4 = v10;
    a4[1] = v12;
    a4[2] = a2;
    a4[3] = a3;
  }

  else
  {
    v13 = v9;

    sub_1C9061D7C();

    swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void TransformableAction.init(intent:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = INIntentWithTypedIntent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317330, &qword_1C908C088);
  v6 = sub_1C906463C();

  v14[0] = 0;
  v7 = [v4 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v14];
  swift_unknownObjectRelease();
  v8 = v14[0];
  if (v7)
  {
    v9 = sub_1C9061F3C();
    v11 = v10;

    *a2 = v9;
    a2[1] = v11 | 0x2000000000000000;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    v12 = v8;
    sub_1C9061D7C();

    swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C8E4532C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E696B636162 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E453C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E4532C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E453EC(uint64_t a1)
{
  v2 = sub_1C8E4E1BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E45428(uint64_t a1)
{
  v2 = sub_1C8E4E1BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransformableAction.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317338, &qword_1C908C090);
  OUTLINED_FUNCTION_11(v17);
  v18 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_38();
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v11 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  v12 = OUTLINED_FUNCTION_124();
  sub_1C8E1B188(v12, v13);
  sub_1C8E4E1BC();
  sub_1C9064E1C();
  sub_1C8E4E210();
  sub_1C9064B8C();
  sub_1C8E1B1D8(v7, v8);
  v14 = *(v18 + 8);
  v15 = OUTLINED_FUNCTION_112();
  v16(v15);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void TransformableAction.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_170_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317350, &qword_1C908C098);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E4E1BC();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (!v1)
  {
    sub_1C8E4E264();
    sub_1C9064A6C();
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_146_0();
    v11(v10);
    *v2 = v12;
    v2[1] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_198();
}

uint64_t ToolExecutionSession.coerce(value:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_12_21();
  v11[5] = v14;
  v11[6] = v10;
  v11[3] = v15;
  v11[4] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  v11[7] = OUTLINED_FUNCTION_39();
  v20 = type metadata accessor for TypedValueResolutionOptions(0);
  v11[8] = v20;
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  v11[9] = OUTLINED_FUNCTION_39();
  v23 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  v26 = OUTLINED_FUNCTION_39();
  v27 = *v13;
  v28 = *v12;
  v11[10] = v26;
  v11[11] = v28;
  v11[2] = v27;
  v29 = *(v9 + 80);
  OUTLINED_FUNCTION_17_19();
  v44 = v30 + *v30;
  v32 = *(v31 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v11[12] = v33;
  *v33 = v34;
  v33[1] = sub_1C8E45898;
  OUTLINED_FUNCTION_61_8();
  OUTLINED_FUNCTION_151_4();

  return v39(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44);
}

uint64_t sub_1C8E45898()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E45990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182_4();
  OUTLINED_FUNCTION_78_0();
  v13 = v12[11];
  v14 = v12[8];
  v15 = v12[9];
  v16 = v12[7];
  v56 = v12[5];
  v17 = sub_1C9061EBC();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  *v15 = 0xF000000000000007;
  v21 = *(v14 + 24);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
  v25 = *(v14 + 28);
  v26 = type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = *v15;

  sub_1C8D076D8(v30);
  *v15 = v13;
  *(v15 + 8) = 1;
  sub_1C8D7CA88(v16, v15 + v21, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v15 + v25, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v26);
  v34 = *(v56 + 64);
  OUTLINED_FUNCTION_18_17();
  v55 = v35 + *v35;
  v37 = *(v36 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v12[14] = v38;
  *v38 = v39;
  v38[1] = sub_1C8E45B68;
  v41 = v12[9];
  v40 = v12[10];
  v42 = v12[5];
  v43 = v12[6];
  v44 = v12[3];
  v45 = v12[4];
  OUTLINED_FUNCTION_170();

  return v51(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56, a11, a12);
}

uint64_t sub_1C8E45B68()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v9 + 120) = v0;

  OUTLINED_FUNCTION_64_5();
  sub_1C8E4DA34(v6, v10);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C8E45C80()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  OUTLINED_FUNCTION_24_19();
  sub_1C8E4DA34(v2, v4);

  OUTLINED_FUNCTION_7_10();

  return v5();
}

uint64_t sub_1C8E45D04()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t sub_1C8E45D7C()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0[10];
  OUTLINED_FUNCTION_24_19();
  sub_1C8E4DA34(v2, v3);
  v4 = v0[15];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];

  OUTLINED_FUNCTION_6_0();

  return v8();
}

void *ToolExecutionSession.runnerClient.getter()
{
  type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
  OUTLINED_FUNCTION_4();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v2 = v1;
  return v1;
}

Swift::Void __swiftcall ToolExecutionSession.userHasResignedFocus()()
{
  type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
  OUTLINED_FUNCTION_4();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);

    [v1 resignDialogHandlingIfNeededWithPersistentMode_];
  }
}

uint64_t sub_1C8E45F5C()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  return OUTLINED_FUNCTION_1_52();
}

uint64_t sub_1C8E45F6C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolListItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ParameterConfirmationRequest.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1C9064C2C() & 1) != 0))
  {

    static TypedValue.== infix(_:_:)();
    v5 = v6;
  }

  return v5 & 1;
}

uint64_t sub_1C8E4603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E24C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E46064(uint64_t a1)
{
  v2 = sub_1C8E4E2B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E460A0(uint64_t a1)
{
  v2 = sub_1C8E4E2B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterConfirmationRequest.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317360, &qword_1C908C0B0);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = *v0;
  v9 = v0[1];
  v13 = v0[2];
  v10 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E4E2B8();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_205();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    sub_1C8D381AC();

    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v11 = OUTLINED_FUNCTION_30();
  v12(v11, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void ParameterConfirmationRequest.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317370, &qword_1C908C0B8);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E4E2B8();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v9 = sub_1C9064A0C();
    v11 = v10;
    OUTLINED_FUNCTION_223_0();
    sub_1C8D39E40();
    sub_1C9064A6C();
    v12 = OUTLINED_FUNCTION_10_2();
    v13(v12);
    *v4 = v9;
    v4[1] = v11;
    v4[2] = v14;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E46428(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766F72707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465696E6564 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E4653C(char a1)
{
  if (!a1)
  {
    return 0x6465766F72707061;
  }

  if (a1 == 1)
  {
    return 0x6465696E6564;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_1C8E46594(uint64_t a1)
{
  v2 = sub_1C8E4E408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E465D0(uint64_t a1)
{
  v2 = sub_1C8E4E408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E4660C(uint64_t a1)
{
  v2 = sub_1C8E4E360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E46648(uint64_t a1)
{
  v2 = sub_1C8E4E360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E4668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E46428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E466B4(uint64_t a1)
{
  v2 = sub_1C8E4E30C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E466F0(uint64_t a1)
{
  v2 = sub_1C8E4E30C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E4672C(uint64_t a1)
{
  v2 = sub_1C8E4E3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E46768(uint64_t a1)
{
  v2 = sub_1C8E4E3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppProtectionResponse.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317378, &qword_1C908C0C0);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317380, &qword_1C908C0C8);
  OUTLINED_FUNCTION_11(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317388, &qword_1C908C0D0);
  OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317390, &qword_1C908C0D8);
  OUTLINED_FUNCTION_11(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_0();
  v21 = *v0;
  v22 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8E4E30C();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  if (v21)
  {
    if (v21 == 1)
    {
      OUTLINED_FUNCTION_223_0();
      sub_1C8E4E3B4();
    }

    else
    {
      OUTLINED_FUNCTION_119_1();
      sub_1C8E4E360();
    }

    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  else
  {
    sub_1C8E4E408();
    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  v23 = OUTLINED_FUNCTION_30();
  v24(v23);
  v25 = *(v17 + 8);
  v26 = OUTLINED_FUNCTION_146_0();
  v27(v26);
  OUTLINED_FUNCTION_198();
}

void AppProtectionResponse.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v53 = v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3173B8, &qword_1C908C0E0);
  OUTLINED_FUNCTION_11(v56);
  v54 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3173C0, &qword_1C908C0E8);
  v11 = OUTLINED_FUNCTION_11(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3173C8, &qword_1C908C0F0);
  OUTLINED_FUNCTION_11(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_86();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3173D0, &qword_1C908C0F8);
  OUTLINED_FUNCTION_11(v20);
  v55 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_73();
  v25 = v4[4];
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8E4E30C();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v0)
  {
    v26 = OUTLINED_FUNCTION_139_2();
    sub_1C8CB8914(v26, 0);
    if (v28 != v27 >> 1)
    {
      OUTLINED_FUNCTION_111_1();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v33 = OUTLINED_FUNCTION_161_4(v29, v30);
      sub_1C8CB891C(v33);
      OUTLINED_FUNCTION_185_4();
      if (!v25)
      {
        if (v4)
        {
          if (v4 == 1)
          {
            OUTLINED_FUNCTION_223_0();
            sub_1C8E4E3B4();
            OUTLINED_FUNCTION_74();
            v34 = v53;
            OUTLINED_FUNCTION_160_5();
            swift_unknownObjectRelease();
            (*(v51 + 8))(v50, v52);
            v44 = OUTLINED_FUNCTION_87_5();
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            sub_1C8E4E360();
            OUTLINED_FUNCTION_107_4();
            v34 = v53;
            OUTLINED_FUNCTION_160_5();
            swift_unknownObjectRelease();
            (*(v54 + 8))(v2, v1);
            v44 = OUTLINED_FUNCTION_86_4();
          }

          v45(v44);
        }

        else
        {
          sub_1C8E4E408();
          OUTLINED_FUNCTION_74();
          swift_unknownObjectRelease();
          v46 = OUTLINED_FUNCTION_30();
          v47(v46);
          v48 = OUTLINED_FUNCTION_41();
          v49(v48);
          v34 = v53;
        }

        *v34 = v4;
        __swift_destroy_boxed_opaque_existential_1(0);
        goto LABEL_12;
      }
    }

    v35 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v37 = &type metadata for AppProtectionResponse;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v39 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v35);
    (*(v40 + 104))(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v55 + 8);
    v42 = OUTLINED_FUNCTION_336();
    v43(v42);
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t FollowUpActionExecution.Request.linkInvocation.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_96_3();
  v4 = (v1 + v3);
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  *a1 = *v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
}

__n128 FollowUpActionExecution.Request.linkInvocation.setter(__int128 *a1)
{
  v10 = a1[1];
  v11 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  OUTLINED_FUNCTION_96_3();
  v5 = v1 + v4;
  v6 = *(v1 + v4 + 8);
  v7 = *(v1 + v4 + 24);
  v8 = *(v5 + 40);

  result = v10;
  *v5 = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  return result;
}

void *sub_1C8E47088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3179B0, &qword_1C908F1B0);
  result = sub_1C906493C();
  v10 = result;
  v11 = 0;
  v12 = 1 << *(a6 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a6 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = (result + 8);
  if (v14)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v20 = v17 | (v11 << 6);
      v21 = (*(a6 + 48) + 16 * v20);
      v22 = *(*(a6 + 56) + 8 * v20);
      v23 = *v21;
      result = v21[1];
      *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
      v24 = (v10[6] + 16 * v20);
      *v24 = v23;
      v24[1] = result;
      *(v10[7] + 8 * v20) = v22;
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v10[2] = v27;

      result = v22;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        *a7 = a1;
        a7[1] = a2;
        a7[2] = a3;
        a7[3] = a4;
        a7[4] = a5;
        a7[5] = v10;
        return result;
      }

      v19 = *(a6 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FollowUpActionExecution.Request.LinkInvocation.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

void static FollowUpActionExecution.Request.LinkInvocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v10 = *v0 == *v1 && v0[1] == v1[1];
  if (v10 || (sub_1C9064C2C()) && (v2 == v6 ? (v11 = v3 == v7) : (v11 = 0), (v11 || (sub_1C9064C2C()) && v4 == v9))
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_421();

    sub_1C8F55E28(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_421();
  }
}

uint64_t sub_1C8E47358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C20 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F6974706F5FLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001C90CB8D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

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

unint64_t sub_1C8E474C0(char a1)
{
  result = 0x736E6F6974706F5FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C8E47548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E47358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E47570(uint64_t a1)
{
  v2 = sub_1C8E4E47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E475AC(uint64_t a1)
{
  v2 = sub_1C8E4E47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FollowUpActionExecution.Request.LinkInvocation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3173D8, &qword_1C908C100);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v12 = *v0;
  v11 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v15 = v0[5];
  v16 = v0[4];
  v13 = v4[3];
  v14 = v4[4];
  OUTLINED_FUNCTION_44_14(v4);
  sub_1C8E4E47C();
  OUTLINED_FUNCTION_50_3();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_177_4();
    OUTLINED_FUNCTION_205();
    sub_1C9064B7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3173E8, &qword_1C908C108);
    sub_1C8E4E4D0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void FollowUpActionExecution.Request.LinkInvocation.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317408, &qword_1C908C118);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_233();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_44_14(v2);
  sub_1C8E4E47C();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_164_3();
    v11 = sub_1C9064A0C();
    v19 = v12;
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_164_3();
    v17 = sub_1C9064A0C();
    v18 = v13;
    OUTLINED_FUNCTION_177_4();
    v16 = sub_1C9064A5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3173E8, &qword_1C908C108);
    sub_1C8E4E588();
    OUTLINED_FUNCTION_164_3();
    sub_1C9064A6C();
    v14 = OUTLINED_FUNCTION_92();
    v15(v14);
    *v4 = v11;
    v4[1] = v19;
    v4[2] = v17;
    v4[3] = v18;
    v4[4] = v16;
    v4[5] = v20;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t FollowUpActionExecution.Request.bundleIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for ToolInvocation() + 20);
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);

  return OUTLINED_FUNCTION_94();
}

uint64_t FollowUpActionExecution.Request.linkAction.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_96_3();
  v4 = (v1 + v3);
  v5 = sub_1C8E4E064(*(v1 + v3 + 40));
  v6 = v5[2];
  if (v6)
  {
    v36 = v4;
    v37 = a1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1C906482C();
    result = sub_1C8CBFAC8(v5);
    v8 = result;
    v10 = v9;
    v11 = 0;
    v12 = v5 + 8;
    v39 = v9;
    v40 = v5;
    v38 = v5 + 9;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      v13 = v8 >> 6;
      if ((v12[v8 >> 6] & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v5 + 9) != v10)
      {
        goto LABEL_23;
      }

      v41 = v11;
      v14 = (v5[6] + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v5[7] + 8 * v8);
      objc_allocWithZone(MEMORY[0x1E69AC948]);

      v18 = v17;
      sub_1C8E4DEB8(v15, v16, v17);
      sub_1C90647FC();
      v19 = *(v42 + 16);
      sub_1C906483C();
      v5 = v40;
      sub_1C906484C();
      result = sub_1C906480C();
      v20 = 1 << *(v40 + 32);
      if (v8 >= v20)
      {
        goto LABEL_24;
      }

      v21 = v12[v13];
      if ((v21 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v40 + 9) != v10)
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v8 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = &v38[v13];
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            v28 = OUTLINED_FUNCTION_336();
            result = sub_1C8CAF698(v28, v29, v30);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_17;
          }
        }

        v31 = OUTLINED_FUNCTION_336();
        result = sub_1C8CAF698(v31, v32, v33);
      }

LABEL_17:
      v11 = v41 + 1;
      v8 = v20;
      v10 = v39;
      if (v41 + 1 == v6)
      {

        v4 = v36;
        a1 = v37;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

LABEL_20:
    v34 = *v4;
    v35 = v4[1];
    objc_allocWithZone(MEMORY[0x1E69AC640]);

    result = sub_1C8E4DF1C(v34, v35, 0, 0, 0, 0, 0);
    *a1 = result;
  }

  return result;
}

__n128 FollowUpActionExecution.Request.init(toolInvocation:linkInvocation:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2[1];
  v10 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  sub_1C8E4D9D0(a1, a3);
  OUTLINED_FUNCTION_96_3();
  v7 = a3 + v6;
  result = v9;
  *v7 = v10;
  *(v7 + 16) = v9;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  return result;
}

void static FollowUpActionExecution.Request.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  if (static ToolInvocation.== infix(_:_:)(v2, v0))
  {
    OUTLINED_FUNCTION_96_3();
    v5 = (v3 + v4);
    v6 = *(v3 + v4);
    v7 = *(v3 + v4 + 8);
    v9 = v5[2];
    v8 = v5[3];
    v11 = v5[4];
    v10 = v5[5];
    v12 = (v1 + v4);
    v14 = v12[2];
    v13 = v12[3];
    v16 = v12[4];
    v15 = v12[5];
    v17 = v6 == *v12 && v7 == v12[1];
    if (v17 || (v18 = v12[1], (sub_1C9064C2C() & 1) != 0))
    {
      v19 = v9 == v14 && v8 == v13;
      if (v19 || (sub_1C9064C2C()) && v11 == v16)
      {

        v20 = OUTLINED_FUNCTION_125();
        sub_1C8F55E28(v20, v21);
      }
    }
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8E47EC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F766E496C6F6F74 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F766E496B6E696CLL && a2 == 0xEE006E6F69746163)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E47F9C(char a1)
{
  if (a1)
  {
    return 0x6F766E496B6E696CLL;
  }

  else
  {
    return 0x6F766E496C6F6F74;
  }
}

uint64_t sub_1C8E47FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E47EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E48008(uint64_t a1)
{
  v2 = sub_1C8E4E640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E48044(uint64_t a1)
{
  v2 = sub_1C8E4E640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FollowUpActionExecution.Request.encode(to:)()
{
  OUTLINED_FUNCTION_214_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317420, &qword_1C908C120);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_44_14(v0);
  sub_1C8E4E640();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_4_32();
  sub_1C8E54468(v9, v10);
  OUTLINED_FUNCTION_31_13();
  sub_1C9064B8C();
  if (!v1)
  {
    v11 = (v2 + *(type metadata accessor for FollowUpActionExecution.Request(0) + 20));
    v14 = *v11;
    v15 = v11[1];
    v16 = v11[2];
    v17 = v11[3];
    v18 = v11[4];
    v19 = v11[5];
    sub_1C8E4E694();

    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
  }

  v12 = OUTLINED_FUNCTION_111_0();
  v13(v12);
  OUTLINED_FUNCTION_159_0();
}

void FollowUpActionExecution.Request.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v28 = v4;
  v5 = type metadata accessor for ToolInvocation();
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v31 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317438, &qword_1C908C128);
  v12 = OUTLINED_FUNCTION_11(v11);
  v29 = v13;
  v30 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_233();
  v17 = type metadata accessor for FollowUpActionExecution.Request(0);
  v18 = OUTLINED_FUNCTION_13_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  v24 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E4E640();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v32) = 0;
    OUTLINED_FUNCTION_4_32();
    sub_1C8E54468(v25, v26);
    sub_1C9064A6C();
    sub_1C8E4D9D0(v31, v23);
    OUTLINED_FUNCTION_275();
    sub_1C8E4E6E8();
    sub_1C9064A6C();
    (*(v29 + 8))(v1, v30);
    v27 = v23 + *(v17 + 20);
    *v27 = v32;
    *(v27 + 16) = v33;
    *(v27 + 32) = v34;
    *(v27 + 40) = v35;
    sub_1C8CC35B0(v23, v28, type metadata accessor for FollowUpActionExecution.Request);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8E4DA34(v23, type metadata accessor for FollowUpActionExecution.Request);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E48538(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001C90CB8F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E485D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E48538(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E48604(uint64_t a1)
{
  v2 = sub_1C8E4E73C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E48640(uint64_t a1)
{
  v2 = sub_1C8E4E73C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FollowUpActionExecution.Response.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317448, &qword_1C908C130);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_73();
  v9 = *v0;
  v10 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8E4E73C();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_165_5();
  sub_1C9064B3C();
  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_125();
  v13(v12);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void FollowUpActionExecution.Response.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_170_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317458, &qword_1C908C138);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E4E73C();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (!v1)
  {
    v9 = sub_1C9064A1C();
    v10 = *(v5 + 8);
    v11 = OUTLINED_FUNCTION_146_0();
    v12(v11);
    *v2 = v9 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E488B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465696E6564 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8E489D0(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x6465696E6564;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_1C8E48A24(uint64_t a1)
{
  v2 = sub_1C8E4E7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E48A60(uint64_t a1)
{
  v2 = sub_1C8E4E7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E48AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E488B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E48ACC(uint64_t a1)
{
  v2 = sub_1C8E4E790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E48B08(uint64_t a1)
{
  v2 = sub_1C8E4E790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E48B44(uint64_t a1)
{
  v2 = sub_1C8E4E88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E48B80(uint64_t a1)
{
  v2 = sub_1C8E4E88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E48BBC(uint64_t a1)
{
  v2 = sub_1C8E4E838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E48BF8(uint64_t a1)
{
  v2 = sub_1C8E4E838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConfirmationResponse.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317460, &qword_1C908C140);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317468, &qword_1C908C148);
  OUTLINED_FUNCTION_11(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317470, &qword_1C908C150);
  OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317478, &qword_1C908C158);
  OUTLINED_FUNCTION_11(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_0();
  v21 = *v0;
  v22 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8E4E790();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  if (v21)
  {
    if (v21 == 1)
    {
      OUTLINED_FUNCTION_223_0();
      sub_1C8E4E838();
    }

    else
    {
      OUTLINED_FUNCTION_119_1();
      sub_1C8E4E7E4();
    }

    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  else
  {
    sub_1C8E4E88C();
    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  v23 = OUTLINED_FUNCTION_30();
  v24(v23);
  v25 = *(v17 + 8);
  v26 = OUTLINED_FUNCTION_146_0();
  v27(v26);
  OUTLINED_FUNCTION_198();
}

uint64_t _s7ToolKit0A13ExecutorErrorO010PredefinedD0O9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_189_4();
  return sub_1C9064DBC();
}

void ConfirmationResponse.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v53 = v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174A0, &qword_1C908C160);
  OUTLINED_FUNCTION_11(v56);
  v54 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174A8, &qword_1C908C168);
  v11 = OUTLINED_FUNCTION_11(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174B0, &qword_1C908C170);
  OUTLINED_FUNCTION_11(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_86();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174B8, &qword_1C908C178);
  OUTLINED_FUNCTION_11(v20);
  v55 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_73();
  v25 = v4[4];
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8E4E790();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v0)
  {
    v26 = OUTLINED_FUNCTION_139_2();
    sub_1C8CB8914(v26, 0);
    if (v28 != v27 >> 1)
    {
      OUTLINED_FUNCTION_111_1();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v33 = OUTLINED_FUNCTION_161_4(v29, v30);
      sub_1C8CB891C(v33);
      OUTLINED_FUNCTION_185_4();
      if (!v25)
      {
        if (v4)
        {
          if (v4 == 1)
          {
            OUTLINED_FUNCTION_223_0();
            sub_1C8E4E838();
            OUTLINED_FUNCTION_74();
            v34 = v53;
            OUTLINED_FUNCTION_160_5();
            swift_unknownObjectRelease();
            (*(v51 + 8))(v50, v52);
            v44 = OUTLINED_FUNCTION_87_5();
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            sub_1C8E4E7E4();
            OUTLINED_FUNCTION_107_4();
            v34 = v53;
            OUTLINED_FUNCTION_160_5();
            swift_unknownObjectRelease();
            (*(v54 + 8))(v2, v1);
            v44 = OUTLINED_FUNCTION_86_4();
          }

          v45(v44);
        }

        else
        {
          sub_1C8E4E88C();
          OUTLINED_FUNCTION_74();
          swift_unknownObjectRelease();
          v46 = OUTLINED_FUNCTION_30();
          v47(v46);
          v48 = OUTLINED_FUNCTION_41();
          v49(v48);
          v34 = v53;
        }

        *v34 = v4;
        __swift_destroy_boxed_opaque_existential_1(0);
        goto LABEL_12;
      }
    }

    v35 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v37 = &type metadata for ConfirmationResponse;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v39 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v35);
    (*(v40 + 104))(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v55 + 8);
    v42 = OUTLINED_FUNCTION_336();
    v43(v42);
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E49404()
{
  v1 = *v0;
  sub_1C9064D7C();
  OUTLINED_FUNCTION_189_4();
  return sub_1C9064DBC();
}

void static CancellableToolDialogResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_16_3();
  v34 = v7;
  v35 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v33 = v12 - v11;
  v13 = type metadata accessor for CancellableToolDialogResponse();
  OUTLINED_FUNCTION_11(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_175_3();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_11(TupleTypeMetadata2);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_73();
  v26 = *(v25 + 48);
  v27 = *(v15 + 16);
  v27(v0, v5, v13);
  v27(v0 + v26, v35, v13);
  OUTLINED_FUNCTION_191(v0);
  if (v28)
  {
    OUTLINED_FUNCTION_191(v0 + v26);
    if (!v28)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v27(v1, v0, v13);
  OUTLINED_FUNCTION_191(v0 + v26);
  if (!v28)
  {
    (*(v34 + 32))(v33, v0 + v26, v3);
    OUTLINED_FUNCTION_124();
    sub_1C9063EAC();
    v29 = *(v34 + 8);
    v29(v33, v3);
    v29(v1, v3);
LABEL_9:
    v21 = v15;
    goto LABEL_10;
  }

  (*(v34 + 8))(v1, v3);
LABEL_10:
  v30 = *(v21 + 8);
  v31 = OUTLINED_FUNCTION_336();
  v32(v31);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8E49708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E497C8(char a1)
{
  if (a1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1C8E497F8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_1C8D08760();
}

uint64_t sub_1C8E49850(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8E498A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

BOOL sub_1C8E498F8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1C8CE5318(*a1, *a2);
}

uint64_t sub_1C8E49910(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1C8CF3B5C(*v1);
}

uint64_t sub_1C8E49924(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1C8CA7B20(a1, *v2);
}

uint64_t sub_1C8E49938(uint64_t a1, void *a2)
{
  sub_1C9064D7C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1C8CA7B20(v9, *v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E49984(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1C8E497C8(*v1);
}

uint64_t sub_1C8E49998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1C8E49708(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C8E499CC(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_1C8CE568C();
}

uint64_t sub_1C8E499F8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1C8CF3B54();
  *a2 = result;
  return result;
}

uint64_t sub_1C8E49A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8E49A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C8E49AD4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v6 = a3[4];
  v5 = a3[5];
  return OUTLINED_FUNCTION_2_3();
}

uint64_t sub_1C8E49AE4(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_1C8D0C7B0();
}

uint64_t sub_1C8E49AF4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return sub_1C8CE53D0();
}

uint64_t sub_1C8E49B04(uint64_t a1, void *a2)
{
  sub_1C9064D7C();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  sub_1C8CE53D0();
  return sub_1C9064DBC();
}

uint64_t sub_1C8E49B4C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_1C8CA49E0();
}

uint64_t sub_1C8E49B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1C8E49BE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5]);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C8E49C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C8E49C78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void CancellableToolDialogResponse.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v59 = v0;
  v2 = v1;
  v4 = v3;
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[2];
  OUTLINED_FUNCTION_132_2();
  type metadata accessor for CancellableToolDialogResponse.CancelCodingKeys();
  OUTLINED_FUNCTION_68_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v9 = sub_1C9064BBC();
  v10 = OUTLINED_FUNCTION_11(v9);
  v54 = v11;
  v55 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v51 = v15;
  OUTLINED_FUNCTION_132_2();
  type metadata accessor for CancellableToolDialogResponse.ValueCodingKeys();
  OUTLINED_FUNCTION_66_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v16 = sub_1C9064BBC();
  v17 = OUTLINED_FUNCTION_11(v16);
  v52 = v18;
  v53 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  v49 = v22;
  v56 = v8;
  OUTLINED_FUNCTION_16_3();
  v50 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v48 = v28 - v27;
  OUTLINED_FUNCTION_16_3();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_132_2();
  type metadata accessor for CancellableToolDialogResponse.CodingKeys();
  OUTLINED_FUNCTION_65_7();
  swift_getWitnessTable();
  v37 = sub_1C9064BBC();
  v38 = OUTLINED_FUNCTION_11(v37);
  v57 = v39;
  v58 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_38();
  v44 = v4[3];
  v43 = v4[4];
  OUTLINED_FUNCTION_44_14(v4);
  sub_1C9064E1C();
  (*(v30 + 16))(v36, v59, v2);
  if (__swift_getEnumTagSinglePayload(v36, 1, v56) == 1)
  {
    OUTLINED_FUNCTION_380();
    sub_1C9064ACC();
    (*(v54 + 8))(v51, v55);
    v45 = *(v57 + 8);
    v46 = OUTLINED_FUNCTION_112();
    v47(v46);
  }

  else
  {
    (*(v50 + 32))(v48, v36, v56);
    sub_1C9064ACC();
    sub_1C9064B8C();
    (*(v52 + 8))(v49, v53);
    (*(v50 + 8))(v48, v56);
    (*(v57 + 8))(v6, v58);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void CancellableToolDialogResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v111 = v30;
  *&v120 = v26;
  *(&v120 + 1) = v24;
  *&v121 = v31;
  *(&v121 + 1) = v32;
  v33 = type metadata accessor for CancellableToolDialogResponse.CancelCodingKeys();
  OUTLINED_FUNCTION_68_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v109 = v34;
  v110 = v33;
  v103 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v103);
  v102 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v108 = v39;
  OUTLINED_FUNCTION_126_2();
  v40 = type metadata accessor for CancellableToolDialogResponse.ValueCodingKeys();
  OUTLINED_FUNCTION_66_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_397();
  v106 = v40;
  v105 = v41;
  v101 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v101);
  v100 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v107 = v46;
  OUTLINED_FUNCTION_126_2();
  type metadata accessor for CancellableToolDialogResponse.CodingKeys();
  OUTLINED_FUNCTION_65_7();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_175_3();
  v112 = sub_1C9064ABC();
  OUTLINED_FUNCTION_11(v112);
  v115 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_110();
  v113 = v25;
  v114 = v27;
  OUTLINED_FUNCTION_126_2();
  v51 = type metadata accessor for CancellableToolDialogResponse();
  v52 = OUTLINED_FUNCTION_11(v51);
  v104 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v97 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v97 - v59;
  v62 = v29[3];
  v61 = v29[4];
  OUTLINED_FUNCTION_44_14(v29);
  v116 = v21;
  sub_1C9064DEC();
  v63 = v29;
  if (!v20)
  {
    v98 = v57;
    v99 = v60;
    WitnessTable = v51;
    v64 = v114;
    v65 = v112;
    v66 = v116;
    *&v118 = sub_1C9064A9C();
    OUTLINED_FUNCTION_175_3();
    sub_1C906423C();
    swift_getWitnessTable();
    *&v120 = sub_1C90646AC();
    *(&v120 + 1) = v67;
    *&v121 = v68;
    *(&v121 + 1) = v69;
    OUTLINED_FUNCTION_175_3();
    sub_1C906469C();
    swift_getWitnessTable();
    sub_1C90643CC();
    v70 = v118;
    if (v118 == 2 || (v97 = v120, v118 = v120, v119 = v121, (sub_1C90643DC() & 1) == 0))
    {
      v72 = sub_1C90647DC();
      OUTLINED_FUNCTION_6_3();
      v74 = v73;
      v75 = v66;
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
      *v74 = WitnessTable;
      sub_1C906499C();
      OUTLINED_FUNCTION_411();
      v77 = *MEMORY[0x1E69E6AF8];
      OUTLINED_FUNCTION_10_0(v72);
      (*(v78 + 104))(v74);
      swift_willThrow();
      (*(v115 + 8))(v75, v65);
      swift_unknownObjectRelease();
    }

    else if (v70)
    {
      LOBYTE(v118) = 1;
      OUTLINED_FUNCTION_380();
      sub_1C906498C();
      v71 = v111;
      v81 = OUTLINED_FUNCTION_45(&a15);
      v82(v81, v103);
      v83 = OUTLINED_FUNCTION_163_4();
      v84(v83, v65);
      OUTLINED_FUNCTION_125_5();
      swift_unknownObjectRelease();
      v85 = v99;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v64);
      (*(v104 + 32))(v71, v85, WitnessTable);
    }

    else
    {
      LOBYTE(v118) = 0;
      sub_1C906498C();
      v79 = v111;
      v80 = v115;
      v89 = v64;
      v90 = v101;
      sub_1C9064A6C();
      v91 = OUTLINED_FUNCTION_45(&a13);
      v92(v91, v90);
      (*(v80 + 8))(v116, v65);
      OUTLINED_FUNCTION_125_5();
      swift_unknownObjectRelease();
      __swift_storeEnumTagSinglePayload(v98, 0, 1, v89);
      v93 = *(v104 + 32);
      v94 = v99;
      v95 = OUTLINED_FUNCTION_124();
      v96 = WitnessTable;
      v93(v95);
      (v93)(v79, v94, v96);
    }

    v63 = v29;
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
  OUTLINED_FUNCTION_198();
}

void sub_1C8E4A7B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  static CancellableToolDialogResponse.== infix(_:_:)();
}

uint64_t ActionConfirmationRequest.affirmativeString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t ActionConfirmationRequest.negativeString.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_94();
}

uint64_t ActionConfirmationRequest.view.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = type metadata accessor for ActionConfirmationRequest(v2);
  return sub_1C8D7AE3C(v1 + *(v3 + 28), v0, &qword_1EC3174C0, &qword_1C908C180);
}

id ActionConfirmationRequest.systemStyle.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = *(v1 + *(type metadata accessor for ActionConfirmationRequest(v2) + 32));
  *v0 = v3;

  return v3;
}

uint64_t ActionConfirmationRequest.init(title:affirmativeString:negativeString:view:systemStyle:showPrompt:destructive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, char a3@<W7>, void *a4@<X8>, char a5)
{
  v8 = OUTLINED_FUNCTION_154_3(a1);
  v10 = *v9;
  OUTLINED_FUNCTION_82_3(v8, v11);
  a4[6] = v12;
  a4[7] = v13;
  a4[8] = v14;
  a4[9] = v15;
  v16 = type metadata accessor for ActionConfirmationRequest(0);
  result = sub_1C8E4E960(a2, a4 + v16[7], &qword_1EC3174C0, &qword_1C908C180);
  *(a4 + v16[8]) = v10;
  *(a4 + v16[9]) = a3;
  *(a4 + v16[10]) = a5;
  return result;
}

uint64_t ActionConfirmationRequest.init(title:affirmativeString:negativeString:view:systemStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_154_3(a1);
  v7 = *v6;
  v8 = v5[1];
  *a3 = *v5;
  *(a3 + 16) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  *(a3 + 64) = v13;
  *(a3 + 72) = v14;
  v15 = type metadata accessor for ActionConfirmationRequest(0);
  result = sub_1C8E4E960(a2, a3 + v15[7], &qword_1EC3174C0, &qword_1C908C180);
  *(a3 + v15[8]) = v7;
  *(a3 + v15[9]) = 0;
  *(a3 + v15[10]) = 0;
  return result;
}

uint64_t ActionConfirmationRequest.init(title:affirmativeString:negativeString:view:systemStyle:showPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, char a3@<W7>, void *a4@<X8>)
{
  v7 = OUTLINED_FUNCTION_154_3(a1);
  v9 = *v8;
  OUTLINED_FUNCTION_82_3(v7, v10);
  a4[6] = v11;
  a4[7] = v12;
  a4[8] = v13;
  a4[9] = v14;
  v15 = type metadata accessor for ActionConfirmationRequest(0);
  result = sub_1C8E4E960(a2, a4 + v15[7], &qword_1EC3174C0, &qword_1C908C180);
  *(a4 + v15[8]) = v9;
  *(a4 + v15[9]) = a3;
  *(a4 + v15[10]) = 0;
  return result;
}

uint64_t sub_1C8E4AAB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  v5 = v2;
}

uint64_t sub_1C8E4AB38()
{
  v0 = OUTLINED_FUNCTION_32_6();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_61_8();
  return sub_1C8D7AE3C(v3, v4, v5, v6);
}

uint64_t ChoiceRequest.options.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChoiceRequest(0) + 24));
}

uint64_t ChoiceRequest.init(title:view:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = OUTLINED_FUNCTION_154_3(a1);
  OUTLINED_FUNCTION_82_3(v7, v8);
  v9 = type metadata accessor for ChoiceRequest(0);
  result = sub_1C8E4E960(a2, a4 + *(v9 + 20), &qword_1EC3174C0, &qword_1C908C180);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_1C8E4AC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v29 = swift_task_alloc();
  *(v21 + 16) = v29;
  *v29 = v21;
  v29[1] = sub_1C8E1BB44;

  return ToolDialogHandler.chooseValue(prompt:message:type:parameterKey:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t ToolDialogHandler.chooseValue(prompt:message:type:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v23 = v22[1];
  *(v21 + 16) = *v22;
  *(v21 + 72) = v24;
  OUTLINED_FUNCTION_117_2(v24, v22);
  v26 = *v25;
  OUTLINED_FUNCTION_33_13(v27, v28);
  *(v21 + 64) = v29;
  v30 = *(a21 + 112);
  OUTLINED_FUNCTION_18_17();
  v46 = v31 + *v31;
  v33 = *(v32 + 4);
  v34 = swift_task_alloc();
  *(v21 + 80) = v34;
  *v34 = v21;
  OUTLINED_FUNCTION_52(v34);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_101();

  return v43(v35, v36, v37, v38, v39, v40, v41, v42, v46, a10, a11, a12);
}

uint64_t sub_1C8E4AE94()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8E4AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_task_alloc();
  *(v12 + 16) = v21;
  *v21 = v12;
  v21[1] = sub_1C8E1BB44;

  return ToolDialogHandler.chooseFromList(prompt:items:parameterKey:)(a1, a2, a3, a4, a5, a6, a7, v20, a9, a10, a11, a12);
}

uint64_t ToolDialogHandler.chooseFromList(prompt:items:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_122_5();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_32_11();
  v14 = v13[1];
  *(v12 + 16) = *v13;
  *(v12 + 64) = v15;
  OUTLINED_FUNCTION_117_2(v15, v13);
  OUTLINED_FUNCTION_33_13(v16, v17);
  v19 = *(v18 + 120);
  OUTLINED_FUNCTION_18_17();
  v34 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  *(v12 + 72) = v23;
  *v23 = v12;
  OUTLINED_FUNCTION_9_23(v23);
  OUTLINED_FUNCTION_121_3();

  return v30(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v34, a12);
}

uint64_t sub_1C8E4B17C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;

  v7 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E4B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_task_alloc();
  *(v12 + 16) = v21;
  *v21 = v12;
  v21[1] = sub_1C8E1BB44;

  return ToolDialogHandler.chooseMultipleFromList(prompt:items:parameterKey:)(a1, a2, a3, a4, a5, a6, a7, v20, a9, a10, a11, a12);
}

uint64_t ToolDialogHandler.chooseMultipleFromList(prompt:items:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_122_5();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_32_11();
  v14 = v13[1];
  *(v12 + 16) = *v13;
  *(v12 + 64) = v15;
  OUTLINED_FUNCTION_117_2(v15, v13);
  OUTLINED_FUNCTION_33_13(v16, v17);
  v19 = *(v18 + 128);
  OUTLINED_FUNCTION_18_17();
  v34 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  *(v12 + 72) = v23;
  *v23 = v12;
  OUTLINED_FUNCTION_9_23(v23);
  OUTLINED_FUNCTION_121_3();

  return v30(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v34, a12);
}

uint64_t sub_1C8E4B464()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8E4B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C8E1BB44;

  return ToolDialogHandler.showActionConfirmation(request:)(a1, a2, a3, a4);
}

uint64_t ToolDialogHandler.showActionConfirmation(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return OUTLINED_FUNCTION_199();
}

void sub_1C8E4B638()
{
  OUTLINED_FUNCTION_176_3();
  v23 = *(v0 + 88);
  v1 = *(v0 + 72);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 8);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v5;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  v6 = *(v1 + 56);
  v21 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(type metadata accessor for ActionConfirmationRequest(0) + 28);
  v10 = *(v23 + 136);

  v11 = v2;
  v20 = v10 + *v10;
  v12 = v10[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 104) = v13;
  *v13 = v14;
  v13[1] = sub_1C8E4B7E0;
  v15 = *(v0 + 96);
  v16 = *(v0 + 80);
  v17 = *(v0 + 64);
  v22 = *(v0 + 88);
  OUTLINED_FUNCTION_101();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1C8E4B7E0()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1C8E4B920(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8E1685C;

  return ToolDialogHandler.showChoice(request:)(a1);
}

uint64_t sub_1C8E4B9CC()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 1;
  return OUTLINED_FUNCTION_1_52();
}

uint64_t sub_1C8E4B9E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8E1BB44;

  return ToolDialogHandler.showResult(title:view:)(a1);
}

uint64_t sub_1C8E4BA8C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  sub_1C9061EBC();
  v2 = OUTLINED_FUNCTION_227_0();
  __swift_storeEnumTagSinglePayload(v2, 1, 2, v3);
  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_1C8E4BAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v32 = swift_task_alloc();
  *(v24 + 16) = v32;
  *v32 = v24;
  v32[1] = sub_1C8E1BB44;

  return ToolDialogHandler.showParameterConfirmation(title:parameterConfirmationRequest:affirmativeString:negativeString:view:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t ToolDialogHandler.showParameterConfirmation(title:parameterConfirmationRequest:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  OUTLINED_FUNCTION_22_23();
  OUTLINED_FUNCTION_117_2(v26, v27);
  v29 = v28[1];
  *(v25 + 16) = *v28;
  v31 = *v30;
  v32 = *(v30 + 2);
  OUTLINED_FUNCTION_33_13(v33, v29);
  *(v25 + 64) = v34;
  *(v25 + 80) = v36;
  *(v25 + 88) = v35;
  v37 = *(a24 + 160);
  OUTLINED_FUNCTION_17_19();
  v53 = v38 + *v38;
  v40 = *(v39 + 4);
  v41 = swift_task_alloc();
  *(v25 + 96) = v41;
  *v41 = v25;
  OUTLINED_FUNCTION_102_4(v41);
  OUTLINED_FUNCTION_101();

  return v50(v42, v43, v44, v45, v46, v47, v48, v49, a9, v53, v24, a12, a13, a14);
}

uint64_t sub_1C8E4BD4C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 57) = v5;

  v6 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8E4BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v31 = swift_task_alloc();
  *(v23 + 16) = v31;
  *v31 = v23;
  v31[1] = sub_1C8E1BB44;

  return ToolDialogHandler.requestContinueInApp(title:affirmativeString:negativeString:view:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t ToolDialogHandler.requestContinueInApp(title:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v48 = v24;
  OUTLINED_FUNCTION_22_23();
  v26 = v25[1];
  *(v23 + 16) = *v25;
  OUTLINED_FUNCTION_117_2(v27, v25);
  OUTLINED_FUNCTION_33_13(v28, v29);
  v30 = *(a23 + 136);
  OUTLINED_FUNCTION_17_19();
  v47 = v31 + *v31;
  v33 = *(v32 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v23 + 64) = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_102_4(v34);
  OUTLINED_FUNCTION_112_3();
  OUTLINED_FUNCTION_101();

  return v44(v36, v37, v38, v39, v40, v41, v42, v43, a9, v47, v48, a12, a13, a14);
}

uint64_t sub_1C8E4C088()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return ToolDialogHandler.requestProtectedAppApproval(bundleIdentifier:)();
}

uint64_t ToolDialogHandler.requestProtectedAppApproval(bundleIdentifier:)()
{
  OUTLINED_FUNCTION_7();
  v0[2] = v1;
  v2 = sub_1C9063D3C();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64);
  v0[5] = OUTLINED_FUNCTION_39();
  v5 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8E4C1CC()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[5];
  v2 = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  v3 = sub_1C9063D1C();
  v4 = sub_1C906444C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C8C9B000, v3, v4, "Ignoring protected app request due to missing implementation. Cancelling request.", v5, 2u);
    MEMORY[0x1CCA833A0](v5, -1, -1);
  }

  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_145();
  v12(v11);
  *v9 = 2;

  OUTLINED_FUNCTION_6_0();

  return v13();
}

uint64_t sub_1C8E4C2DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8E1BB44;

  return ToolDialogHandler.requestFollowUpActionExecution(action:)(a1);
}

uint64_t sub_1C8E4C39C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1C8E4C488;

  return ToolDialogHandler.chooseValue(prompt:message:type:parameterKey:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1C8E4C488()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_377();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  OUTLINED_FUNCTION_63();

  return v7(v2);
}

uint64_t ToolDialogHandler.chooseValue(prompt:message:type:parameterKey:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  *(v9 + 136) = *a1;
  *(v9 + 120) = a8;
  *(v9 + 128) = v8;
  *(v9 + 104) = a6;
  *(v9 + 112) = a7;
  *(v9 + 88) = a3;
  *(v9 + 96) = a5;
  *(v9 + 80) = a2;
  *(v9 + 152) = v10;
  OUTLINED_FUNCTION_154_3(a1);
  *(v9 + 57) = v11;
  v13 = *v12;
  *(v9 + 168) = v14;
  *(v9 + 176) = v13;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E4C5BC()
{
  OUTLINED_FUNCTION_176_3();
  v32 = *(v0 + 176);
  TypeInstance.typeIdentifiers.getter();
  v2 = v1;
  v3 = sub_1C8D3F274(v1);
  v5 = v4;
  v7 = v6;
  result = sub_1C8D39D78(v2);
  if (v7 & 1) != 0 || (v10)
  {
    goto LABEL_12;
  }

  if (v5 != v9)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v3 != result)
  {
    v13 = *(v0 + 57);
    v14 = *(v0 + 168);
    v31 = *(v0 + 120);
    v28 = *(v0 + 152);
    v29 = *(v0 + 136);
    v15 = OUTLINED_FUNCTION_145();
    sub_1C8D3F264(v17, v15, v16, 0, v2);

    *(v0 + 184) = v35;
    *(v0 + 32) = v28;
    *(v0 + 16) = v29;
    *(v0 + 48) = v14;
    *(v0 + 72) = v35;
    *(v0 + 56) = v13;
    v18 = *(v31 + 104);
    v30 = v18 + *v18;
    v19 = v18[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v0 + 192) = v20;
    *v20 = v21;
    v20[1] = sub_1C8E4C7E0;
    v22 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    v27 = *(v0 + 80);
    v34 = *(v0 + 120);

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_63();
  v12 = MEMORY[0x1E69E7CC0];

  return v11(v12);
}

uint64_t sub_1C8E4C7E0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8E4C8C4()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 184);
  v2 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312B80, &qword_1C90696C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C906A950;
  *(v3 + 32) = v2;

  OUTLINED_FUNCTION_63();

  return v4(v3);
}

uint64_t sub_1C8E4C964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v29 = swift_task_alloc();
  *(v21 + 16) = v29;
  *v29 = v21;
  v29[1] = sub_1C8E1BB44;

  return ToolDialogHandler.showActionConfirmation(title:affirmativeString:negativeString:view:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t ToolDialogHandler.showActionConfirmation(title:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  OUTLINED_FUNCTION_22_23();
  v23 = v22[1];
  *(v21 + 16) = *v22;
  *(v21 + 64) = v24;
  OUTLINED_FUNCTION_117_2(v24, v22);
  OUTLINED_FUNCTION_33_13(v25, v26);
  v27 = *(a21 + 144);
  OUTLINED_FUNCTION_18_17();
  v43 = v28 + *v28;
  v30 = *(v29 + 4);
  v31 = swift_task_alloc();
  *(v21 + 72) = v31;
  *v31 = v21;
  v31[1] = sub_1C8E4CB9C;
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_101();

  return v40(v32, v33, v34, v35, v36, v37, v38, v39, v43, a10, a11, a12);
}

uint64_t sub_1C8E4CB9C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 57) = v5;

  v6 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C8E4CC9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E4C488;

  ToolDialogHandler.showActionConfirmation(title:affirmativeString:negativeString:view:)();
}

void ToolDialogHandler.showActionConfirmation(title:affirmativeString:negativeString:view:)()
{
  OUTLINED_FUNCTION_176_3();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  OUTLINED_FUNCTION_154_3(v1);
  OUTLINED_FUNCTION_33_13(v3, v4);
  v6 = *(v5 + 152);
  OUTLINED_FUNCTION_18_17();
  v13 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_1C8E4CEDC;
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_101();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1C8E4CEDC()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_377();
  v4 = *(v3 + 64);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  OUTLINED_FUNCTION_63();

  return v7(v2);
}

uint64_t sub_1C8E4CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v33 = swift_task_alloc();
  *(v25 + 16) = v33;
  *v33 = v25;
  v33[1] = sub_1C8E54514;

  return ToolDialogHandler.showParameterConfirmation(title:parameterConfirmationRequest:affirmativeString:negativeString:view:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t ToolDialogHandler.showParameterConfirmation(title:parameterConfirmationRequest:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_166();
  v52 = v27;
  v29 = v28[1];
  *(v26 + 16) = *v28;
  OUTLINED_FUNCTION_154_3(v28);
  v32 = *v30;
  v31 = v30[1];
  OUTLINED_FUNCTION_33_13(v33, v34);
  v35 = *(a25 + 152);
  OUTLINED_FUNCTION_18_17();
  v51 = v36 + *v36;
  v38 = *(v37 + 4);
  v39 = swift_task_alloc();
  *(v26 + 64) = v39;
  *v39 = v26;
  v39[1] = sub_1C8E54504;
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_128();

  return v48(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, v51, v52, v25, a14, a15, a16, a17, a18);
}

uint64_t ToolDialogPrompt.rawStringValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

void *ToolDialogPrompt.dialog.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id ConfirmationView.ControlMetadata.identity.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t static ConfirmationView.ControlMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
  OUTLINED_FUNCTION_94();
  return sub_1C90645BC() & (v3 == v5);
}

uint64_t sub_1C8E4D300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E4D3C8(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1C8E4D400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E4D300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E4D428(uint64_t a1)
{
  v2 = sub_1C8E4E9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E4D464(uint64_t a1)
{
  v2 = sub_1C8E4E9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConfirmationView.ControlMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C8, &qword_1C908C200);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *v0;
  v17 = *(v0 + 8);
  v12 = v4[3];
  v13 = v4[4];
  OUTLINED_FUNCTION_44_14(v4);
  sub_1C8E4E9CC();
  v14 = v11;
  sub_1C9064E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174D8, &qword_1C908C208);
  sub_1C8E4EA20(&qword_1EC3174E0, &qword_1EC3174D8, &qword_1C908C208);
  OUTLINED_FUNCTION_173_4();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();

  if (!v1)
  {
    type metadata accessor for CHSControlType(0);
    OUTLINED_FUNCTION_67_7();
    sub_1C8E54468(v15, v16);
    OUTLINED_FUNCTION_173_4();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void ConfirmationView.ControlMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_170_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174F0, &qword_1C908C210);
  OUTLINED_FUNCTION_11(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E4E9CC();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174D8, &qword_1C908C208);
    sub_1C8E4EA20(&qword_1EC3174F8, &qword_1EC3174D8, &qword_1C908C208);
    sub_1C9064A6C();
    type metadata accessor for CHSControlType(0);
    OUTLINED_FUNCTION_67_7();
    sub_1C8E54468(v17, v18);
    sub_1C9064A6C();
    v19 = OUTLINED_FUNCTION_10_2();
    v20(v19);
    *v12 = a10;
    v12[1] = a10;
    v21 = a10;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E4D9D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolInvocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E4DA34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8E4DAAC()
{
  result = qword_1EC317270;
  if (!qword_1EC317270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317270);
  }

  return result;
}

id sub_1C8E4DB00(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {

    return result;
  }

  else if (a6 == 1)
  {
  }

  return result;
}

unint64_t sub_1C8E4DBA4()
{
  result = qword_1EC317290;
  if (!qword_1EC317290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317290);
  }

  return result;
}

unint64_t sub_1C8E4DC18()
{
  result = qword_1EDA62F40;
  if (!qword_1EDA62F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F40);
  }

  return result;
}

unint64_t sub_1C8E4DC6C()
{
  result = qword_1EDA605D8;
  if (!qword_1EDA605D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605D8);
  }

  return result;
}

unint64_t sub_1C8E4DCC0()
{
  result = qword_1EDA605D0;
  if (!qword_1EDA605D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605D0);
  }

  return result;
}

unint64_t sub_1C8E4DD14()
{
  result = qword_1EC3172C0;
  if (!qword_1EC3172C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3172C0);
  }

  return result;
}

unint64_t sub_1C8E4DD68()
{
  result = qword_1EC3172D8;
  if (!qword_1EC3172D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3172D8);
  }

  return result;
}

unint64_t sub_1C8E4DDBC()
{
  result = qword_1EC317300;
  if (!qword_1EC317300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317300);
  }

  return result;
}

unint64_t sub_1C8E4DE10()
{
  result = qword_1EC317308;
  if (!qword_1EC317308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317308);
  }

  return result;
}

unint64_t sub_1C8E4DE64()
{
  result = qword_1EC317310;
  if (!qword_1EC317310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317310);
  }

  return result;
}

id sub_1C8E4DEB8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C9063EBC();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_1C8E4DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v8 = v7;
  v13 = sub_1C9063EBC();

  if (a4)
  {
    v14 = sub_1C9063EBC();
  }

  else
  {
    v14 = 0;
  }

  sub_1C8CB78AC(0, &qword_1EC3179C0, 0x1E69ACA48);
  v15 = sub_1C906418C();

  sub_1C8CB78AC(0, &qword_1EC3179C8, 0x1E69AC948);
  v16 = sub_1C906418C();

  v17 = [v8 initWithIdentifier:v13 mangledTypeName:v14 openAppWhenRun:a5 & 1 outputFlags:a6 outputType:a7 systemProtocols:v15 parameters:v16];

  return v17;
}

void *sub_1C8E4E064(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3179D0, &qword_1C908F1B8);
  result = sub_1C906493C();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = (result + 8);
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *(*(a1 + 56) + 8 * v13);
      v16 = *v14;
      result = v14[1];
      *&v9[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v16;
      v17[1] = result;
      *(v3[7] + 8 * v13) = v15;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;

      result = v15;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C8E4E1BC()
{
  result = qword_1EC317340;
  if (!qword_1EC317340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317340);
  }

  return result;
}

unint64_t sub_1C8E4E210()
{
  result = qword_1EC317348;
  if (!qword_1EC317348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317348);
  }

  return result;
}

unint64_t sub_1C8E4E264()
{
  result = qword_1EC317358;
  if (!qword_1EC317358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317358);
  }

  return result;
}

unint64_t sub_1C8E4E2B8()
{
  result = qword_1EC317368;
  if (!qword_1EC317368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317368);
  }

  return result;
}

unint64_t sub_1C8E4E30C()
{
  result = qword_1EC317398;
  if (!qword_1EC317398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317398);
  }

  return result;
}

unint64_t sub_1C8E4E360()
{
  result = qword_1EC3173A0;
  if (!qword_1EC3173A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3173A0);
  }

  return result;
}

unint64_t sub_1C8E4E3B4()
{
  result = qword_1EC3173A8;
  if (!qword_1EC3173A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3173A8);
  }

  return result;
}

unint64_t sub_1C8E4E408()
{
  result = qword_1EC3173B0;
  if (!qword_1EC3173B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3173B0);
  }

  return result;
}

unint64_t sub_1C8E4E47C()
{
  result = qword_1EC3173E0;
  if (!qword_1EC3173E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3173E0);
  }

  return result;
}

unint64_t sub_1C8E4E4D0()
{
  result = qword_1EC3173F0;
  if (!qword_1EC3173F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3173E8, &qword_1C908C108);
    sub_1C8E4EA20(&qword_1EC3173F8, &qword_1EC317400, &qword_1C908C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3173F0);
  }

  return result;
}

unint64_t sub_1C8E4E588()
{
  result = qword_1EC317410;
  if (!qword_1EC317410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3173E8, &qword_1C908C108);
    sub_1C8E4EA20(&qword_1EC317418, &qword_1EC317400, &qword_1C908C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317410);
  }

  return result;
}

unint64_t sub_1C8E4E640()
{
  result = qword_1EC317428;
  if (!qword_1EC317428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317428);
  }

  return result;
}

unint64_t sub_1C8E4E694()
{
  result = qword_1EC317430;
  if (!qword_1EC317430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317430);
  }

  return result;
}

unint64_t sub_1C8E4E6E8()
{
  result = qword_1EC317440;
  if (!qword_1EC317440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317440);
  }

  return result;
}

unint64_t sub_1C8E4E73C()
{
  result = qword_1EC317450;
  if (!qword_1EC317450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317450);
  }

  return result;
}

unint64_t sub_1C8E4E790()
{
  result = qword_1EC317480;
  if (!qword_1EC317480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317480);
  }

  return result;
}

unint64_t sub_1C8E4E7E4()
{
  result = qword_1EC317488;
  if (!qword_1EC317488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317488);
  }

  return result;
}

unint64_t sub_1C8E4E838()
{
  result = qword_1EC317490;
  if (!qword_1EC317490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317490);
  }

  return result;
}

unint64_t sub_1C8E4E88C()
{
  result = qword_1EC317498;
  if (!qword_1EC317498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317498);
  }

  return result;
}

uint64_t sub_1C8E4E960(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return v4;
}

unint64_t sub_1C8E4E9CC()
{
  result = qword_1EC3174D0;
  if (!qword_1EC3174D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3174D0);
  }

  return result;
}

uint64_t sub_1C8E4EA20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E4EA68()
{
  result = qword_1EC317508;
  if (!qword_1EC317508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317508);
  }

  return result;
}

unint64_t sub_1C8E4EAC0()
{
  result = qword_1EC317510;
  if (!qword_1EC317510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317510);
  }

  return result;
}

unint64_t sub_1C8E4EB18()
{
  result = qword_1EC317518;
  if (!qword_1EC317518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317518);
  }

  return result;
}

unint64_t sub_1C8E4EB70()
{
  result = qword_1EC317520;
  if (!qword_1EC317520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317520);
  }

  return result;
}

unint64_t sub_1C8E4EBC8()
{
  result = qword_1EC317528;
  if (!qword_1EC317528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317528);
  }

  return result;
}

unint64_t sub_1C8E4EC20()
{
  result = qword_1EC317530;
  if (!qword_1EC317530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317530);
  }

  return result;
}

unint64_t sub_1C8E4EC78()
{
  result = qword_1EC317538;
  if (!qword_1EC317538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317538);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0A13ExecutorEventO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C8E4ED0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 41))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 3)
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

uint64_t sub_1C8E4ED4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8E4ED9C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1C8E4EDD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C8E4EE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1C8E4EED8()
{
  sub_1C90620BC();
  if (v0 <= 0x3F)
  {
    sub_1C8E513EC(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C8E4EF88()
{
  result = type metadata accessor for ToolInvocation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolExecutorError.PredefinedError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

void sub_1C8E4F0F4()
{
  type metadata accessor for ToolInvocation();
  if (v0 <= 0x3F)
  {
    sub_1C8E4F1E8(319, &qword_1EDA639A8, type metadata accessor for TypedValue.ID);
    if (v1 <= 0x3F)
    {
      sub_1C8E4F1E8(319, qword_1EDA66448, type metadata accessor for ToolExecutionResult.UndoContext);
      if (v2 <= 0x3F)
      {
        sub_1C8E4F238();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8E4F1E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_4();
    v4 = sub_1C906464C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C8E4F238()
{
  if (!qword_1EDA62D60)
  {
    sub_1C8CB78AC(255, &qword_1EDA62D68, 0x1E69ACD90);
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA62D60);
    }
  }
}

void sub_1C8E4F2C8()
{
  sub_1C906204C();
  if (v0 <= 0x3F)
  {
    sub_1C8E513EC(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8E4F398()
{
  sub_1C8E4F1E8(319, &qword_1EDA664B8, type metadata accessor for ToolInvocation);
  if (v0 <= 0x3F)
  {
    sub_1C8E513EC(319, &unk_1EDA69420, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8E4F49C()
{
  sub_1C8E513EC(319, &qword_1EC317570, &type metadata for TypeInstance, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C8E4F1E8(319, &qword_1EC317578, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_1C8E4F1E8(319, &qword_1EDA664B8, type metadata accessor for ToolInvocation);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8E4F5C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_80(*a1 + 2);
    }

    v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
    if (v3 >= 2)
    {
      return OUTLINED_FUNCTION_80(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_80(v3);
}

uint64_t sub_1C8E4F610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ToolExecutionSession.execute(invocation:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 48);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ToolExecutionSession.execute(toolInvocation:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ToolExecutionSession.resolve(reference:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 64);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 72);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ToolExecutionSession.inject(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 80);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionSession.enumerate(valueSet:in:query:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_122_5();
  OUTLINED_FUNCTION_78_0();
  v18 = *(OUTLINED_FUNCTION_15_20(v12, v13, v14, v15, v16, v17) + 88);
  OUTLINED_FUNCTION_18_17();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_87_4(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_9_23(v23);
  OUTLINED_FUNCTION_121_3();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t sub_1C8E4FC88()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_377();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  OUTLINED_FUNCTION_63();

  return v7(v2);
}

uint64_t dispatch thunk of ToolExecutionSession.undo(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v3 = *(OUTLINED_FUNCTION_158(v0, v1, v2) + 96);
  OUTLINED_FUNCTION_17_19();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_87_4(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_52(v8);
  v10 = OUTLINED_FUNCTION_176_4();

  return v11(v10);
}

uint64_t dispatch thunk of ToolExecutionSession.redo(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v3 = *(OUTLINED_FUNCTION_158(v0, v1, v2) + 104);
  OUTLINED_FUNCTION_17_19();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_87_4(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_52(v8);
  v10 = OUTLINED_FUNCTION_176_4();

  return v11(v10);
}

uint64_t dispatch thunk of ToolExecutionSession.fetchToolInvocationSummary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 112);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionSession.fetchToolInvocationSummary(for:fetchingDefaultValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v10 = *(v9 + 120);
  OUTLINED_FUNCTION_17_19();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_1_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_14_25(v15);
  OUTLINED_FUNCTION_151_4();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of ToolExecutionSession.fetchDisplayValue<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_122_5();
  OUTLINED_FUNCTION_78_0();
  v18 = *(OUTLINED_FUNCTION_15_20(v12, v13, v14, v15, v16, v17) + 128);
  OUTLINED_FUNCTION_18_17();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_1_4(v22);
  *v23 = v24;
  v23[1] = sub_1C8E1BB44;
  OUTLINED_FUNCTION_10_26();
  OUTLINED_FUNCTION_121_3();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ToolExecutionSession.transform(action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 136);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionSession.resolve(reference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 144);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 160);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ToolExecutionSession.resolve(reference:coercedTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 152);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 168);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ToolExecutionSession.enumerate(valueSet:in:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 176);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_87_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_52(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1C8E50878()
{
  v0 = sub_1C9061EBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1C8E508D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C8E50910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_76Tm()
{
  v3 = OUTLINED_FUNCTION_156_3();
  v5 = v4(v3);
  v6 = OUTLINED_FUNCTION_179(v5);
  if (*(v7 + 84) != v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v6);
}

uint64_t __swift_store_extra_inhabitant_index_77Tm()
{
  OUTLINED_FUNCTION_44_0();
  v5 = v4(0);
  result = OUTLINED_FUNCTION_179(v5);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_227_0();

    return __swift_storeEnumTagSinglePayload(v8, v0, v0, v9);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C8E50B0C()
{
  result = type metadata accessor for ToolInvocation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8E50B80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C8E50BC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FollowUpActionExecution.Response(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FollowUpActionExecution.Response(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8E50DA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1C8E50DFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C8E50F74(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1C8E511BC()
{
  sub_1C8E4F1E8(319, &qword_1EC317630, type metadata accessor for ConfirmationView);
  if (v0 <= 0x3F)
  {
    sub_1C8E513EC(319, &qword_1EC317638, &type metadata for ActionConfirmationRequest.SystemStyle, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8E51318()
{
  sub_1C8E4F1E8(319, &qword_1EC317630, type metadata accessor for ConfirmationView);
  if (v0 <= 0x3F)
  {
    sub_1C8E513EC(319, qword_1EC317650, &type metadata for ChoiceRequest.Option, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8E513EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C8E5143C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C8E5147C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ToolDialogHandler.chooseValue(prompt:message:type:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v34 = v14;
  OUTLINED_FUNCTION_2_47();
  v15 = *(OUTLINED_FUNCTION_141_5() + 8);
  OUTLINED_FUNCTION_17_19();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1_4(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_102_4(v20);
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_112_3();
  OUTLINED_FUNCTION_101();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, v33, v34, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v34 = v14;
  OUTLINED_FUNCTION_2_47();
  v15 = *(OUTLINED_FUNCTION_141_5() + 104);
  OUTLINED_FUNCTION_17_19();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1_4(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_102_4(v20);
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_112_3();
  OUTLINED_FUNCTION_101();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, v33, v34, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  OUTLINED_FUNCTION_2_47();
  v15 = *(v14 + 112);
  OUTLINED_FUNCTION_18_17();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_87_4(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_52(v20);
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_101();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v33, a12, a13, a14);
}

uint64_t dispatch thunk of ToolDialogHandler.chooseFromList(prompt:items:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182_4();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_32_11();
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_17_19();
  v30 = v14 + *v14;
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_1_4(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_76_4(v18);
  OUTLINED_FUNCTION_170();

  return v27(v20, v21, v22, v23, v24, v25, v26, v27, a9, v30, a11, a12);
}

{
  OUTLINED_FUNCTION_122_5();
  OUTLINED_FUNCTION_78_0();
  v18 = *(OUTLINED_FUNCTION_15_20(v12, v13, v14, v15, v16, v17) + 120);
  OUTLINED_FUNCTION_18_17();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_87_4(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_9_23(v23);
  OUTLINED_FUNCTION_121_3();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ToolDialogHandler.chooseMultipleFromList(prompt:items:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182_4();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_32_11();
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_17_19();
  v30 = v14 + *v14;
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_1_4(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_76_4(v18);
  OUTLINED_FUNCTION_170();

  return v27(v20, v21, v22, v23, v24, v25, v26, v27, a9, v30, a11, a12);
}

{
  OUTLINED_FUNCTION_122_5();
  OUTLINED_FUNCTION_78_0();
  v18 = *(OUTLINED_FUNCTION_15_20(v12, v13, v14, v15, v16, v17) + 128);
  OUTLINED_FUNCTION_18_17();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_87_4(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_9_23(v23);
  OUTLINED_FUNCTION_121_3();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ToolDialogHandler.showAlert(prompt:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_122_5();
  OUTLINED_FUNCTION_78_0();
  v18 = *(OUTLINED_FUNCTION_15_20(v12, v13, v14, v15, v16, v17) + 32);
  OUTLINED_FUNCTION_18_17();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_1_4(v22);
  *v23 = v24;
  v23[1] = sub_1C8E1BB44;
  OUTLINED_FUNCTION_10_26();
  OUTLINED_FUNCTION_121_3();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ToolDialogHandler.showActionConfirmation(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ToolDialogHandler.showChoice(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 48);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of ToolDialogHandler.showResult(title:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ToolDialogHandler.showParameterConfirmation(title:parameterConfirmationRequest:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_166();
  v47 = v27;
  OUTLINED_FUNCTION_2_47();
  v28 = *(a26 + 64);
  OUTLINED_FUNCTION_18_17();
  v46 = v29 + *v29;
  v31 = *(v30 + 4);
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_1_4(v32);
  *v33 = v34;
  v33[1] = sub_1C8E1BB44;
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_128();

  return v43(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v46, v47, v26, a14, a15, a16, a17, a18);
}

uint64_t dispatch thunk of ToolDialogHandler.requestContinueInApp(title:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v34 = v14;
  OUTLINED_FUNCTION_2_47();
  v15 = *(OUTLINED_FUNCTION_141_5() + 72);
  OUTLINED_FUNCTION_17_19();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1_4(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_102_4(v20);
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_112_3();
  OUTLINED_FUNCTION_101();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, v33, v34, a12, a13, a14);
}

uint64_t dispatch thunk of ToolDialogHandler.requestProtectedAppApproval(bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13) + 80);
  OUTLINED_FUNCTION_17_19();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_0_56(v19);
  OUTLINED_FUNCTION_151_4();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ToolDialogHandler.requestFollowUpActionExecution(action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_187_5();
  OUTLINED_FUNCTION_133();
  v14 = *(OUTLINED_FUNCTION_11_24(v10, v11, v12, v13) + 88);
  OUTLINED_FUNCTION_18_17();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_4(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_5(v19);
  OUTLINED_FUNCTION_186_5();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C8E522BC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_94();

  return v7(v6);
}

uint64_t dispatch thunk of ToolDialogHandler.showActionConfirmation(title:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v34 = v14;
  OUTLINED_FUNCTION_2_47();
  v15 = *(OUTLINED_FUNCTION_141_5() + 136);
  OUTLINED_FUNCTION_17_19();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1_4(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_102_4(v20);
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_112_3();
  OUTLINED_FUNCTION_101();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, v33, v34, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  OUTLINED_FUNCTION_2_47();
  v15 = *(v14 + 144);
  OUTLINED_FUNCTION_18_17();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_87_4(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_52(v20);
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_101();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v33, a12, a13, a14);
}

uint64_t dispatch thunk of ToolDialogHandler.showConfirmation(title:affirmativeString:negativeString:view:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_166();
  v47 = v27;
  OUTLINED_FUNCTION_2_47();
  v28 = *(a26 + 152);
  OUTLINED_FUNCTION_18_17();
  v46 = v29 + *v29;
  v31 = *(v30 + 4);
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_87_4(v32);
  *v33 = v34;
  v33[1] = sub_1C8E4C488;
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_128();

  return v43(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v46, v47, v26, a14, a15, a16, a17, a18);
}

uint64_t dispatch thunk of ToolDialogHandler.showParameterConfirmation(title:parameterConfirmationRequest:affirmativeString:negativeString:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v34 = v14;
  OUTLINED_FUNCTION_2_47();
  v15 = *(OUTLINED_FUNCTION_141_5() + 160);
  OUTLINED_FUNCTION_17_19();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_87_4(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_102_4(v20);
  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_112_3();
  OUTLINED_FUNCTION_101();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, v33, v34, a12, a13, a14);
}

uint64_t sub_1C8E528CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_1C8E52920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C8E52990()
{
  result = sub_1C8CB78AC(319, &qword_1EDA604B0, 0x1E69AD0A0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolInvocation();
    if (v2 <= 0x3F)
    {
      result = sub_1C8CB78AC(319, &qword_1EDA604B8, 0x1E696E8B8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_1C8E52B50(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E52C2C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C8E52CE8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E52DC4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8E52E94()
{
  result = qword_1EC3177D8;
  if (!qword_1EC3177D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3177D8);
  }

  return result;
}

unint64_t sub_1C8E52EEC()
{
  result = qword_1EC3177E0;
  if (!qword_1EC3177E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3177E0);
  }

  return result;
}

unint64_t sub_1C8E52F44()
{
  result = qword_1EC3177E8;
  if (!qword_1EC3177E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3177E8);
  }

  return result;
}

unint64_t sub_1C8E52F9C()
{
  result = qword_1EC3177F0;
  if (!qword_1EC3177F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3177F0);
  }

  return result;
}

unint64_t sub_1C8E52FF4()
{
  result = qword_1EC3177F8;
  if (!qword_1EC3177F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3177F8);
  }

  return result;
}

unint64_t sub_1C8E5304C()
{
  result = qword_1EC317800;
  if (!qword_1EC317800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317800);
  }

  return result;
}

unint64_t sub_1C8E530A4()
{
  result = qword_1EC317808;
  if (!qword_1EC317808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317808);
  }

  return result;
}

unint64_t sub_1C8E530FC()
{
  result = qword_1EC317810;
  if (!qword_1EC317810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317810);
  }

  return result;
}

unint64_t sub_1C8E53154()
{
  result = qword_1EC317818;
  if (!qword_1EC317818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317818);
  }

  return result;
}

unint64_t sub_1C8E531AC()
{
  result = qword_1EC317820;
  if (!qword_1EC317820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317820);
  }

  return result;
}

unint64_t sub_1C8E53204()
{
  result = qword_1EC317828;
  if (!qword_1EC317828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317828);
  }

  return result;
}

unint64_t sub_1C8E5325C()
{
  result = qword_1EC317830;
  if (!qword_1EC317830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317830);
  }

  return result;
}

unint64_t sub_1C8E532B4()
{
  result = qword_1EC317838;
  if (!qword_1EC317838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317838);
  }

  return result;
}

unint64_t sub_1C8E5330C()
{
  result = qword_1EC317840;
  if (!qword_1EC317840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317840);
  }

  return result;
}

unint64_t sub_1C8E53364()
{
  result = qword_1EC317848;
  if (!qword_1EC317848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317848);
  }

  return result;
}

unint64_t sub_1C8E533F4()
{
  result = qword_1EC317850;
  if (!qword_1EC317850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317850);
  }

  return result;
}

unint64_t sub_1C8E5344C()
{
  result = qword_1EC317858;
  if (!qword_1EC317858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317858);
  }

  return result;
}

unint64_t sub_1C8E534A4()
{
  result = qword_1EC317860;
  if (!qword_1EC317860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317860);
  }

  return result;
}

unint64_t sub_1C8E534FC()
{
  result = qword_1EC317868;
  if (!qword_1EC317868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317868);
  }

  return result;
}

unint64_t sub_1C8E535FC()
{
  result = qword_1EC317870;
  if (!qword_1EC317870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317870);
  }

  return result;
}

unint64_t sub_1C8E53654()
{
  result = qword_1EC317878;
  if (!qword_1EC317878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317878);
  }

  return result;
}

unint64_t sub_1C8E536AC()
{
  result = qword_1EC317880;
  if (!qword_1EC317880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317880);
  }

  return result;
}

unint64_t sub_1C8E53704()
{
  result = qword_1EC317888;
  if (!qword_1EC317888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317888);
  }

  return result;
}

unint64_t sub_1C8E5375C()
{
  result = qword_1EC317890;
  if (!qword_1EC317890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317890);
  }

  return result;
}

unint64_t sub_1C8E537B4()
{
  result = qword_1EC317898;
  if (!qword_1EC317898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317898);
  }

  return result;
}

unint64_t sub_1C8E5380C()
{
  result = qword_1EC3178A0;
  if (!qword_1EC3178A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178A0);
  }

  return result;
}

unint64_t sub_1C8E53864()
{
  result = qword_1EC3178A8;
  if (!qword_1EC3178A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178A8);
  }

  return result;
}

unint64_t sub_1C8E538BC()
{
  result = qword_1EC3178B0;
  if (!qword_1EC3178B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178B0);
  }

  return result;
}

unint64_t sub_1C8E53914()
{
  result = qword_1EC3178B8;
  if (!qword_1EC3178B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178B8);
  }

  return result;
}

unint64_t sub_1C8E5396C()
{
  result = qword_1EC3178C0;
  if (!qword_1EC3178C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178C0);
  }

  return result;
}

unint64_t sub_1C8E539C4()
{
  result = qword_1EC3178C8;
  if (!qword_1EC3178C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178C8);
  }

  return result;
}

unint64_t sub_1C8E53A1C()
{
  result = qword_1EC3178D0;
  if (!qword_1EC3178D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178D0);
  }

  return result;
}

unint64_t sub_1C8E53A74()
{
  result = qword_1EC3178D8;
  if (!qword_1EC3178D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178D8);
  }

  return result;
}

unint64_t sub_1C8E53ACC()
{
  result = qword_1EC3178E0;
  if (!qword_1EC3178E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3178E0);
  }

  return result;
}