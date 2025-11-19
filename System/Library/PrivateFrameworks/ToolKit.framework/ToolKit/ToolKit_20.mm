uint64_t sub_1C8E2C298(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316B68, &qword_1C9088438);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v24 = v1[2];
  v23 = v13;
  v14 = v1[5];
  v22 = v1[4];
  v21 = v14;
  v20 = *(v1 + 48);
  v15 = *(v1 + 9);
  v31 = *(v1 + 7);
  v32 = v15;
  v33[0] = *(v1 + 11);
  *(v33 + 9) = *(v1 + 97);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2D120();
  sub_1C9064E1C();
  LOBYTE(v28) = 0;
  v17 = v34;
  sub_1C9064B2C();
  if (v17)
  {
    return (*(v6 + 8))(v10, v3);
  }

  *&v28 = v24;
  *(&v28 + 1) = v23;
  *&v29 = v22;
  *(&v29 + 1) = v21;
  v30[0] = v20;
  LOBYTE(v25[0]) = 1;
  sub_1C8D54590(v24, v23, v22, v21, v20);
  sub_1C8E2D2D8();
  sub_1C9064B8C();
  sub_1C8D3ED20(v28, *(&v28 + 1), v29, *(&v29 + 1), v30[0]);
  v28 = v31;
  v29 = v32;
  *v30 = v33[0];
  *&v30[9] = *(v33 + 9);
  v27 = 2;
  sub_1C8E2D32C(&v31, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  sub_1C8E2D39C(&qword_1EC316B70);
  sub_1C9064B8C();
  v25[0] = v28;
  v25[1] = v29;
  *v26 = *v30;
  *&v26[9] = *&v30[9];
  sub_1C8E2D414(v25);
  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_1C8E2C588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316B50, &unk_1C9088428);
  v5 = OUTLINED_FUNCTION_11(v38);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2D120();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_1C9064A0C();
  v11 = v10;
  v20 = v9;
  LOBYTE(v21[0]) = 1;
  sub_1C8E2D174();
  sub_1C9064A6C();
  v18 = v23;
  v19 = v22;
  v17 = v24;
  v15 = v25;
  v16 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  v33 = 2;
  sub_1C8E2D39C(&qword_1EC316B60);
  sub_1C9064A6C();
  v12 = OUTLINED_FUNCTION_3_36();
  v13(v12);
  *&v37[7] = v34;
  *&v37[23] = v35;
  *&v37[39] = v36[0];
  *&v37[48] = *(v36 + 9);
  v21[0] = v20;
  v21[1] = v11;
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v17;
  v21[5] = v15;
  LOBYTE(v21[6]) = v16;
  *(&v21[12] + 1) = *(v36 + 9);
  *(&v21[10] + 1) = *&v37[32];
  *(&v21[8] + 1) = *&v37[16];
  *(&v21[6] + 1) = *v37;
  memcpy(a2, v21, 0x71uLL);
  sub_1C8E2D270(v21, &v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = *v37;
  v30 = *&v37[16];
  v31 = *&v37[32];
  v22 = v20;
  v23 = v11;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v15;
  v28 = v16;
  v32 = *&v37[48];
  return sub_1C8E2D2A8(&v22);
}

uint64_t sub_1C8E2C8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2C12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E2C91C(uint64_t a1)
{
  v2 = sub_1C8E2D120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E2C958(uint64_t a1)
{
  v2 = sub_1C8E2D120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C8E2C9C8@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EC3113F8 != -1)
  {
    OUTLINED_FUNCTION_2_43();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EC390BA0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v4 = v3;
  v6 = v5;

  if (qword_1EC311400 != -1)
  {
    OUTLINED_FUNCTION_1_50();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390BB8);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v8 = v7;
  v10 = v9;

  SystemTypeProtocol.Identifier.init(rawValue:)(v8, v10, v26);
  v19 = v26[1];
  v21 = v26[0];
  v11 = v27;
  if (v27 == 255)
  {
    v12 = 2;
  }

  else
  {
    v12 = v27;
  }

  if (qword_1EC311408 != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EC390BD0);
  sub_1C9062E5C();
  sub_1C8D27C98();
  v13.i32[0] = 255;
  v14.i32[0] = v11;
  v15 = vdupq_lane_s32(*&vceqq_s32(v14, v13), 0);
  v20 = vbicq_s8(v19, v15);
  v22 = vbicq_s8(v21, v15);

  *&v28[7] = v23;
  *&v28[23] = v24;
  *&v28[39] = *v25;
  *&v28[48] = *&v25[9];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v22;
  *(a1 + 32) = v20;
  *(a1 + 48) = v12;
  v16 = *&v28[16];
  *(a1 + 49) = *v28;
  *(a1 + 65) = v16;
  result = *&v28[32];
  v18 = *&v28[48];
  *(a1 + 81) = *&v28[32];
  *(a1 + 97) = v18;
  return result;
}

uint64_t sub_1C8E2CBF4()
{
  sub_1C8E2D020();

  return sub_1C9062B4C();
}

uint64_t sub_1C8E2CCEC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  v19 = *(v0 + 56);
  v20 = v4;
  v21[0] = *(v0 + 88);
  *(v21 + 9) = *(v0 + 97);

  sub_1C8E2D32C(&v19, &v15);
  if (qword_1EC3113F8 != -1)
  {
    OUTLINED_FUNCTION_2_43();
  }

  v5 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v5, qword_1EC390BA0);
  sub_1C9062E5C();
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1E69A0138];
  v17 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69A0138];
  v15 = v2;
  v16 = v1;
  sub_1C9062BFC();
  if (qword_1EC311400 != -1)
  {
    OUTLINED_FUNCTION_1_50();
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC390BB8);
  sub_1C9062E5C();
  v8 = SystemTypeProtocol.Identifier.rawValue.getter();
  v17 = v6;
  v18 = v7;
  v15 = v8;
  v16 = v9;
  sub_1C9062BFC();
  if (qword_1EC311408 != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  OUTLINED_FUNCTION_10(v5, qword_1EC390BD0);
  sub_1C9062E5C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  v18 = sub_1C8E2D524();
  v10 = swift_allocObject();
  v15 = v10;
  v11 = v20;
  v10[1] = v19;
  v10[2] = v11;
  v10[3] = v21[0];
  *(v10 + 57) = *(v21 + 9);
  return sub_1C9062BFC();
}

uint64_t sub_1C8E2CEF8()
{
  v0 = qword_1EC316B18;

  return v0;
}

unint64_t sub_1C8E2CF34()
{
  result = qword_1EC316B28;
  if (!qword_1EC316B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B28);
  }

  return result;
}

unint64_t sub_1C8E2CF8C(void *a1)
{
  a1[1] = sub_1C8E2CFCC();
  a1[2] = sub_1C8E2D020();
  a1[3] = sub_1C8D16A38();
  result = sub_1C8E2D074();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E2CFCC()
{
  result = qword_1EC316B30;
  if (!qword_1EC316B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B30);
  }

  return result;
}

unint64_t sub_1C8E2D020()
{
  result = qword_1EC316B38;
  if (!qword_1EC316B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B38);
  }

  return result;
}

unint64_t sub_1C8E2D074()
{
  result = qword_1EC316B40;
  if (!qword_1EC316B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B40);
  }

  return result;
}

unint64_t sub_1C8E2D0CC()
{
  result = qword_1EC316B48;
  if (!qword_1EC316B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B48);
  }

  return result;
}

unint64_t sub_1C8E2D120()
{
  result = qword_1EC316B58;
  if (!qword_1EC316B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B58);
  }

  return result;
}

unint64_t sub_1C8E2D174()
{
  result = qword_1EDA60A30;
  if (!qword_1EDA60A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A30);
  }

  return result;
}

unint64_t sub_1C8E2D1C8()
{
  result = qword_1EDA609F0;
  if (!qword_1EDA609F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609F0);
  }

  return result;
}

unint64_t sub_1C8E2D21C()
{
  result = qword_1EDA609F8;
  if (!qword_1EDA609F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609F8);
  }

  return result;
}

unint64_t sub_1C8E2D2D8()
{
  result = qword_1EDA60A38;
  if (!qword_1EDA60A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A38);
  }

  return result;
}

uint64_t sub_1C8E2D32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E2D39C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312FD8, &qword_1C906B500);
    sub_1C8E2D1C8();
    sub_1C8E2D21C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8E2D414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FD8, &qword_1C906B500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8E2D4AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8E2D120();
  return sub_1C9062E8C();
}

unint64_t sub_1C8E2D524()
{
  result = qword_1EC313350;
  if (!qword_1EC313350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312FD8, &qword_1C906B500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313350);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemTypeProtocolRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E2D668()
{
  result = qword_1EC316B78;
  if (!qword_1EC316B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B78);
  }

  return result;
}

unint64_t sub_1C8E2D6C0()
{
  result = qword_1EC316B80;
  if (!qword_1EC316B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B80);
  }

  return result;
}

unint64_t sub_1C8E2D718()
{
  result = qword_1EC316B88;
  if (!qword_1EC316B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B88);
  }

  return result;
}

uint64_t ValueSearchPredicate.Template.input.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t ValueSearchPredicate.Template.debugDescription.getter()
{
  v1 = *v0;
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000012, 0x80000001C90CB680);
  sub_1C90648BC();
  return 0;
}

uint64_t static ValueSearchPredicate.Template.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;

  static TypeInstance.== infix(_:_:)(&v6, &v5);
  LOBYTE(v2) = v3;

  return v2 & 1;
}

uint64_t sub_1C8E2D8FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
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

uint64_t sub_1C8E2D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2D8FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E2D9B4(uint64_t a1)
{
  v2 = sub_1C8E2DB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E2D9F0(uint64_t a1)
{
  v2 = sub_1C8E2DB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ValueSearchPredicate.Template.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316B90, &qword_1C9088560);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v10 = *v0;
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E2DB68();

  sub_1C9064E1C();
  sub_1C8CA6D90();
  sub_1C9064B8C();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8E2DB68()
{
  result = qword_1EC316B98;
  if (!qword_1EC316B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316B98);
  }

  return result;
}

uint64_t ValueSearchPredicate.Template.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void ValueSearchPredicate.Template.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316BA0, &qword_1C9088568);
  OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_73();
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C8E2DB68();
  OUTLINED_FUNCTION_355();
  if (!v10)
  {
    sub_1C8CAC450();
    sub_1C9064A6C();
    v20 = OUTLINED_FUNCTION_4_30();
    v21(v20);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E2DD84()
{
  v1 = *v0;
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t ValueSearchPredicate.debugDescription.getter()
{
  v1 = *v0;
  sub_1C906478C();

  strcpy(v4, "VALUE SEARCH '");
  v2 = MEMORY[0x1CCA81C30](v1, &type metadata for TypedValue);
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](39, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_1C8E2DEA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
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

uint64_t sub_1C8E2DF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2DEA8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E2DF60(uint64_t a1)
{
  v2 = sub_1C8E2E15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E2DF9C(uint64_t a1)
{
  v2 = sub_1C8E2E15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ValueSearchPredicate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316BA8, &unk_1C9088570);
  OUTLINED_FUNCTION_11(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1C8E2E15C();

  sub_1C9064E1C();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316410, &qword_1C907D840);
  sub_1C8E2E460(&qword_1EDA62DE0, sub_1C8D381AC);
  sub_1C9064B8C();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8E2E15C()
{
  result = qword_1EC316BB0;
  if (!qword_1EC316BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BB0);
  }

  return result;
}

uint64_t ValueSearchPredicate.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1CCA82810](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;

      TypedValue.hash(into:)();

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ValueSearchPredicate.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  sub_1C8D03430(v3, v1);
  return sub_1C9064DBC();
}

void ValueSearchPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316BB8, &qword_1C9088580);
  OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_73();
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C8E2E15C();
  OUTLINED_FUNCTION_355();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316410, &qword_1C907D840);
    sub_1C8E2E460(&qword_1EDA60518, sub_1C8D39E40);
    sub_1C9064A6C();
    v20 = OUTLINED_FUNCTION_4_30();
    v21(v20);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E2E3E8()
{
  v1 = *v0;
  sub_1C9064D7C();
  sub_1C8D03430(v3, v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E2E460(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC316410, &qword_1C907D840);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E2E548()
{
  result = qword_1EC316BC0;
  if (!qword_1EC316BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BC0);
  }

  return result;
}

unint64_t sub_1C8E2E59C()
{
  result = qword_1EC316BC8;
  if (!qword_1EC316BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BC8);
  }

  return result;
}

unint64_t sub_1C8E2E5F0()
{
  result = qword_1EC316BD0;
  if (!qword_1EC316BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BD0);
  }

  return result;
}

unint64_t sub_1C8E2E644()
{
  result = qword_1EC316BD8;
  if (!qword_1EC316BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BD8);
  }

  return result;
}

unint64_t sub_1C8E2E69C()
{
  result = qword_1EC316BE0;
  if (!qword_1EC316BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BE0);
  }

  return result;
}

uint64_t sub_1C8E2E744(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E2E7A8()
{
  result = qword_1EC316BE8;
  if (!qword_1EC316BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BE8);
  }

  return result;
}

unint64_t sub_1C8E2E7FC()
{
  result = qword_1EC316BF0;
  if (!qword_1EC316BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BF0);
  }

  return result;
}

unint64_t sub_1C8E2E854()
{
  result = qword_1EC316BF8;
  if (!qword_1EC316BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316BF8);
  }

  return result;
}

_BYTE *sub_1C8E2E8D8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E2E988()
{
  result = qword_1EC316C00;
  if (!qword_1EC316C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C00);
  }

  return result;
}

unint64_t sub_1C8E2E9E0()
{
  result = qword_1EC316C08;
  if (!qword_1EC316C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C08);
  }

  return result;
}

unint64_t sub_1C8E2EA38()
{
  result = qword_1EC316C10;
  if (!qword_1EC316C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C10);
  }

  return result;
}

unint64_t sub_1C8E2EA90()
{
  result = qword_1EC316C18;
  if (!qword_1EC316C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C18);
  }

  return result;
}

unint64_t sub_1C8E2EAE8()
{
  result = qword_1EC316C20;
  if (!qword_1EC316C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C20);
  }

  return result;
}

unint64_t sub_1C8E2EB40()
{
  result = qword_1EC316C28;
  if (!qword_1EC316C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C28);
  }

  return result;
}

__n128 AssistantEntitySchemaDefinition.init(identifier:properties:displayRepresentation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = a3->n128_u64[0];
  v7 = a3->n128_u64[1];
  v8 = a3[2].n128_u64[0];
  *a4 = *a1;
  *(a4 + 8) = v4;
  v9 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v9;
  *(a4 + 48) = v5;
  *(a4 + 56) = a2;
  *(a4 + 64) = v6;
  *(a4 + 72) = v7;
  result = a3[1];
  *(a4 + 80) = result;
  *(a4 + 96) = v8;
  return result;
}

uint64_t sub_1C8E2EBCC()
{
  v0 = sub_1C9063D3C();
  __swift_allocate_value_buffer(v0, qword_1EC316C30);
  __swift_project_value_buffer(v0, qword_1EC316C30);
  return sub_1C9063D2C();
}

uint64_t AssistantEntitySchemaDefinition.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

uint64_t AssistantEntitySchemaDefinition.displayRepresentation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;
}

uint64_t static AssistantEntitySchemaDefinition.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v35 = a1[7];
  v28 = a1[8];
  v32 = a1[9];
  v27 = a1[10];
  v33 = a1[11];
  v34 = a1[12];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v31 = a2[9];
  v25 = a2[10];
  v26 = a2[8];
  v29 = a2[12];
  v30 = a2[11];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8 || v4 != v7 || v3 != v10)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v23 = a2[7];
  v24 = a1[6];
  v14 = a1[5];
  v15 = 0;
  if (sub_1C9064C2C())
  {
    v16 = v2 == v8 && v4 == v7;
    v17 = v16 && v3 == v10;
    v5 = v14;
    v12 = v23;
    v6 = v24;
    if (v17)
    {
LABEL_22:
      v20 = v5 == v9 && v6 == v11;
      if (v20 || (sub_1C9064C2C()) && (sub_1C8CEADC4(v35, v12))
      {
        v36[0] = v28;
        v36[1] = v32;
        v36[2] = v27;
        v36[3] = v33;
        v36[4] = v34;
        static TypeDisplayRepresentation.== infix(_:_:)(v36);
        v15 = v21;

        return v15 & 1;
      }

LABEL_29:
      v15 = 0;
    }
  }

  return v15 & 1;
}

uint64_t sub_1C8E2EEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
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

uint64_t sub_1C8E2F004(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x69747265706F7270;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8E2F06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E2EEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E2F094(uint64_t a1)
{
  v2 = sub_1C8E2F3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E2F0D0(uint64_t a1)
{
  v2 = sub_1C8E2F3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssistantEntitySchemaDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C48, &unk_1C9088AE0);
  v5 = OUTLINED_FUNCTION_11(v4);
  v34 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - v9;
  v11 = *v2;
  v12 = v2[1];
  v14 = v2[6];
  v13 = v2[7];
  v15 = v2[9];
  v31 = v2[8];
  v32 = v13;
  v16 = v2[11];
  v29 = v2[10];
  v30 = v15;
  v27 = v2[12];
  v28 = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2F3E0();

  sub_1C9064E1C();
  v35 = v11;
  v36 = v12;
  v18 = *(v2 + 1);
  v38 = *(v2 + 2);
  v37 = v18;
  v39 = v14;
  v40 = 0;
  sub_1C8E28354();
  v19 = v33;
  sub_1C9064B8C();

  if (!v19)
  {
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v27;
    v24 = v28;
    v35 = v32;
    v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C58, &unk_1C909F350);
    sub_1C8E2FAB8(&qword_1EDA62DA8, sub_1C8E2F434);
    sub_1C9064B8C();
    v35 = v22;
    v36 = v21;
    *&v37 = v20;
    *(&v37 + 1) = v24;
    *&v38 = v23;
    v40 = 2;
    sub_1C8E2F488();

    sub_1C9064B8C();
  }

  return (*(v34 + 8))(v10, v4);
}

unint64_t sub_1C8E2F3E0()
{
  result = qword_1EC316C50;
  if (!qword_1EC316C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C50);
  }

  return result;
}

unint64_t sub_1C8E2F434()
{
  result = qword_1EDA668C8;
  if (!qword_1EDA668C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668C8);
  }

  return result;
}

unint64_t sub_1C8E2F488()
{
  result = qword_1EDA60768;
  if (!qword_1EDA60768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60768);
  }

  return result;
}

uint64_t AssistantEntitySchemaDefinition.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v12 = v1[11];
  v14 = v1[10];
  v15 = v1[9];
  v16 = v1[12];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v5);
  MEMORY[0x1CCA82830](v6);
  MEMORY[0x1CCA82830](v7);
  sub_1C9063FBC();
  sub_1C8D02D7C(a1, v9);
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v12)
  {
    sub_1C9063FBC();
  }

  return sub_1C8CC1590(a1, v16);
}

uint64_t AssistantEntitySchemaDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v12 = v0[9];
  v13 = v0[8];
  v9 = v0[11];
  v11 = v0[10];
  v14 = v0[12];
  sub_1C9064D7C();
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v3);
  MEMORY[0x1CCA82830](v4);
  MEMORY[0x1CCA82830](v5);
  sub_1C9063FBC();
  sub_1C8D02D7C(v15, v7);
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v9)
  {
    sub_1C9063FBC();
  }

  sub_1C8CC1590(v15, v14);
  return sub_1C9064DBC();
}

uint64_t AssistantEntitySchemaDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C60, &qword_1C9088AF0);
  v5 = OUTLINED_FUNCTION_11(v25);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E2F3E0();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a2;
  sub_1C8E28C20();
  sub_1C9064A6C();
  v20 = v30;
  v21 = v28;
  v19 = v31;
  v18 = v32;
  v22 = v34;
  v23 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C58, &unk_1C909F350);
  LOBYTE(v27[0]) = 1;
  sub_1C8E2FAB8(&qword_1EDA62DA0, sub_1C8E2FB30);
  sub_1C9064A6C();
  v17 = v33;
  v9 = v28;
  v46 = 2;
  sub_1C8E2FB84();
  sub_1C9064A6C();
  v10 = OUTLINED_FUNCTION_1_5();
  v11(v10);
  v15 = v43;
  v16 = v42;
  v13 = v45;
  v14 = v44;
  v26 = v41;
  v27[0] = v21;
  v27[1] = v23;
  v27[2] = v20;
  v27[3] = v19;
  v27[4] = v18;
  v27[5] = v17;
  v27[6] = v22;
  v27[7] = v9;
  v27[8] = v41;
  v27[9] = v42;
  v27[10] = v43;
  v27[11] = v44;
  v27[12] = v45;
  memcpy(v24, v27, 0x68uLL);
  sub_1C8CC37E4(v27, &v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28 = v21;
  v29 = v23;
  v30 = v20;
  v31 = v19;
  v32 = v18;
  v33 = v17;
  v34 = v22;
  v35 = v9;
  v36 = v26;
  v37 = v16;
  v38 = v15;
  v39 = v14;
  v40 = v13;
  return sub_1C8E2FBD8(&v28);
}

uint64_t sub_1C8E2FA78()
{
  sub_1C9064D7C();
  AssistantEntitySchemaDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E2FAB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316C58, &unk_1C909F350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E2FB30()
{
  result = qword_1EDA668C0;
  if (!qword_1EDA668C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA668C0);
  }

  return result;
}

unint64_t sub_1C8E2FB84()
{
  result = qword_1EDA60760;
  if (!qword_1EDA60760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60760);
  }

  return result;
}

unint64_t sub_1C8E2FC0C()
{
  result = qword_1EC316C68;
  if (!qword_1EC316C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantEntitySchemaDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E2FD50()
{
  result = qword_1EC316C70;
  if (!qword_1EC316C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C70);
  }

  return result;
}

unint64_t sub_1C8E2FDA8()
{
  result = qword_1EC316C78;
  if (!qword_1EC316C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C78);
  }

  return result;
}

unint64_t sub_1C8E2FE00()
{
  result = qword_1EC316C80;
  if (!qword_1EC316C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316C80);
  }

  return result;
}

uint64_t sub_1C8E2FE54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SystemTypeProtocol.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    OUTLINED_FUNCTION_35_14();
    MEMORY[0x1CCA81A90](v1, v2);
    return v9;
  }

  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 32) == 1)
  {
    OUTLINED_FUNCTION_35_14();
    MEMORY[0x1CCA81A90]();

    MEMORY[0x1CCA81A90](46, 0xE100000000000000);

    MEMORY[0x1CCA81A90](v1, v2);

    return v9;
  }

  if (!(v3 | v2 | v1 | v4))
  {
    return OUTLINED_FUNCTION_42();
  }

  v6 = v3 | v2 | v4;
  if (v1 == 1 && v6 == 0)
  {
    return OUTLINED_FUNCTION_26_12();
  }

  if (v1 == 2 && !v6)
  {
    return OUTLINED_FUNCTION_20_16();
  }

  if (v1 == 3 && !v6)
  {
    return OUTLINED_FUNCTION_25_14();
  }

  if (v1 == 4 && !v6)
  {
    return OUTLINED_FUNCTION_43_12();
  }

  if (v1 == 5 && !v6)
  {
    return OUTLINED_FUNCTION_19_18();
  }

  if (v1 == 6 && !v6)
  {
    return OUTLINED_FUNCTION_24_18();
  }

  if (v1 == 7 && !v6)
  {
    return 0xD000000000000012;
  }

  if (v1 == 8 && !v6)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  if (v1 == 9 && !v6)
  {
    return OUTLINED_FUNCTION_23_19();
  }

  if (v1 == 10 && !v6)
  {
    return OUTLINED_FUNCTION_39_13();
  }

  if (v1 == 11 && !v6)
  {
    return OUTLINED_FUNCTION_18_16();
  }

  if (v1 == 12 && !v6)
  {
    v8 = 5;
    return v8 | 0xD000000000000010;
  }

  if (v1 == 13 && !v6)
  {
    return 0xD000000000000010;
  }

  if (v1 == 14 && !v6)
  {
    v8 = 10;
    return v8 | 0xD000000000000010;
  }

  return 0x65536C6175736976;
}

void sub_1C8E3014C(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  switch(*(v1 + 56))
  {
    case 1:
      v4 = 12;
      goto LABEL_10;
    case 2:
      v4 = 14;
      goto LABEL_10;
    case 3:
      v6 = v1[3];
      v5 = v1[4];
      v7 = v1[2];
      v8 = vorrq_s8(v3, vdupq_laneq_s64(v2, 1)).u64[0];
      v9 = *v1;
      v10 = *(v1 + 15) >> 64;
      if (!(v8 | v2.i64[0] | v3.i64[1] | v5 | v6 | v7))
      {
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_11;
      }

      v2.i64[1] = v8 | v3.i64[1] | v5 | v6 | v7;
      v11 = vmovn_s64(vceqq_s64(v2, xmmword_1C9088D50));
      if (v11.i32[0] & v11.i32[1])
      {
        v4 = 1;
LABEL_10:
        *a1 = v4;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
LABEL_11:
        *(a1 + 32) = 2;
        return;
      }

      OUTLINED_FUNCTION_29_1();
      if ((v13 & 1) == 0)
      {
        OUTLINED_FUNCTION_29_1();
        if (v14)
        {
          v4 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_29_1();
          if (v15)
          {
            v4 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_29_1();
            if (v16)
            {
              v4 = 5;
            }

            else
            {
              OUTLINED_FUNCTION_29_1();
              if (v17)
              {
                v4 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_29_1();
                if (v18)
                {
                  v4 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_29_1();
                  if (v19)
                  {
                    v4 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_29_1();
                    if (v20)
                    {
                      v4 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_29_1();
                      if (v21)
                      {
                        v4 = 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_29_1();
                        if (v22)
                        {
                          v4 = 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_29_1();
                          if (v25)
                          {
                            v4 = 13;
                          }

                          else if (((v23 == 13) & v24) != 0)
                          {
                            v4 = 15;
                          }

                          else
                          {
                            v4 = 16;
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

        goto LABEL_10;
      }

      *v12 = 2;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 2;
      return;
    default:
      *a1 = v2;
      *(a1 + 16) = v3;
      *(a1 + 32) = 1;

      return;
  }
}

uint64_t SystemTypeProtocol.Identifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == OUTLINED_FUNCTION_19_18() && a2 == v6;
  if (v7 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
  {

    v9 = 5;
LABEL_7:
    *a3 = v9;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
LABEL_14:
    v11 = 2;
LABEL_15:
    *(a3 + 32) = v11;
    return result;
  }

  v10 = a1 == OUTLINED_FUNCTION_42() && a2 == 0xE700000000000000;
  if (v10 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
  {
LABEL_13:

    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_14;
  }

  sub_1C8E35EFC();
  sub_1C8D1EA80();
  if (OUTLINED_FUNCTION_46_8())
  {
    OUTLINED_FUNCTION_45_14();
    v12 = sub_1C9063FCC();
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      v15 = sub_1C8E9E5F8(v14, a1, a2);
      MEMORY[0x1CCA81A20](v15);
      OUTLINED_FUNCTION_44_13();

      v16 = OUTLINED_FUNCTION_52_9();
      v18 = v17;
      v19 = sub_1C906316C();
      v20 = OUTLINED_FUNCTION_52_9();
      sub_1C8E9E2B0(v20, v21, v19);
      OUTLINED_FUNCTION_44_13();

      v22 = 0x446E776F6E6B6E55;
      if (a1)
      {
        v22 = a2;
      }

      v23 = 0xED00006E69616D6FLL;
      if (a1)
      {
        v23 = a1;
      }

      *a3 = v16;
      *(a3 + 8) = v18;
      *(a3 + 16) = v22;
      *(a3 + 24) = v23;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (OUTLINED_FUNCTION_46_8())
  {
    OUTLINED_FUNCTION_45_14();
    v24 = sub_1C9063FCC();
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      sub_1C8E9E5F8(v25, a1, a2);
      sub_1C8E35F50();
      v26 = sub_1C906466C();

      if (!v26[2])
      {
        goto LABEL_13;
      }

      v27 = v26[4];
      v28 = v26[5];
      v30 = v26[6];
      v29 = v26[7];
      v31 = sub_1C8E9E6CC(v26);
      v33 = v32;
      v35 = v34;
      v37 = v36;

      if (!v37)
      {
        goto LABEL_13;
      }

      v38 = MEMORY[0x1CCA81A20](v31, v33, v35, v37);
      v40 = v39;

      MEMORY[0x1CCA81A20](v27, v28, v30, v29);
      result = OUTLINED_FUNCTION_44_13();
      *a3 = v38;
      *(a3 + 8) = v40;
      *(a3 + 16) = v27;
      *(a3 + 24) = v28;
LABEL_23:
      v11 = 1;
      goto LABEL_15;
    }

    __break(1u);
LABEL_69:
    v51 = a1 == OUTLINED_FUNCTION_41_10() && a2 == 0xEF797469746E4574;
    if (v51 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v9 = 8;
    }

    else
    {
      v53 = a1 == OUTLINED_FUNCTION_23_19() && a2 == v52;
      if (v53 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
      {

        v9 = 9;
      }

      else
      {
        v54 = a1 == OUTLINED_FUNCTION_39_13() && a2 == 0xEF797469746E4565;
        if (v54 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
        {

          v9 = 10;
        }

        else
        {
          v55 = a1 == 0xD000000000000015 && 0x80000001C90CA320 == a2;
          if (v55 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
          {

            v9 = 12;
          }

          else
          {
            v56 = a1 == 0xD000000000000010 && 0x80000001C90CA300 == a2;
            if (v56 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
            {

              v9 = 13;
            }

            else
            {
              v57 = a1 == 0xD00000000000001ALL && 0x80000001C90CA2E0 == a2;
              if (v57 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
              {

                v9 = 14;
              }

              else
              {
                v58 = a1 == 0x65536C6175736976 && a2 == 0xEC00000068637261;
                if (v58 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
                {

                  v9 = 15;
                }

                else
                {
                  v59 = a1 == 0x65536C6175736976 && a2 == 0xEF52434F68637261;
                  if (v59 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
                  {

                    v9 = 16;
                  }

                  else
                  {
                    if (a1 == OUTLINED_FUNCTION_18_16() && a2 == v60)
                    {
                    }

                    else
                    {
                      v62 = OUTLINED_FUNCTION_14_3();

                      if ((v62 & 1) == 0)
                      {
                        *a3 = 0u;
                        *(a3 + 16) = 0u;
                        v11 = -1;
                        goto LABEL_15;
                      }
                    }

                    v9 = 11;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_7;
  }

  v42 = a1 == OUTLINED_FUNCTION_26_12() && a2 == v41;
  if (v42 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
  {

    v9 = 1;
    goto LABEL_7;
  }

  v44 = a1 == OUTLINED_FUNCTION_20_16() && a2 == v43;
  if (!v44 && (OUTLINED_FUNCTION_14_3() & 1) == 0)
  {
    v46 = a1 == OUTLINED_FUNCTION_25_14() && a2 == v45;
    if (v46 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v9 = 3;
      goto LABEL_7;
    }

    v47 = a1 == OUTLINED_FUNCTION_43_12() && a2 == 0xE700000000000000;
    if (v47 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v9 = 4;
      goto LABEL_7;
    }

    v49 = a1 == OUTLINED_FUNCTION_24_18() && a2 == v48;
    if (v49 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v9 = 6;
      goto LABEL_7;
    }

LABEL_62:
    v50 = a1 == 0xD000000000000012 && 0x80000001C90CA340 == a2;
    if (v50 || (OUTLINED_FUNCTION_14_3() & 1) != 0)
    {

      v9 = 7;
      goto LABEL_7;
    }

    goto LABEL_69;
  }

  *a3 = 2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  return result;
}

void sub_1C8E30978(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x1E69AC288];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  v8 = v8 && v2 == v7;
  if (v8)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  v10 = *MEMORY[0x1E69AC290];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v11)
  {

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_17:
    v9 = 2;
    goto LABEL_9;
  }

  v13 = *MEMORY[0x1E69AC298];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v14)
  {

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_25:
    v9 = 3;
    goto LABEL_9;
  }

  v16 = *MEMORY[0x1E69AC2A0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v17)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_33:
    v9 = 4;
    goto LABEL_9;
  }

  v19 = *MEMORY[0x1E69AC280];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v20)
  {

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_41:
    v9 = 5;
    goto LABEL_9;
  }

  v22 = *MEMORY[0x1E69AC2A8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v23)
  {

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_49:
    v9 = 6;
    goto LABEL_9;
  }

  v25 = *MEMORY[0x1E69AC2B0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v26)
  {

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_57:
    v9 = 7;
    goto LABEL_9;
  }

  v28 = *MEMORY[0x1E69AC2E0];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v29)
  {

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_65:
    v9 = 9;
    goto LABEL_9;
  }

  v31 = *MEMORY[0x1E69AC2E8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v32)
  {

    goto LABEL_73;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_73:
    v9 = 10;
    goto LABEL_9;
  }

  v34 = *MEMORY[0x1E69AC270];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v35)
  {

    goto LABEL_81;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_81:
    v9 = 11;
    goto LABEL_9;
  }

  v37 = *MEMORY[0x1E69AC2C8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v38)
  {

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_89:
    v9 = 13;
    goto LABEL_9;
  }

  v40 = *MEMORY[0x1E69AC2F8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v41)
  {

    goto LABEL_97;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_97:
    v9 = 15;
    goto LABEL_9;
  }

  v43 = *MEMORY[0x1E69AC300];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v44)
  {

    goto LABEL_105;
  }

  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_33_12();

  if (v3)
  {

LABEL_105:
    v9 = 16;
    goto LABEL_9;
  }

  v46 = *MEMORY[0x1E69AC2B8];
  sub_1C9063EEC();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_22_21();
  if (v8 && v2 == v47)
  {

    v9 = 14;
  }

  else
  {
    v49 = OUTLINED_FUNCTION_5_29();

    v9 = 14;
    if ((v49 & 1) == 0)
    {
      v9 = 0;
    }
  }

LABEL_9:
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
}

uint64_t sub_1C8E30E98()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_1C8D2FD1C();
}

uint64_t sub_1C8E30FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 32);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = *(a2 + 32);
  return sub_1C8E5A270(v8, v10, a3, a4, a5) & 1;
}

uint64_t sub_1C8E31028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C90CA320 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x80000001C90CA2E0 == a2)
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

uint64_t sub_1C8E31140(char a1)
{
  if (!a1)
  {
    return 0x7974706D65;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_1C8E311A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E31028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E311C8(uint64_t a1)
{
  v2 = sub_1C8E35FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E31204(uint64_t a1)
{
  v2 = sub_1C8E35FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E31240(uint64_t a1)
{
  v2 = sub_1C8E360A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3127C(uint64_t a1)
{
  v2 = sub_1C8E360A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E312B8(uint64_t a1)
{
  v2 = sub_1C8E3604C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E312F4(uint64_t a1)
{
  v2 = sub_1C8E3604C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E31330(uint64_t a1)
{
  v2 = sub_1C8E35FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3136C(uint64_t a1)
{
  v2 = sub_1C8E35FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemTypeProtocol.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v54 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C88, &qword_1C9088D60);
  v6 = OUTLINED_FUNCTION_11(v5);
  v49 = v7;
  v50 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v48 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C90, &qword_1C9088D68);
  v13 = OUTLINED_FUNCTION_11(v12);
  v46 = v14;
  v47 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316C98, &qword_1C9088D70);
  OUTLINED_FUNCTION_11(v20);
  v45 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_38();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CA0, &qword_1C9088D78);
  v26 = OUTLINED_FUNCTION_11(v25);
  v52 = v27;
  v53 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v31 = v0[1];
  v51 = *v0;
  v44 = v31;
  v32 = *(v0 + 16);
  v33 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C8E35FA4();
  sub_1C9064E1C();
  if (v32)
  {
    if (v32 != 1)
    {
      sub_1C8E360A0();
      OUTLINED_FUNCTION_31_12();
      (*(v45 + 8))(v2, v20);
      v42 = OUTLINED_FUNCTION_48_9();
      v43(v42);
      goto LABEL_7;
    }

    sub_1C8E35FF8();
    v34 = v48;
    OUTLINED_FUNCTION_31_12();
    v55 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
    OUTLINED_FUNCTION_30_18();
    sub_1C8E360F4(v35, v36);
    v37 = v50;
    sub_1C9064B8C();
    (*(v49 + 8))(v34, v37);
  }

  else
  {
    sub_1C8E3604C();
    OUTLINED_FUNCTION_31_12();
    v38 = v47;
    sub_1C9064B2C();
    OUTLINED_FUNCTION_38_13();
    v39(v19, v38);
  }

  v40 = OUTLINED_FUNCTION_48_9();
  v41(v40);
LABEL_7:
  OUTLINED_FUNCTION_198();
}

void SystemTypeProtocol.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v76 = v0;
  v2 = v1;
  v73 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CD0, &qword_1C9088D88);
  v71 = OUTLINED_FUNCTION_11(v4);
  v72 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v75 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CD8, &qword_1C9088D90);
  v69 = OUTLINED_FUNCTION_11(v10);
  v70 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CE0, &qword_1C9088D98);
  OUTLINED_FUNCTION_11(v15);
  v68 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CE8, &unk_1C9088DA0);
  OUTLINED_FUNCTION_11(v22);
  v74 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v65 - v27;
  v29 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8E35FA4();
  v30 = v76;
  sub_1C9064DEC();
  if (v30)
  {
    goto LABEL_9;
  }

  v66 = v15;
  v67 = v21;
  v76 = v2;
  v31 = sub_1C9064A9C();
  sub_1C8CB8914(v31, 0);
  if (v33 == v34 >> 1)
  {
LABEL_8:
    v41 = sub_1C90647DC();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v43 = &type metadata for SystemTypeProtocol.Metadata;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    v45 = OUTLINED_FUNCTION_9_21();
    v46(v45);
    v2 = v76;
LABEL_9:
    v47 = v2;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_198();
    return;
  }

  v65[1] = 0;
  if (v33 < (v34 >> 1))
  {
    v35 = *(v32 + v33);
    sub_1C8CB891C(v33 + 1);
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    if (v37 == v39 >> 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          sub_1C8E3604C();
          OUTLINED_FUNCTION_32_10();
          v40 = v73;
          v55 = sub_1C9064A0C();
          v57 = v56;
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_47_9();
          v59(v58);
          v60 = OUTLINED_FUNCTION_9_21();
          v61(v60);
          v62 = 0;
        }

        else
        {
          sub_1C8E35FF8();
          OUTLINED_FUNCTION_32_10();
          v40 = v73;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
          OUTLINED_FUNCTION_28_13();
          sub_1C8E360F4(v52, v53);
          sub_1C9064A6C();
          v54 = v74;
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_49_8();
          v64(v63);
          (*(v54 + 8))(v28, v22);
          v57 = 0;
          v55 = v77;
          v62 = 1;
        }
      }

      else
      {
        sub_1C8E360A0();
        v48 = v67;
        OUTLINED_FUNCTION_32_10();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_38_13();
        v49(v48, v66);
        v50 = OUTLINED_FUNCTION_9_21();
        v51(v50);
        v55 = 0;
        v57 = 0;
        v62 = 2;
        v40 = v73;
      }

      *v40 = v55;
      *(v40 + 8) = v57;
      *(v40 + 16) = v62;
      v47 = v76;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double SystemTypeProtocol.init(from:metadata:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = a1;
  sub_1C8E30978(v5, &v25);
  v19 = v25;
  v20 = v26;
  v6 = v27;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain();
    v9 = [v8 actionIdentifier];
    v10 = sub_1C9063EEC();
    v12 = v11;
    swift_unknownObjectRelease();

    v13 = 0;
  }

  else
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      swift_unknownObjectRetain();
      v16 = [v15 supportedContentTypes];
      sub_1C9063C4C();
      v10 = sub_1C906419C();
      swift_unknownObjectRelease();

      v12 = 0;
      v13 = 1;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v13 = 2;
    }
  }

  v25 = v19;
  v26 = v20;
  v27 = v6;
  v21[0] = v10;
  v21[1] = v12;
  v22 = v13;
  SystemTypeProtocol.init(from:metadata:)(&v25, v21, v23);

  swift_unknownObjectRelease();
  if (!v3)
  {
    v18 = v23[1];
    *a2 = v23[0];
    a2[1] = v18;
    a2[2] = v24[0];
    result = *(v24 + 9);
    *(a2 + 41) = *(v24 + 9);
  }

  return result;
}

uint64_t SystemTypeProtocol.init(from:metadata:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v16[0] = *a1;
  v16[1] = v6;
  v16[2] = v7;
  v16[3] = v8;
  v17 = v9;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  if (v9 != 2)
  {
    goto LABEL_52;
  }

  v13 = v7 | v6 | v8;
  if (v5 == 1 && !v13)
  {
    OUTLINED_FUNCTION_27_12();
    v11 = 1;
    goto LABEL_54;
  }

  if (v5 == 2 && !v13)
  {
    OUTLINED_FUNCTION_27_12();
    v11 = 2;
    goto LABEL_54;
  }

  if (v5 == 3 && !v13)
  {
    v10 = 0;
    v11 = 3;
LABEL_53:
    v3 = 3;
    goto LABEL_54;
  }

  if (v5 == 4 && !v13)
  {
    OUTLINED_FUNCTION_27_12();
    v11 = 4;
    goto LABEL_54;
  }

  if (v5 == 5 && !v13)
  {
    OUTLINED_FUNCTION_27_12();
    v11 = 5;
    goto LABEL_54;
  }

  if (v5 == 6 && !v13)
  {
    OUTLINED_FUNCTION_27_12();
    v11 = 6;
    goto LABEL_54;
  }

  if (v5 == 7 && !v13)
  {
    OUTLINED_FUNCTION_27_12();
    v11 = 7;
    goto LABEL_54;
  }

  if (v5 == 9 && !v13)
  {
    OUTLINED_FUNCTION_27_12();
    v11 = 9;
    goto LABEL_54;
  }

  if (v5 != 10 || v13)
  {
    if (v5 == 11 && !v13)
    {
      OUTLINED_FUNCTION_27_12();
      v11 = 11;
      goto LABEL_54;
    }

    if (v5 == 12 && !v13)
    {
      if (v12)
      {
        goto LABEL_29;
      }

LABEL_37:

      v3 = 1;
      goto LABEL_54;
    }

    if (v5 == 13 && !v13)
    {
      OUTLINED_FUNCTION_27_12();
      v11 = 12;
      goto LABEL_54;
    }

    if (v5 != 14 || v13)
    {
      if (v5 == 15 && !v13)
      {
        OUTLINED_FUNCTION_27_12();
        v11 = 13;
        goto LABEL_54;
      }

      if (v5 == 16 && !v13)
      {
        OUTLINED_FUNCTION_27_12();
        v11 = 14;
        goto LABEL_54;
      }
    }

    else if (v12 == 1)
    {

      v3 = 2;
      goto LABEL_54;
    }

LABEL_52:
    v11 = 0;
    v10 = 0;
    goto LABEL_53;
  }

  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v12 == 1)
  {
    sub_1C8E361C0();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return sub_1C8D14208(v16, &qword_1EC316CF0, &qword_1C9088DB0);
  }

  OUTLINED_FUNCTION_27_12();
  v11 = 10;
LABEL_54:
  result = sub_1C8D14208(v16, &qword_1EC316CF0, &qword_1C9088DB0);
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = v3;
  return result;
}

uint64_t static SystemTypeProtocol.== infix(_:_:)(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v84 = *a1;
  v85 = v8;
  *v86 = a1[2];
  v9 = *v86;
  v10 = a2[1];
  v87 = *a2;
  v88 = v10;
  v12 = *a2;
  v11 = a2[1];
  *v89 = a2[2];
  *&v89[9] = *(a2 + 41);
  v13 = *(a1 + 41);
  *&v86[9] = v13;
  v90[0] = v84;
  v90[1] = v8;
  v91[0] = v9;
  *(v91 + 9) = v13;
  *(v92 + 9) = *(a2 + 41);
  v14 = a2[2];
  v91[3] = v11;
  v92[0] = v14;
  v91[2] = v12;
  v15 = *(&v84 + 1);
  switch(HIBYTE(v13))
  {
    case 1:
      if (v89[24] != 1)
      {
        goto LABEL_103;
      }

      v37 = v84 == v87 && *(&v84 + 1) == *(&v87 + 1);
      if (!v37)
      {
        v16 = sub_1C9064C2C();
        goto LABEL_19;
      }

      v50 = OUTLINED_FUNCTION_55_6(a1, *(&v84 + 1), v87, *(&v87 + 1), a5, a6, a7, a8, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1));
      OUTLINED_FUNCTION_54_6(v50, v51, v52, v53, v54, v55, v56, v57, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
      goto LABEL_102;
    case 2:
      if (v89[24] != 2)
      {
        goto LABEL_103;
      }

      v24 = OUTLINED_FUNCTION_55_6(a1, *(&v84 + 1), a3, a4, a5, a6, a7, a8, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1));
      OUTLINED_FUNCTION_54_6(v24, v25, v26, v27, v28, v29, v30, v31, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
      sub_1C8CEAF48();
      v33 = v32;
      goto LABEL_20;
    case 3:
      v34 = *v86 | *&v86[8] | (v13 >> 56);
      if (v8 | *(&v84 + 1) | v84 | *(&v8 + 1) | v34)
      {
        v35 = v8 | *(&v84 + 1) | *(&v8 + 1) | v34;
        if (v84 != 1 || v35)
        {
          if (v84 != 2 || v35)
          {
            if (v84 != 3 || v35)
            {
              if (v84 != 4 || v35)
              {
                if (v84 != 5 || v35)
                {
                  if (v84 != 6 || v35)
                  {
                    if (v84 != 7 || v35)
                    {
                      if (v84 != 8 || v35)
                      {
                        if (v84 != 9 || v35)
                        {
                          if (v84 != 10 || v35)
                          {
                            if (v84 != 11 || v35)
                            {
                              if (v84 != 12 || v35)
                              {
                                if (v84 != 13 || v35)
                                {
                                  OUTLINED_FUNCTION_21_13();
                                  if (!v37 || v87 != 14)
                                  {
                                    goto LABEL_103;
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_21_13();
                                  if (!v37 || v87 != 13)
                                  {
                                    goto LABEL_103;
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_21_13();
                                if (!v37 || v87 != 12)
                                {
                                  goto LABEL_103;
                                }
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_21_13();
                              if (!v37 || v87 != 11)
                              {
                                goto LABEL_103;
                              }
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_21_13();
                            if (!v37 || v87 != 10)
                            {
                              goto LABEL_103;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_21_13();
                          if (!v37 || v87 != 9)
                          {
                            goto LABEL_103;
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_21_13();
                        if (!v37 || v87 != 8)
                        {
                          goto LABEL_103;
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_21_13();
                      if (!v37 || v87 != 7)
                      {
                        goto LABEL_103;
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_21_13();
                    if (!v37 || v87 != 6)
                    {
                      goto LABEL_103;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_21_13();
                  if (!v37 || v87 != 5)
                  {
                    goto LABEL_103;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_21_13();
                if (!v37 || v87 != 4)
                {
                  goto LABEL_103;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_13();
              if (!v37 || v87 != 3)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_21_13();
            if (!v37 || v87 != 2)
            {
              goto LABEL_103;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_13();
          if (!v37 || v87 != 1)
          {
            goto LABEL_103;
          }
        }

        v49 = *(&v87 + 1);
        v58 = vorrq_s8(*(v36 + 88), *(v36 + 104));
        v48 = *&vorr_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL)) | v88;
      }

      else
      {
        OUTLINED_FUNCTION_21_13();
        if (!v37)
        {
          goto LABEL_103;
        }

        v47 = vorrq_s8(*(v46 + 88), *(v46 + 104));
        v48 = *&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | v88;
        v49 = *(&v87 + 1) | v87;
      }

      if (!(v48 | v49))
      {
LABEL_102:
        sub_1C8D14208(v90, &qword_1EC316CF8, &qword_1C9088DB8);
        v33 = 1;
        return v33 & 1;
      }

LABEL_103:
      v59 = OUTLINED_FUNCTION_55_6(a1, v15, a3, a4, a5, a6, a7, a8, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1));
      OUTLINED_FUNCTION_54_6(v59, v60, v61, v62, v63, v64, v65, v66, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
      sub_1C8D14208(v90, &qword_1EC316CF8, &qword_1C9088DB8);
      v33 = 0;
      return v33 & 1;
    default:
      if (v89[24])
      {
        goto LABEL_103;
      }

      v72 = v84;
      v73 = v8;
      v74 = *v86;
      v75 = v13 >> 56;
      v68 = v87;
      v69 = v88;
      v70 = *v89;
      v71 = *&v89[16];
      v16 = static AssistantSchemaIdentifier.== infix(_:_:)(&v72, &v68);
LABEL_19:
      v33 = v16;
      v38 = OUTLINED_FUNCTION_55_6(v16, v17, v18, v19, v20, v21, v22, v23, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1));
      OUTLINED_FUNCTION_54_6(v38, v39, v40, v41, v42, v43, v44, v45, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
LABEL_20:
      sub_1C8D14208(v90, &qword_1EC316CF8, &qword_1C9088DB8);
      return v33 & 1;
  }
}

uint64_t sub_1C8E325F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEF616D6568635374;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6363416C69616DLL && a2 == 0xEB00000000746E75;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726464416C69616DLL && a2 == 0xED00006565737365;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7373654D6C69616DLL && a2 == 0xEB00000000656761;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x786F626C69616DLL && a2 == 0xE700000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x654D746E65746E69 && a2 == 0xED00006567617373;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x476567617373656DLL && a2 == 0xEC00000070756F72;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x80000001C90CA340 == a2;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6569736E617274 && a2 == 0xEF797469746E4574;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E45657571696E75 && a2 == 0xEC00000079746974;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C62617461647075 && a2 == 0xEF797469746E4565;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4564657865646E69 && a2 == 0xED0000797469746ELL;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000015 && 0x80000001C90CA320 == a2;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000010 && 0x80000001C90CA300 == a2;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001ALL && 0x80000001C90CA2E0 == a2;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x65536C6175736976 && a2 == 0xEC00000068637261;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x65536C6175736976 && a2 == 0xEF52434F68637261)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1C9064C2C();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
        }
      }
    }
  }
}

unint64_t sub_1C8E32B88(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 0x6F6363416C69616DLL;
      break;
    case 3:
      result = 0x726464416C69616DLL;
      break;
    case 4:
      result = 0x7373654D6C69616DLL;
      break;
    case 5:
      result = 0x786F626C69616DLL;
      break;
    case 6:
      result = 0x654D746E65746E69;
      break;
    case 7:
      result = 0x476567617373656DLL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E6569736E617274;
      break;
    case 10:
      result = 0x6E45657571696E75;
      break;
    case 11:
      result = 0x6C62617461647075;
      break;
    case 12:
      result = 0x4564657865646E69;
      break;
    case 13:
      v3 = 5;
      goto LABEL_15;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      v3 = 10;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
    case 17:
      result = 0x65536C6175736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E32DE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C90C9C20 == a2)
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

uint64_t sub_1C8E32E60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C90CB6A0 == a2)
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

uint64_t sub_1C8E32EE0(uint64_t a1)
{
  v2 = sub_1C8E367A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E32F1C(uint64_t a1)
{
  v2 = sub_1C8E367A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E32F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E325F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E32F88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E32B80();
  *a1 = result;
  return result;
}

uint64_t sub_1C8E32FB0(uint64_t a1)
{
  v2 = sub_1C8E36214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E32FEC(uint64_t a1)
{
  v2 = sub_1C8E36214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33028(uint64_t a1)
{
  v2 = sub_1C8E3640C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E33064(uint64_t a1)
{
  v2 = sub_1C8E3640C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E330A0(uint64_t a1)
{
  v2 = sub_1C8E36604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E330DC(uint64_t a1)
{
  v2 = sub_1C8E36604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33118(uint64_t a1)
{
  v2 = sub_1C8E363B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E33154(uint64_t a1)
{
  v2 = sub_1C8E363B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33190(uint64_t a1)
{
  v2 = sub_1C8E36754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E331CC(uint64_t a1)
{
  v2 = sub_1C8E36754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33208(uint64_t a1)
{
  v2 = sub_1C8E36700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E33244(uint64_t a1)
{
  v2 = sub_1C8E36700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33280(uint64_t a1)
{
  v2 = sub_1C8E366AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E332BC(uint64_t a1)
{
  v2 = sub_1C8E366AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E332F8(uint64_t a1)
{
  v2 = sub_1C8E36658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E33334(uint64_t a1)
{
  v2 = sub_1C8E36658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33370(uint64_t a1)
{
  v2 = sub_1C8E365B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E333AC(uint64_t a1)
{
  v2 = sub_1C8E365B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E333E8(uint64_t a1)
{
  v2 = sub_1C8E3655C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E33424(uint64_t a1)
{
  v2 = sub_1C8E3655C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33460(uint64_t a1)
{
  v2 = sub_1C8E36310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3349C(uint64_t a1)
{
  v2 = sub_1C8E36310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E334D8(uint64_t a1)
{
  v2 = sub_1C8E36508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E33514(uint64_t a1)
{
  v2 = sub_1C8E36508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33550(uint64_t a1)
{
  v2 = sub_1C8E364B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3358C(uint64_t a1)
{
  v2 = sub_1C8E364B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E335C8(uint64_t a1)
{
  v2 = sub_1C8E367FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E33604(uint64_t a1)
{
  v2 = sub_1C8E367FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33640(uint64_t a1)
{
  v2 = sub_1C8E36460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3367C(uint64_t a1)
{
  v2 = sub_1C8E36460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E336B8(uint64_t a1)
{
  v2 = sub_1C8E36364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E336F4(uint64_t a1)
{
  v2 = sub_1C8E36364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E33730(uint64_t a1)
{
  v2 = sub_1C8E362BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3376C(uint64_t a1)
{
  v2 = sub_1C8E362BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E337A8(uint64_t a1)
{
  v2 = sub_1C8E36268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E337E4(uint64_t a1)
{
  v2 = sub_1C8E36268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SystemTypeProtocol.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v200 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D00, &qword_1C9088DC0);
  OUTLINED_FUNCTION_4_22(v26, &v178);
  v172[4] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D08, &qword_1C9088DC8);
  OUTLINED_FUNCTION_4_22(v32, &v175);
  v172[1] = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D10, &qword_1C9088DD0);
  v39 = OUTLINED_FUNCTION_11(v38);
  v193 = v40;
  v194 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v192 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D18, &qword_1C9088DD8);
  OUTLINED_FUNCTION_4_22(v45, &v181);
  v172[7] = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D20, &qword_1C9088DE0);
  v52 = OUTLINED_FUNCTION_11(v51);
  v190 = v53;
  v191 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  v189 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D28, &qword_1C9088DE8);
  OUTLINED_FUNCTION_4_22(v58, &v184);
  v172[10] = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D30, &qword_1C9088DF0);
  OUTLINED_FUNCTION_4_22(v64, &v187);
  v172[13] = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D38, &qword_1C9088DF8);
  OUTLINED_FUNCTION_4_22(v70, &v190);
  v172[16] = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D40, &qword_1C9088E00);
  OUTLINED_FUNCTION_4_22(v76, &v193);
  v172[19] = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D48, &qword_1C9088E08);
  OUTLINED_FUNCTION_4_22(v82, &v196);
  v172[22] = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D50, &qword_1C9088E10);
  OUTLINED_FUNCTION_4_22(v88, &v199);
  v172[25] = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D58, &qword_1C9088E18);
  OUTLINED_FUNCTION_4_22(v94, &v202);
  v172[28] = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D60, &qword_1C9088E20);
  OUTLINED_FUNCTION_4_22(v100, &v205);
  v172[31] = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D68, &qword_1C9088E28);
  OUTLINED_FUNCTION_4_22(v106, &v208);
  v175 = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D70, &qword_1C9088E30);
  OUTLINED_FUNCTION_4_22(v112, &a11);
  v178 = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D78, &qword_1C9088E38);
  OUTLINED_FUNCTION_4_22(v118, &a14);
  v181 = v119;
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D80, &qword_1C9088E40);
  v125 = OUTLINED_FUNCTION_11(v124);
  v187 = v126;
  v188 = v125;
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D88, &qword_1C9088E48);
  OUTLINED_FUNCTION_4_22(v131, &a17);
  v184 = v132;
  v134 = *(v133 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316D90, &qword_1C9088E50);
  v198 = OUTLINED_FUNCTION_11(v137);
  v199 = v138;
  v140 = *(v139 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v141);
  v143 = v172 - v142;
  v144 = v20[1];
  a10 = *v20;
  v146 = v20[2];
  v145 = v20[3];
  v147 = v20[5];
  v195 = v20[4];
  v196 = v144;
  v148 = v20[6];
  v149 = *(v20 + 56);
  v150 = v25;
  v152 = v25[3];
  v151 = v25[4];
  v153 = __swift_project_boxed_opaque_existential_1(v150, v152);
  sub_1C8E36214();
  v197 = v143;
  sub_1C9064E1C();
  switch(v149)
  {
    case 1uLL:
      LOBYTE(v201) = 13;
      sub_1C8E363B8();
      v161 = v189;
      OUTLINED_FUNCTION_40_13();
      v164 = v191;
      sub_1C9064B2C();
      v165 = v190;
      goto LABEL_9;
    case 2uLL:
      LOBYTE(v201) = 15;
      sub_1C8E36310();
      v161 = v192;
      OUTLINED_FUNCTION_40_13();
      v201 = a10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
      OUTLINED_FUNCTION_30_18();
      sub_1C8E360F4(v162, v163);
      v164 = v194;
      sub_1C9064B8C();
      v165 = v193;
LABEL_9:
      (*(v165 + 8))(v161, v164);
      OUTLINED_FUNCTION_38_13();
      v159 = v149;
      v160 = v147;
      goto LABEL_10;
    case 3uLL:
      v166 = v195 | v147 | v148;
      if (v146 | v196 | a10 | v145 | v166)
      {
        v167 = v146 | v196 | v145 | v166;
        if (a10 != 1 || v167)
        {
          if (a10 != 2 || v167)
          {
            if (a10 != 3 || v167)
            {
              if (a10 != 4 || v167)
              {
                if (a10 != 5 || v167)
                {
                  if (a10 != 6 || v167)
                  {
                    if (a10 != 7 || v167)
                    {
                      if (a10 != 8 || v167)
                      {
                        if (a10 != 9 || v167)
                        {
                          if (a10 != 10 || v167)
                          {
                            if (a10 != 11 || v167)
                            {
                              if (a10 != 12 || v167)
                              {
                                if (a10 != 13 || v167)
                                {
                                  LOBYTE(v201) = 17;
                                  sub_1C8E36268();
                                  OUTLINED_FUNCTION_4_31(&v176);
                                  v168 = OUTLINED_FUNCTION_6_26(&v177);
                                  v170 = &v178;
                                }

                                else
                                {
                                  LOBYTE(v201) = 16;
                                  sub_1C8E362BC();
                                  OUTLINED_FUNCTION_4_31(&v173);
                                  v168 = OUTLINED_FUNCTION_6_26(&v174);
                                  v170 = &v175;
                                }
                              }

                              else
                              {
                                LOBYTE(v201) = 14;
                                sub_1C8E36364();
                                OUTLINED_FUNCTION_4_31(&v179);
                                v168 = OUTLINED_FUNCTION_6_26(&v180);
                                v170 = &v181;
                              }
                            }

                            else
                            {
                              LOBYTE(v201) = 12;
                              sub_1C8E3640C();
                              OUTLINED_FUNCTION_4_31(&v182);
                              v168 = OUTLINED_FUNCTION_6_26(&v183);
                              v170 = &v184;
                            }
                          }

                          else
                          {
                            LOBYTE(v201) = 11;
                            sub_1C8E36460();
                            OUTLINED_FUNCTION_4_31(&v185);
                            v168 = OUTLINED_FUNCTION_6_26(&v186);
                            v170 = &v187;
                          }
                        }

                        else
                        {
                          LOBYTE(v201) = 10;
                          sub_1C8E364B4();
                          OUTLINED_FUNCTION_4_31(&v188);
                          v168 = OUTLINED_FUNCTION_6_26(&v189);
                          v170 = &v190;
                        }
                      }

                      else
                      {
                        LOBYTE(v201) = 9;
                        sub_1C8E36508();
                        OUTLINED_FUNCTION_4_31(&v191);
                        v168 = OUTLINED_FUNCTION_6_26(&v192);
                        v170 = &v193;
                      }
                    }

                    else
                    {
                      LOBYTE(v201) = 8;
                      sub_1C8E3655C();
                      OUTLINED_FUNCTION_4_31(&v194);
                      v168 = OUTLINED_FUNCTION_6_26(&v195);
                      v170 = &v196;
                    }
                  }

                  else
                  {
                    LOBYTE(v201) = 7;
                    sub_1C8E365B0();
                    OUTLINED_FUNCTION_4_31(&v197);
                    v168 = OUTLINED_FUNCTION_6_26(&v198);
                    v170 = &v199;
                  }
                }

                else
                {
                  LOBYTE(v201) = 6;
                  sub_1C8E36604();
                  OUTLINED_FUNCTION_4_31(&v200);
                  v168 = OUTLINED_FUNCTION_6_26(&v201);
                  v170 = &v202;
                }
              }

              else
              {
                LOBYTE(v201) = 5;
                sub_1C8E36658();
                OUTLINED_FUNCTION_4_31(&v203);
                v168 = OUTLINED_FUNCTION_6_26(&v204);
                v170 = &v205;
              }
            }

            else
            {
              LOBYTE(v201) = 4;
              sub_1C8E366AC();
              OUTLINED_FUNCTION_4_31(&v206);
              v168 = OUTLINED_FUNCTION_6_26(&v207);
              v170 = &v208;
            }
          }

          else
          {
            LOBYTE(v201) = 3;
            sub_1C8E36700();
            OUTLINED_FUNCTION_4_31(&a9);
            v168 = OUTLINED_FUNCTION_6_26(&a10);
            v170 = &a11;
          }
        }

        else
        {
          LOBYTE(v201) = 2;
          sub_1C8E36754();
          OUTLINED_FUNCTION_4_31(&a12);
          v168 = OUTLINED_FUNCTION_6_26(&a13);
          v170 = &a14;
        }
      }

      else
      {
        LOBYTE(v201) = 0;
        sub_1C8E367FC();
        OUTLINED_FUNCTION_4_31(&a15);
        v168 = OUTLINED_FUNCTION_6_26(&a16);
        v170 = &a17;
      }

      v169(v168, *(v170 - 32));
      OUTLINED_FUNCTION_38_13();
      v171(v153, v145);
      goto LABEL_50;
    default:
      LOBYTE(v201) = 1;
      sub_1C8E367A8();
      v154 = v186;
      v156 = v197;
      v155 = v198;
      sub_1C9064ACC();
      v201 = a10;
      v202 = v196;
      v203 = v146;
      v204 = v145;
      v205 = v195;
      v206 = v147;
      v207 = v148;
      sub_1C8E28354();
      v157 = v188;
      sub_1C9064B8C();
      (*(v187 + 8))(v154, v157);
      OUTLINED_FUNCTION_38_13();
      v159 = v156;
      v160 = v155;
LABEL_10:
      v158(v159, v160);
LABEL_50:
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t SystemTypeProtocol.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  switch(*(v1 + 56))
  {
    case 1:
      MEMORY[0x1CCA82810](13);
      goto LABEL_15;
    case 2:
      MEMORY[0x1CCA82810](15);

      result = sub_1C8D03724(a1, v2);
      break;
    case 3:
      v9 = v6 | *(v1 + 40) | *(v1 + 48);
      if (v5 | v3 | v2 | v4 | v9)
      {
        v10 = v5 | v3 | v4 | v9;
        if (v2 == 1 && v10 == 0)
        {
          v12 = 2;
        }

        else if (v2 != 2 || v10)
        {
          if (v2 != 3 || v10)
          {
            if (v2 != 4 || v10)
            {
              if (v2 != 5 || v10)
              {
                if (v2 != 6 || v10)
                {
                  if (v2 != 7 || v10)
                  {
                    if (v2 != 8 || v10)
                    {
                      if (v2 != 9 || v10)
                      {
                        if (v2 != 10 || v10)
                        {
                          if (v2 != 11 || v10)
                          {
                            if (v2 != 12 || v10)
                            {
                              if (v2 != 13 || v10)
                              {
                                v12 = 17;
                              }

                              else
                              {
                                v12 = 16;
                              }
                            }

                            else
                            {
                              v12 = 14;
                            }
                          }

                          else
                          {
                            v12 = 12;
                          }
                        }

                        else
                        {
                          v12 = 11;
                        }
                      }

                      else
                      {
                        v12 = 10;
                      }
                    }

                    else
                    {
                      v12 = 9;
                    }
                  }

                  else
                  {
                    v12 = 8;
                  }
                }

                else
                {
                  v12 = 7;
                }
              }

              else
              {
                v12 = 6;
              }
            }

            else
            {
              v12 = 5;
            }
          }

          else
          {
            v12 = 4;
          }
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {
        v12 = 0;
      }

      result = MEMORY[0x1CCA82810](v12);
      break;
    default:
      MEMORY[0x1CCA82810](1);
      sub_1C9063FBC();
      MEMORY[0x1CCA82830](v5);
      MEMORY[0x1CCA82830](v4);
      MEMORY[0x1CCA82830](v6);
LABEL_15:

      result = sub_1C9063FBC();
      break;
  }

  return result;
}

uint64_t SystemTypeProtocol.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  SystemTypeProtocol.hash(into:)(v1);
  return sub_1C9064DBC();
}

void SystemTypeProtocol.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v298 = v26;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316DE8, &qword_1C9088E58);
  OUTLINED_FUNCTION_11(v297);
  v281 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v296 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316DF0, &qword_1C9088E60);
  OUTLINED_FUNCTION_4_22(v32, &a10);
  v279 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v294 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316DF8, &qword_1C9088E68);
  OUTLINED_FUNCTION_4_22(v38, &a13);
  v282 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v295 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E00, &qword_1C9088E70);
  OUTLINED_FUNCTION_4_22(v44, &v307);
  v275 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v292 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E08, &qword_1C9088E78);
  OUTLINED_FUNCTION_4_22(v50, &v308);
  v276 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v293 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E10, &qword_1C9088E80);
  OUTLINED_FUNCTION_4_22(v56, &v305 + 8);
  v273 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v291 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E18, &qword_1C9088E88);
  OUTLINED_FUNCTION_4_22(v62, &v304);
  v271 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_97();
  v290 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E20, &qword_1C9088E90);
  OUTLINED_FUNCTION_4_22(v68, &v302);
  v269 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_97();
  v289 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E28, &qword_1C9088E98);
  OUTLINED_FUNCTION_4_22(v74, &v300);
  v267 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_97();
  v301 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E30, &qword_1C9088EA0);
  OUTLINED_FUNCTION_4_22(v80, &v298);
  v265 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E38, &qword_1C9088EA8);
  OUTLINED_FUNCTION_4_22(v86, &v291);
  v264 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E40, &qword_1C9088EB0);
  OUTLINED_FUNCTION_4_22(v92, &v295);
  v262 = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_97();
  v300 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E48, &qword_1C9088EB8);
  OUTLINED_FUNCTION_4_22(v98, &v293);
  v260 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_97();
  v299 = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E50, &qword_1C9088EC0);
  OUTLINED_FUNCTION_4_22(v104, &v290);
  v257 = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E58, &qword_1C9088EC8);
  OUTLINED_FUNCTION_4_22(v110, &v288);
  v255 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E60, &qword_1C9088ED0);
  OUTLINED_FUNCTION_4_22(v116, &v284);
  v251 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E68, &qword_1C9088ED8);
  OUTLINED_FUNCTION_4_22(v122, &v286);
  v253 = v123;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v126);
  v128 = v246 - v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E70, &qword_1C9088EE0);
  OUTLINED_FUNCTION_11(v129);
  v250 = v130;
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_38();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316E78, &qword_1C9088EE8);
  OUTLINED_FUNCTION_11(v134);
  v136 = v135;
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v139);
  v141 = v246 - v140;
  v142 = v25[3];
  v143 = v25[4];
  v302 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v142);
  sub_1C8E36214();
  v144 = a10;
  sub_1C9064DEC();
  if (v144)
  {
    goto LABEL_10;
  }

  v248 = v21;
  v247 = v129;
  v249 = v128;
  v145 = v299;
  v146 = v300;
  v147 = v301;
  a10 = v136;
  v148 = sub_1C9064A9C();
  sub_1C8CB8914(v148, 0);
  if (v150 == v151 >> 1)
  {
    v152 = a10;
LABEL_9:
    v166 = sub_1C90647DC();
    swift_allocError();
    v168 = v167;
    v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v168 = &type metadata for SystemTypeProtocol;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    (*(*(v166 - 8) + 104))(v168, *MEMORY[0x1E69E6AF8], v166);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v152 + 8))(v141, v134);
LABEL_10:
    v170 = v302;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v170);
    OUTLINED_FUNCTION_198();
    return;
  }

  v246[1] = 0;
  if (v150 < (v151 >> 1))
  {
    v246[0] = *(v149 + v150);
    sub_1C8CB891C(v150 + 1);
    v154 = v153;
    v156 = v155;
    swift_unknownObjectRelease();
    if (v154 == v156 >> 1)
    {
      v157 = v297;
      v158 = v298;
      switch(v246[0])
      {
        case 1:
          LOBYTE(v303) = 1;
          sub_1C8E367A8();
          v212 = v249;
          OUTLINED_FUNCTION_13_19();
          sub_1C8E28C20();
          v213 = v254;
          sub_1C9064A6C();
          v170 = v302;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&v285);
          v241(v212, v213);
          OUTLINED_FUNCTION_15_19();
          v242(v141, v134);
          v175 = 0;
          v163 = v303;
          v145 = v304;
          v165 = v305;
          v240 = v306;
          v164 = v307;
          goto LABEL_31;
        case 2:
          LOBYTE(v303) = 2;
          sub_1C8E36754();
          v145 = v284;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v196 = OUTLINED_FUNCTION_23(&v283);
          v197(v196, v252);
          v198 = OUTLINED_FUNCTION_2_44();
          v199(v198);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 1;
          goto LABEL_30;
        case 3:
          LOBYTE(v303) = 3;
          sub_1C8E36700();
          v145 = v285;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v204 = OUTLINED_FUNCTION_23(&v287);
          v205(v204, v256);
          v206 = OUTLINED_FUNCTION_2_44();
          v207(v206);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 2;
          goto LABEL_30;
        case 4:
          LOBYTE(v303) = 4;
          sub_1C8E366AC();
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v184 = OUTLINED_FUNCTION_23(&v289);
          v185(v184, v258);
          v186 = OUTLINED_FUNCTION_2_44();
          v187(v186);
          v145 = 0;
          v164 = 0;
          v165 = 0uLL;
          v163 = 3;
          goto LABEL_16;
        case 5:
          LOBYTE(v303) = 5;
          sub_1C8E36658();
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v218 = OUTLINED_FUNCTION_23(&v292);
          v219(v218, v261);
          v220 = OUTLINED_FUNCTION_2_44();
          v221(v220);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 4;
          goto LABEL_30;
        case 6:
          LOBYTE(v303) = 6;
          sub_1C8E36604();
          v145 = v146;
          OUTLINED_FUNCTION_13_19();
          swift_unknownObjectRelease();
          v225 = OUTLINED_FUNCTION_23(&v294);
          v226(v225, v263);
          v227 = OUTLINED_FUNCTION_2_44();
          v228(v227);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 5;
          goto LABEL_30;
        case 7:
          LOBYTE(v303) = 7;
          sub_1C8E365B0();
          OUTLINED_FUNCTION_13_19();
          swift_unknownObjectRelease();
          v208 = OUTLINED_FUNCTION_6_26(&v296);
          v209(v208, v259);
          v210 = OUTLINED_FUNCTION_2_44();
          v211(v210);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 6;
          goto LABEL_30;
        case 8:
          LOBYTE(v303) = 8;
          sub_1C8E3655C();
          v145 = v288;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v233 = OUTLINED_FUNCTION_23(&v297);
          v234(v233, v266);
          v235 = OUTLINED_FUNCTION_2_44();
          v236(v235);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 7;
          goto LABEL_30;
        case 9:
          LOBYTE(v303) = 9;
          sub_1C8E36508();
          v145 = v147;
          OUTLINED_FUNCTION_13_19();
          swift_unknownObjectRelease();
          v192 = OUTLINED_FUNCTION_23(&v299);
          v193(v192, v268);
          v194 = OUTLINED_FUNCTION_2_44();
          v195(v194);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 8;
          goto LABEL_30;
        case 0xALL:
          LOBYTE(v303) = 10;
          sub_1C8E364B4();
          v145 = v289;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v229 = OUTLINED_FUNCTION_23(&v301);
          v230(v229, v270);
          v231 = OUTLINED_FUNCTION_2_44();
          v232(v231);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 9;
          goto LABEL_30;
        case 0xBLL:
          LOBYTE(v303) = 11;
          sub_1C8E36460();
          v145 = v290;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v180 = OUTLINED_FUNCTION_23(&v303);
          v181(v180, v272);
          v182 = OUTLINED_FUNCTION_2_44();
          v183(v182);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 10;
          goto LABEL_30;
        case 0xCLL:
          LOBYTE(v303) = 12;
          sub_1C8E3640C();
          v145 = v291;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v188 = OUTLINED_FUNCTION_23(&v305);
          v189(v188, v274);
          v190 = OUTLINED_FUNCTION_2_44();
          v191(v190);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 11;
          goto LABEL_30;
        case 0xDLL:
          LOBYTE(v303) = 13;
          sub_1C8E363B8();
          v222 = v293;
          OUTLINED_FUNCTION_13_19();
          v301 = v141;
          v223 = v278;
          v224 = sub_1C9064A0C();
          v170 = v302;
          v163 = v224;
          v145 = v243;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&v306 + 8);
          v244(v222, v223);
          OUTLINED_FUNCTION_15_19();
          v245(v301, v134);
          v175 = 1;
          goto LABEL_31;
        case 0xELL:
          LOBYTE(v303) = 14;
          sub_1C8E36364();
          v145 = v292;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v176 = OUTLINED_FUNCTION_23(&v306);
          v177(v176, v277);
          v178 = OUTLINED_FUNCTION_2_44();
          v179(v178);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 12;
          goto LABEL_30;
        case 0xFLL:
          LOBYTE(v303) = 15;
          sub_1C8E36310();
          v200 = v295;
          OUTLINED_FUNCTION_13_19();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316CB8, &qword_1C9088D80);
          OUTLINED_FUNCTION_28_13();
          sub_1C8E360F4(v201, v202);
          v203 = v283;
          sub_1C9064A6C();
          v145 = v200;
          v170 = v302;
          swift_unknownObjectRelease();
          v237 = OUTLINED_FUNCTION_23(&a12);
          v238(v237, v203);
          OUTLINED_FUNCTION_15_19();
          v239(v141, v134);
          v163 = v303;
          v175 = 2;
          goto LABEL_31;
        case 0x10:
          LOBYTE(v303) = 16;
          sub_1C8E362BC();
          v145 = v294;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v171 = OUTLINED_FUNCTION_23(&a9);
          v172(v171, v280);
          v173 = OUTLINED_FUNCTION_2_44();
          v174(v173);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 13;
          goto LABEL_30;
        case 0x11:
          LOBYTE(v303) = 17;
          sub_1C8E36268();
          v145 = v296;
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v214 = OUTLINED_FUNCTION_23(&a11);
          v215(v214, v157);
          v216 = OUTLINED_FUNCTION_2_44();
          v217(v216);
          *&v165 = OUTLINED_FUNCTION_2_1();
          v163 = 14;
          goto LABEL_30;
        default:
          LOBYTE(v303) = 0;
          sub_1C8E367FC();
          OUTLINED_FUNCTION_8_27();
          swift_unknownObjectRelease();
          v159 = OUTLINED_FUNCTION_23(&v282);
          v160(v159, v247);
          v161 = OUTLINED_FUNCTION_2_44();
          v162(v161);
          v163 = 0;
          v145 = 0;
          v164 = 0;
          v165 = 0uLL;
LABEL_16:
          v175 = 3;
LABEL_30:
          v240 = 0uLL;
          v170 = v302;
LABEL_31:
          *v158 = v163;
          *(v158 + 8) = v145;
          *(v158 + 16) = v165;
          *(v158 + 32) = v240;
          *(v158 + 48) = v164;
          *(v158 + 56) = v175;
          break;
      }

      goto LABEL_11;
    }

    v152 = a10;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C8E35E58()
{
  sub_1C9064D7C();
  SystemTypeProtocol.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E35ED4@<X0>(uint64_t *a1@<X8>)
{
  result = SystemTypeProtocol.Identifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C8E35EFC()
{
  result = qword_1EDA605A8;
  if (!qword_1EDA605A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605A8);
  }

  return result;
}

unint64_t sub_1C8E35F50()
{
  result = qword_1EDA605A0;
  if (!qword_1EDA605A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605A0);
  }

  return result;
}

unint64_t sub_1C8E35FA4()
{
  result = qword_1EC316CA8;
  if (!qword_1EC316CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CA8);
  }

  return result;
}

unint64_t sub_1C8E35FF8()
{
  result = qword_1EC316CB0;
  if (!qword_1EC316CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CB0);
  }

  return result;
}

unint64_t sub_1C8E3604C()
{
  result = qword_1EC316CC0;
  if (!qword_1EC316CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CC0);
  }

  return result;
}

unint64_t sub_1C8E360A0()
{
  result = qword_1EC316CC8;
  if (!qword_1EC316CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316CC8);
  }

  return result;
}

uint64_t sub_1C8E360F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316CB8, &qword_1C9088D80);
    sub_1C8E3617C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8E3617C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C9063C4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E361C0()
{
  result = qword_1EDA60A10;
  if (!qword_1EDA60A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A10);
  }

  return result;
}

unint64_t sub_1C8E36214()
{
  result = qword_1EDA63558;
  if (!qword_1EDA63558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63558);
  }

  return result;
}

unint64_t sub_1C8E36268()
{
  result = qword_1EC316D98;
  if (!qword_1EC316D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316D98);
  }

  return result;
}

unint64_t sub_1C8E362BC()
{
  result = qword_1EC316DA0;
  if (!qword_1EC316DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DA0);
  }

  return result;
}

unint64_t sub_1C8E36310()
{
  result = qword_1EC316DA8;
  if (!qword_1EC316DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DA8);
  }

  return result;
}

unint64_t sub_1C8E36364()
{
  result = qword_1EDA63460;
  if (!qword_1EDA63460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63460);
  }

  return result;
}

unint64_t sub_1C8E363B8()
{
  result = qword_1EC316DB0;
  if (!qword_1EC316DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DB0);
  }

  return result;
}

unint64_t sub_1C8E3640C()
{
  result = qword_1EC316DB8;
  if (!qword_1EC316DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DB8);
  }

  return result;
}

unint64_t sub_1C8E36460()
{
  result = qword_1EDA63488;
  if (!qword_1EDA63488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63488);
  }

  return result;
}

unint64_t sub_1C8E364B4()
{
  result = qword_1EDA634E0;
  if (!qword_1EDA634E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634E0);
  }

  return result;
}

unint64_t sub_1C8E36508()
{
  result = qword_1EC316DC0;
  if (!qword_1EC316DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DC0);
  }

  return result;
}

unint64_t sub_1C8E3655C()
{
  result = qword_1EC316DC8;
  if (!qword_1EC316DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DC8);
  }

  return result;
}

unint64_t sub_1C8E365B0()
{
  result = qword_1EC316DD0;
  if (!qword_1EC316DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DD0);
  }

  return result;
}

unint64_t sub_1C8E36604()
{
  result = qword_1EC316DD8;
  if (!qword_1EC316DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DD8);
  }

  return result;
}

unint64_t sub_1C8E36658()
{
  result = qword_1EDA60A28;
  if (!qword_1EDA60A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A28);
  }

  return result;
}

unint64_t sub_1C8E366AC()
{
  result = qword_1EDA63508;
  if (!qword_1EDA63508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63508);
  }

  return result;
}

unint64_t sub_1C8E36700()
{
  result = qword_1EDA60A18;
  if (!qword_1EDA60A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A18);
  }

  return result;
}

unint64_t sub_1C8E36754()
{
  result = qword_1EDA60A20;
  if (!qword_1EDA60A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A20);
  }

  return result;
}

unint64_t sub_1C8E367A8()
{
  result = qword_1EC316DE0;
  if (!qword_1EC316DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316DE0);
  }

  return result;
}

unint64_t sub_1C8E367FC()
{
  result = qword_1EDA63530;
  if (!qword_1EDA63530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63530);
  }

  return result;
}

unint64_t sub_1C8E36854()
{
  result = qword_1EC316E80;
  if (!qword_1EC316E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E80);
  }

  return result;
}

unint64_t sub_1C8E368AC()
{
  result = qword_1EC316E88;
  if (!qword_1EC316E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E88);
  }

  return result;
}

uint64_t sub_1C8E36900(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 57))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_1C8E36940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8E36994(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1C8E369C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_1C8E36A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C8E36A50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit18SystemTypeProtocolO8MetadataO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C8E36A94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1C8E36AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8E36B18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolSymbolIconColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemTypeProtocol.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E36DC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SystemTypeProtocol.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E36F94(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E37044()
{
  result = qword_1EC316E90;
  if (!qword_1EC316E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E90);
  }

  return result;
}

unint64_t sub_1C8E3709C()
{
  result = qword_1EC316E98;
  if (!qword_1EC316E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316E98);
  }

  return result;
}

unint64_t sub_1C8E370F4()
{
  result = qword_1EC316EA0;
  if (!qword_1EC316EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EA0);
  }

  return result;
}

unint64_t sub_1C8E3714C()
{
  result = qword_1EC316EA8;
  if (!qword_1EC316EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EA8);
  }

  return result;
}

unint64_t sub_1C8E371A4()
{
  result = qword_1EC316EB0;
  if (!qword_1EC316EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EB0);
  }

  return result;
}

unint64_t sub_1C8E371FC()
{
  result = qword_1EC316EB8;
  if (!qword_1EC316EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EB8);
  }

  return result;
}

unint64_t sub_1C8E37254()
{
  result = qword_1EC316EC0;
  if (!qword_1EC316EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EC0);
  }

  return result;
}

unint64_t sub_1C8E372AC()
{
  result = qword_1EC316EC8;
  if (!qword_1EC316EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EC8);
  }

  return result;
}

unint64_t sub_1C8E37304()
{
  result = qword_1EDA63520;
  if (!qword_1EDA63520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63520);
  }

  return result;
}

unint64_t sub_1C8E3735C()
{
  result = qword_1EDA63528;
  if (!qword_1EDA63528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63528);
  }

  return result;
}

unint64_t sub_1C8E373B4()
{
  result = qword_1EDA63490;
  if (!qword_1EDA63490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63490);
  }

  return result;
}

unint64_t sub_1C8E3740C()
{
  result = qword_1EDA63498;
  if (!qword_1EDA63498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63498);
  }

  return result;
}

unint64_t sub_1C8E37464()
{
  result = qword_1EDA63510;
  if (!qword_1EDA63510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63510);
  }

  return result;
}

unint64_t sub_1C8E374BC()
{
  result = qword_1EDA63518;
  if (!qword_1EDA63518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63518);
  }

  return result;
}

unint64_t sub_1C8E37514()
{
  result = qword_1EDA634A0;
  if (!qword_1EDA634A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634A0);
  }

  return result;
}

unint64_t sub_1C8E3756C()
{
  result = qword_1EDA634A8;
  if (!qword_1EDA634A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634A8);
  }

  return result;
}

unint64_t sub_1C8E375C4()
{
  result = qword_1EDA634F8;
  if (!qword_1EDA634F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634F8);
  }

  return result;
}

unint64_t sub_1C8E3761C()
{
  result = qword_1EDA63500;
  if (!qword_1EDA63500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63500);
  }

  return result;
}

unint64_t sub_1C8E37674()
{
  result = qword_1EDA63538;
  if (!qword_1EDA63538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63538);
  }

  return result;
}

unint64_t sub_1C8E376CC()
{
  result = qword_1EDA63540;
  if (!qword_1EDA63540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63540);
  }

  return result;
}

unint64_t sub_1C8E37724()
{
  result = qword_1EDA634B0;
  if (!qword_1EDA634B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634B0);
  }

  return result;
}

unint64_t sub_1C8E3777C()
{
  result = qword_1EDA634B8;
  if (!qword_1EDA634B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634B8);
  }

  return result;
}

unint64_t sub_1C8E377D4()
{
  result = qword_1EDA634E8;
  if (!qword_1EDA634E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634E8);
  }

  return result;
}

unint64_t sub_1C8E3782C()
{
  result = qword_1EDA634F0;
  if (!qword_1EDA634F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634F0);
  }

  return result;
}

unint64_t sub_1C8E37884()
{
  result = qword_1EDA63440;
  if (!qword_1EDA63440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63440);
  }

  return result;
}

unint64_t sub_1C8E378DC()
{
  result = qword_1EDA63448;
  if (!qword_1EDA63448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63448);
  }

  return result;
}

unint64_t sub_1C8E37934()
{
  result = qword_1EC316ED0;
  if (!qword_1EC316ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316ED0);
  }

  return result;
}

unint64_t sub_1C8E3798C()
{
  result = qword_1EC316ED8;
  if (!qword_1EC316ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316ED8);
  }

  return result;
}

unint64_t sub_1C8E379E4()
{
  result = qword_1EDA634D0;
  if (!qword_1EDA634D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634D0);
  }

  return result;
}

unint64_t sub_1C8E37A3C()
{
  result = qword_1EDA634D8;
  if (!qword_1EDA634D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634D8);
  }

  return result;
}

unint64_t sub_1C8E37A94()
{
  result = qword_1EDA63478;
  if (!qword_1EDA63478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63478);
  }

  return result;
}

unint64_t sub_1C8E37AEC()
{
  result = qword_1EDA63480;
  if (!qword_1EDA63480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63480);
  }

  return result;
}

unint64_t sub_1C8E37B44()
{
  result = qword_1EC316EE0;
  if (!qword_1EC316EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EE0);
  }

  return result;
}

unint64_t sub_1C8E37B9C()
{
  result = qword_1EC316EE8;
  if (!qword_1EC316EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EE8);
  }

  return result;
}

unint64_t sub_1C8E37BF4()
{
  result = qword_1EC316EF0;
  if (!qword_1EC316EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EF0);
  }

  return result;
}

unint64_t sub_1C8E37C4C()
{
  result = qword_1EC316EF8;
  if (!qword_1EC316EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316EF8);
  }

  return result;
}

unint64_t sub_1C8E37CA4()
{
  result = qword_1EDA63450;
  if (!qword_1EDA63450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63450);
  }

  return result;
}

unint64_t sub_1C8E37CFC()
{
  result = qword_1EDA63458;
  if (!qword_1EDA63458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63458);
  }

  return result;
}

unint64_t sub_1C8E37D54()
{
  result = qword_1EC316F00;
  if (!qword_1EC316F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F00);
  }

  return result;
}

unint64_t sub_1C8E37DAC()
{
  result = qword_1EC316F08;
  if (!qword_1EC316F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F08);
  }

  return result;
}

unint64_t sub_1C8E37E04()
{
  result = qword_1EDA634C0;
  if (!qword_1EDA634C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634C0);
  }

  return result;
}

unint64_t sub_1C8E37E5C()
{
  result = qword_1EDA634C8;
  if (!qword_1EDA634C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA634C8);
  }

  return result;
}

unint64_t sub_1C8E37EB4()
{
  result = qword_1EDA63468;
  if (!qword_1EDA63468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63468);
  }

  return result;
}

unint64_t sub_1C8E37F0C()
{
  result = qword_1EDA63470;
  if (!qword_1EDA63470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63470);
  }

  return result;
}

unint64_t sub_1C8E37F64()
{
  result = qword_1EDA63548;
  if (!qword_1EDA63548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63548);
  }

  return result;
}

unint64_t sub_1C8E37FBC()
{
  result = qword_1EDA63550;
  if (!qword_1EDA63550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63550);
  }

  return result;
}

unint64_t sub_1C8E38014()
{
  result = qword_1EC316F10;
  if (!qword_1EC316F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F10);
  }

  return result;
}

unint64_t sub_1C8E3806C()
{
  result = qword_1EC316F18;
  if (!qword_1EC316F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F18);
  }

  return result;
}

unint64_t sub_1C8E380C4()
{
  result = qword_1EC316F20;
  if (!qword_1EC316F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F20);
  }

  return result;
}

unint64_t sub_1C8E3811C()
{
  result = qword_1EC316F28;
  if (!qword_1EC316F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F28);
  }

  return result;
}

unint64_t sub_1C8E38174()
{
  result = qword_1EC316F30;
  if (!qword_1EC316F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F30);
  }

  return result;
}

unint64_t sub_1C8E381CC()
{
  result = qword_1EC316F38;
  if (!qword_1EC316F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F38);
  }

  return result;
}

unint64_t sub_1C8E38224()
{
  result = qword_1EC316F40;
  if (!qword_1EC316F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F40);
  }

  return result;
}

unint64_t sub_1C8E3827C()
{
  result = qword_1EC316F48;
  if (!qword_1EC316F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F48);
  }

  return result;
}

unint64_t sub_1C8E382D0()
{
  result = qword_1EC316F50;
  if (!qword_1EC316F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52_9()
{

  return sub_1C90640AC();
}

uint64_t sub_1C8E383B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4679616C70736964 && a2 == 0xEE0064726177726FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6E4F6563696F76 && a2 == 0xE900000000000079;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x726F466563696F76 && a2 == 0xEC00000064726177)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

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

uint64_t sub_1C8E3856C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x4679616C70736964;
      break;
    case 2:
      result = 0x4F79616C70736964;
      break;
    case 3:
      result = 0x6C6E4F6563696F76;
      break;
    case 4:
      result = 0x726F466563696F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E38630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E383B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E38658(uint64_t a1)
{
  v2 = sub_1C8E38D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E38694(uint64_t a1)
{
  v2 = sub_1C8E38D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E386D0(uint64_t a1)
{
  v2 = sub_1C8E38EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3870C(uint64_t a1)
{
  v2 = sub_1C8E38EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E38748(uint64_t a1)
{
  v2 = sub_1C8E38E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E38784(uint64_t a1)
{
  v2 = sub_1C8E38E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E387C0(uint64_t a1)
{
  v2 = sub_1C8E38F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E387FC(uint64_t a1)
{
  v2 = sub_1C8E38F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E38838(uint64_t a1)
{
  v2 = sub_1C8E38DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E38874(uint64_t a1)
{
  v2 = sub_1C8E38DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E388B0(uint64_t a1)
{
  v2 = sub_1C8E38E0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E388EC(uint64_t a1)
{
  v2 = sub_1C8E38E0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolInvocationOptions.InteractionMode.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F58, &qword_1C908A790);
  v5 = OUTLINED_FUNCTION_11(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v64 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F60, &qword_1C908A798);
  v12 = OUTLINED_FUNCTION_11(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v61 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F68, &qword_1C908A7A0);
  v19 = OUTLINED_FUNCTION_11(v18);
  v59 = v20;
  v60 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  v58 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F70, &qword_1C908A7A8);
  v26 = OUTLINED_FUNCTION_11(v25);
  v56 = v27;
  v57 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v55 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F78, &qword_1C908A7B0);
  v33 = OUTLINED_FUNCTION_11(v32);
  v53 = v34;
  v54 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v52 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316F80, &qword_1C908A7B8);
  OUTLINED_FUNCTION_11(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_233();
  v46 = *v0;
  v47 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E38D64();
  sub_1C9064E1C();
  v48 = (v42 + 8);
  switch(v46)
  {
    case 1:
      sub_1C8E38EB4();
      v49 = v55;
      OUTLINED_FUNCTION_9_22();
      v51 = v56;
      v50 = v57;
      goto LABEL_7;
    case 2:
      sub_1C8E38E60();
      v49 = v58;
      OUTLINED_FUNCTION_9_22();
      v51 = v59;
      v50 = v60;
      goto LABEL_7;
    case 3:
      sub_1C8E38E0C();
      v49 = v61;
      OUTLINED_FUNCTION_9_22();
      v51 = v62;
      v50 = v63;
      goto LABEL_7;
    case 4:
      sub_1C8E38DB8();
      v49 = v64;
      OUTLINED_FUNCTION_9_22();
      v51 = v65;
      v50 = v66;
LABEL_7:
      (*(v51 + 8))(v49, v50);
      break;
    default:
      sub_1C8E38F08();
      sub_1C9064ACC();
      (*(v53 + 8))(v39, v54);
      break;
  }

  (*v48)(v1, v40);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8E38D64()
{
  result = qword_1EDA62560;
  if (!qword_1EDA62560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62560);
  }

  return result;
}

unint64_t sub_1C8E38DB8()
{
  result = qword_1EC316F88;
  if (!qword_1EC316F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F88);
  }

  return result;
}

unint64_t sub_1C8E38E0C()
{
  result = qword_1EC316F90;
  if (!qword_1EC316F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F90);
  }

  return result;
}

unint64_t sub_1C8E38E60()
{
  result = qword_1EC316F98;
  if (!qword_1EC316F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316F98);
  }

  return result;
}

unint64_t sub_1C8E38EB4()
{
  result = qword_1EC316FA0;
  if (!qword_1EC316FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316FA0);
  }

  return result;
}

unint64_t sub_1C8E38F08()
{
  result = qword_1EDA62548;
  if (!qword_1EDA62548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62548);
  }

  return result;
}

void ToolInvocationOptions.InteractionMode.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v87 = v0;
  v3 = v2;
  v83 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FA8, &qword_1C908A7C0);
  v80 = OUTLINED_FUNCTION_11(v5);
  v81 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v86 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FB0, &qword_1C908A7C8);
  v78 = OUTLINED_FUNCTION_11(v11);
  v79 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  v85 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FB8, &qword_1C908A7D0);
  v18 = OUTLINED_FUNCTION_11(v17);
  v76 = v19;
  v77 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_97();
  v82 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FC0, &qword_1C908A7D8);
  v25 = OUTLINED_FUNCTION_11(v24);
  v74 = v26;
  v75 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_233();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FC8, &qword_1C908A7E0);
  OUTLINED_FUNCTION_11(v30);
  v73 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v68 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FD0, &unk_1C908A7E8);
  OUTLINED_FUNCTION_11(v37);
  v84 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v68 - v42;
  v44 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E38D64();
  v45 = v87;
  sub_1C9064DEC();
  if (v45)
  {
    goto LABEL_10;
  }

  v71 = v30;
  v72 = v36;
  v87 = v1;
  v46 = v85;
  v47 = v86;
  v48 = v43;
  v49 = sub_1C9064A9C();
  sub_1C8CB8914(v49, 0);
  if (v51 == v52 >> 1)
  {
    v53 = v84;
LABEL_9:
    v62 = sub_1C90647DC();
    swift_allocError();
    v64 = v63;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v64 = &type metadata for ToolInvocationOptions.InteractionMode;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v48, v37);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v51 < (v52 >> 1))
  {
    v69 = *(v50 + v51);
    v54 = sub_1C8CB891C(v51 + 1);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v70 = v54;
    if (v56 == v58 >> 1)
    {
      v59 = v83;
      v60 = v84;
      switch(v69)
      {
        case 1:
          sub_1C8E38EB4();
          v46 = v87;
          OUTLINED_FUNCTION_7_28();
          swift_unknownObjectRelease();
          v67 = v74;
          v66 = v75;
          goto LABEL_16;
        case 2:
          sub_1C8E38E60();
          v46 = v82;
          OUTLINED_FUNCTION_7_28();
          swift_unknownObjectRelease();
          v67 = v76;
          v66 = v77;
          goto LABEL_16;
        case 3:
          sub_1C8E38E0C();
          OUTLINED_FUNCTION_7_28();
          swift_unknownObjectRelease();
          v66 = v78;
          v67 = v79;
LABEL_16:
          (*(v67 + 8))(v46, v66);
          break;
        case 4:
          sub_1C8E38DB8();
          v54 = v43;
          sub_1C906498C();
          swift_unknownObjectRelease();
          (*(v81 + 8))(v47, v80);
          break;
        default:
          sub_1C8E38F08();
          v61 = v72;
          OUTLINED_FUNCTION_7_28();
          swift_unknownObjectRelease();
          (*(v73 + 8))(v61, v71);
          break;
      }

      (*(v60 + 8))(v54, v37);
      *v59 = v69;
      __swift_destroy_boxed_opaque_existential_1(v3);
      goto LABEL_11;
    }

    v53 = v84;
    v48 = v43;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C8E395FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79616C50726163 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6565724673657965 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F50656D6F68 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 6513005 && a2 == 0xE300000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73646F50726961 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 6578544 && a2 == 0xE300000000000000;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6863746177 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 30324 && a2 == 0xE200000000000000;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E6F69736976 && a2 == 0xE600000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C9064C2C();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t sub_1C8E39948(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x79616C50726163;
      break;
    case 2:
      result = 0x6565724673657965;
      break;
    case 3:
      result = 0x646F50656D6F68;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x73646F50726961;
      break;
    case 6:
      result = 0x656E6F6870;
      break;
    case 7:
      result = 6578544;
      break;
    case 8:
      result = 0x6863746177;
      break;
    case 9:
      result = 30324;
      break;
    case 10:
      result = 0x6E6F69736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E39A40(uint64_t a1)
{
  v2 = sub_1C8E3C19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39A7C(uint64_t a1)
{
  v2 = sub_1C8E3C19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39AB8(uint64_t a1)
{
  v2 = sub_1C8E3C2EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39AF4(uint64_t a1)
{
  v2 = sub_1C8E3C2EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E395FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E39B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E39940();
  *a1 = result;
  return result;
}

uint64_t sub_1C8E39B88(uint64_t a1)
{
  v2 = sub_1C8E3BFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39BC4(uint64_t a1)
{
  v2 = sub_1C8E3BFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39C00(uint64_t a1)
{
  v2 = sub_1C8E3C298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39C3C(uint64_t a1)
{
  v2 = sub_1C8E3C298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39C78(uint64_t a1)
{
  v2 = sub_1C8E3C244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39CB4(uint64_t a1)
{
  v2 = sub_1C8E3C244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39CF0(uint64_t a1)
{
  v2 = sub_1C8E3C1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39D2C(uint64_t a1)
{
  v2 = sub_1C8E3C1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39D68(uint64_t a1)
{
  v2 = sub_1C8E3C0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39DA4(uint64_t a1)
{
  v2 = sub_1C8E3C0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39DE0(uint64_t a1)
{
  v2 = sub_1C8E3C148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39E1C(uint64_t a1)
{
  v2 = sub_1C8E3C148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39E58(uint64_t a1)
{
  v2 = sub_1C8E3C04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39E94(uint64_t a1)
{
  v2 = sub_1C8E3C04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39ED0(uint64_t a1)
{
  v2 = sub_1C8E3C340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39F0C(uint64_t a1)
{
  v2 = sub_1C8E3C340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39F48(uint64_t a1)
{
  v2 = sub_1C8E3BFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39F84(uint64_t a1)
{
  v2 = sub_1C8E3BFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E39FC0(uint64_t a1)
{
  v2 = sub_1C8E3C0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E39FFC(uint64_t a1)
{
  v2 = sub_1C8E3C0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolInvocationOptions.InterfaceIdiom.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FD8, &qword_1C908A7F8);
  v35 = OUTLINED_FUNCTION_11(v34);
  v149 = v36;
  v150 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v148 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FE0, &qword_1C908A800);
  v42 = OUTLINED_FUNCTION_11(v41);
  v146 = v43;
  v147 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v145 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FE8, &qword_1C908A808);
  v49 = OUTLINED_FUNCTION_11(v48);
  v143 = v50;
  v144 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  v142 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FF0, &qword_1C908A810);
  v56 = OUTLINED_FUNCTION_11(v55);
  v140 = v57;
  v141 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v139 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316FF8, &qword_1C908A818);
  v63 = OUTLINED_FUNCTION_11(v62);
  v137 = v64;
  v138 = v63;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  v136 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317000, &qword_1C908A820);
  v70 = OUTLINED_FUNCTION_11(v69);
  v134 = v71;
  v135 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v75);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317008, &qword_1C908A828);
  OUTLINED_FUNCTION_11(v132);
  v131 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v80);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317010, &qword_1C908A830);
  OUTLINED_FUNCTION_11(v129);
  v128 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v85);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317018, &qword_1C908A838);
  OUTLINED_FUNCTION_11(v126);
  v125 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v90);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317020, &qword_1C908A840);
  OUTLINED_FUNCTION_11(v123);
  v122[2] = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v94);
  v96 = v122 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317028, &qword_1C908A848);
  OUTLINED_FUNCTION_11(v97);
  v122[1] = v98;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_86();
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317030, &qword_1C908A850);
  OUTLINED_FUNCTION_11(v152);
  v103 = v102;
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v106);
  v108 = v122 - v107;
  v109 = *v31;
  v110 = v33[4];
  v111 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_1C8E3BFA4();
  v151 = v108;
  sub_1C9064E1C();
  v112 = (v103 + 8);
  switch(v109)
  {
    case 1:
      v154[6] = 1;
      sub_1C8E3C2EC();
      v111 = v151;
      v110 = v152;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296(v154);
      v114 = v96;
      v117 = &v155;
      goto LABEL_9;
    case 2:
      v154[7] = 2;
      sub_1C8E3C298();
      v120 = v124;
      OUTLINED_FUNCTION_3_37();
      OUTLINED_FUNCTION_296(&a10);
      v114 = v120;
      v117 = &a18;
      goto LABEL_9;
    case 3:
      a10 = 3;
      sub_1C8E3C244();
      v121 = v127;
      OUTLINED_FUNCTION_3_37();
      OUTLINED_FUNCTION_296(&a20);
      v114 = v121;
      v117 = &a21;
      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_20_17();
      sub_1C8E3C1F0();
      v116 = v130;
      OUTLINED_FUNCTION_3_37();
      OUTLINED_FUNCTION_296(&a23);
      v114 = v116;
      v117 = &a24;
LABEL_9:
      v115 = *(v117 - 32);
      break;
    case 5:
      a12 = 5;
      sub_1C8E3C19C();
      v118 = v133;
      OUTLINED_FUNCTION_3_37();
      v119 = v134;
      v115 = v135;
      goto LABEL_14;
    case 6:
      a13 = 6;
      sub_1C8E3C148();
      v118 = v136;
      OUTLINED_FUNCTION_3_37();
      v119 = v137;
      v115 = v138;
      goto LABEL_14;
    case 7:
      a14 = 7;
      sub_1C8E3C0F4();
      v118 = v139;
      OUTLINED_FUNCTION_3_37();
      v119 = v140;
      v115 = v141;
      goto LABEL_14;
    case 8:
      a15 = 8;
      sub_1C8E3C0A0();
      v118 = v142;
      OUTLINED_FUNCTION_3_37();
      v119 = v143;
      v115 = v144;
      goto LABEL_14;
    case 9:
      a16 = 9;
      sub_1C8E3C04C();
      v118 = v145;
      OUTLINED_FUNCTION_3_37();
      v119 = v146;
      v115 = v147;
      goto LABEL_14;
    case 10:
      a17 = 10;
      sub_1C8E3BFF8();
      v118 = v148;
      OUTLINED_FUNCTION_3_37();
      v119 = v149;
      v115 = v150;
LABEL_14:
      v113 = *(v119 + 8);
      v114 = v118;
      break;
    default:
      v154[5] = 0;
      sub_1C8E3C340();
      v111 = v151;
      v110 = v152;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296(&v153);
      v114 = v28;
      v115 = v97;
      break;
  }

  v113(v114, v115);
  (*v112)(v111, v110);
  OUTLINED_FUNCTION_198();
}

uint64_t _s7ToolKit34DisplayRepresentationConfigurationV05ImageD0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void ToolInvocationOptions.InterfaceIdiom.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  a26 = v29;
  a27 = v30;
  v163 = v27;
  v32 = v31;
  v158 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317088, &qword_1C908A858);
  v35 = OUTLINED_FUNCTION_11(v34);
  v150 = v36;
  v151 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v157 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317090, &qword_1C908A860);
  v42 = OUTLINED_FUNCTION_11(v41);
  v148 = v43;
  v149 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v156 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317098, &qword_1C908A868);
  v49 = OUTLINED_FUNCTION_11(v48);
  v146 = v50;
  v147 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  v155 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170A0, &qword_1C908A870);
  v56 = OUTLINED_FUNCTION_11(v55);
  v144 = v57;
  v145 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v161 = v61;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170A8, &qword_1C908A878);
  OUTLINED_FUNCTION_11(v142);
  v143 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  v160 = v66;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170B0, &qword_1C908A880);
  OUTLINED_FUNCTION_11(v141);
  v140 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_97();
  v159 = v71;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170B8, &qword_1C908A888);
  OUTLINED_FUNCTION_11(v139);
  v138 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_97();
  v154 = v76;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170C0, &qword_1C908A890);
  OUTLINED_FUNCTION_11(v137);
  v136 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_97();
  v153 = v81;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170C8, &qword_1C908A898);
  OUTLINED_FUNCTION_11(v135);
  v134 = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_97();
  v152 = v86;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170D0, &qword_1C908A8A0);
  OUTLINED_FUNCTION_11(v133);
  v132[6] = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v90);
  v92 = v132 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170D8, &qword_1C908A8A8);
  OUTLINED_FUNCTION_11(v93);
  v132[5] = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_233();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170E0, &qword_1C908A8B0);
  OUTLINED_FUNCTION_11(v98);
  v100 = v99;
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_86();
  v104 = v32[3];
  v105 = v32[4];
  v162 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v104);
  sub_1C8E3BFA4();
  v106 = v163;
  sub_1C9064DEC();
  if (v106)
  {
    goto LABEL_8;
  }

  v132[3] = v28;
  v132[2] = v93;
  v132[4] = v92;
  v107 = v160;
  v108 = v161;
  v163 = v100;
  v109 = sub_1C9064A9C();
  sub_1C8CB8914(v109, 0);
  if (v111 == v112 >> 1)
  {
LABEL_7:
    v121 = sub_1C90647DC();
    swift_allocError();
    v123 = v122;
    v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v123 = &type metadata for ToolInvocationOptions.InterfaceIdiom;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    (*(*(v121 - 8) + 104))(v123, *MEMORY[0x1E69E6AF8], v121);
    swift_willThrow();
    swift_unknownObjectRelease();
    v125 = OUTLINED_FUNCTION_10_25();
    v126(v125);
LABEL_8:
    v127 = v162;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v127);
    OUTLINED_FUNCTION_198();
    return;
  }

  v132[1] = 0;
  if (v111 < (v112 >> 1))
  {
    v113 = *(v110 + v111);
    sub_1C8CB891C(v111 + 1);
    v115 = v114;
    v117 = v116;
    swift_unknownObjectRelease();
    if (v115 == v117 >> 1)
    {
      switch(v113)
      {
        case 1:
          v164[6] = 1;
          sub_1C8E3C2EC();
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_23(v164);
          v120 = &v165;
          goto LABEL_18;
        case 2:
          v164[7] = 2;
          sub_1C8E3C298();
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_23(&a9);
          v120 = &a10;
          goto LABEL_18;
        case 3:
          a10 = 3;
          sub_1C8E3C244();
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_23(&a18);
          v120 = &a19;
          goto LABEL_18;
        case 4:
          OUTLINED_FUNCTION_20_17();
          sub_1C8E3C1F0();
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_23(&a20);
          v120 = &a21;
          goto LABEL_18;
        case 5:
          a12 = 5;
          sub_1C8E3C19C();
          OUTLINED_FUNCTION_2_45();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_23(&a22);
          v120 = &a23;
          goto LABEL_18;
        case 6:
          a13 = 6;
          sub_1C8E3C148();
          OUTLINED_FUNCTION_2_45();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&a25);
          v118 = v107;
          v120 = &a24;
          goto LABEL_18;
        case 7:
          a14 = 7;
          sub_1C8E3C0F4();
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v129 = v144;
          v128 = v145;
          goto LABEL_21;
        case 8:
          a15 = 8;
          sub_1C8E3C0A0();
          v108 = v155;
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v129 = v146;
          v128 = v147;
          goto LABEL_21;
        case 9:
          a16 = 9;
          sub_1C8E3C04C();
          v108 = v156;
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v129 = v148;
          v128 = v149;
          goto LABEL_21;
        case 10:
          a17 = 10;
          sub_1C8E3BFF8();
          v108 = v157;
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v129 = v150;
          v128 = v151;
LABEL_21:
          v119 = *(v129 + 8);
          v118 = v108;
          break;
        default:
          v164[5] = 0;
          sub_1C8E3C340();
          OUTLINED_FUNCTION_1_51();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_23(&v163);
          v120 = &v160;
LABEL_18:
          v128 = *(v120 - 32);
          break;
      }

      v119(v118, v128);
      v130 = OUTLINED_FUNCTION_10_25();
      v131(v130);
      v127 = v162;
      *v158 = v113;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t ToolInvocationOptions.locale.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ToolInvocationOptions.requestIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t static ToolInvocationOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = a1[40];
  v10 = a1[41];
  v11 = *a2;
  v12 = *(a2 + 2);
  v14 = *(a2 + 3);
  v13 = *(a2 + 4);
  v15 = a2[40];
  v16 = a2[41];
  if (v4 == 5)
  {
    if (v11 != 5)
    {
      return 0;
    }
  }

  else if (v4 != v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12)
    {
      return 0;
    }

    v17 = v5 == *(a2 + 1) && v6 == v12;
    if (!v17 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v18 = v7 == v14 && v8 == v13;
    if (!v18 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    if (v9 == 11)
    {
      if (v15 != 11)
      {
        return 0;
      }
    }

    else if (v15 == 11 || v9 != v15)
    {
      return 0;
    }

    if (v10 == 2)
    {
      if (v16 != 2)
      {
        return 0;
      }
    }

    else if (v16 == 2 || ((v16 ^ v10) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v13)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_1C8E3B5B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xEF65646F4D6E6F69;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C90CB6C0 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6361667265746E69 && a2 == 0xEE006D6F69644965;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x80000001C90CB6E0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

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

unint64_t sub_1C8E3B774(char a1)
{
  result = 0x7463617265746E69;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6361667265746E69;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E3B82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E3B5B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E3B854(uint64_t a1)
{
  v2 = sub_1C8E3C394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E3B890(uint64_t a1)
{
  v2 = sub_1C8E3C394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolInvocationOptions.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170E8, &qword_1C908A8B8);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v19 = *(v0 + 2);
  v20 = v13;
  v14 = *(v0 + 3);
  v17 = *(v0 + 4);
  v18 = v14;
  LODWORD(v14) = v0[40];
  v16[2] = v0[41];
  v16[3] = v14;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E3C394();
  sub_1C9064E1C();
  sub_1C8E3C3E8();
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B0C();
  if (!v1)
  {
    sub_1C9064ADC();
    sub_1C9064ADC();
    sub_1C8E3C43C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B0C();
    OUTLINED_FUNCTION_20_17();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064AEC();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_198();
}

uint64_t ToolInvocationOptions.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = v0[40];
  v7 = v0[41];
  if (v1 == 5)
  {
    sub_1C9064D9C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C9064D9C();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1C9064D9C();
  MEMORY[0x1CCA82810](v1);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C9064D9C();
  sub_1C9063FBC();
  if (v5)
  {
LABEL_4:
    sub_1C9064D9C();
    sub_1C9063FBC();
    goto LABEL_8;
  }

LABEL_7:
  sub_1C9064D9C();
LABEL_8:
  sub_1C9064D9C();
  if (v6 != 11)
  {
    MEMORY[0x1CCA82810](v6);
  }

  if (v7 != 2)
  {
    sub_1C9064D9C();
  }

  return sub_1C9064D9C();
}

uint64_t ToolInvocationOptions.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v5 = *(v0 + 20);
  sub_1C9064D7C();
  ToolInvocationOptions.hash(into:)();
  return sub_1C9064DBC();
}

void ToolInvocationOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, __int16 a13, char a14, char a15)
{
  OUTLINED_FUNCTION_196();
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3170F0, &qword_1C908A8C0);
  OUTLINED_FUNCTION_11(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_86();
  v24 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1C8E3C394();
  sub_1C9064DEC();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1C8E3C490();
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_16_18();
    v25 = sub_1C90649AC();
    v27 = v26;
    v35 = v25;
    OUTLINED_FUNCTION_16_18();
    v28 = sub_1C90649AC();
    v30 = v29;
    v34 = v28;
    sub_1C8E3C4E4();
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_20_17();
    OUTLINED_FUNCTION_16_18();
    v31 = sub_1C90649BC();
    v32 = OUTLINED_FUNCTION_12_2();
    v33(v32);
    *v19 = a15;
    *(v19 + 8) = v35;
    *(v19 + 16) = v27;
    *(v19 + 24) = v34;
    *(v19 + 32) = v30;
    *(v19 + 40) = a12;
    *(v19 + 41) = v31;

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E3BED0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  v5 = *(v0 + 20);
  sub_1C9064D7C();
  ToolInvocationOptions.hash(into:)();
  return sub_1C9064DBC();
}

unint64_t sub_1C8E3BFA4()
{
  result = qword_1EDA62638;
  if (!qword_1EDA62638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62638);
  }

  return result;
}

unint64_t sub_1C8E3BFF8()
{
  result = qword_1EC317038;
  if (!qword_1EC317038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317038);
  }

  return result;
}

unint64_t sub_1C8E3C04C()
{
  result = qword_1EC317040;
  if (!qword_1EC317040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317040);
  }

  return result;
}

unint64_t sub_1C8E3C0A0()
{
  result = qword_1EC317048;
  if (!qword_1EC317048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317048);
  }

  return result;
}

unint64_t sub_1C8E3C0F4()
{
  result = qword_1EC317050;
  if (!qword_1EC317050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317050);
  }

  return result;
}

unint64_t sub_1C8E3C148()
{
  result = qword_1EC317058;
  if (!qword_1EC317058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317058);
  }

  return result;
}

unint64_t sub_1C8E3C19C()
{
  result = qword_1EC317060;
  if (!qword_1EC317060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317060);
  }

  return result;
}

unint64_t sub_1C8E3C1F0()
{
  result = qword_1EC317068;
  if (!qword_1EC317068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317068);
  }

  return result;
}

unint64_t sub_1C8E3C244()
{
  result = qword_1EC317070;
  if (!qword_1EC317070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317070);
  }

  return result;
}

unint64_t sub_1C8E3C298()
{
  result = qword_1EC317078;
  if (!qword_1EC317078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317078);
  }

  return result;
}

unint64_t sub_1C8E3C2EC()
{
  result = qword_1EC317080;
  if (!qword_1EC317080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317080);
  }

  return result;
}

unint64_t sub_1C8E3C340()
{
  result = qword_1EDA62590;
  if (!qword_1EDA62590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62590);
  }

  return result;
}

unint64_t sub_1C8E3C394()
{
  result = qword_1EDA62650;
  if (!qword_1EDA62650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62650);
  }

  return result;
}

unint64_t sub_1C8E3C3E8()
{
  result = qword_1EDA624F0;
  if (!qword_1EDA624F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624F0);
  }

  return result;
}

unint64_t sub_1C8E3C43C()
{
  result = qword_1EDA62568;
  if (!qword_1EDA62568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62568);
  }

  return result;
}

unint64_t sub_1C8E3C490()
{
  result = qword_1EC3170F8;
  if (!qword_1EC3170F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3170F8);
  }

  return result;
}

unint64_t sub_1C8E3C4E4()
{
  result = qword_1EC317100;
  if (!qword_1EC317100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317100);
  }

  return result;
}

unint64_t sub_1C8E3C53C()
{
  result = qword_1EC317108;
  if (!qword_1EC317108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317108);
  }

  return result;
}

unint64_t sub_1C8E3C594()
{
  result = qword_1EC317110;
  if (!qword_1EC317110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317110);
  }

  return result;
}

unint64_t sub_1C8E3C5EC()
{
  result = qword_1EC317118;
  if (!qword_1EC317118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317118);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C8E3C654(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 42))
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

uint64_t sub_1C8E3C6A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_1C8E3C73C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8E3C8C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8E3C9F8()
{
  result = qword_1EC317120;
  if (!qword_1EC317120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317120);
  }

  return result;
}

unint64_t sub_1C8E3CA50()
{
  result = qword_1EC317128;
  if (!qword_1EC317128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317128);
  }

  return result;
}

unint64_t sub_1C8E3CAA8()
{
  result = qword_1EC317130;
  if (!qword_1EC317130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317130);
  }

  return result;
}

unint64_t sub_1C8E3CB00()
{
  result = qword_1EDA62640;
  if (!qword_1EDA62640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62640);
  }

  return result;
}

unint64_t sub_1C8E3CB58()
{
  result = qword_1EDA62648;
  if (!qword_1EDA62648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62648);
  }

  return result;
}

unint64_t sub_1C8E3CBB0()
{
  result = qword_1EDA62580;
  if (!qword_1EDA62580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62580);
  }

  return result;
}

unint64_t sub_1C8E3CC08()
{
  result = qword_1EDA62588;
  if (!qword_1EDA62588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62588);
  }

  return result;
}

unint64_t sub_1C8E3CC60()
{
  result = qword_1EDA625A8;
  if (!qword_1EDA625A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625A8);
  }

  return result;
}

unint64_t sub_1C8E3CCB8()
{
  result = qword_1EDA625B0;
  if (!qword_1EDA625B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625B0);
  }

  return result;
}

unint64_t sub_1C8E3CD10()
{
  result = qword_1EDA62570;
  if (!qword_1EDA62570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62570);
  }

  return result;
}

unint64_t sub_1C8E3CD68()
{
  result = qword_1EDA62578;
  if (!qword_1EDA62578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62578);
  }

  return result;
}

unint64_t sub_1C8E3CDC0()
{
  result = qword_1EDA62598;
  if (!qword_1EDA62598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62598);
  }

  return result;
}

unint64_t sub_1C8E3CE18()
{
  result = qword_1EDA625A0;
  if (!qword_1EDA625A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625A0);
  }

  return result;
}

unint64_t sub_1C8E3CE70()
{
  result = qword_1EDA62608;
  if (!qword_1EDA62608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62608);
  }

  return result;
}

unint64_t sub_1C8E3CEC8()
{
  result = qword_1EDA62610;
  if (!qword_1EDA62610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62610);
  }

  return result;
}

unint64_t sub_1C8E3CF20()
{
  result = qword_1EDA625B8;
  if (!qword_1EDA625B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625B8);
  }

  return result;
}

unint64_t sub_1C8E3CF78()
{
  result = qword_1EDA625C0;
  if (!qword_1EDA625C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625C0);
  }

  return result;
}

unint64_t sub_1C8E3CFD0()
{
  result = qword_1EDA625E8;
  if (!qword_1EDA625E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625E8);
  }

  return result;
}

unint64_t sub_1C8E3D028()
{
  result = qword_1EDA625F0;
  if (!qword_1EDA625F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625F0);
  }

  return result;
}

unint64_t sub_1C8E3D080()
{
  result = qword_1EDA625F8;
  if (!qword_1EDA625F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625F8);
  }

  return result;
}

unint64_t sub_1C8E3D0D8()
{
  result = qword_1EDA62600;
  if (!qword_1EDA62600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62600);
  }

  return result;
}

unint64_t sub_1C8E3D130()
{
  result = qword_1EDA625D8;
  if (!qword_1EDA625D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625D8);
  }

  return result;
}

unint64_t sub_1C8E3D188()
{
  result = qword_1EDA625E0;
  if (!qword_1EDA625E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625E0);
  }

  return result;
}

unint64_t sub_1C8E3D1E0()
{
  result = qword_1EDA62618;
  if (!qword_1EDA62618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62618);
  }

  return result;
}

unint64_t sub_1C8E3D238()
{
  result = qword_1EDA62620;
  if (!qword_1EDA62620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62620);
  }

  return result;
}

unint64_t sub_1C8E3D290()
{
  result = qword_1EDA625C8;
  if (!qword_1EDA625C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625C8);
  }

  return result;
}

unint64_t sub_1C8E3D2E8()
{
  result = qword_1EDA625D0;
  if (!qword_1EDA625D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA625D0);
  }

  return result;
}

unint64_t sub_1C8E3D340()
{
  result = qword_1EDA62628;
  if (!qword_1EDA62628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62628);
  }

  return result;
}

unint64_t sub_1C8E3D398()
{
  result = qword_1EDA62630;
  if (!qword_1EDA62630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62630);
  }

  return result;
}

unint64_t sub_1C8E3D3F0()
{
  result = qword_1EDA62538;
  if (!qword_1EDA62538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62538);
  }

  return result;
}

unint64_t sub_1C8E3D448()
{
  result = qword_1EDA62540;
  if (!qword_1EDA62540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62540);
  }

  return result;
}

unint64_t sub_1C8E3D4A0()
{
  result = qword_1EDA624F8;
  if (!qword_1EDA624F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624F8);
  }

  return result;
}

unint64_t sub_1C8E3D4F8()
{
  result = qword_1EDA62500;
  if (!qword_1EDA62500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62500);
  }

  return result;
}

unint64_t sub_1C8E3D550()
{
  result = qword_1EDA62518;
  if (!qword_1EDA62518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62518);
  }

  return result;
}

unint64_t sub_1C8E3D5A8()
{
  result = qword_1EDA62520;
  if (!qword_1EDA62520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62520);
  }

  return result;
}

unint64_t sub_1C8E3D600()
{
  result = qword_1EDA62528;
  if (!qword_1EDA62528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62528);
  }

  return result;
}

unint64_t sub_1C8E3D658()
{
  result = qword_1EDA62530;
  if (!qword_1EDA62530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62530);
  }

  return result;
}

unint64_t sub_1C8E3D6B0()
{
  result = qword_1EDA62508;
  if (!qword_1EDA62508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62508);
  }

  return result;
}

unint64_t sub_1C8E3D708()
{
  result = qword_1EDA62510;
  if (!qword_1EDA62510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62510);
  }

  return result;
}

unint64_t sub_1C8E3D760()
{
  result = qword_1EDA62550;
  if (!qword_1EDA62550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62550);
  }

  return result;
}

unint64_t sub_1C8E3D7B8()
{
  result = qword_1EDA62558;
  if (!qword_1EDA62558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62558);
  }

  return result;
}

uint64_t sub_1C8E3D834()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C8E3D888(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8E3D8F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C8E3DA34(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}